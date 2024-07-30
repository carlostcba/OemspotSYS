VERSION 5.00
Begin VB.Form PersonaGrpMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Grupos de Persona"
   ClientHeight    =   6435
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   11115
   Icon            =   "PersonaGrpMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6435
   ScaleWidth      =   11115
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaGrpGUI PersonaGrpGUI1 
      Height          =   6375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11055
      _ExtentX        =   19500
      _ExtentY        =   11245
   End
End
Attribute VB_Name = "PersonaGrpMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long

Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaGrpGUI1.Width
    Me.Height = PersonaGrpGUI1.Height + 500
    Me.PersonaGrpGUI1.PersonaID = db_PersonaID
    Set PersonaGrpGUI1.ParentWindow = Me
    Me.PersonaGrpGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
