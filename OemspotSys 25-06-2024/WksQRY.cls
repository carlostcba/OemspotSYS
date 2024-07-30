VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "WksQRY"
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

Public Function getAdminWorkstationsList(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Wks.WorkstationID AS 'ID', WksOpt.Nombre AS 'Parámetro', WksOpt.Valor AS 'Valor' FROM Wks LEFT JOIN WksOpt ON(Wks.WorkstationID=WksOpt.WorkstationID) WHERE Wks.WorkstationID LIKE '%" + busqueda + "%' OR Wks.Nombre LIKE '%" + busqueda + "%' OR WksOpt.Nombre LIKE '%" + busqueda + "%' ORDER BY WksOpt.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminWorkstationsList = False
    Else
        getAdminWorkstationsList = True
    End If
End Function

Public Function getOpciones(WorkstationID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT WksOpt.WorkstationID, WksOpt.OpcionID, WksOpt.Nombre, WksOpt.Valor FROM WksOpt WHERE WorkstationID = " & WorkstationID & " ORDER BY WksOpt.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getOpciones = False
    Else
        getOpciones = True
    End If
End Function

Public Function getID(ComputerName As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT WorkstationID FROM Wks WHERE Wks.Nombre = '" & ComputerName & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getID = False
    Else
        getID = True
    End If
End Function

Public Function getWorkstations() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Wks.WorkstationID AS 'ID', Wks.Nombre AS 'Nombre' FROM Wks ORDER BY Wks.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getWorkstations = False
    Else
        getWorkstations = True
    End If
End Function
