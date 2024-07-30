VERSION 5.00
Begin VB.Form GrupoPerMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Personas de Grupo"
   ClientHeight    =   6450
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   11055
   Icon            =   "GrupoPerMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6450
   ScaleWidth      =   11055
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.GrupoPerGUI GrupoPerGUI1 
      Height          =   6375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11055
      _ExtentX        =   19500
      _ExtentY        =   11245
   End
End
Attribute VB_Name = "GrupoPerMOD"
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
    Me.Width = GrupoPerGUI1.Width
    Me.Height = GrupoPerGUI1.Height + 500
    Me.GrupoPerGUI1.GrupoID = db_GrupoID
    Set GrupoPerGUI1.ParentWindow = Me
    Me.GrupoPerGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub

