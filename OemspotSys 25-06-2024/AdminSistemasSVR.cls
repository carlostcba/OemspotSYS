VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminSistemasSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ConfiguracionOrm As CfgORM
Public ConfiguracionQuery As CfgQRY

Private Sub Class_Initialize()
    Set ConfiguracionOrm = New CfgORM
    Set ConfiguracionQuery = New CfgQRY
End Sub

Private Sub Class_Terminate()
    Set ConfiguracionOrm = Nothing
    Set ConfiguracionQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    If ConfiguracionQuery.getAdminConfiguracionesList(busqueda, NroPagina) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If ConfiguracionQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function

Function getOpcionesList(ConfiguracionID As Long) As Boolean
    If ConfiguracionQuery.getOpciones(ConfiguracionID) Then
        getOpcionesList = True
    Else
        getOpcionesList = False
    End If
End Function

Function getConfiguracionID(Nombre As String) As String
    If ConfiguracionQuery.getConfiguracionID(Nombre) Then
        getConfiguracionID = ConfiguracionQuery.DbRecordsetQRY.Fields(0).value
    End If
End Function

Function getConfiguracionOpcionID(ConfiguracionID As Long, Nombre As String) As String
    If ConfiguracionQuery.getConfiguracionOpcionID(ConfiguracionID, Nombre) Then
        getConfiguracionOpcionID = ConfiguracionQuery.DbRecordsetQRY.Fields(0).value
    End If
End Function

Function actualizarIdioma(ConfiguracionID As Long, OpcionID As Long, Nombre As String, Valor As String) As String
    ConfiguracionQuery.actualizarIdioma ConfiguracionID, OpcionID, Nombre, Valor
End Function
