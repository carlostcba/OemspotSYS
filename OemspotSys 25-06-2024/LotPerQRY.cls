VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LotPerQRY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public DbCommandQRY As ADODB.Command
Public DbRecordsetQRY As ADODB.RecordSet

Private Sub Class_Initialize()
    Set DbCommandQRY = New ADODB.Command
    Set DbRecordsetQRY = New ADODB.RecordSet
        On Error Resume Next
    DbCommandQRY.ActiveConnection = DbConnectionSYS

End Sub

Private Sub Class_Terminate()
    Set DbCommandQRY = Nothing
    Set DbRecordsetQRY = Nothing
End Sub

Public Function Traer_LotPer(ByRef LoteID_ As Long, _
                             ByRef PersonaID_ As Long, _
                             ByRef PerfilID_ As Long) As Boolean
Dim sql As String
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function


    sql = "SELECT loteID, PersonaID, PerfilID, CategoriaID, ValorID ,FechaInicio, FechaFin FROM lotper " & _
          "WHERE LoteID = " & LoteID_ & _
          "AND PersonaID = " & PersonaID_ & _
          "AND PerfilID = " & PerfilID_


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If Not DbRecordsetQRY.BOF Then
        Traer_LotPer = True
    End If
    
Salir:
'MsgBox Err.Description
End Function


'****************** FUNCION PARA SABER QUE RELACION TIENE LA PERSONA CON EL LOTE ************************
Public Function obtenerLotPerCatVal(PersonaID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT LotPer.ValorID FROM LotPer WHERE LotPer.PersonaID = " & PersonaID & " AND LotPer.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerLotPerCatVal = False
    Else
        obtenerLotPerCatVal = True
    End If
End Function
'********************************************************************************************************

'afa 07/2009
' ******************** FUNCION PARA OBTENER los telefonos de una persona especifica **************************
Public Function obtenerReferentePersonaTelefono(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT c.nombre as 'tipo tel', pc.telefono"
    sql = sql + " From Per"
    sql = sql + " INNER JOIN pertelcatval pc ON pc.personaid = per.personaid"
    sql = sql + " INNER JOIN catval c ON c.categoriaID = pc.categoriaID AND c.ValorID = pc.valorid"
    sql = sql + " Where Per.PersonaID = " & PersonaID


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerReferentePersonaTelefono = False
    Else
        obtenerReferentePersonaTelefono = True
    End If
End Function

'afa 07/2009
' ******************** FUNCION PARA OBTENER EL/LaS personas con telefono DE UN LOTE ESPECIFICO **************************
Public Function obtenerReferenteLoteTelefono(LoteID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT distinct (Per.Apellido + ', ' + Per.Nombre), catval.nombre as 'Relacion',lotper.personaid"
    sql = sql + " From LotPer"
    sql = sql + " INNER JOIN per ON lotper.personaid = per.personaid"
    sql = sql + " INNER JOIN catval ON catval.categoriaID = lotper.categoriaID AND catval.ValorID = lotper.valorid"
    sql = sql + " INNER JOIN pertelcatval pc ON pc.personaid = per.personaid"
    sql = sql + " INNER JOIN catval c ON c.categoriaID = pc.categoriaID AND c.ValorID = pc.valorid"
    sql = sql + " Where LotPer.LoteID = " & LoteID
                        


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerReferenteLoteTelefono = False
    Else
        obtenerReferenteLoteTelefono = True
    End If
End Function
'*********************************************************************************************************





'******************** FUNCION PARA OBTENER EL/LOS DUEÑO/S DE UN LOTE ESPECIFICO **************************


Public Function obtenerReferenteLote(LoteID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT (Per.Apellido +  ', ' + Per.Nombre)" & _
          "FROM LotPer " & _
          "INNER JOIN per ON lotper.personaid = per.personaid " & _
          "INNER JOIN catval ON catval.categoriaID = 18 AND catval.ValorID = 1 " & _
          "WHERE LotPer.LoteID = " & LoteID


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerReferenteLote = False
    Else
        obtenerReferenteLote = True
    End If
End Function
'*********************************************************************************************************
