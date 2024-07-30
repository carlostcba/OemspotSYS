VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PreSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public PreORM As PreORM
Public PreQuery As PreQRY

Private Sub Class_Initialize()
    Set PreORM = New PreORM
    Set PreQuery = New PreQRY
End Sub

Private Sub Class_Terminate()
    Set PreORM = Nothing
    Set PreQuery = Nothing
End Sub


Function getList(busqueda() As String, NroPagina As Long) As Boolean
    getList = PreQuery.getPreautorizadasList(busqueda(), NroPagina)
End Function

Function getCantidadItems(busqueda() As String) As Boolean
    getCantidadItems = PreQuery.getCantidadItems(busqueda())
End Function
