VERSION 5.00
Begin VB.Form PersonaAutMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Autos de Persona"
   ClientHeight    =   5850
   ClientLeft      =   3540
   ClientTop       =   3060
   ClientWidth     =   10980
   Icon            =   "PersonaAutMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5850
   ScaleWidth      =   10980
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaAutGUI PersonaAutGUI1 
      Height          =   5775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      _ExtentX        =   19288
      _ExtentY        =   10186
   End
End
Attribute VB_Name = "PersonaAutMOD"
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
    Me.Width = PersonaAutGUI1.Width
    Me.Height = PersonaAutGUI1.Height + 500
    Me.PersonaAutGUI1.PersonaID = db_PersonaID
    Set PersonaAutGUI1.ParentWindow = Me
    Me.PersonaAutGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub



