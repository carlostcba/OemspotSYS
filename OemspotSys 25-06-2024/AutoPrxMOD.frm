VERSION 5.00
Begin VB.Form AutoPrxMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Propiedad Extendida de Auto"
   ClientHeight    =   3345
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   8490
   Icon            =   "AutoPrxMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3345
   ScaleWidth      =   8490
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.AutoPrxGUI AutoPrxGUI1 
      Height          =   3255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8535
      _ExtentX        =   15055
      _ExtentY        =   5741
   End
End
Attribute VB_Name = "AutoPrxMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_AutoID As Long
Private db_PropiedadID As Long

Property Let AutoID(value As Long)
    db_AutoID = value
End Property

Property Let PropiedadID(value As Long)
    db_PropiedadID = value
End Property

Private Sub Form_Load()
    Me.Width = AutoPrxGUI1.Width
    Me.Height = AutoPrxGUI1.Height + 500
    Me.AutoPrxGUI1.AutoID = db_AutoID
    Me.AutoPrxGUI1.PropiedadID = db_PropiedadID
    Set AutoPrxGUI1.ParentWindow = Me
    Me.AutoPrxGUI1.init
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


