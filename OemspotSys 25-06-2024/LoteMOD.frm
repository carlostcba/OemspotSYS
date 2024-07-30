VERSION 5.00
Begin VB.Form LoteMOD 
   Caption         =   "Lote"
   ClientHeight    =   4935
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   9795
   LinkTopic       =   "Form1"
   ScaleHeight     =   4935
   ScaleWidth      =   9795
   Begin OemspotSys.LoteGUI LoteGUI1 
      Height          =   5010
      Left            =   -75
      TabIndex        =   0
      Top             =   -30
      Width           =   9855
      _ExtentX        =   17383
      _ExtentY        =   8837
   End
End
Attribute VB_Name = "LoteMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_LoteID As Long

Property Let LoteID(value As Long)
    db_LoteID = value
End Property

Private Sub Form_Load()
    Set LoteGUI1.ParentWindow = Me
    Me.Width = LoteGUI1.Width + 100
    Me.Height = LoteGUI1.Height + 400
    Me.LoteGUI1.LoteID = db_LoteID
    LoteGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Salir
    ParentWindow.UpdateWindow
Salir:
End Sub

Sub UpdateWindow(Optional ByVal criterio As String)
    ParentWindow.UpdateWindow criterio
End Sub


