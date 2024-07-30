VERSION 5.00
Begin VB.Form AdminGruposMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Grupos"
   ClientHeight    =   8685
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12285
   Icon            =   "AdminGruposMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8685
   ScaleWidth      =   12285
   Begin OemspotSys.AdminGruposGUI AdminGruposGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      _ExtentX        =   21616
      _ExtentY        =   15266
   End
End
Attribute VB_Name = "AdminGruposMOD"
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
    Set AdminGruposGUI1.ParentWindow = Me
    AdminGruposGUI1.ReadOnly = ReadOnlyMode
    AdminGruposGUI1.Seleccion = SeleccionMode
'    If SeleccionMode Then
'        Me.Width = AdminGruposGUI1.Width - 1550
'        Me.Height = AdminGruposGUI1.Height - 190
'    Else
'        Me.Width = AdminGruposGUI1.Width + 100
'        Me.Height = AdminGruposGUI1.Height + 400
'    End If
    AdminGruposGUI1.init
End Sub

Sub UpdateWindow(GrupoID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.GrupoID = GrupoID
        Unload Me
    End If
End Sub

Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminGruposGUI1.Width + 100
        Me.Height = AdminGruposGUI1.Height + 400
    Else
        Me.Width = AdminGruposGUI1.Width - 1550
        Me.Height = AdminGruposGUI1.Height - 190
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
