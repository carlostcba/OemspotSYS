VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ArbORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim ArbDataObject As ArbDAO
Dim ArbItmDataObject As ArbItmDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set ArbDataObject = New ArbDAO
    Set ArbItmDataObject = New ArbItmDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set ArbDataObject = Nothing
    Set ArbItmDataObject = Nothing
End Sub

Function crearArbol(Nombre As String, SystemParameter As Integer) As Long
    ArbDataObject.Nombre = Nombre
    ArbDataObject.SystemParameter = SystemParameter
    crearArbol = AsistenteDataObject.create(ArbDataObject)
End Function

Function obtenerArbol(ArbolID As Long) As ArbDAO
    ArbDataObject.ArbolID = ArbolID
    If AsistenteDataObject.retrieve(ArbDataObject) Then
        Set obtenerArbol = ArbDataObject
    End If
End Function

Function actualizarArbol(ArbolID As Long, Nombre As String) As Boolean
    ArbDataObject.ArbolID = ArbolID
    ArbDataObject.Nombre = Nombre
    actualizarArbol = AsistenteDataObject.update(ArbDataObject)
End Function

Function eliminarArbol(ArbolID As Long) As Boolean
    ArbDataObject.ArbolID = ArbolID
    eliminarArbol = AsistenteDataObject.delete(ArbDataObject)
End Function

Function crearArbItm(ArbolID As Long, Nombre As String, ParentID As Long, Orden As Long, SystemParameter As Integer) As Long
    ArbItmDataObject.ArbolID = ArbolID
    ArbItmDataObject.Nombre = Nombre
    ArbItmDataObject.ParentID = ParentID
    ArbItmDataObject.Orden = Orden
    ArbItmDataObject.SystemParameter = SystemParameter
    crearArbItm = AsistenteDataObject.create(ArbItmDataObject)
End Function

Function obtenerArbItm(ArbolID As Long, ItemID As Long) As ArbItmDAO
    ArbItmDataObject.ArbolID = ArbolID
    ArbItmDataObject.ItemID = ItemID
    If AsistenteDataObject.retrieve(ArbItmDataObject) Then
        Set obtenerArbItm = ArbItmDataObject
    End If
End Function

Function actualizarArbItm(ArbolID As Long, ItemID As Long, Nombre As String, ParentID As Long, Orden As Long) As Long
    ArbItmDataObject.ArbolID = ArbolID
    ArbItmDataObject.ItemID = ItemID
    ArbItmDataObject.Nombre = Nombre
    ArbItmDataObject.ParentID = ParentID
    ArbItmDataObject.Orden = Orden
    actualizarArbItm = AsistenteDataObject.update(ArbItmDataObject)
End Function

Function eliminarArbItm(ArbolID As Long, ItemID As Long) As Boolean
    ArbItmDataObject.ArbolID = ArbolID
    ArbItmDataObject.ItemID = ItemID
    eliminarArbItm = AsistenteDataObject.delete(ArbItmDataObject)
End Function
