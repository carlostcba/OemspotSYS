VERSION 5.00
Begin VB.Form GrupoIdnMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Identificaciones de Grupo"
   ClientHeight    =   5835
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   11085
   Icon            =   "GrupoIdnMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5835
   ScaleWidth      =   11085
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.GrupoIdnGUI GrupoIdnGUI1 
      Height          =   5775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11055
      _ExtentX        =   19500
      _ExtentY        =   10186
   End
End
Attribute VB_Name = "GrupoIdnMOD"
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
    Me.Width = GrupoIdnGUI1.Width
    Me.Height = GrupoIdnGUI1.Height + 500
    Me.GrupoIdnGUI1.GrupoID = db_GrupoID
    Set GrupoIdnGUI1.ParentWindow = Me
    Me.GrupoIdnGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
