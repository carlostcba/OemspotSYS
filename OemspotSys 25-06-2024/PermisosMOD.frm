VERSION 5.00
Begin VB.Form PermisosMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Permisos"
   ClientHeight    =   9600
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9780
   Icon            =   "PermisosMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9600
   ScaleWidth      =   9780
   Begin OemspotSys.PermisosGUI PermisosGUI1 
      Height          =   9495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   16748
   End
End
Attribute VB_Name = "PermisosMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Me.Width = PermisosGUI1.Width
    Me.Height = PermisosGUI1.Height + 500
    Set PermisosGUI1.ParentWindow = Me
    Me.PermisosGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub

