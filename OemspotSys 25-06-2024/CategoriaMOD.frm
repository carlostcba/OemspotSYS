VERSION 5.00
Begin VB.Form CategoriaMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Categoría"
   ClientHeight    =   6105
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   9705
   Icon            =   "CategoriaMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6105
   ScaleWidth      =   9705
   ShowInTaskbar   =   0   'False
   Begin OemspotSys.CategoriaGUI CategoriaGUI1 
      Height          =   6015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   10610
   End
End
Attribute VB_Name = "CategoriaMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_CategoriaID As Long

Property Let CategoriaID(value As Long)
    db_CategoriaID = value
End Property

Private Sub Form_Load()
    Me.Width = CategoriaGUI1.Width
    Me.Height = CategoriaGUI1.Height + 500
    Me.CategoriaGUI1.CategoriaID = db_CategoriaID
    Set CategoriaGUI1.ParentWindow = Me
    Me.CategoriaGUI1.init
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
