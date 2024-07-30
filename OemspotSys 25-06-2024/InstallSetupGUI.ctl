VERSION 5.00
Begin VB.UserControl InstallSetupGUI 
   ClientHeight    =   4560
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7035
   KeyPreview      =   -1  'True
   ScaleHeight     =   4560
   ScaleWidth      =   7035
   Begin VB.CheckBox chkOpcion 
      Height          =   315
      Index           =   4
      Left            =   3240
      TabIndex        =   3
      Top             =   2880
      Width           =   3615
   End
   Begin VB.CheckBox chkOpcion 
      Height          =   315
      Index           =   3
      Left            =   3240
      TabIndex        =   10
      Top             =   2400
      Width           =   3615
   End
   Begin VB.CheckBox chkOpcion 
      Height          =   315
      Index           =   2
      Left            =   3240
      TabIndex        =   2
      Top             =   1920
      Width           =   3615
   End
   Begin VB.CheckBox chkOpcion 
      Height          =   315
      Index           =   1
      Left            =   3240
      TabIndex        =   1
      Top             =   1440
      Width           =   3615
   End
   Begin VB.CheckBox chkOpcion 
      Height          =   315
      Index           =   0
      Left            =   3240
      TabIndex        =   0
      Top             =   960
      Width           =   3615
   End
   Begin VB.CommandButton cmdSiguiente 
      Caption         =   "Siguiente >"
      Height          =   255
      Left            =   3960
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
      TabIndex        =   7
      Top             =   0
      Width           =   2415
      Begin VB.Label lblPasosDeInstalacion 
         BackStyle       =   0  'Transparent
         Height          =   3615
         Left            =   120
         TabIndex        =   8
         Top             =   120
         Width           =   2295
      End
      Begin VB.Image ImagenFondo 
         Height          =   4560
         Left            =   0
         Picture         =   "InstallSetupGUI.ctx":0000
         Top             =   0
         Width           =   4575
      End
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   255
      Left            =   5400
      TabIndex        =   6
      Top             =   4200
      Width           =   1335
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "< Anterior"
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   270
      Left            =   120
      Picture         =   "InstallSetupGUI.ctx":42C9
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   2235
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   0
      X2              =   6840
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   2
      X1              =   30
      X2              =   6840
      Y1              =   3975
      Y2              =   3975
   End
   Begin VB.Label lblSetup 
      Height          =   375
      Left            =   2640
      TabIndex        =   9
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "InstallSetupGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public ParentWindow As Object

Private Sub UserControl_Initialize()
    lblSetup.Caption = "Seleccione las características a utilizar del Software"
    ImagenFondo.Width = ProcesoInstalacion.Width
    ImagenFondo.Height = ProcesoInstalacion.Height

    chkOpcion(0).Caption = "Sistema de Gestión"
    chkOpcion(1).Caption = "Controlador de Módulo"
    chkOpcion(2).Caption = "Ayuda en línea"
    chkOpcion(3).Caption = "Sistema de Gestión de Actualizaciones"

    ' FIXME: Habilitar estas opciones cuando esten disponibles
    chkOpcion(4).Caption = "Sistema de Gestión WEB"
    chkOpcion(4).Visible = False

    Dim i As Integer

    For i = 0 To 4
        chkOpcion(i).value = 1
    Next

End Sub

Private Sub cmdAnterior_Click()
    ParentWindow.Anterior
End Sub

Private Sub cmdSiguiente_Click()
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
