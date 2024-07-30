VERSION 5.00
Begin VB.Form CategoriaValMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Valor de Categoría"
   ClientHeight    =   1185
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   4680
   Icon            =   "CategoriaValMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1185
   ScaleWidth      =   4680
   Begin OemspotSys.CategoriaValGUI CategoriaValGUI1 
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   1931
   End
End
Attribute VB_Name = "CategoriaValMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_CategoriaID As Long
Private db_ValorID As Long

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Property Let ValorID(value As Long)
    db_ValorID = value
End Property

Private Sub Form_Load()
    Me.Width = CategoriaValGUI1.Width
    Me.Height = CategoriaValGUI1.Height + 500
    Me.CategoriaValGUI1.CategoriaID = db_CategoriaID
    Me.CategoriaValGUI1.ValorID = db_ValorID
    Set CategoriaValGUI1.ParentWindow = Me
    Me.CategoriaValGUI1.init
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub UpdateWindow()
    ParentWindow.UpdateWindow
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ParentWindow.UpdateWindow
End Sub
