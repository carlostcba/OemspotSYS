VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PrfORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim PrfDataObject As PrfDAO
Dim PrfValDataObject As PrfValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set PrfDataObject = New PrfDAO
    Set PrfValDataObject = New PrfValDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PrfDataObject = Nothing
    Set PrfValDataObject = Nothing
End Sub

Function crearPerfil(Nombre As String, Descripcion As String) As Long
    PrfDataObject.Nombre = Nombre
    PrfDataObject.Descripcion = Descripcion
    crearPerfil = AsistenteDataObject.create(PrfDataObject)
End Function

Function obtenerPerfil(PerfilID As Long) As PrfDAO
    PrfDataObject.PerfilID = PerfilID
    If AsistenteDataObject.retrieve(PrfDataObject) Then
        Set obtenerPerfil = PrfDataObject
    End If
End Function

Function actualizarPerfil(PerfilID As Long, Nombre As String, Descripcion As String) As Boolean
    PrfDataObject.PerfilID = PerfilID
    PrfDataObject.Nombre = Nombre
    PrfDataObject.Descripcion = Descripcion
    actualizarPerfil = AsistenteDataObject.update(PrfDataObject)
End Function

Function eliminarPerfil(PerfilID As Long) As Boolean
    PrfDataObject.PerfilID = PerfilID
    eliminarPerfil = AsistenteDataObject.delete(PrfDataObject, True)
End Function

Public Function getDescription(PerfilID As Long) As String
    PrfDataObject.PerfilID = PerfilID
    If AsistenteDataObject.retrieve(PrfDataObject) Then
        getDescription = PrfDataObject.Nombre
    End If
End Function

Public Function crearPrfVal(PerfilID As Long, Dia As String, HoraInicio As String, HoraFin As String, Permanencia As String) As Long
    PrfValDataObject.PerfilID = PerfilID
    PrfValDataObject.Dia = Dia
    PrfValDataObject.HoraInicio = HoraInicio
    PrfValDataObject.HoraFin = HoraFin
    PrfValDataObject.Permanencia = Permanencia
    crearPrfVal = AsistenteDataObject.create(PrfValDataObject)
End Function

Public Function obtenerPrfVal(PerfilID As Long, ValorID As Long) As PrfValDAO
    PrfValDataObject.PerfilID = PerfilID
    PrfValDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(PrfValDataObject) Then
        Set obtenerPrfVal = PrfValDataObject
    End If
End Function

Public Function actualizarPrfVal(PerfilID As Long, ValorID As Long, Dia As String, HoraInicio As String, HoraFin As String, Permanencia As String) As Boolean
    PrfValDataObject.PerfilID = PerfilID
    PrfValDataObject.ValorID = ValorID
    PrfValDataObject.Dia = Dia
    PrfValDataObject.HoraInicio = HoraInicio
    PrfValDataObject.HoraFin = HoraFin
    PrfValDataObject.Permanencia = Permanencia
    actualizarPrfVal = AsistenteDataObject.update(PrfValDataObject)
End Function

Public Function eliminarPrfVal(PerfilID As Long, ValorID As Long) As Boolean
    PrfValDataObject.PerfilID = PerfilID
    PrfValDataObject.ValorID = ValorID
    eliminarPrfVal = AsistenteDataObject.delete(PrfValDataObject)
End Function
