VERSION 5.00
Begin VB.Form AdminPersonasMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Administración de Personas"
   ClientHeight    =   8700
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12300
   ControlBox      =   0   'False
   Icon            =   "AdminPersonasMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8700
   ScaleWidth      =   12300
   Begin OemspotSys.AdminPersonasGUI AdminPersonasGUI1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12255
      _extentx        =   21616
      _extenty        =   15266
   End
End
Attribute VB_Name = "AdminPersonasMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private SeleccionMode As Boolean
Public db_busqueda As String
    

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property






Private Sub Form_Load()
    Set AdminPersonasGUI1.ParentWindow = Me
    AdminPersonasGUI1.ReadOnly = ReadOnlyMode
    AdminPersonasGUI1.Seleccion = SeleccionMode
    If db_busqueda <> "" Then
      AdminPersonasGUI1.db_busqueda = db_busqueda
    End If
'    If SeleccionMode Then
'        Me.Width = AdminPersonasGUI1.Width '- 1550
'        Me.Height = AdminPersonasGUI1.Height ' - 90
'    Else
'        Me.Width = AdminPersonasGUI1.Width '+ 100
'       Me.Height = AdminPersonasGUI1.Height ' + 5400
'    End If
    AdminPersonasGUI1.init
End Sub

Sub UpdateWindow(PersonaID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.PersonaID = PersonaID
        Unload Me
    End If
End Sub

Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminPersonasGUI1.Width + 100
        Me.Height = AdminPersonasGUI1.Height + 400
    Else
        Me.Width = AdminPersonasGUI1.Width - 1550
        Me.Height = AdminPersonasGUI1.Height - 190
    End If
End Sub

Sub Destroy()
    Unload Me
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not (ParentWindow Is Nothing) Then
       ' ParentWindow.UpdateWindow
    End If
End Sub
