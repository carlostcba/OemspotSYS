VERSION 5.00
Begin VB.Form AutoMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Auto"
   ClientHeight    =   5850
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9090
   Icon            =   "AutoMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5850
   ScaleWidth      =   9090
   Begin OemspotSys.AutoGUI AutoGUI1 
      Height          =   5895
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9015
      _extentx        =   15901
      _extenty        =   10398
   End
End
Attribute VB_Name = "AutoMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_AutoID As Long

Property Let AutoID(value As Long)
    db_AutoID = value
End Property

Private Sub Form_Load()
    Me.Width = AutoGUI1.Width
    Me.Height = AutoGUI1.Height + 500
    Me.AutoGUI1.AutoID = db_AutoID
    Set AutoGUI1.ParentWindow = Me
    Me.AutoGUI1.init
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


