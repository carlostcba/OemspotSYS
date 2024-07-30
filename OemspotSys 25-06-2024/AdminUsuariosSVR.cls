VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminUsuariosSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public UsuarioOrm As UsrORM
Public UsuarioQuery As UsrQRY

Private Sub Class_Initialize()
    Set UsuarioOrm = New UsrORM
    Set UsuarioQuery = New UsrQRY
End Sub

Private Sub Class_Terminate()
    Set UsuarioOrm = Nothing
    Set UsuarioQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    If UsuarioQuery.getAdminUsuariosList(busqueda, NroPagina) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If UsuarioQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function

Function getPerfiles() As Boolean
    If UsuarioQuery.getPerfiles(0) Then
        getPerfiles = True
    Else
        getPerfiles = False
    End If
End Function

Function getPerfilesList(UsuarioID As Long) As Boolean
    If UsuarioQuery.getPerfiles(UsuarioID) Then
        getPerfilesList = True
    Else
        getPerfilesList = False
    End If
End Function

' Verifica si tiene Licencia para creación de más usuarios
Function tieneLicencias() As Boolean

    Dim CantidadUsuariosActuales As Integer
    Dim CantidadUsuarios As Integer

    ' Obtener cantidad de Módulos actuales
    If UsuarioQuery.obtenerCantidadUsuarios Then
        CantidadUsuariosActuales = CInt(UsuarioQuery.DbRecordsetQRY.Fields(0).value) - 1 ' es -1, porque hay un usuario AdminTool de Sistema oculto
    End If

    ' Verificar si se tiene licencia para crear otro Usuario

    tieneLicencias = False

    CantidadUsuarios = CantidadUsuariosActuales + 1

    If CantidadUsuarios > 4 And validarLicencia(LIC_MAS_4_USUARIOS) Then
        tieneLicencias = True
    ElseIf CantidadUsuarios <= 4 And validarLicencia(LIC_4_USUARIOS) Then
        tieneLicencias = True
    ElseIf CantidadUsuarios <= 2 And validarLicencia(LIC_2_USUARIOS) Then
        tieneLicencias = True
    Else ' EL SISTEMA BASICO PERMITE CARGAR 1 USUARIO
        tieneLicencias = False
    End If

End Function
