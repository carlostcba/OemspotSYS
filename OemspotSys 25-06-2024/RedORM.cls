VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "RedORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim RedDataObject As RedDAO
Dim RedNodDataObject As RedNodDAO
Dim RedNodLnkDataObject As RedNodLnkDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set RedDataObject = New RedDAO
    Set RedNodDataObject = New RedNodDAO
    Set RedNodLnkDataObject = New RedNodLnkDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set RedDataObject = Nothing
    Set RedNodDataObject = Nothing
    Set RedNodLnkDataObject = Nothing
End Sub

Function crearRed(Nombre As String, SystemParameter As Integer) As Long
    RedDataObject.Nombre = Nombre
    RedDataObject.SystemParameter = SystemParameter
    crearRed = AsistenteDataObject.create(RedDataObject)
End Function

Function obtenerRed(RedID As Long) As RedDAO
    RedDataObject.RedID = RedID
    If AsistenteDataObject.retrieve(RedDataObject) Then
        Set obtenerRed = RedDataObject
    End If
End Function

Function actualizarRed(RedID As Long, Nombre As String) As Boolean
    RedDataObject.RedID = RedID
    RedDataObject.Nombre = Nombre
    actualizarRed = AsistenteDataObject.update(RedDataObject)
End Function

Function eliminarRed(RedID As Long) As Boolean
    RedDataObject.RedID = RedID
    eliminarRed = AsistenteDataObject.delete(RedDataObject)
End Function

Function crearRedNod(RedID As Long, Nombre As String, SystemParameter As Integer) As Long
    RedNodDataObject.RedID = RedID
    RedNodDataObject.Nombre = Nombre
    RedNodDataObject.SystemParameter = SystemParameter
    crearRedNod = AsistenteDataObject.create(RedNodDataObject)
End Function

Function obtenerRedNod(RedID As Long, NodoID As Long) As RedNodDAO
    RedNodDataObject.RedID = RedID
    RedNodDataObject.NodoID = NodoID
    If AsistenteDataObject.retrieve(RedNodDataObject) Then
        Set obtenerRedNod = RedNodDataObject
    End If
End Function

Function actualizarRedNod(RedID As Long, NodoID As Long, Nombre As String) As Long
    RedNodDataObject.RedID = RedID
    RedNodDataObject.NodoID = NodoID
    RedNodDataObject.Nombre = Nombre
    actualizarRedNod = AsistenteDataObject.update(RedNodDataObject)
End Function

Function eliminarRedNod(RedID As Long, NodoID As Long) As Boolean
    RedNodDataObject.RedID = RedID
    RedNodDataObject.NodoID = NodoID
    eliminarRedNod = AsistenteDataObject.delete(RedNodDataObject)
End Function

Function crearRedNodLnk(RedID As Long, NodoID As Long, Nombre As String, SystemParameter As Integer) As Long
    RedNodLnkDataObject.RedID = RedID
    RedNodLnkDataObject.NodoID = NodoID
    RedNodLnkDataObject.Nombre = Nombre
    RedNodLnkDataObject.SystemParameter = SystemParameter
    crearRedNodLnk = AsistenteDataObject.create(RedNodLnkDataObject)
End Function

Function obtenerRedNodLnk(RedID As Long, NodoID As Long, LinkID As Long) As RedNodLnkDAO
    RedNodLnkDataObject.RedID = RedID
    RedNodLnkDataObject.NodoID = NodoID
    RedNodLnkDataObject.LinkID = LinkID
    If AsistenteDataObject.retrieve(RedNodLnkDataObject) Then
        Set obtenerRedNodLnk = RedNodLnkDataObject
    End If
End Function

Function actualizarRedNodLnk(RedID As Long, NodoID As Long, LinkID As Long, Nombre As String) As Long
    RedNodLnkDataObject.RedID = RedID
    RedNodLnkDataObject.NodoID = NodoID
    RedNodLnkDataObject.LinkID = LinkID
    RedNodLnkDataObject.Nombre = Nombre
    actualizarRedNodLnk = AsistenteDataObject.update(RedNodLnkDataObject)
End Function

Function eliminarRedNodLnk(RedID As Long, NodoID As Long, LinkID As Long) As Boolean
    RedNodLnkDataObject.RedID = RedID
    RedNodLnkDataObject.NodoID = NodoID
    RedNodLnkDataObject.NodoID = LinkID
    eliminarRedNodLnk = AsistenteDataObject.delete(RedNodLnkDataObject)
End Function
