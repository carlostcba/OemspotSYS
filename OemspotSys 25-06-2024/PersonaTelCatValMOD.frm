VERSION 5.00
Begin VB.Form PersonaTelCatValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Teléfono"
   ClientHeight    =   1530
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   5505
   Icon            =   "PersonaTelCatValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1530
   ScaleWidth      =   5505
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaTelCatValGUI PersonaTelCatValGUI1 
      Height          =   1455
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   2566
   End
End
Attribute VB_Name = "PersonaTelCatValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long
Private db_CategoriaID As Long
Private db_ValorID As Long
Private db_TelefonoID As Long
Public db_Telefono As String
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

Property Let TelefonoID(value As Long)
    db_TelefonoID = value
End Property

Property Let Telefono(value As String)
    db_Telefono = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaTelCatValGUI1.Width
    Me.Height = PersonaTelCatValGUI1.Height + 500
    Me.PersonaTelCatValGUI1.PersonaID = db_PersonaID
    Me.PersonaTelCatValGUI1.CategoriaID = db_CategoriaID
    Me.PersonaTelCatValGUI1.ValorID = db_ValorID
    Me.PersonaTelCatValGUI1.TelefonoID = db_TelefonoID
    Me.PersonaTelCatValGUI1.db_Telefono = db_Telefono
    Set PersonaTelCatValGUI1.ParentWindow = Me
    Me.PersonaTelCatValGUI1.init
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
