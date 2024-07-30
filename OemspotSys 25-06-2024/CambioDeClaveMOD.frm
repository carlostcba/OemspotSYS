VERSION 5.00
Begin VB.Form CambioDeClaveMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Cambio de Password"
   ClientHeight    =   2580
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   4635
   Icon            =   "CambioDeClaveMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2580
   ScaleWidth      =   4635
   Begin OemspotSys.CambioDeClaveGUI CambioDeClaveGUI1 
      Height          =   2535
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   4471
   End
End
Attribute VB_Name = "CambioDeClaveMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Me.Width = CambioDeClaveGUI1.Width
    Me.Height = CambioDeClaveGUI1.Height + 400
    Set CambioDeClaveGUI1.ParentWindow = Me
    Me.CambioDeClaveGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub
