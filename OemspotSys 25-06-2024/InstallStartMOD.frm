VERSION 5.00
Begin VB.Form InstallStartMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Software Simicro - Asistente de Configuraci�n"
   ClientHeight    =   4590
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   7020
   Icon            =   "InstallStartMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4590
   ScaleWidth      =   7020
   Begin OemspotSys.InstallStartGUI InstallStartGUI1 
      Height          =   4575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7095
      _ExtentX        =   12515
      _ExtentY        =   8070
   End
End
Attribute VB_Name = "InstallStartMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Me.Caption = "Software Videoman - Asistente de Configuraci�n"
    Set Me.InstallStartGUI1.ParentWindow = Me
End Sub

Sub Siguiente()
    InstallSetupMOD.Show
    Unload Me
End Sub

Sub Finalizar()
    InstallFinishMOD.Show
    Unload Me
End Sub
