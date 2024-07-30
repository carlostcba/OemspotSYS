VERSION 5.00
Begin VB.UserControl CambioDeClaveGUI 
   ClientHeight    =   2565
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4575
   KeyPreview      =   -1  'True
   ScaleHeight     =   2565
   ScaleWidth      =   4575
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   3000
      TabIndex        =   5
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Cambiar"
      Height          =   255
      Left            =   1440
      TabIndex        =   4
      Top             =   2160
      Width           =   1335
   End
   Begin VB.TextBox txtUsuario 
      Enabled         =   0   'False
      Height          =   285
      Left            =   2040
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
   Begin VB.TextBox txtPasswordActual 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2040
      MaxLength       =   32
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   600
      Width           =   2295
   End
   Begin VB.TextBox txtPasswordNueva 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2040
      MaxLength       =   32
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   1080
      Width           =   2295
   End
   Begin VB.TextBox txtRepetirPasswordNueva 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2040
      MaxLength       =   32
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4440
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Label lblUsuario 
      Caption         =   "Usuario:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblPasswordActual 
      Caption         =   "Password Actual:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   600
      Width           =   1935
   End
   Begin VB.Label lblPasswordNueva 
      Caption         =   "Password Nueva:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label lblRepitaPasswordNueva 
      Caption         =   "Repita Password Nueva:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1560
      Width           =   1935
   End
End
Attribute VB_Name = "CambioDeClaveGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private AsistenteDataObject As AsistenteDAO
Private UserDataObject As UsrDAO
Private EncryptionService As EncryptionSVR

Private Sub UserControl_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set UserDataObject = New UsrDAO
    Set EncryptionService = New EncryptionSVR
End Sub

Private Sub UserControl_Terminate()
    Set AsistenteDataObject = Nothing
    Set UserDataObject = Nothing
    Set EncryptionService = Nothing
End Sub

Sub init()
    UserDataObject.UsuarioID = UsuarioActivoSYS
    If AsistenteDataObject.retrieve(UserDataObject) Then
        txtUsuario.Text = UserDataObject.Nombre
    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Function datosValidos() As Boolean
    If txtPasswordActual.Text = "" Then
        MsgBox "Ingrese Password Actual", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    If txtPasswordNueva.Text = "" Then
        MsgBox "Ingrese Nueva Password", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    If txtRepetirPasswordNueva.Text = "" Then
        MsgBox "Ingrese Repetición de Nueva Password", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    If txtPasswordNueva.Text <> txtRepetirPasswordNueva.Text Then
        MsgBox "Verifique que la Nueva Password sea la misma que la Repetición", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If

    UserDataObject.UsuarioID = UsuarioActivoSYS
    If AsistenteDataObject.retrieve(UserDataObject) Then
        If txtPasswordActual.Text <> Trim(EncryptionService.Desencriptar(UserDataObject.Password)) Then
            MsgBox "Password Actual ingresada inválida", vbCritical, "Atención"
            datosValidos = False
            Exit Function
        End If
    End If

    datosValidos = True
End Function

Private Sub cmdGuardar_Click()
    If datosValidos Then
        UserDataObject.UsuarioID = UsuarioActivoSYS
        UserDataObject.Password = EncryptionService.Encriptar(txtPasswordNueva.Text)
        If AsistenteDataObject.update(UserDataObject) Then
            MsgBox "El Password ha sido cambiado", vbInformation, "Atención"
            ParentWindow.Destroy
        Else
            MsgBox "No se puede actualizar Usuario", vbCritical, "Atención"
            Exit Sub
        End If
    End If
End Sub
