VERSION 5.00
Begin VB.Form TokenMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Token"
   ClientHeight    =   6255
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   10905
   Icon            =   "TokenMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6255
   ScaleWidth      =   10905
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.TokenGUI TokenGUI1 
      Height          =   6255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10815
      _ExtentX        =   19076
      _ExtentY        =   11033
   End
End
Attribute VB_Name = "TokenMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_TokenID As Long

Property Let TokenID(value As Long)
    db_TokenID = value
End Property

Private Sub Form_Load()
    Me.Width = TokenGUI1.Width
    Me.Height = TokenGUI1.Height + 500
    Me.TokenGUI1.TokenID = db_TokenID
    Set TokenGUI1.ParentWindow = Me
    Me.TokenGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
