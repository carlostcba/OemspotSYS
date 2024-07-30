VERSION 5.00
Begin VB.Form PerfilItemMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Item de Perfil"
   ClientHeight    =   2115
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   5475
   Icon            =   "PerfilItemMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2115
   ScaleWidth      =   5475
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PerfilItemGUI PerfilItemGUI1 
      Height          =   2055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   3625
   End
End
Attribute VB_Name = "PerfilItemMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_perfilID As Long
Private db_ItemID As Long

Property Let PerfilID(value As Long)
    db_perfilID = value
End Property

Property Let ItemID(value As Long)
    db_ItemID = value
End Property

Private Sub Form_Load()
    Me.Width = PerfilItemGUI1.Width
    Me.Height = PerfilItemGUI1.Height + 500
    Me.PerfilItemGUI1.PerfilID = db_perfilID
    Me.PerfilItemGUI1.ItemID = db_ItemID
    Set PerfilItemGUI1.ParentWindow = Me
    Me.PerfilItemGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
