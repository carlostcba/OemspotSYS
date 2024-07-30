VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminPerfilesSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public PerfilOrm As PrfORM
Public PerfilQuery As PrfQRY

Private Sub Class_Initialize()
    Set PerfilOrm = New PrfORM
    Set PerfilQuery = New PrfQRY
End Sub

Private Sub Class_Terminate()
    Set PerfilOrm = Nothing
    Set PerfilQuery = Nothing
End Sub


Function getList(busqueda As String, NroPagina As Long) As Boolean
    If PerfilQuery.getAdminPerfilesList(busqueda, NroPagina) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If PerfilQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function

Function getItemsList(PerfilID As Long) As Boolean
    If PerfilQuery.getItemsList(PerfilID) Then
        getItemsList = True
    Else
        getItemsList = False
    End If
End Function

