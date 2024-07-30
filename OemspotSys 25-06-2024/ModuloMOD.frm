VERSION 5.00
Begin VB.Form ModuloMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Módulo"
   ClientHeight    =   9150
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   10665
   Icon            =   "ModuloMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9150
   ScaleWidth      =   10665
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.ModuloGUI ModuloGUI1 
      Height          =   9135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   16113
   End
End
Attribute VB_Name = "ModuloMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_ModuloID As Long

Property Let ModuloID(value As Long)
    db_ModuloID = value
End Property

Private Sub Form_Load()
    Me.Width = ModuloGUI1.Width
    Me.Height = ModuloGUI1.Height + 500
    Me.ModuloGUI1.ModuloID = db_ModuloID
    Set ModuloGUI1.ParentWindow = Me
    Me.ModuloGUI1.init
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

