VERSION 5.00
Begin VB.Form AdminIdentificacionesMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administraci�n de Identificaciones"
   ClientHeight    =   8700
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12135
   Icon            =   "AdminIdentificacionesMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8700
   ScaleWidth      =   12135
   Begin OemspotSys.AdminIdentificacionesGUI AdminIdentificacionesGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12135
      _extentx        =   21405
      _extenty        =   15266
   End
End
Attribute VB_Name = "AdminIdentificacionesMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private SeleccionMode As Boolean

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property

Private Sub Form_Load()
    Set AdminIdentificacionesGUI1.ParentWindow = Me
    AdminIdentificacionesGUI1.ReadOnly = ReadOnlyMode
    AdminIdentificacionesGUI1.Seleccion = SeleccionMode
'    If SeleccionMode Then
'        Me.Width = AdminIdentificacionesGUI1.Width - 1440
'        Me.Height = AdminIdentificacionesGUI1.Height - 190
'    Else
'        Me.Width = AdminIdentificacionesGUI1.Width + 100
'        Me.Height = AdminIdentificacionesGUI1.Height + 400
'    End If
    AdminIdentificacionesGUI1.init
End Sub

Sub UpdateWindow(IdentificacionID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.IdentificacionID = IdentificacionID
        Unload Me
    End If
End Sub

Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminIdentificacionesGUI1.Width + 100
        Me.Height = AdminIdentificacionesGUI1.Height + 400
    Else
        Me.Width = AdminIdentificacionesGUI1.Width - 1440
        Me.Height = AdminIdentificacionesGUI1.Height - 190
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
