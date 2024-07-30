VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminLicenciasSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public AsistenteDataObject As AsistenteDAO
Public LicenciaQuery As LicQRY
Public NslDataObject As NslDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set LicenciaQuery = New LicQRY
    Set NslDataObject = New NslDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set LicenciaQuery = Nothing
    Set NslDataObject = Nothing
End Sub

Function getLicencias() As Boolean
    If LicenciaQuery.getLicencias() Then
        getLicencias = True
    Else
        getLicencias = False
    End If
End Function

Function getLicenciasDisponibles() As Boolean
    If LicenciaQuery.getLicenciasDisponibles() Then
        getLicenciasDisponibles = True
    Else
        getLicenciasDisponibles = False
    End If
End Function

Function getLicenciasASolicitar() As Boolean
    If LicenciaQuery.getLicenciasASolicitar() Then
        getLicenciasASolicitar = True
    Else
        getLicenciasASolicitar = False
    End If
End Function

Function getLicenciasYaInstaladas() As Boolean
    If LicenciaQuery.getLicenciasYaInstaladas() Then
        getLicenciasYaInstaladas = True
    Else
        getLicenciasYaInstaladas = False
    End If
End Function

Public Function crearNuevoItemSolictudLicencia(LicenciaID As Long) As Long
    NslDataObject.UsuarioID = UsuarioActivoSYS
    NslDataObject.LicenciaID = LicenciaID
    crearNuevoItemSolictudLicencia = AsistenteDataObject.create(NslDataObject)
End Function

Public Function eliminarNuevoItemSolictudLicencia(LicenciaID As Long) As Boolean
    NslDataObject.UsuarioID = UsuarioActivoSYS
    NslDataObject.LicenciaID = LicenciaID
    eliminarNuevoItemSolictudLicencia = AsistenteDataObject.delete(NslDataObject)
End Function

Public Function limpiarItemsNuevaSolicitud() As Boolean
    If LicenciaQuery.limpiarItemsNuevaSolicitud(UsuarioActivoSYS) Then
        limpiarItemsNuevaSolicitud = True
    Else
        limpiarItemsNuevaSolicitud = False
    End If
End Function
