VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminIdentificacionesSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public IdentificacionOrm As IdnORM
Public IdentificacionQuery As IdnQRY
Public IdnPncOrm As IdnPncOrm
Public idnpncquery As IdnPncQRY

Private Sub Class_Initialize()
    Set IdentificacionOrm = New IdnORM
    Set IdentificacionQuery = New IdnQRY
    Set IdnPncOrm = New IdnPncOrm
    Set idnpncquery = New IdnPncQRY
End Sub

Private Sub Class_Terminate()
    Set IdentificacionOrm = Nothing
    Set IdentificacionQuery = Nothing
    Set IdnPncOrm = Nothing
    Set idnpncquery = Nothing
End Sub

Function getList(busqueda() As String, NroPagina As Long) As Boolean
    getList = IdentificacionQuery.getAdminIdentificacionsList(busqueda(), NroPagina)
End Function

Function getCantidadItems(busqueda() As String) As Boolean
    getCantidadItems = IdentificacionQuery.getCantidadItems(busqueda())
End Function

Function IdentificacionYaAsignada(IdentificacionID As Long) As Boolean
    If IdentificacionQuery.IdentificacionYaAsignada(IdentificacionID) Then
        IdentificacionYaAsignada = True
    Else
        IdentificacionYaAsignada = False
    End If
End Function


Function ExisteIdentificacion_Numero_Tipo(ByRef Numero As String, ByRef tipo As Long) As Boolean
    If IdentificacionQuery.ExisteIdentificacion_Numero_Tipo(Numero, tipo) Then
        ExisteIdentificacion_Numero_Tipo = True
    Else
        ExisteIdentificacion_Numero_Tipo = False
    End If
End Function



