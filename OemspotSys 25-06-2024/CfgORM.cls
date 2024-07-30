VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CfgORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim CfgDataObject As CfgDAO
Dim CfgOptDataObject As CfgOptDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set CfgDataObject = New CfgDAO
    Set CfgOptDataObject = New CfgOptDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set CfgDataObject = Nothing
    Set CfgOptDataObject = Nothing
End Sub

Function crearConfiguracion(Nombre As String, SystemParameter As Integer) As Long
    CfgDataObject.Nombre = Nombre
    CfgDataObject.SystemParameter = SystemParameter
    crearConfiguracion = AsistenteDataObject.create(CfgDataObject)
End Function

Function obtenerConfiguracion(ConfiguracionID As Long) As CfgDAO
    CfgDataObject.ConfiguracionID = ConfiguracionID
    If AsistenteDataObject.retrieve(CfgDataObject) Then
        Set obtenerConfiguracion = CfgDataObject
    End If
End Function

Function actualizarConfiguracion(ConfiguracionID As Long, Nombre As String) As Boolean
    CfgDataObject.ConfiguracionID = ConfiguracionID
    CfgDataObject.Nombre = Nombre
    actualizarConfiguracion = AsistenteDataObject.update(CfgDataObject)
End Function

Function eliminarConfiguracion(ConfiguracionID As Long) As Boolean
    CfgDataObject.ConfiguracionID = ConfiguracionID
    eliminarConfiguracion = AsistenteDataObject.delete(CfgDataObject)
End Function

Function crearCfgOpt(ConfiguracionID As Long, Nombre As String, Valor As String, SystemParameter As Integer) As Long
    CfgOptDataObject.ConfiguracionID = ConfiguracionID
    CfgOptDataObject.Nombre = Nombre
    CfgOptDataObject.Valor = Valor
    CfgOptDataObject.SystemParameter = SystemParameter
    crearCfgOpt = AsistenteDataObject.create(CfgOptDataObject)
End Function

Function obtenerCfgOpt(ConfiguracionID As Long, OpcionID As Long) As CfgOptDAO
    CfgOptDataObject.ConfiguracionID = ConfiguracionID
    CfgOptDataObject.OpcionID = OpcionID
    If AsistenteDataObject.retrieve(CfgOptDataObject) Then
        Set obtenerCfgOpt = CfgOptDataObject
    End If
End Function

Function actualizarCfgOpt(ConfiguracionID As Long, OpcionID As Long, Nombre As String, Valor As String) As Long
    CfgOptDataObject.ConfiguracionID = ConfiguracionID
    CfgOptDataObject.OpcionID = OpcionID
    CfgOptDataObject.Nombre = Nombre
    CfgOptDataObject.Valor = Valor
    actualizarCfgOpt = AsistenteDataObject.update(CfgOptDataObject)
End Function

Function eliminarCfgOpt(ConfiguracionID As Long, OpcionID As Long) As Boolean
    CfgOptDataObject.ConfiguracionID = ConfiguracionID
    CfgOptDataObject.OpcionID = OpcionID
    eliminarCfgOpt = AsistenteDataObject.delete(CfgOptDataObject)
End Function
