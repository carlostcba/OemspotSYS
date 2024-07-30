VERSION 5.00
Begin VB.Form AdminPropExtendidasMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administraci�n de Propiedades Extendidas"
   ClientHeight    =   8670
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12135
   Icon            =   "AdminPropExtendidasMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8670
   ScaleWidth      =   12135
   Begin OemspotSys.AdminPropExtendidasGUI AdminPropExtendidasGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   15266
   End
End
Attribute VB_Name = "AdminPropExtendidasMOD"
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
    Set AdminPropExtendidasGUI1.ParentWindow = Me
    AdminPropExtendidasGUI1.ReadOnly = ReadOnlyMode
    AdminPropExtendidasGUI1.Seleccion = SeleccionMode
'    If SeleccionMode Then
'        Me.Width = AdminPropExtendidasGUI1.Width - 1550
'        Me.Height = AdminPropExtendidasGUI1.Height - 190
'    Else
'        Me.Width = AdminPropExtendidasGUI1.Width + 100
'        Me.Height = AdminPropExtendidasGUI1.Height + 400
'    End If
    AdminPropExtendidasGUI1.init
End Sub

Sub UpdateWindow(PropiedadID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.PropiedadID = PropiedadID
        Unload Me
    End If
End Sub

Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminPropExtendidasGUI1.Width + 100
        Me.Height = AdminPropExtendidasGUI1.Height + 400
    Else
        Me.Width = AdminPropExtendidasGUI1.Width - 1550
        Me.Height = AdminPropExtendidasGUI1.Height - 190
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
