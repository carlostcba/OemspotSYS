VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "UsrORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim UsrDataObject As UsrDAO
Dim UsrCatValDataObject As UsrCatValDAO
Dim UsrEstValDataObject As UsrEstValDAO
Dim EncryptionService As EncryptionSVR

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set UsrDataObject = New UsrDAO
    Set UsrCatValDataObject = New UsrCatValDAO
    Set UsrEstValDataObject = New UsrEstValDAO
    Set EncryptionService = New EncryptionSVR
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set UsrDataObject = Nothing
    Set UsrCatValDataObject = Nothing
    Set UsrEstValDataObject = Nothing
    Set EncryptionService = Nothing
End Sub

Function crearUsuario(Nombre As String, Password As String, SystemParameter As Integer) As Long
    UsrDataObject.Nombre = Nombre
    UsrDataObject.Password = EncryptionService.Encriptar(Password)
    UsrDataObject.SystemParameter = SystemParameter
    crearUsuario = AsistenteDataObject.create(UsrDataObject)
End Function

Function obtenerUsuario(UsuarioID As Long) As UsrDAO
    UsrDataObject.UsuarioID = UsuarioID
    If AsistenteDataObject.retrieve(UsrDataObject) Then
        Set obtenerUsuario = UsrDataObject
    End If
End Function

Function actualizarUsuario(UsuarioID As Long, Nombre As String, Password As String) As Boolean
    UsrDataObject.UsuarioID = UsuarioID
    UsrDataObject.Nombre = Nombre
    UsrDataObject.Password = EncryptionService.Encriptar(Password)
    actualizarUsuario = AsistenteDataObject.update(UsrDataObject)
End Function

Function eliminarUsuario(UsuarioID As Long) As Boolean
    UsrDataObject.UsuarioID = UsuarioID
    eliminarUsuario = AsistenteDataObject.delete(UsrDataObject)
End Function

Function crearUsrCatVal(UsuarioID As Long, CategoriaID As Long, ValorID As Long) As Long
    UsrCatValDataObject.UsuarioID = UsuarioID
    UsrCatValDataObject.CategoriaID = CategoriaID
    UsrCatValDataObject.ValorID = ValorID
    crearUsrCatVal = AsistenteDataObject.create(UsrCatValDataObject)
End Function

Function eliminarUsrCatVal(UsuarioID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    UsrCatValDataObject.UsuarioID = UsuarioID
    UsrCatValDataObject.CategoriaID = CategoriaID
    UsrCatValDataObject.ValorID = ValorID
    eliminarUsrCatVal = AsistenteDataObject.delete(UsrCatValDataObject)
End Function

Function crearUsrEstVal(UsuarioID As Long, EstadoID As Long, ValorID As Long) As Long
    UsrEstValDataObject.UsuarioID = UsuarioID
    UsrEstValDataObject.EstadoID = EstadoID
    UsrEstValDataObject.ValorID = ValorID
    crearUsrEstVal = AsistenteDataObject.create(UsrEstValDataObject)
End Function

Function eliminarUsrEstVal(UsuarioID As Long, EstadoID As Long, ValorID As Long) As Boolean
    UsrEstValDataObject.UsuarioID = UsuarioID
    UsrEstValDataObject.EstadoID = EstadoID
    UsrEstValDataObject.ValorID = ValorID
    eliminarUsrEstVal = AsistenteDataObject.delete(UsrEstValDataObject)
End Function
