VERSION 5.00
Begin VB.Form MovimientosMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Movimiento de Personas Identificadas"
   ClientHeight    =   11145
   ClientLeft      =   -450
   ClientTop       =   330
   ClientWidth     =   12360
   ControlBox      =   0   'False
   Icon            =   "MovimientosMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11145
   ScaleWidth      =   12360
   StartUpPosition =   2  'CenterScreen
   Begin OemspotSys.MovimientosGUI MovimientosGUI1 
      Height          =   10935
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   12255
      _extentx        =   21616
      _extenty        =   19288
   End
End
Attribute VB_Name = "MovimientosMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub Form_Load()
    Set MovimientosGUI1.ParentWindow = Me
    Me.Width = MovimientosGUI1.Width + 100
    Me.Height = MovimientosGUI1.Height + 400
    MovimientosMOD.Caption = "Movimiento de Personas Identificadas"
    MovimientosGUI1.init
End Sub

Sub UpdateWindow(ModuloID As Long)
    If Not (ParentWindow Is Nothing) Then
        Unload Me
    End If
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.UpdateWindow
    End If
End Sub

