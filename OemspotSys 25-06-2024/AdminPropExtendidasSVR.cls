VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminPropExtendidasSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public PropExtendidasOrm As PrxORM
Public PropExtendidasQuery As PrxQRY

Private Sub Class_Initialize()
    Set PropExtendidasOrm = New PrxORM
    Set PropExtendidasQuery = New PrxQRY
End Sub

Private Sub Class_Terminate()
    Set PropExtendidasOrm = Nothing
    Set PropExtendidasQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    If PropExtendidasQuery.getAdminPropiedadesList(busqueda, NroPagina) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If PropExtendidasQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function

Function getAdminPropiedadesCompleta(busqueda As String) As Boolean
    If PropExtendidasQuery.getAdminPropiedadesCompleta(busqueda) Then
        getAdminPropiedadesCompleta = True
    Else
        getAdminPropiedadesCompleta = False
    End If
End Function

