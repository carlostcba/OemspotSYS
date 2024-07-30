VERSION 5.00
Begin VB.Form AdminAutosMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Autos"
   ClientHeight    =   8640
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12315
   Icon            =   "AdminAutosMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8640
   ScaleWidth      =   12315
   Begin OemspotSys.AdminAutosGUI AdminAutosGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      _ExtentX        =   21616
      _ExtentY        =   15266
   End
End
Attribute VB_Name = "AdminAutosMOD"
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
    Set AdminAutosGUI1.ParentWindow = Me
    AdminAutosGUI1.ReadOnly = ReadOnlyMode
    AdminAutosGUI1.Seleccion = SeleccionMode
    
'    If SeleccionMode Then
'        Me.Width = AdminAutosGUI1.Width - 1550
'        Me.Height = AdminAutosGUI1.Height - 190
'    Else
'        Me.Width = AdminAutosGUI1.Width + 700 '100
'        Me.Height = AdminAutosGUI1.Height + 1000 '400
'    End If
    AdminAutosGUI1.init
End Sub

Sub UpdateWindow(AutoID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.AutoID = AutoID
        Unload Me
    End If
End Sub

Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminAutosGUI1.Width + 100
        Me.Height = AdminAutosGUI1.Height + 400
    Else
        Me.Width = AdminAutosGUI1.Width - 1550
        Me.Height = AdminAutosGUI1.Height - 190
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
