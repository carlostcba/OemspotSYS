VERSION 5.00
Begin VB.Form FrmImpresionTrj 
   BackColor       =   &H80000009&
   BorderStyle     =   0  'None
   ClientHeight    =   4485
   ClientLeft      =   1200
   ClientTop       =   2205
   ClientWidth     =   7380
   ClipControls    =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4485
   ScaleWidth      =   7380
   ShowInTaskbar   =   0   'False
   Begin VB.Image Imgtrj 
      Height          =   2175
      Index           =   1
      Left            =   480
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   2235
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   2760
      TabIndex        =   0
      Top             =   1920
      Width           =   4455
   End
   Begin VB.Image Imgtrj 
      Height          =   4515
      Index           =   0
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   7395
   End
End
Attribute VB_Name = "FrmImpresionTrj"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Activate()
On Error GoTo Salir
  'MsgBox Printer.DeviceName
  'Me.PrintForm
  Unload Me
  
Exit Sub
Salir:
    MsgBox Err.Description
    Unload Me
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
On Error GoTo Salir
  MsgBox Printer.DeviceName
  Me.PrintForm
  
  
Exit Sub
Salir:
    MsgBox Err.Description
End Sub
