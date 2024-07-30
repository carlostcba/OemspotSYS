VERSION 5.00
Begin VB.Form PersonaMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Persona"
   ClientHeight    =   10035
   ClientLeft      =   2520
   ClientTop       =   990
   ClientWidth     =   15930
   ControlBox      =   0   'False
   Icon            =   "PersonaMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10035
   ScaleWidth      =   15930
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaGUI PersonaGUI1 
      Height          =   10575
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   14415
      _ExtentX        =   25426
      _ExtentY        =   18653
   End
End
Attribute VB_Name = "PersonaMOD"
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
    Set PersonaGUI1.ParentWindow = Me
    Me.Width = PersonaGUI1.Width + 100
    Me.Height = PersonaGUI1.Height + 400
    Me.PersonaGUI1.PersonaID = db_PersonaID
    Me.PersonaGUI1.bMuestro_DNI = GetParamBolean("PATH_DNI_PERSONAS")
    PersonaGUI1.init
    
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Salir
   'If Me.ParentWindow = Nothing Then
        ParentWindow.UpdateWindow
   'End If
Salir:
End Sub

Sub UpdateWindow()
On Error GoTo Salir
    ParentWindow.UpdateWindow
Salir:
End Sub



