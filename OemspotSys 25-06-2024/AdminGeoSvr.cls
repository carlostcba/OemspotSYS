VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminGeoSvr"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public geo1Orm As GeoORM
Public DbRecordsetQRY As ADODB.RecordSet
Public DbCommandQRY As ADODB.Command

Private Sub Class_Initialize()
    Set geo1Orm = New GeoORM
    Set DbRecordsetQRY = New ADODB.RecordSet
    Set DbCommandQRY = New ADODB.Command
End Sub

Private Sub Class_Terminate()
    Set geo1Orm = Nothing
  Set DbRecordsetQRY = Nothing
    Set DbCommandQRY = Nothing
End Sub
    

Function getList(busqueda As String, NroPagina As Long) As Boolean
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String

    sql = "SELECT geoid,psw,nombre,iphost,cmdport,dataport,user from geo WHERE geo.geoid LIKE '%" + busqueda + "%' OR geo.Nombre LIKE '%" + busqueda + "%' ORDER BY geo.Nombre "
    ''''''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getList = False
    Else
        getList = True
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String

    sql = "SELECT Count(*) FROM geo WHERE geo.geoID LIKE '%" + busqueda + "%' OR geo.Nombre LIKE '%" + busqueda + "%' group by geo.Nombre ORDER BY geo.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
    
    
    
End Function


