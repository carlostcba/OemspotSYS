VERSION 5.00
Begin VB.UserControl InstallFinishGUI 
   ClientHeight    =   4560
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7035
   KeyPreview      =   -1  'True
   ScaleHeight     =   4560
   ScaleWidth      =   7035
   Begin VB.CommandButton cmdFinalizar 
      Caption         =   "Finalizar"
      Height          =   255
      Left            =   3960
      TabIndex        =   0
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Frame ProcesoInstalacion 
      BackColor       =   &H80000009&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   3960
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   2415
      Begin VB.Label lblPasosDeInstalacion 
         BackStyle       =   0  'Transparent
         Height          =   3615
         Left            =   120
         TabIndex        =   3
         Top             =   120
         Width           =   2295
      End
      Begin VB.Image ImagenFondo 
         Height          =   4560
         Left            =   0
         Picture         =   "InstallFinishGUI.ctx":0000
         Top             =   0
         Width           =   4575
      End
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      Height          =   255
      Left            =   5400
      TabIndex        =   2
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   270
      Left            =   120
      Picture         =   "InstallFinishGUI.ctx":42C9
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
      Height          =   615
      Left            =   2640
      TabIndex        =   4
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "InstallFinishGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public ParentWindow As Object

Private Sub UserControl_Initialize()
    lblSetup.Caption = "El Asistente de Configuración ha finalizado los cambios en los parámetros del Sistema."
    ImagenFondo.Width = ProcesoInstalacion.Width
    ImagenFondo.Height = ProcesoInstalacion.Height
End Sub

Private Sub cmdAnterior_Click()
    ParentWindow.Anterior
End Sub

Private Sub cmdFinalizar_Click()
    ParentWindow.Finalizar
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
