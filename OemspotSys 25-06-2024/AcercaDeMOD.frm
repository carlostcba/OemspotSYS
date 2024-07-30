VERSION 5.00
Begin VB.Form AcercaDeMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Acerca de"
   ClientHeight    =   2820
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   4665
   Icon            =   "AcercaDeMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   4665
   ShowInTaskbar   =   0   'False
   Begin VB.Label lblVersion 
      BackStyle       =   0  'Transparent
      Caption         =   "Versión:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   2520
      Width           =   615
   End
   Begin VB.Label lblVersionNumber 
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   840
      TabIndex        =   1
      Top             =   2520
      Width           =   3495
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4560
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Label lblInfoAcercaDe 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   1320
      Width           =   4335
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   120
      Picture         =   "AcercaDeMOD.frx":15162
      Stretch         =   -1  'True
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "AcercaDeMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    lblInfoAcercaDe.Caption = NOMBRE_PROGRAMA_SYS
    lblVersion.Caption = "Versión "
    lblVersionNumber.Caption = VERSION_PRODUCTO_SYS & " ( " & VERSION_PLATAFORMA_SYS & " )"
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        Unload Me
    End If
End Sub
