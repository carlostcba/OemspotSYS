VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LoginSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim UsrQueryObject As UsrQRY
Dim EncryptionService As EncryptionSVR

Private Sub Class_Initialize()
    Set UsrQueryObject = New UsrQRY
    Set EncryptionService = New EncryptionSVR
End Sub

Private Sub Class_Terminate()
    Set UsrQueryObject = Nothing
    Set EncryptionService = Nothing
End Sub

Public Function authenticate(Nombre As String, Password As String) As Boolean
    Dim UsuarioID As Long

    UsuarioID = UsrQueryObject.authenticate(Nombre, EncryptionService.Encriptar(Password))

    If UsuarioID <> 0 Then
        UsuarioActivoSYS = UsuarioID
        
        
        'afa realizo registro de logueo de usuario
        
        Dim sql As String
        sql = "insert into usrlogin (usuarioid,fecha) values (" & UsuarioID & ",current_timestamp)"
        DbConnectionSYS.Execute (sql)
        
        
        authenticate = True
        
        
    Else
        authenticate = False
    End If
End Function
