VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PrfQRY"
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

Public Function getAdminPerfilesList(busqueda As String, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Prf.PerfilID AS 'PerfilID', Prf.Nombre FROM Prf WHERE Prf.PerfilID LIKE '%" + busqueda + "%' OR Prf.Nombre LIKE '%" + busqueda + "%' ORDER BY Prf.Nombre "
    ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPerfilesList = False
    Else
        getAdminPerfilesList = True
    End If
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Count(*) FROM Prf WHERE Prf.PerfilID LIKE '%" + busqueda + "%' OR Prf.Nombre LIKE '%" + busqueda + "%' group by Prf.Nombre ORDER BY Prf.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function

Public Function getItemsList(PerfilID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PrfVal.ValorID AS 'ItemID', PrfVal.Dia AS 'Día', PrfVal.HoraInicio AS 'Hora de Inicio', PrfVal.HoraFin  AS 'Hora de Fin',PrfVal.Permanencia  AS 'Permanencia' FROM PrfVal WHERE PrfVal.PerfilID = " & PerfilID & " ORDER BY PrfVal.Dia, PrfVal.HoraInicio, PrfVal.HoraFin"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getItemsList = False
    Else
        getItemsList = True
    End If
End Function
