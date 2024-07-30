VERSION 5.00
Begin VB.Form PersonaPrxMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Otras Características de Persona"
   ClientHeight    =   3405
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   8625
   Icon            =   "PersonaPrxMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3405
   ScaleWidth      =   8625
   Begin OemspotSys.PersonaPrxGUI PersonaPrxGUI1 
      Height          =   3375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8535
      _ExtentX        =   15055
      _ExtentY        =   5953
   End
End
Attribute VB_Name = "PersonaPrxMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long
Private db_PropiedadID As Long
Private db_Valor As String
Public Realizo_Actualizacion As Boolean

Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Property Let PropiedadID(value As Long)
    db_PropiedadID = value
End Property

Property Let Valor(value As String)
    db_Valor = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaPrxGUI1.Width
    Me.Height = PersonaPrxGUI1.Height + 500
    Me.PersonaPrxGUI1.PersonaID = db_PersonaID
    Me.PersonaPrxGUI1.db_PropiedadID = db_PropiedadID
    Me.PersonaPrxGUI1.db_Valor = db_Valor
    Set PersonaPrxGUI1.ParentWindow = Me
    Me.PersonaPrxGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.Realizo_Actualizacion = Realizo_Actualizacion
    If Realizo_Actualizacion Then
        ParentWindow.UpdateWindow
    End If
End Sub

