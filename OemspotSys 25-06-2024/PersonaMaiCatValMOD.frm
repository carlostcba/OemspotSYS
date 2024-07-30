VERSION 5.00
Begin VB.Form PersonaMaiCatValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "E-mail"
   ClientHeight    =   1635
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   5460
   Icon            =   "PersonaMaiCatValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1635
   ScaleWidth      =   5460
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.PersonaMaiCatValGUI PersonaMaiCatValGUI1 
      Height          =   1575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   2778
   End
End
Attribute VB_Name = "PersonaMaiCatValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PersonaID As Long
Private db_CategoriaID As Long
Private db_ValorID As Long
Private db_EmailID As Long
Private db_Email As String
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

Property Let EmailID(value As Long)
    db_EmailID = value
End Property

Property Let Email(value As String)
    db_Email = value
End Property

Private Sub Form_Load()
    Me.Width = PersonaMaiCatValGUI1.Width
    Me.Height = PersonaMaiCatValGUI1.Height + 500
    Me.PersonaMaiCatValGUI1.PersonaID = db_PersonaID
    Me.PersonaMaiCatValGUI1.CategoriaID = db_CategoriaID
    Me.PersonaMaiCatValGUI1.ValorID = db_ValorID
    Me.PersonaMaiCatValGUI1.EmailID = db_EmailID
    Me.PersonaMaiCatValGUI1.db_Email = db_Email
    Set PersonaMaiCatValGUI1.ParentWindow = Me
    Me.PersonaMaiCatValGUI1.init
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
