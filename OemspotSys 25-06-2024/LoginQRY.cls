VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LoginQRY"
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

Public Function getAdminLoginList(busqueda As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
    Dim sql As String
    Dim i As Long
    Dim filtro As String
    FechaDesde = IIf(FechaDesde = "", "01/01/2001", FF(FechaDesde))
    FechaHasta = IIf(FechaHasta = "", "01/01/2100", FF(CDate(FechaHasta) + 1))
    
  
  '----------------------------------------------------------------------------------------------------
  'Autor: Manuel
  'Fecha: 7/11/12
  'Consulta que tiene problemas con (date_format y limit) ambas funciones no soportadas por SQL SERVER
  '---------------------------------------------------------------------------------------------------
  'filtro = " WHERE (u.Fecha >= '" & FechaDesde & "' AND u.Fecha <= '" & FechaHasta & "')"
  'filtro = filtro & " AND (usr.Nombre LIKE '%" & busqueda & "%')"
  'sql = "SELECT usr.usuarioid,usr.Nombre,date_format(u.fecha,'%d/%m/%Y %h:%i:%s') as fecha FROM usrlogin u inner join usr on u.usuarioid=usr.usuarioid " & filtro & " order by fecha asc LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

  

  '----------------------------------------------------------------------------------------------------
  'Autor: Manuel
  'Fecha: 7/11/12
  'Consulta Arreglada para SQL SERVER
  '---------------------------------------------------------------------------------------------------
  
  
  
  filtro = " WHERE d BETWEEN " & NroPagina & " AND " & MAX_GRID_ROWS_SIZE_SYS & _
           " AND c BETWEEN " & "'" & FechaDesde & "'" & " AND " & "'" & FechaHasta & "'" & _
           " AND b LIKE '%" & busqueda & "%' " & _
           " ORDER BY c ASC"
  
  
  sql = " ;WITH consulta (a,b,c,d)" & _
        " AS" & _
        " (" & _
        " SELECT usr.usuarioid," & _
        " usr.Nombre," & _
        " u.fecha as fecha," & _
        " CAST(row_number() OVER (ORDER BY u.UsuarioID) AS INTEGER) AS contador " & _
        " FROM usrlogin u" & _
        " INNER JOIN usr on u.usuarioid=usr.usuarioid" & _
        " )" & _
        " SELECT a AS  usuarioid," & _
        " b AS Nombre," & _
        " c As Fecha" & _
        " FROM consulta " & filtro

    
    
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminLoginList = False
    Else
        getAdminLoginList = True
    End If
End Function

Public Function getCantidadLogin(busqueda As String, FechaDesde As String, FechaHasta As String) As Boolean
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String
    Dim i As Long
    Dim filtro As String
'cantidad de movimientos con trj
    FechaDesde = FF(FechaDesde)
    FechaHasta = FF(CDate(FechaHasta) + 1)
  
  filtro = " WHERE (u.Fecha >= '" & FechaDesde & "' AND u.Fecha <= '" & FechaHasta & "')"
  
  filtro = filtro & " AND (usr.Nombre LIKE '%" & busqueda & "%')"
  
    
    sql = "SELECT Count(*) FROM usrlogin u inner join usr on u.usuarioid=usr.usuarioid " & filtro
    
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadLogin = False
    Else
        getCantidadLogin = True
    End If
End Function


