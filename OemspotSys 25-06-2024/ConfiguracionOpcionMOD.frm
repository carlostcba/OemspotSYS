VERSION 5.00
Begin VB.Form ConfiguracionOpcionMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Parámetro"
   ClientHeight    =   3300
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   8925
   Icon            =   "ConfiguracionOpcionMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3300
   ScaleWidth      =   8925
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.ConfiguracionOpcionGUI ConfiguracionOpcionGUI1 
      Height          =   3255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   5741
   End
End
Attribute VB_Name = "ConfiguracionOpcionMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_ConfiguracionID As Long
Private db_OpcionID As Long

Property Let ConfiguracionID(value As Long)
    db_ConfiguracionID = value
End Property

Property Let OpcionID(value As Long)
    db_OpcionID = value
End Property


Private Sub Form_Load()
    Me.Width = ConfiguracionOpcionGUI1.Width
    Me.Height = ConfiguracionOpcionGUI1.Height + 500
    Me.ConfiguracionOpcionGUI1.ConfiguracionID = db_ConfiguracionID
    Me.ConfiguracionOpcionGUI1.OpcionID = db_OpcionID
    Set ConfiguracionOpcionGUI1.ParentWindow = Me
    Me.ConfiguracionOpcionGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub UpdateWindow()
    ParentWindow.loadGrids
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub

