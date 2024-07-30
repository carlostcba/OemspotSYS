VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "WksORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim WksDataObject As WksDAO
Dim WksOptDataObject As WksOptDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set WksDataObject = New WksDAO
    Set WksOptDataObject = New WksOptDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set WksDataObject = Nothing
    Set WksOptDataObject = Nothing
End Sub

Function crearWorkstation(Nombre As String, SystemParameter As Integer) As Long
    WksDataObject.Nombre = Nombre
    WksDataObject.SystemParameter = SystemParameter
    crearWorkstation = AsistenteDataObject.create(WksDataObject)
End Function

Function obtenerWorkstation(WorkstationID As Long) As WksDAO
    WksDataObject.WorkstationID = WorkstationID
    If AsistenteDataObject.retrieve(WksDataObject) Then
        Set obtenerWorkstation = WksDataObject
    End If
End Function

Function actualizarWorkstation(WorkstationID As Long, Nombre As String) As Boolean
    WksDataObject.WorkstationID = WorkstationID
    WksDataObject.Nombre = Nombre
    actualizarWorkstation = AsistenteDataObject.update(WksDataObject)
End Function

Function eliminarWorkstation(WorkstationID As Long) As Boolean
    WksDataObject.WorkstationID = WorkstationID
    eliminarWorkstation = AsistenteDataObject.delete(WksDataObject)
End Function

Function crearWksOpt(WorkstationID As Long, Nombre As String, Valor As String, SystemParameter As Integer) As Long
    WksOptDataObject.WorkstationID = WorkstationID
    WksOptDataObject.Nombre = Nombre
    WksOptDataObject.Valor = Valor
    WksOptDataObject.SystemParameter = SystemParameter
    crearWksOpt = AsistenteDataObject.create(WksOptDataObject)
End Function

Function obtenerWksOpt(WorkstationID As Long, OpcionID As Long) As WksOptDAO
    WksOptDataObject.WorkstationID = WorkstationID
    WksOptDataObject.OpcionID = OpcionID
    If AsistenteDataObject.retrieve(WksOptDataObject) Then
        Set obtenerWksOpt = WksOptDataObject
    End If
End Function

Function actualizarWksOpt(WorkstationID As Long, OpcionID As Long, Nombre As String, Valor As String) As Long
    WksOptDataObject.WorkstationID = WorkstationID
    WksOptDataObject.OpcionID = OpcionID
    WksOptDataObject.Nombre = Nombre
    WksOptDataObject.Valor = Valor
    actualizarWksOpt = AsistenteDataObject.update(WksOptDataObject)
End Function

Function eliminarWksOpt(WorkstationID As Long, OpcionID As Long) As Boolean
    WksOptDataObject.WorkstationID = WorkstationID
    WksOptDataObject.OpcionID = OpcionID
    eliminarWksOpt = AsistenteDataObject.delete(WksOptDataObject)
End Function
