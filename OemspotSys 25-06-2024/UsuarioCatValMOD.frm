VERSION 5.00
Begin VB.Form UsuarioCatValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Categoría de Usuario"
   ClientHeight    =   1200
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   5805
   Icon            =   "UsuarioCatValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1200
   ScaleWidth      =   5805
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.UsuarioCatValGUI UsuarioCatValGUI1 
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   5775
      _ExtentX        =   10186
      _ExtentY        =   1931
   End
End
Attribute VB_Name = "UsuarioCatValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_UsuarioID As Long
Private db_CategoriaID As Long

Property Let UsuarioID(value As Long)
    db_UsuarioID = value
End Property

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Private Sub Form_Load()
    Me.Width = UsuarioCatValGUI1.Width
    Me.Height = UsuarioCatValGUI1.Height + 500
    Me.UsuarioCatValGUI1.UsuarioID = db_UsuarioID
    Me.UsuarioCatValGUI1.CategoriaID = db_CategoriaID
    Set UsuarioCatValGUI1.ParentWindow = Me
    Me.UsuarioCatValGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
