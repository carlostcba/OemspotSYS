VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GeoORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public AsistenteDataObject As AsistenteDAO
Public MdlDataObject As GeoDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set MdlDataObject = New GeoDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set MdlDataObject = Nothing
End Sub

Function crearGeo(Nombre As String, IpHost As String, CmdPort As String, DataPort As String, User As String, Psw As String) As Long
    MdlDataObject.Nombre = Nombre
    MdlDataObject.IpHost = IpHost
    MdlDataObject.CmdPort = CmdPort
    MdlDataObject.DataPort = DataPort
    MdlDataObject.User = User
    MdlDataObject.Psw = Psw
    crearGeo = AsistenteDataObject.create(MdlDataObject)
End Function

Function obtenerGeo(GeoID As Long) As MdlDAO
    MdlDataObject.GeoID = GeoID
    If AsistenteDataObject.retrieve(MdlDataObject) Then
        Set obtenerGeo = MdlDataObject
    End If
End Function

Function actualizarGeo(GeoID As Integer, Nombre As String, IpHost As String, CmdPort As String, DataPort As String, User As String, Psw As String) As Boolean
    MdlDataObject.GeoID = GeoID
    MdlDataObject.Nombre = Nombre
    MdlDataObject.IpHost = IpHost
    MdlDataObject.CmdPort = CmdPort
    MdlDataObject.DataPort = DataPort
    MdlDataObject.User = User
    MdlDataObject.Psw = Psw
    actualizarGeo = AsistenteDataObject.update(MdlDataObject)
End Function

Function eliminarGeo(GeoID As Long) As Boolean
    MdlDataObject.GeoID = GeoID
    eliminarGeo = AsistenteDataObject.delete(MdlDataObject)
End Function

Public Function getGrupos(GeoID As Long) As String

End Function
Public Function UpdateGrupos(grupos As String) As Boolean

' borro los grupos existentes


'cargo los nuevos grupos

End Function

