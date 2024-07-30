VERSION 5.00
Begin VB.UserControl LoginGUI 
   ClientHeight    =   1425
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2565
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   1425
   ScaleWidth      =   2565
   Begin VB.TextBox txtUsuario 
      Height          =   285
      Left            =   960
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton cmdIngresar 
      BackColor       =   &H008080FF&
      Caption         =   "Ingresar"
      Default         =   -1  'True
      Height          =   255
      Left            =   960
      TabIndex        =   2
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox txtPassword 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   960
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label lblUsuario 
      BackStyle       =   0  'Transparent
      Caption         =   "Usuario:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   855
   End
   Begin VB.Label lblClave 
      BackStyle       =   0  'Transparent
      Caption         =   "Clave:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   855
   End
End
Attribute VB_Name = "LoginGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private LoginService As LoginSVR

Private Sub UserControl_Initialize()
    actualizarLocalizacion
End Sub

Private Sub UserControl_Terminate()
    Set ParentWindow = Nothing
    Set LoginService = Nothing
End Sub
Property Set LoginRule(value As LoginSVR)
    Set LoginService = value
End Property

Private Sub txtUsuario_GotFocus()
    txtUsuario.SelStart = 0
    txtUsuario.SelLength = Len(txtUsuario.Text)
End Sub

Private Sub txtPassword_GotFocus()
    txtPassword.SelStart = 0
    txtPassword.SelLength = Len(txtPassword.Text)
End Sub

Private Sub cmdIngresar_Click()
    If LoginService.authenticate(txtUsuario.Text, txtPassword.Text) Then
        ParentWindow.Destroy
    Else
        MsgBox "El Usuario y Password ingresados no son válidos o el Usuario no está habilitado", vbCritical, "Atención"
        txtUsuario.SetFocus
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        End
    End If
End Sub

Public Sub actualizarLocalizacion()
    lblUsuario.Caption = localizar(lblUsuario.name)
    lblClave.Caption = localizar(lblClave.name)
    cmdIngresar.Caption = localizar(cmdIngresar.name)
End Sub
