VERSION 5.00
Begin VB.Form IdentificacionMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Identificación"
   ClientHeight    =   7650
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   7785
   Icon            =   "IdentificacionMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7650
   ScaleWidth      =   7785
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.IdentificacionGUI IdentificacionGUI1 
      Height          =   7455
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7575
      _extentx        =   13361
      _extenty        =   13150
   End
End
Attribute VB_Name = "IdentificacionMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_IdentificacionID As Long

Property Let IdentificacionID(value As Long)
    db_IdentificacionID = value
End Property

Private Sub Form_Load()
    'Me.Width = IdentificacionGUI1.Width
    'Me.Height = IdentificacionGUI1.Height + 500
    Me.IdentificacionGUI1.IdentificacionID = db_IdentificacionID
    Set IdentificacionGUI1.ParentWindow = Me
    Me.IdentificacionGUI1.init
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

