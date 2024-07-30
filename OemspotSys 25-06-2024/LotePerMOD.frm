VERSION 5.00
Begin VB.Form LotePerMOD 
   Caption         =   "Agregar personas al lote"
   ClientHeight    =   3180
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   10830
   LinkTopic       =   "Form1"
   ScaleHeight     =   3180
   ScaleWidth      =   10830
   Begin OemspotSys.LotePerGUI LotePerGUI1 
      Height          =   3150
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10875
      _ExtentX        =   19182
      _ExtentY        =   5556
   End
End
Attribute VB_Name = "LotePerMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_perfilID As Long
Private db_LoteID As Long
Private db_PersonaID As Long
Public db_CategoriaID As Long
Public db_ValorID As Long
Public db_FechaInicio As String
Public db_FechaFin As String

Property Let PerfilID(value As Long)
    db_perfilID = value
End Property

Property Let PersonaID(value As Long)
    db_PersonaID = value
End Property

Property Let LoteID(value As Long)
    db_LoteID = value
End Property

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    db_ValorID = value
End Property

Property Let FechaInicio(value As String)
    db_FechaInicio = value
End Property

Property Let FechaFin(value As String)
    db_FechaFin = value
End Property

Private Sub Form_Load()
    Set LotePerGUI1.ParentWindow = Me
    Me.Width = LotePerGUI1.Width + 100
    Me.Height = LotePerGUI1.Height + 400
    Me.LotePerGUI1.PersonaID = db_PersonaID
    Me.LotePerGUI1.PerfilID = db_perfilID
    Me.LotePerGUI1.LoteID = db_LoteID
    Me.LotePerGUI1.CategoriaID = db_CategoriaID
    Me.LotePerGUI1.ValorID = db_ValorID
    Me.LotePerGUI1.FechaInicio = db_FechaInicio
    Me.LotePerGUI1.FechaFin = db_FechaFin
    LotePerGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub


