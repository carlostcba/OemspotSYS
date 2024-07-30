VERSION 5.00
Begin VB.Form PersonaDirCatValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Dirección"
   ClientHeight    =   4920
   ClientLeft      =   1245
   ClientTop       =   2340
   ClientWidth     =   5625
   Icon            =   "PersonaDirCatValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   5625
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaDirCatValGUI PersonaDirCatValGUI1 
      Height          =   4815
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   8493
   End
End
Attribute VB_Name = "PersonaDirCatValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long
Private db_CategoriaID As Long
Private db_ValorID As Long
Private db_DireccionID As Long
Private db_Numero As Long
Public Realizo_Actualizacion As Boolean


Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    db_ValorID = value
End Property

Property Let DireccionID(value As Long)
    db_DireccionID = value
End Property

Property Let Numero(value As Long)
    db_Numero = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaDirCatValGUI1.Width
    Me.Height = PersonaDirCatValGUI1.Height + 500
    Me.PersonaDirCatValGUI1.PersonaID = db_PersonaID
    Me.PersonaDirCatValGUI1.CategoriaID = db_CategoriaID
    Me.PersonaDirCatValGUI1.ValorID = db_ValorID
    Me.PersonaDirCatValGUI1.DireccionID = db_DireccionID
    Me.PersonaDirCatValGUI1.db_Numero = db_Numero
    Set PersonaDirCatValGUI1.ParentWindow = Me
    Me.PersonaDirCatValGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.Realizo_Actualizacion = Realizo_Actualizacion
    If Realizo_Actualizacion Then
        ParentWindow.UpdateWindow
    End If
End Sub

