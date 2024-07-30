VERSION 5.00
Begin VB.Form TomarFotoMOD 
   Caption         =   "Tomar Foto"
   ClientHeight    =   5385
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   5340
   LinkTopic       =   "Form1"
   ScaleHeight     =   5385
   ScaleWidth      =   5340
   Begin OemspotSys.TomarFotoGUI TomarFotoGUI1 
      Height          =   5385
      Left            =   0
      TabIndex        =   0
      Top             =   -15
      Width           =   5355
      _ExtentX        =   9446
      _ExtentY        =   9499
   End
End
Attribute VB_Name = "TomarFotoMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public bTomarFotoPersona As Boolean
Public ParentWindow As Object
Private db_PersonaID As Long

Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Private Sub Form_Load()
    Set TomarFotoGUI1.ParentWindow = Me
    Me.Width = TomarFotoGUI1.Width + 100
    Me.Height = TomarFotoGUI1.Height + 400
    Me.TomarFotoGUI1.PersonaID = db_PersonaID
    TomarFotoGUI1.bTomaFotoPersonas = bTomarFotoPersona
    TomarFotoGUI1.init
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

