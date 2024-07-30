VERSION 5.00
Begin VB.Form UsuarioMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Usuario"
   ClientHeight    =   3735
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   8025
   Icon            =   "UsuarioMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3735
   ScaleWidth      =   8025
   Begin OemspotSys.UsuarioGUI UsuarioGUI1 
      Height          =   3615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8055
      _ExtentX        =   13996
      _ExtentY        =   6376
   End
End
Attribute VB_Name = "UsuarioMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_UsuarioID As Long

Property Let UsuarioID(value As Long)
    db_UsuarioID = value
End Property

Private Sub Form_Load()
    Me.Width = UsuarioGUI1.Width
    Me.Height = UsuarioGUI1.Height + 500
    Me.UsuarioGUI1.UsuarioID = db_UsuarioID
    Set UsuarioGUI1.ParentWindow = Me
    Me.UsuarioGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
