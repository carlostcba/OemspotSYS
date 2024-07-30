VERSION 5.00
Begin VB.Form GeneradorLicenciasMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Generador de Licencias"
   ClientHeight    =   3075
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9090
   Icon            =   "GeneradorLicenciasMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3075
   ScaleWidth      =   9090
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.GestorLicenciasGUI GestorLicenciasGUI1 
      Height          =   3015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9015
      _ExtentX        =   15901
      _ExtentY        =   5318
   End
End
Attribute VB_Name = "GeneradorLicenciasMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Set GestorLicenciasGUI1.ParentWindow = Me
    Me.Width = GestorLicenciasGUI1.Width + 100
    Me.Height = GestorLicenciasGUI1.Height + 400
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

