VERSION 5.00
Begin VB.Form ValidaTicketMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Validar Tickets"
   ClientHeight    =   5025
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   6720
   Icon            =   "ValidaTicketMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5025
   ScaleWidth      =   6720
   ShowInTaskbar   =   0   'False
   Begin SimicroSYS.frValida ValidaTicketGUI1 
      Height          =   4935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6735
      _ExtentX        =   11880
      _ExtentY        =   8705
   End
End
Attribute VB_Name = "ValidaTicketMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object


Private Sub Form_Load()
    
    Me.Width = ValidaTicketGUI1.Width + 100  '6660
    Me.Height = ValidaTicketGUI1.Height + 400 '5385
    ValidaTicketGUI1.init
    Set ValidaTicketGUI1.ParentWindow = Me
End Sub

Sub Destroy()
    Unload Me
End Sub

