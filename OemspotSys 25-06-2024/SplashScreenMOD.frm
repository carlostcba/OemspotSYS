VERSION 5.00
Begin VB.Form SplashScreenMOD 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   540
   ClientLeft      =   1245
   ClientTop       =   4050
   ClientWidth     =   4590
   ControlBox      =   0   'False
   Icon            =   "SplashScreenMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   540
   ScaleWidth      =   4590
   Begin VB.Label lblMensaje 
      Alignment       =   2  'Center
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "SplashScreenMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Sub cambiarTexto(Texto As String)
    Me.Caption = "Aguarde unos instantes ..."
    lblMensaje.Caption = Texto
    Me.Refresh
End Sub

Private Sub Form_Load()
    Me.Caption = Me.Caption
End Sub


