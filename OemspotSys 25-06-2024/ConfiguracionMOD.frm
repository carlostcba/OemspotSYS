VERSION 5.00
Begin VB.Form ConfiguracionMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Configuración"
   ClientHeight    =   6120
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9675
   Icon            =   "ConfiguracionMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6120
   ScaleWidth      =   9675
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.ConfiguracionGUI ConfiguracionGUI1 
      Height          =   6135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   10821
   End
End
Attribute VB_Name = "ConfiguracionMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_ConfiguracionID As Long

Property Let ConfiguracionID(value As Long)
    db_ConfiguracionID = value
End Property

Private Sub Form_Load()
    Set ConfiguracionGUI1.ParentWindow = Me
    Me.Width = ConfiguracionGUI1.Width + 100
    Me.Height = ConfiguracionGUI1.Height + 400
    Me.ConfiguracionGUI1.ConfiguracionID = db_ConfiguracionID
    ConfiguracionGUI1.init
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


