VERSION 5.00
Begin VB.Form AdminLicenciasMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Asistente de Administración de Licencias"
   ClientHeight    =   8655
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12180
   Icon            =   "AdminLicenciasMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8655
   ScaleWidth      =   12180
   Begin OemspotSys.AdminLicenciasGUI AdminLicenciasGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   15266
   End
End
Attribute VB_Name = "AdminLicenciasMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Set AdminLicenciasGUI1.ParentWindow = Me
    Me.Width = AdminLicenciasGUI1.Width + 100
    Me.Height = AdminLicenciasGUI1.Height + 400
    AdminLicenciasGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.UpdateWindow
    End If
End Sub
