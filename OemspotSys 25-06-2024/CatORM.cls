VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CatORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim categoriaDataObject As CatDAO
Dim CategoriaValDataObject As CatValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set categoriaDataObject = New CatDAO
    Set CategoriaValDataObject = New CatValDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set categoriaDataObject = Nothing
    Set CategoriaValDataObject = Nothing
End Sub

Public Function crearCategoria(Nombre As String, SystemParameter As Long) As Long
    categoriaDataObject.Nombre = Nombre
    categoriaDataObject.SystemParameter = SystemParameter
    crearCategoria = AsistenteDataObject.create(categoriaDataObject)
End Function

Public Function obtenerCategoria(CategoriaID As Long) As CatDAO
    categoriaDataObject.CategoriaID = CategoriaID
    If AsistenteDataObject.retrieve(categoriaDataObject) Then
        Set obtenerCategoria = categoriaDataObject
    End If
End Function

Public Function actualizarCategoria(CategoriaID As Long, Nombre As String) As Boolean
    categoriaDataObject.CategoriaID = CategoriaID
    categoriaDataObject.Nombre = Nombre
    actualizarCategoria = AsistenteDataObject.update(categoriaDataObject)
End Function

Public Function eliminarCategoria(CategoriaID As Long) As Boolean
    categoriaDataObject.CategoriaID = CategoriaID
    eliminarCategoria = AsistenteDataObject.delete(categoriaDataObject)
End Function

Public Function getDescription(CategoriaID As Long) As String
    categoriaDataObject.CategoriaID = CategoriaID
    If AsistenteDataObject.retrieve(categoriaDataObject) Then
        getDescription = categoriaDataObject.Nombre
    End If
End Function

Public Function crearCatVal(CategoriaID As Long, Nombre As String, SystemParameter As Long) As Long
    CategoriaValDataObject.CategoriaID = CategoriaID
    CategoriaValDataObject.Nombre = Nombre
    CategoriaValDataObject.SystemParameter = SystemParameter
    crearCatVal = AsistenteDataObject.create(CategoriaValDataObject)
End Function

Public Function obtenerCategoriaVal(CategoriaID As Long, ValorID As Long) As CatValDAO
    CategoriaValDataObject.CategoriaID = CategoriaID
    CategoriaValDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(CategoriaValDataObject) Then
        Set obtenerCategoriaVal = CategoriaValDataObject
    End If
End Function

Public Function actualizarCatVal(CategoriaID As Long, ValorID As Long, Nombre As String) As Boolean
    CategoriaValDataObject.CategoriaID = CategoriaID
    CategoriaValDataObject.ValorID = ValorID
    CategoriaValDataObject.Nombre = Nombre
    actualizarCatVal = AsistenteDataObject.update(CategoriaValDataObject)
End Function

Public Function eliminarCatVal(CategoriaID As Long, ValorID As Long) As Boolean
    CategoriaValDataObject.CategoriaID = CategoriaID
    CategoriaValDataObject.ValorID = ValorID
    eliminarCatVal = AsistenteDataObject.delete(CategoriaValDataObject)
End Function
