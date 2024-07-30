VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PrxORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim PrxDataObject As PrxDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set PrxDataObject = New PrxDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PrxDataObject = Nothing
End Sub

Function crearPropiedad(Nombre As String, Descripcion As String) As Long
    PrxDataObject.Nombre = Nombre
    PrxDataObject.Descripcion = Descripcion
    crearPropiedad = AsistenteDataObject.create(PrxDataObject)
End Function

Function obtenerPropiedad(PropiedadID As Long) As PrxDAO
    PrxDataObject.PropiedadID = PropiedadID
    If AsistenteDataObject.retrieve(PrxDataObject) Then
        Set obtenerPropiedad = PrxDataObject
    End If
End Function

Function actualizarPropiedad(PropiedadID As Long, Nombre As String, Descripcion As String) As Boolean
    PrxDataObject.PropiedadID = PropiedadID
    PrxDataObject.Nombre = Nombre
    PrxDataObject.Descripcion = Descripcion
    actualizarPropiedad = AsistenteDataObject.update(PrxDataObject)
End Function

Function eliminarPropiedad(PropiedadID As Long) As Boolean
    PrxDataObject.PropiedadID = PropiedadID
    eliminarPropiedad = AsistenteDataObject.delete(PrxDataObject)
End Function

Public Function getDescription(PropiedadID As Long) As String
    PrxDataObject.PropiedadID = PropiedadID
    If AsistenteDataObject.retrieve(PrxDataObject) Then
        getDescription = PrxDataObject.Nombre
    End If
End Function
