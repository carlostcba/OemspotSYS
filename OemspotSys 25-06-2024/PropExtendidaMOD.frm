VERSION 5.00
Begin VB.Form PropExtendidaMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Propiedad Extendida"
   ClientHeight    =   3660
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9300
   Icon            =   "PropExtendidaMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3660
   ScaleWidth      =   9300
   Begin OemspotSys.PropExtendidaGUI PropExtendidaGUI1 
      Height          =   3615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9255
      _ExtentX        =   16325
      _ExtentY        =   6376
   End
End
Attribute VB_Name = "PropExtendidaMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_PropExtendidaID As Long

Property Let PropExtendidaID(value As Long)
    db_PropExtendidaID = value
End Property

Private Sub Form_Load()
    Me.Width = PropExtendidaGUI1.Width
    Me.Height = PropExtendidaGUI1.Height + 500
    Me.PropExtendidaGUI1.PropExtendidaID = db_PropExtendidaID
    Set PropExtendidaGUI1.ParentWindow = Me
    Me.PropExtendidaGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub



