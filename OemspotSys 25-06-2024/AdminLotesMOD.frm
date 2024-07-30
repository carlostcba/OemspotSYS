VERSION 5.00
Begin VB.Form AdminLotesMOD 
   Caption         =   "Administrador de Lotes"
   ClientHeight    =   8610
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   12315
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   ScaleHeight     =   8610
   ScaleWidth      =   12315
   Begin OemspotSys.AdminLotesGUI AdminLotesGUI1 
      Height          =   8565
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12315
      _ExtentX        =   21722
      _ExtentY        =   15108
   End
End
Attribute VB_Name = "AdminLotesMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private SeleccionMode As Boolean
Public db_busqueda As String
Public BuscarTodo As Boolean

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property



Private Sub Form_Load()
    Set AdminLotesGUI1.ParentWindow = Me
    AdminLotesGUI1.ReadOnly = ReadOnlyMode
    AdminLotesGUI1.Seleccion = SeleccionMode
    AdminLotesGUI1.db_busqueda = db_busqueda
    AdminLotesGUI1.Buscar_Todo = BuscarTodo
    AdminLotesGUI1.init
    
End Sub

Sub UpdateWindow(LoteID As Long)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.LoteID = LoteID
        Unload Me
    End If
End Sub


Public Sub expandWindow(DoExpand As Boolean)
    If DoExpand Then
        Me.Width = AdminLotesGUI1.Width + 100
        Me.Height = AdminLotesGUI1.Height + 400
    Else
        Me.Width = AdminLotesGUI1.Width - 1550
        Me.Height = AdminLotesGUI1.Height - 190
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
