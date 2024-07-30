VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PreORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim PreDataObject As PreDAO


Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set PreDataObject = New PreDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PreDataObject = Nothing
End Sub

Public Function crearPreautorizacion(LoteID As Long, Optional Entidad As String, Optional Apellido As String, Optional Nombre As String, Optional Motivo As String, Optional FechaInicio As String, Optional FechaFin As String) As Long
    PreDataObject.LoteID = LoteID
    PreDataObject.Entidad = Entidad
    PreDataObject.Apellido = Apellido
    PreDataObject.Nombre = Nombre
    PreDataObject.Motivo = Motivo
    PreDataObject.FechaInicio = FechaInicio
    PreDataObject.FechaFin = FechaFin
    crearPreautorizacion = AsistenteDataObject.create(PreDataObject)
End Function

Public Function obtenerPreautorizacion(LoteID As Long, Optional Entidad As String, Optional Apellido As String, Optional Nombre As String, Optional Motivo As String, Optional FechaInicio As String, Optional FechaFin As String) As Long
    PreDataObject.LoteID = LoteID
    PreDataObject.Entidad = Entidad
    PreDataObject.Apellido = Apellido
    PreDataObject.Nombre = Nombre
    PreDataObject.Motivo = Motivo
    PreDataObject.FechaInicio = FechaInicio
    PreDataObject.FechaFin = FechaFin
    obtenerPreautorizacion = AsistenteDataObject.retrieve(PreDataObject)
End Function

Public Function borrarPreautorizacion(ByRef preautorizadoID_ As Long) As Boolean
On Error GoTo Salir
    PreDataObject.PreautorizadoID = preautorizadoID_
    borrarPreautorizacion = AsistenteDataObject.delete(PreDataObject)
Salir:
End Function

