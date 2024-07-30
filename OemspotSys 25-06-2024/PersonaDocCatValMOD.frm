VERSION 5.00
Begin VB.Form PersonaDocCatValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Documento"
   ClientHeight    =   1545
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   5580
   Icon            =   "PersonaDocCatValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1545
   ScaleWidth      =   5580
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaDocCatValGUI PersonaDocCatValGUI1 
      Height          =   1455
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   2566
   End
End
Attribute VB_Name = "PersonaDocCatValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long
Private db_CategoriaID As Long
Private db_ValorID As Long
Private db_DocumentoID As Long
Private db_Numero As String
Public Realizo_Actualizacion As Boolean


Property Let Numero(value As String)
    db_Numero = value
End Property


Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    db_ValorID = value
End Property

Property Let DocumentoID(value As Long)
    db_DocumentoID = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaDocCatValGUI1.Width
    Me.Height = PersonaDocCatValGUI1.Height + 500
    Me.PersonaDocCatValGUI1.PersonaID = db_PersonaID
    Me.PersonaDocCatValGUI1.CategoriaID = db_CategoriaID
    Me.PersonaDocCatValGUI1.ValorID = db_ValorID
    Me.PersonaDocCatValGUI1.DocumentoID = db_DocumentoID
    Me.PersonaDocCatValGUI1.db_Numero = db_Numero
    Set PersonaDocCatValGUI1.ParentWindow = Me
    Me.PersonaDocCatValGUI1.init
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

