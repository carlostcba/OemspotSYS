VERSION 5.00
Begin VB.Form PersonaIdnMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Identificaciones de Persona"
   ClientHeight    =   5850
   ClientLeft      =   2310
   ClientTop       =   2010
   ClientWidth     =   11085
   Icon            =   "PersonaIdnMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5850
   ScaleWidth      =   11085
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaIdnGUI PersonaIdnGUI1 
      Height          =   5775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11055
      _ExtentX        =   19500
      _ExtentY        =   10186
   End
End
Attribute VB_Name = "PersonaIdnMOD"
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
    Me.Width = PersonaIdnGUI1.Width
    Me.Height = PersonaIdnGUI1.Height + 500
    Me.PersonaIdnGUI1.PersonaID = db_PersonaID
    Set PersonaIdnGUI1.ParentWindow = Me
    Me.PersonaIdnGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub

