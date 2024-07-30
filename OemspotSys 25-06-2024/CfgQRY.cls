VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CfgQRY"
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

Public Function getAdminConfiguracionesList(busqueda As String, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
    
    If NroPagina < 0 Then
        NroPagina = 1
    End If
    
    'sql = "SELECT Cfg.ConfiguracionID AS 'ID', Cfg.Nombre AS 'Configuración', CfgOpt.Nombre AS 'Parámetro', CfgOpt.Valor AS 'Valor' FROM Cfg LEFT JOIN CfgOpt ON(Cfg.ConfiguracionID=CfgOpt.ConfiguracionID) WHERE Cfg.ConfiguracionID >1 AND Cfg.ConfiguracionID <4 AND (Cfg.ConfiguracionID LIKE '%" + busqueda + "%' OR Cfg.Nombre LIKE '%" + busqueda + "%' OR CfgOpt.Nombre LIKE '%" + busqueda + "%') ORDER BY Cfg.Nombre, CfgOpt.Nombre LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    sql = "SELECT Cfg.ConfiguracionID AS 'ID', Cfg.Nombre AS 'Configuración', " & _
            "CfgOpt.Nombre AS 'Parámetro', CfgOpt.Valor AS 'Valor' " & _
            "FROM Cfg LEFT JOIN CfgOpt ON(Cfg.ConfiguracionID=CfgOpt.ConfiguracionID) " & _
            "WHERE Cfg.ConfiguracionID LIKE '%" + busqueda + "%' OR Cfg.Nombre LIKE '%" + busqueda + "%' OR CfgOpt.Nombre LIKE '%" + busqueda + "%'  ORDER BY Cfg.Nombre, CfgOpt.Nombre "
            ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminConfiguracionesList = False
    Else
        getAdminConfiguracionesList = True
    End If
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

   ' sql = "SELECT Count(*) FROM Cfg LEFT JOIN CfgOpt ON(Cfg.ConfiguracionID=CfgOpt.ConfiguracionID) WHERE Cfg.ConfiguracionID LIKE '%" + busqueda + "%' OR Cfg.Nombre LIKE '%" + busqueda + "%' OR CfgOpt.Nombre LIKE '%" + busqueda + "%' ORDER BY Cfg.Nombre, CfgOpt.Nombre"
    sql = "SELECT Count(*) " & _
    "FROM Cfg LEFT JOIN CfgOpt ON(Cfg.ConfiguracionID=CfgOpt.ConfiguracionID) " & _
    "WHERE Cfg.ConfiguracionID LIKE '%" + busqueda + "%' OR Cfg.Nombre LIKE '%" + busqueda + "%' OR CfgOpt.Nombre LIKE '%" + busqueda + "%' group by Cfg.Nombre, CfgOpt.Nombre ORDER BY Cfg.Nombre, CfgOpt.Nombre"
   
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function

Public Function getOpciones(ConfiguracionID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT OpcionID, Nombre, Valor  FROM CfgOpt WHERE ConfiguracionID = " & ConfiguracionID & " ORDER BY CfgOpt.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getOpciones = False
    Else
        getOpciones = True
    End If
End Function

Public Function getConfiguracionID(Nombre As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Cfg.ConfiguracionID AS 'ConfiguracionID' FROM Cfg WHERE Cfg.Nombre = '" + Nombre + "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getConfiguracionID = False
    Else
        getConfiguracionID = True
    End If
End Function

Public Function getConfiguracionOpcionID(ConfiguracionID As Long, Nombre As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT CfgOpt.OpcionID AS 'OpcionID' FROM Cfgopt WHERE CfgOpt.ConfiguracionID = " & ConfiguracionID & " AND CfgOpt.Nombre = '" & Nombre & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getConfiguracionOpcionID = False
    Else
        getConfiguracionOpcionID = True
    End If
End Function

Public Function actualizarIdioma(ConfiguracionID As Long, OpcionID As Long, Nombre As String, valor As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "UPDATE CfgOpt SET Valor = '" + valor + "' WHERE CfgOpt.ConfiguracionID = " & ConfiguracionID & " AND CfgOpt.OpcionID =  " & OpcionID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    actualizarIdioma = True
End Function
