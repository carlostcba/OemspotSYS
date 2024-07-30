VERSION 5.00
Begin VB.Form AdminCulturasMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Culturas"
   ClientHeight    =   8610
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12165
   Icon            =   "AdminCulturasMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8610
   ScaleWidth      =   12165
   Begin OemspotSys.AdminCulturasGUI AdminCulturasGUI1 
      Height          =   8535
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      _ExtentX        =   21616
      _ExtentY        =   15055
   End
End
Attribute VB_Name = "AdminCulturasMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Me.Width = AdminCulturasGUI1.Width
    Me.Height = AdminCulturasGUI1.Height + 500
    Set AdminCulturasGUI1.ParentWindow = Me
    Me.AdminCulturasGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

