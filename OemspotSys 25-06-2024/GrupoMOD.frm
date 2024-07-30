VERSION 5.00
Begin VB.Form GrupoMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Grupo"
   ClientHeight    =   3420
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   7065
   Icon            =   "GrupoMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3420
   ScaleWidth      =   7065
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.GrupoGUI GrupoGUI1 
      Height          =   3375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   5953
   End
End
Attribute VB_Name = "GrupoMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_GrupoID As Long

Property Let GrupoID(value As Long)
    db_GrupoID = value
End Property

Private Sub Form_Load()
    Set GrupoGUI1.ParentWindow = Me
    Me.Width = GrupoGUI1.Width + 100
    Me.Height = GrupoGUI1.Height + 400
    Me.GrupoGUI1.GrupoID = db_GrupoID
    GrupoGUI1.init
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
