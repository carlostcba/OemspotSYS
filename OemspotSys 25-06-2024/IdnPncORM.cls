VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IdnPncORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim IdentificacionDataObject As IdnDAO
Dim IdnPncDataObject As IdnPncDAO
Dim IdnCatValDataObject As IdnCatValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set IdentificacionDataObject = New IdnDAO
    Set IdnPncDataObject = New IdnPncDAO
    Set IdnCatValDataObject = New IdnCatValDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set IdentificacionDataObject = Nothing
    Set IdnPncDataObject = Nothing
    Set IdnCatValDataObject = Nothing
End Sub

Public Function crearIdentificacionPanico(IdentificacionID As Long) As Boolean
    IdnPncDataObject.IdentificacionID = IdentificacionID
    crearIdentificacionPanico = (AsistenteDataObject.create(IdnPncDataObject) = 0)
End Function

Public Function obtenerIdentificacionPanico(IdentificacionID As Long) As IdnPncDAO
    IdnPncDataObject.IdentificacionID = IdentificacionID
    If AsistenteDataObject.retrieve(IdnPncDataObject) Then
        Set obtenerIdentificacionPanico = IdnPncDataObject
    End If
End Function

Public Function actualizarIdentificacionPanico(IdentificacionID As Long) As Boolean
    IdnPncDataObject.IdentificacionID = IdentificacionID
    actualizarIdentificacionPanico = AsistenteDataObject.update(IdnPncDataObject)
End Function

Public Function eliminarIdentificacionPanico(IdentificacionID As Long) As Boolean
    IdnPncDataObject.IdentificacionID = IdentificacionID
    eliminarIdentificacionPanico = AsistenteDataObject.delete(IdnPncDataObject)
End Function

Public Function eliminarIdentificacionPanicoCascada(IdentificacionID As Long) As Boolean
    IdnPncDataObject.IdentificacionID = IdentificacionID
    eliminarIdentificacionPanicoCascada = AsistenteDataObject.delete(IdnPncDataObject, True)
End Function

Public Function getDescription(IdentificacionID As Long) As String
    IdnPncDataObject.IdentificacionID = IdentificacionID
    If AsistenteDataObject.retrieve(IdnPncDataObject) Then
        getDescription = IdnPncDataObject.IdentificacionID
    End If
End Function
