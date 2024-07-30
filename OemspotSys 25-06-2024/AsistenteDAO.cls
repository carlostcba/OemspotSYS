VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AsistenteDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Private DbCommandDAO As ADODB.Command
Public DbRecordsetDAO As ADODB.RecordSet

' AsistenteDAO Architecture:
'
'   Entities Name Modifiers:
'
'       @: Entity
'       &: Referential Only Entity
'
'   Fields Name Modifiers:
'
'       #: Numerical Value
'       $: String Value
'       %: Date Value
'
'   SystemParameter Levels:
'
'       0: The record can be retieved or updated or deleted
'       1: The record can't be deleted
'       2: The record can't be deleted or updated
'       3: The record can't be deleted or updated or retrieved

Private Sub Class_Initialize()
    Set DbCommandDAO = New ADODB.Command
    Set DbRecordsetDAO = New ADODB.RecordSet
    
    'afa 07/2009 para detectar las desconexiones de la base y no salir del programa
    'si la conexion da error esta sentencia da error
    On Error Resume Next
    
    DbCommandDAO.ActiveConnection = DbConnectionSYS
End Sub


Public Function Transaccion_Iniciar() As Boolean
On Error GoTo Salir
    DbCommandDAO.CommandText = "BEGIN"
    DbCommandDAO.Execute
    Transaccion_Iniciar = True
Salir:
End Function

Public Function Transaccion_Finalizar() As Boolean
On Error GoTo Salir
    DbCommandDAO.CommandText = "COMMIT"
    DbCommandDAO.Execute
    Transaccion_Finalizar = True
Salir:
End Function

Public Function Transaccion_Cancelar() As Boolean
On Error GoTo Salir
    DbCommandDAO.CommandText = "ROLLBACK"
    DbCommandDAO.Execute
    Transaccion_Cancelar = True
Salir:
End Function

Private Sub Class_Terminate()
    Set DbCommandDAO = Nothing
    Set DbRecordsetDAO = Nothing
End Sub

Public Function create(DaoObject As Object, Optional deFabricaSoftware As Boolean) As Long
On Error GoTo errorhandler
     
    Dim NewID As Long
    Dim i As Integer
    Dim sql As String

    ' check required parents IDs

    If Not checkRequiredKeys(DaoObject, True) Then
        create = -1
        Exit Function
    End If

    If Not isReferenceEntity(DaoObject.EntityName) Then

        ' get newID

        sql = "SELECT MAX(" & DaoObject.KeyInfo(DaoObject.KeysInfoLength) & ") "
        sql = sql & " FROM " & getFinalEntityName(DaoObject.EntityName)

        If (DaoObject.KeysInfoLength > 1) Then
            sql = sql & " WHERE "

            For i = 1 To DaoObject.KeysInfoLength - 1
                sql = sql & DaoObject.KeyInfo(i) & " = " & DaoObject.KeyValue(i)

                If i <> DaoObject.KeysInfoLength - 1 Then
                    sql = sql & " AND "
                End If
            Next i

        End If

        If (DaoObject.KeysInfoLength > 1) Then
            sql = sql & " AND "
        Else
            sql = sql & " WHERE "
        End If

        If deFabricaSoftware Then
            sql = sql & DaoObject.KeyInfo(DaoObject.KeysInfoLength) & " < " & DIRECCION_REGISTROS_USUARIOS_SYS
        Else
            sql = sql & DaoObject.KeyInfo(DaoObject.KeysInfoLength) & " >= " & DIRECCION_REGISTROS_USUARIOS_SYS
        End If

        DbCommandDAO.CommandText = sql
        Set DbRecordsetDAO = DbCommandDAO.Execute
        If IsNull(DbRecordsetDAO.Fields(0)) Then
            If deFabricaSoftware Then
                NewID = 1
            Else
                NewID = DIRECCION_REGISTROS_USUARIOS_SYS
            End If
        Else
            NewID = DbRecordsetDAO.Fields(0).value + 1
        End If

    End If

    ' create new record

    sql = "INSERT INTO " & getFinalEntityName(DaoObject.EntityName) & "("

    For i = 1 To DaoObject.KeysInfoLength
        sql = sql & DaoObject.KeyInfo(i)
        If i < DaoObject.KeysInfoLength Then
            sql = sql & ","
        End If
    Next i

    If DaoObject.AttributesInfoLength > 0 Then
        sql = sql & ","
    End If

    For i = 1 To DaoObject.AttributesInfoLength
        sql = sql & getFinalAttributeName(DaoObject.AttributeInfo(i))
        If i < DaoObject.AttributesInfoLength Then
            sql = sql & ","
        End If
    Next i

    sql = sql & ") VALUES ("

    For i = 1 To DaoObject.KeysInfoLength - 1
        sql = sql & DaoObject.KeyValue(i)

        If i < DaoObject.KeysInfoLength Then
            sql = sql & ","
        End If
    Next i

    If Not isReferenceEntity(DaoObject.EntityName) Then
        sql = sql & NewID
    Else
        sql = sql & DaoObject.KeyValue(DaoObject.KeysInfoLength)
    End If

    If DaoObject.AttributesInfoLength Then
        sql = sql & ","
    End If

    For i = 1 To DaoObject.AttributesInfoLength

        ' Saves historical information of the record if it is indicated in the DAO design
        If getFinalAttributeName(DaoObject.AttributeInfo(i)) = "CreationDate" Or getFinalAttributeName(DaoObject.AttributeInfo(i)) = "LastUpdateDate" Then
'afa            sql = sql & "'" & DateToDB(Date) & "'"
            sql = sql & "current_timestamp"
        ElseIf getFinalAttributeName(DaoObject.AttributeInfo(i)) = "CreatedByID" Or getFinalAttributeName(DaoObject.AttributeInfo(i)) = "LastUpdateDateByID" Then
            sql = sql & UsuarioActivoSYS
        Else
            ' Saves attribute value
            sql = sql & getFinalAttributeValue(DaoObject, i)
        End If

        If i < DaoObject.AttributesInfoLength Then
            sql = sql & ","
        End If

    Next i

    sql = sql & ")"

    DbCommandDAO.CommandText = sql
    DbCommandDAO.Execute
    create = NewID
    Exit Function

errorhandler:
    create = -1
End Function

Public Function retrieve(DaoObject As Object) As Boolean
On Error GoTo errorhandler
  
    Dim i As Integer
    Dim sql As String
    
    ' check required parents IDs

    If Not checkRequiredKeys(DaoObject, False) Then
        retrieve = False
        Exit Function
    End If

    ' If It's a System Parameter = 3, don't retrieve it

    If isSystemParameter(DaoObject, 3) Then
        retrieve = False
        Exit Function
    End If

    ' retrieve record

    sql = "SELECT * "

    sql = sql & " FROM " & getFinalEntityName(DaoObject.EntityName)
    sql = sql & " WHERE "

    For i = 1 To DaoObject.KeysInfoLength
        sql = sql & DaoObject.KeyInfo(i) & " = " & DaoObject.KeyValue(i)

        If i <> DaoObject.KeysInfoLength Then
            sql = sql & " AND "
        End If
    Next i

    DbCommandDAO.CommandText = sql
    Set DbRecordsetDAO = DbCommandDAO.Execute
    If DbRecordsetDAO.BOF Then
        retrieve = False
        Exit Function
    Else
        For i = 1 To DaoObject.AttributesInfoLength
            DoEvents
            If Len(DbRecordsetDAO.Fields(DaoObject.KeysInfoLength + i - 1).value) > 0 Then
                DaoObject.AttributeValue(i) = DBFieldToString(DbRecordsetDAO.Fields(DaoObject.KeysInfoLength + i - 1).value)
            End If
        Next i
    End If
    retrieve = True
    Exit Function

errorhandler:
    retrieve = False
End Function

Public Function update(DaoObject As Object) As Boolean
On Error GoTo errorhandler

    Dim i As Integer
    Dim sql As String

    ' check required parents IDs

    If Not checkRequiredKeys(DaoObject, False) Then
        update = False
        Exit Function
    End If

    ' If It's a System Parameter = 2 or System Parameter = 3, don't update it

    If isSystemParameter(DaoObject, 2) Or isSystemParameter(DaoObject, 3) Then
        update = False
        Exit Function
    End If

    ' update record

    sql = "UPDATE " & getFinalEntityName(DaoObject.EntityName)
    sql = sql & " SET "

    For i = 1 To DaoObject.AttributesInfoLength

        ' Saves historical information of the record if it is indicated in the DAO design
        If getFinalAttributeName(DaoObject.AttributeInfo(i)) = "LastUpdateDate" Then
            sql = sql & getFinalAttributeName(DaoObject.AttributeInfo(i)) & " = "
            sql = sql & "'" & DateToDB(Date) & "'"
            
            If i <> DaoObject.AttributesInfoLength Then
                sql = sql & ", "
            End If
        ElseIf getFinalAttributeName(DaoObject.AttributeInfo(i)) = "LastUpdateDateByID" Then
            sql = sql & getFinalAttributeName(DaoObject.AttributeInfo(i)) & " = "
            sql = sql & UsuarioActivoSYS
            
            If i <> DaoObject.AttributesInfoLength Then
                sql = sql & ", "
            End If
        ElseIf getFinalAttributeName(DaoObject.AttributeInfo(i)) = "CreationDate" Or getFinalAttributeName(DaoObject.AttributeInfo(i)) = "CreatedByID" Then
            ' do not save already saved creation date and UserID information
        Else
            ' update attribute value
            sql = sql & getFinalAttributeName(DaoObject.AttributeInfo(i)) & " = "
            sql = sql & getFinalAttributeValue(DaoObject, i)
        
            If i <> DaoObject.AttributesInfoLength Then
                sql = sql & ", "
            End If
        End If

    Next i

    sql = sql & " WHERE "

    For i = 1 To DaoObject.KeysInfoLength
        sql = sql & DaoObject.KeyInfo(i) & " = " & DaoObject.KeyValue(i)

        If i <> DaoObject.KeysInfoLength Then
            sql = sql & " AND "
        End If
    Next i

    DbCommandDAO.CommandText = sql
    DbCommandDAO.Execute

    update = True
    Exit Function

errorhandler:
    update = False
End Function

Public Function delete(DaoObject As Object, _
                       Optional Borrar_Cascada As Boolean) As Boolean
On Error GoTo errorhandler

    Dim i As Integer
    Dim J As Integer
    Dim sql As String

    ' check required parents IDs

    If Not checkRequiredKeys(DaoObject, False) Then
        delete = False
        Exit Function
    End If

    ' If It's a System Parameter = 1 or System Parameter = 2 or System Parameter = 3, don't delete it

    If isSystemParameter(DaoObject, 1) Or isSystemParameter(DaoObject, 2) Or isSystemParameter(DaoObject, 3) Then
        delete = False
        Exit Function
    End If

If Borrar_Cascada Then

    For i = 1 To DaoObject.ReferencesInfoLength

        sql = "Delete  FROM " & DaoObject.ReferenceInfo(i)
        sql = sql & " WHERE "

        For J = 1 To DaoObject.KeysInfoLength
            sql = sql & DaoObject.KeyInfo(J) & " = " & DaoObject.KeyValue(J)

            If J <> DaoObject.KeysInfoLength Then
                sql = sql & " AND "
            End If
        Next J

        DbCommandDAO.CommandText = sql
        DbCommandDAO.Execute

    Next i
    ' delete record

    sql = "DELETE FROM " & getFinalEntityName(DaoObject.EntityName)
    sql = sql & " WHERE "

    For i = 1 To DaoObject.KeysInfoLength
        sql = sql & DaoObject.KeyInfo(i) & " = " & DaoObject.KeyValue(i)

        If i <> DaoObject.KeysInfoLength Then
            sql = sql & " AND "
        End If
    Next i

    DbCommandDAO.CommandText = sql
    DbCommandDAO.Execute

    delete = True
    Exit Function

Else
    ' check referential integrity
    For i = 1 To DaoObject.ReferencesInfoLength

        sql = "SELECT * FROM " & DaoObject.ReferenceInfo(i)
        sql = sql & " WHERE "

        For J = 1 To DaoObject.KeysInfoLength
            sql = sql & DaoObject.KeyInfo(J) & " = " & DaoObject.KeyValue(J)

            If J <> DaoObject.KeysInfoLength Then
                sql = sql & " AND "
            End If
        Next J

        DbCommandDAO.CommandText = sql
        Set DbRecordsetDAO = DbCommandDAO.Execute
        If Not DbRecordsetDAO.BOF Then
            delete = False
            Exit Function
        End If

    Next i

    ' delete record

    sql = "DELETE FROM " & getFinalEntityName(DaoObject.EntityName)
    sql = sql & " WHERE "

    For i = 1 To DaoObject.KeysInfoLength
        sql = sql & DaoObject.KeyInfo(i) & " = " & DaoObject.KeyValue(i)

        If i <> DaoObject.KeysInfoLength Then
            sql = sql & " AND "
        End If
    Next i

    DbCommandDAO.CommandText = sql
    DbCommandDAO.Execute

    delete = True
    Exit Function
End If
errorhandler:
    delete = False
End Function

Private Function isReferenceEntity(EntityName As String) As Boolean
    If Left(EntityName, 1) = "&" Then
        isReferenceEntity = True
    ElseIf Left(EntityName, 1) = "@" Then
        isReferenceEntity = False
    End If
End Function

Private Function getFinalEntityName(EntityName As String) As String
    getFinalEntityName = Right(EntityName, Len(EntityName) - 1)
End Function

Private Function getFinalAttributeName(AttributeName As String) As String
    If Left(AttributeName, 1) = "$" Or Left(AttributeName, 1) = "#" Or Left(AttributeName, 1) = "%" Then
        getFinalAttributeName = Right(AttributeName, Len(AttributeName) - 1)
    Else
        getFinalAttributeName = AttributeName
    End If
End Function

Private Function getFinalAttributeValue(DaoObject As Object, i As Integer) As String
    If Left(DaoObject.AttributeInfo(i), 1) = "#" Then
        getFinalAttributeValue = DaoObject.AttributeValue(i)
    ElseIf Left(DaoObject.AttributeInfo(i), 1) = "$" Then
       ' getFinalAttributeValue = "'" & Replace(StringToDBField(DaoObject.AttributeValue(i)), "\", "\\") & "'"
         getFinalAttributeValue = "'" & Replace(StringToDBField(DaoObject.AttributeValue(i)), "\", "\") & "'"
    ElseIf Left(DaoObject.AttributeInfo(i), 1) = "%" Then
        getFinalAttributeValue = "'" & DateToDB(DaoObject.AttributeValue(i)) & "'"
    End If
End Function

Private Function checkRequiredKeys(DaoObject As Object, forCreation As Boolean) As Boolean
    Dim i As Integer
    Dim usedKeys As Integer

    If forCreation Then
        If isReferenceEntity(DaoObject.EntityName) Then
            usedKeys = DaoObject.KeysInfoLength
        Else
            usedKeys = DaoObject.KeysInfoLength - 1
        End If
    Else
        usedKeys = DaoObject.KeysInfoLength
    End If

    For i = 1 To usedKeys
        If DaoObject.KeyValue(i) = 0 Then
            checkRequiredKeys = False
            Exit Function
        End If
    Next i

    checkRequiredKeys = True
End Function

Private Function checkItHasSystemParameter(DaoObject As Object) As Boolean
    Dim i As Integer

    For i = 0 To DaoObject.AttributesInfoLength
        If DaoObject.AttributeInfo(i) = "#SystemParameter" Then
            checkItHasSystemParameter = True
            Exit Function
        End If
    Next i

    checkItHasSystemParameter = False
End Function

Private Function isSystemParameter(DaoObject As Object, SystemValue As Integer) As Boolean
    If Not checkItHasSystemParameter(DaoObject) Then
        isSystemParameter = False
        Exit Function
    End If

    Dim sql As String
    Dim i As Integer

    sql = "SELECT SystemParameter FROM " & getFinalEntityName(DaoObject.EntityName)
    sql = sql & " WHERE "

    For i = 1 To DaoObject.KeysInfoLength
        sql = sql & DaoObject.KeyInfo(i) & " = " & DaoObject.KeyValue(i)

        If i <> DaoObject.KeysInfoLength Then
            sql = sql & " AND "
        End If
    Next i

    DbCommandDAO.CommandText = sql
    Set DbRecordsetDAO = DbCommandDAO.Execute

    If CLng(DbRecordsetDAO.Fields(0).value) = SystemValue Then
        isSystemParameter = True
    Else
        isSystemParameter = False
    End If
End Function
