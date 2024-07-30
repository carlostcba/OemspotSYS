VERSION 5.00
Begin VB.UserControl InstallStartGUI 
   ClientHeight    =   4560
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7035
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   Picture         =   "InstallStartGUI.ctx":0000
   ScaleHeight     =   4560
   ScaleWidth      =   7035
   Begin VB.TextBox txtPortMySQL 
      Height          =   285
      Left            =   6240
      TabIndex        =   1
      Top             =   2520
      Width           =   495
   End
   Begin VB.TextBox txtServidorMySQL 
      Height          =   285
      Left            =   3960
      TabIndex        =   0
      Top             =   2520
      Width           =   1455
   End
   Begin VB.TextBox txtUsuarioMySQL 
      Height          =   285
      Left            =   3960
      TabIndex        =   2
      Top             =   3000
      Width           =   1455
   End
   Begin VB.TextBox txtPasswordMySQL 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   3960
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   3480
      Width           =   1455
   End
   Begin VB.CommandButton cmdSiguiente 
      Caption         =   "Siguiente >"
      Default         =   -1  'True
      Height          =   255
      Left            =   3960
      TabIndex        =   4
      Top             =   4200
      Width           =   1335
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   255
      Left            =   5400
      TabIndex        =   5
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Frame ProcesoInstalacion 
      BackColor       =   &H80000009&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3960
      Left            =   0
      TabIndex        =   6
      Top             =   0
      Width           =   2415
      Begin VB.Image ImagenFondo 
         Height          =   4560
         Left            =   0
         Picture         =   "InstallStartGUI.ctx":0342
         Top             =   0
         Width           =   4575
      End
      Begin VB.Label lblPasosDeInstalacion 
         BackStyle       =   0  'Transparent
         Height          =   3615
         Left            =   120
         TabIndex        =   7
         Top             =   120
         Width           =   2295
      End
   End
   Begin VB.Image Image1 
      Height          =   270
      Left            =   120
      Picture         =   "InstallStartGUI.ctx":460B
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   2235
   End
   Begin VB.Label lblPort 
      Caption         =   "Puerto:"
      Height          =   255
      Left            =   5640
      TabIndex        =   13
      Top             =   2520
      Width           =   495
   End
   Begin VB.Label lblServidor 
      Caption         =   "Servidor:"
      Height          =   255
      Left            =   3120
      TabIndex        =   12
      Top             =   2520
      Width           =   735
   End
   Begin VB.Label lblUsuario 
      Caption         =   "Usuario:"
      Height          =   255
      Left            =   3120
      TabIndex        =   11
      Top             =   3000
      Width           =   735
   End
   Begin VB.Label lblClave 
      Caption         =   "Clave:"
      Height          =   255
      Left            =   3120
      TabIndex        =   10
      Top             =   3480
      Width           =   735
   End
   Begin VB.Label lblExplicacion 
      Height          =   1575
      Left            =   2640
      TabIndex        =   9
      Top             =   720
      Width           =   4215
   End
   Begin VB.Label lblSetup 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2640
      TabIndex        =   8
      Top             =   240
      Width           =   4215
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   30
      X2              =   6840
      Y1              =   3975
      Y2              =   3975
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   0
      X2              =   6840
      Y1              =   3960
      Y2              =   3960
   End
End
Attribute VB_Name = "InstallStartGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public ParentWindow As Object

Private Sub UserControl_Initialize()
    lblSetup.Caption = "Configuración del Software Videoman"

    lblExplicacion = "El Asistente de Configuración le guiará en la selección de características, creación de base de datos y administración de usuarios para el Software Videoman. " _
        & vbCrLf & vbCrLf & "Este software utiliza el motor de base de datos MySQL Server. Para continuar, se requiere usuario y password con permiso de administración de MySQL Server (De ser necesario, consulte al Administrador de Redes)."

    ImagenFondo.Width = ProcesoInstalacion.Width
    ImagenFondo.Height = ProcesoInstalacion.Height

    txtServidorMySQL.Text = "ip del servidor"
    txtPortMySQL.Text = "3306"
    txtUsuarioMySQL.Text = "videoman"
End Sub

Private Sub cmdSiguiente_Click()
    Dim resultadoInstalacion  As Integer
    resultadoInstalacion = instalarBaseDeDatos(txtUsuarioMySQL.Text, txtPasswordMySQL.Text, txtServidorMySQL.Text, txtPortMySQL.Text)
    If resultadoInstalacion = 0 Then
        SplashScreenMOD.Hide
        MsgBox "Verifique que el Servidor, Puerto, Usuario y Password del Servidor MySQL sean correctos, y que tenga permiso de administración (Consulte al Administrador de Redes)", vbCritical, "Error de Acceso a Servidor de Base de Datos"
        Exit Sub
    ElseIf resultadoInstalacion = 2 Then
        ParentWindow.Finalizar
        Exit Sub
    End If
    ParentWindow.Siguiente
End Sub

Private Sub cmdSalir_Click()
    If MsgBox("Está seguro de salir del Asistente de Configuración?", vbYesNo, "Atención") = vbYes Then
        End
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        cmdSalir_Click
    End If
End Sub
