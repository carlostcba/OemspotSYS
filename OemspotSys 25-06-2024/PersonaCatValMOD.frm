VERSION 5.00
Begin VB.Form PersonaCatValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Categoría de Persona"
   ClientHeight    =   1095
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   5460
   Icon            =   "PersonaCatValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1095
   ScaleWidth      =   5460
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaCatValGUI PersonaCatValGUI1 
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   1931
   End
End
Attribute VB_Name = "PersonaCatValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long
Private db_CategoriaID As Long

Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaCatValGUI1.Width
    Me.Height = PersonaCatValGUI1.Height + 500
    Me.PersonaCatValGUI1.PersonaID = db_PersonaID
    Me.PersonaCatValGUI1.CategoriaID = db_CategoriaID
    Set PersonaCatValGUI1.ParentWindow = Me
    Me.PersonaCatValGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
