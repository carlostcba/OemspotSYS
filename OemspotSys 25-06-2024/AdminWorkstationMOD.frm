VERSION 5.00
Begin VB.Form AdminWorkstationMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Estación de Trabajo"
   ClientHeight    =   5490
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   11970
   Icon            =   "AdminWorkstationMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5490
   ScaleWidth      =   11970
   Begin OemspotSys.AdminWorkstationGUI AdminWorkstationGUI1 
      Height          =   5415
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12015
      _ExtentX        =   21193
      _ExtentY        =   9551
   End
End
Attribute VB_Name = "AdminWorkstationMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Me.Width = AdminWorkstationGUI1.Width
    Me.Height = AdminWorkstationGUI1.Height + 500
    Set AdminWorkstationGUI1.ParentWindow = Me
    Me.AdminWorkstationGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub
