VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminAutosSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public AutosOrm As AutORM
Public AutosQuery As AutQRY

Private Sub Class_Initialize()
    Set AutosOrm = New AutORM
    Set AutosQuery = New AutQRY
End Sub

Private Sub Class_Terminate()
    Set AutosOrm = Nothing
    Set AutosQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
   getList = AutosQuery.getAdminAutosList(busqueda, NroPagina)
End Function

Function getCantidadItems(busqueda As String) As Boolean
    getCantidadItems = AutosQuery.getCantidadItems(busqueda)
End Function


Function getPrxList(AutoID As Long) As Boolean
    If AutosQuery.getAdminAutosPrxList(AutoID) Then
        getPrxList = True
    Else
        getPrxList = False
    End If
End Function
