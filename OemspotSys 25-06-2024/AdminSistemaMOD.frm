VERSION 5.00
Begin VB.Form AdminSistemaMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Sistema"
   ClientHeight    =   8700
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12210
   Icon            =   "AdminSistemaMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8700
   ScaleWidth      =   12210
   Begin OemspotSys.AdminSistemaGUI AdminSistemaGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      _ExtentX        =   21616
      _ExtentY        =   15266
   End
End
Attribute VB_Name = "AdminSistemaMOD"
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
    Set AdminSistemaGUI1.ParentWindow = Me
    AdminSistemaGUI1.ReadOnly = ReadOnlyMode
    AdminSistemaGUI1.Seleccion = SeleccionMode
'    If SeleccionMode Then
'        Me.Width = AdminSistemaGUI1.Width - 1550
'        Me.Height = AdminSistemaGUI1.Height - 190
'    Else
'        Me.Width = AdminSistemaGUI1.Width + 100
'        Me.Height = AdminSistemaGUI1.Height + 400
'    End If
    AdminSistemaGUI1.init
End Sub

Sub UpdateWindow(SistemaID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.SistemaID = SistemaID
        Unload Me
    End If
End Sub

Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminSistemaGUI1.Width + 100
        Me.Height = AdminSistemaGUI1.Height + 400
    Else
        Me.Width = AdminSistemaGUI1.Width - 1550
        Me.Height = AdminSistemaGUI1.Height - 190
    End If
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.UpdateWindow
    End If
    
    If CampingHabilitado Then
        MainMOD.MainToolBar.Buttons(17).Visible = True
    Else
        MainMOD.MainToolBar.Buttons(17).Visible = False
    End If
End Sub
