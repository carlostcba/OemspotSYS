VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminCategoriasSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public CategoriasOrm As CatORM
Public CategoriasQuery As CatQRY

Private Sub Class_Initialize()
    Set CategoriasOrm = New CatORM
    Set CategoriasQuery = New CatQRY
End Sub

Private Sub Class_Terminate()
    Set CategoriasOrm = Nothing
    Set CategoriasQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    If CategoriasQuery.getAdminCategoriasList(busqueda, NroPagina) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If CategoriasQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function


Function getCategoriasValoresList(CategoriaID As Long) As Boolean
    If CategoriasQuery.getCategoriasValoresList(CategoriaID) Then
        getCategoriasValoresList = True
    Else
        getCategoriasValoresList = False
    End If
End Function
