VERSION 5.00
Begin VB.Form PerfilMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Perfil"
   ClientHeight    =   7920
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9675
   Icon            =   "PerfilMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7920
   ScaleWidth      =   9675
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PerfilGUI PerfilGUI1 
      Height          =   7815
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   13785
   End
End
Attribute VB_Name = "PerfilMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_perfilID As Long

Property Let PerfilID(value As Long)
    db_perfilID = value
End Property

Private Sub Form_Load()
    Set PerfilGUI1.ParentWindow = Me
    Me.Width = PerfilGUI1.Width + 100
    Me.Height = PerfilGUI1.Height + 400
    Me.PerfilGUI1.PerfilID = db_perfilID
    PerfilGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub

