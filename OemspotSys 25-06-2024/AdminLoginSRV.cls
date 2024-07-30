VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminLoginSRV"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public LoginQuery As LoginQRY

Private Sub Class_Initialize()
    Set LoginQuery = New LoginQRY
End Sub

Private Sub Class_Terminate()
    Set LoginQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    getList = LoginQuery.getAdminLoginList(busqueda, NroPagina, "01/01/2000", "01/01/2100")
End Function

Function getCantidadLogin(busqueda As String, FechaDesde As String, FechaHasta As String) As Boolean
    getCantidadLogin = LoginQuery.getCantidadLogin(busqueda, "01/01/2000", "01/01/2100")
End Function


Function getListaLogin(busqueda As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    If FechaDesde = "" Or FechaHasta = "" Then
        getListaLogin = LoginQuery.getAdminLoginList(busqueda, NroPagina, "01/01/2000", "01/01/2100")
    Else
        getListaLogin = LoginQuery.getAdminLoginList(busqueda, NroPagina, FechaDesde, FechaHasta)
    End If
End Function


