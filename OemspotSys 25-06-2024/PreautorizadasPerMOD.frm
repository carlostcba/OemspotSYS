VERSION 5.00
Begin VB.Form PreautorizadasPerMOD 
   Caption         =   "Preautorización"
   ClientHeight    =   3975
   ClientLeft      =   2685
   ClientTop       =   3720
   ClientWidth     =   8430
   LinkTopic       =   "Form1"
   ScaleHeight     =   3975
   ScaleWidth      =   8430
   Begin SimicroSYS.PreautorizadaPerGUI PreautorizadaPerGUI1 
      Height          =   4035
      Left            =   -15
      TabIndex        =   0
      Top             =   -30
      Width           =   8430
      _ExtentX        =   14870
      _ExtentY        =   7117
   End
End
Attribute VB_Name = "PreautorizadasPerMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
'Private db_perfilID As Long

'Property Let PerfilID(value As Long)
'    db_perfilID = value
'End Property

Private Sub Form_Load()
    Set PreautorizadaPerGUI1.ParentWindow = Me
    Me.Width = PreautorizadaPerGUI1.Width + 100
    Me.Height = PreautorizadaPerGUI1.Height + 400
    'Me.PerfilGUI1.PerfilID = db_perfilID
    PreautorizadaPerGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub

