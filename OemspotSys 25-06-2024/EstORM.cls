VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "EstORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim EstadoDataObject As EstDAO
Dim EstadoValDataObject As EstValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set EstadoDataObject = New EstDAO
    Set EstadoValDataObject = New EstValDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set EstadoDataObject = Nothing
    Set EstadoValDataObject = Nothing
End Sub

Public Function crearEstado(Nombre As String) As Long
    EstadoDataObject.Nombre = Nombre
    crearEstado = AsistenteDataObject.create(EstadoDataObject)
End Function

Public Function obtenerEstado(EstadoID As Long) As EstDAO
    EstadoDataObject.EstadoID = EstadoID
    If AsistenteDataObject.retrieve(EstadoDataObject) Then
        Set obtenerEstado = EstadoDataObject
    End If
End Function

Public Function actualizarEstado(EstadoID As Long, Nombre As String) As Boolean
    EstadoDataObject.EstadoID = EstadoID
    EstadoDataObject.Nombre = Nombre
    actualizarEstado = AsistenteDataObject.update(EstadoDataObject)
End Function

Public Function eliminarEstado(EstadoID As Long) As Boolean
    EstadoDataObject.EstadoID = EstadoID
    eliminarEstado = AsistenteDataObject.delete(EstadoDataObject)
End Function

Public Function getDescription(EstadoID As Long) As String
    EstadoDataObject.EstadoID = EstadoID
    If AsistenteDataObject.retrieve(EstadoDataObject) Then
        getDescription = EstadoDataObject.Nombre
    End If
End Function

Public Function crearEstVal(EstadoID As Long, ValorID As Long) As Long
    EstadoValDataObject.EstadoID = EstadoID
    EstadoValDataObject.ValorID = ValorID
    crearEstVal = AsistenteDataObject.create(EstadoValDataObject)
End Function

Public Function eliminarEstVal(EstadoID As Long, ValorID As Long) As Boolean
    EstadoValDataObject.EstadoID = EstadoID
    EstadoValDataObject.ValorID = ValorID
    eliminarEstVal = AsistenteDataObject.delete(EstadoValDataObject)
End Function
