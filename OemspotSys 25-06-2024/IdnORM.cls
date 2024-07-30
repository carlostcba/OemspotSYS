VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IdnORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim IdentificacionDataObject As IdnDAO
Dim IdnCatValDataObject As IdnCatValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set IdentificacionDataObject = New IdnDAO
    Set IdnCatValDataObject = New IdnCatValDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set IdentificacionDataObject = Nothing
    Set IdnCatValDataObject = Nothing
End Sub

Public Function crearIdentificacion(Numero As String) As Long
    IdentificacionDataObject.Numero = Numero
    crearIdentificacion = AsistenteDataObject.create(IdentificacionDataObject)
End Function

Public Function obtenerIdentificacion(IdentificacionID As Long) As IdnDAO
    IdentificacionDataObject.IdentificacionID = IdentificacionID
    If AsistenteDataObject.retrieve(IdentificacionDataObject) Then
        Set obtenerIdentificacion = IdentificacionDataObject
    End If
End Function

Public Function actualizarIdentificacion(IdentificacionID As Long, Numero As String) As Boolean
    IdentificacionDataObject.IdentificacionID = IdentificacionID
    IdentificacionDataObject.Numero = Numero
    actualizarIdentificacion = AsistenteDataObject.update(IdentificacionDataObject)
End Function

Public Function eliminarIdentificacion(IdentificacionID As Long) As Boolean
    IdentificacionDataObject.IdentificacionID = IdentificacionID
    eliminarIdentificacion = AsistenteDataObject.delete(IdentificacionDataObject)
End Function

Public Function eliminarIdentificacionCascada(IdentificacionID As Long) As Boolean
    IdentificacionDataObject.IdentificacionID = IdentificacionID
    eliminarIdentificacionCascada = AsistenteDataObject.delete(IdentificacionDataObject, True)
End Function


Public Function getDescription(IdentificacionID As Long) As String
    IdentificacionDataObject.IdentificacionID = IdentificacionID
    If AsistenteDataObject.retrieve(IdentificacionDataObject) Then
        getDescription = IdentificacionDataObject.Numero
    End If
End Function

Function crearIdnCatVal(IdentificacionID As Long, CategoriaID As Long, ValorID As Long) As Long
    IdnCatValDataObject.IdentificacionID = IdentificacionID
    IdnCatValDataObject.CategoriaID = CategoriaID
    IdnCatValDataObject.ValorID = ValorID
    crearIdnCatVal = AsistenteDataObject.create(IdnCatValDataObject)
End Function

Function eliminarIdnCatVal(IdentificacionID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    IdnCatValDataObject.IdentificacionID = IdentificacionID
    IdnCatValDataObject.CategoriaID = CategoriaID
    IdnCatValDataObject.ValorID = ValorID
    eliminarIdnCatVal = AsistenteDataObject.delete(IdnCatValDataObject)
End Function
