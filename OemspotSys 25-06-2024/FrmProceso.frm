VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmProceso 
   Caption         =   "Consulta en proceso"
   ClientHeight    =   2130
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   5760
   LinkTopic       =   "Form1"
   ScaleHeight     =   2130
   ScaleWidth      =   5760
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrProceso 
      Interval        =   30
      Left            =   3480
      Top             =   120
   End
   Begin MSComctlLib.ProgressBar PbarrProceso 
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   873
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label lblProceso 
      Caption         =   "% Completo"
      Height          =   255
      Left            =   4560
      TabIndex        =   2
      Top             =   720
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Comunicacion con Modulos en proceso  Aguarde unos instantes por favor....."
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   1440
      Width           =   3375
   End
End
Attribute VB_Name = "FrmProceso"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub tmrProceso_Timer()

On Error GoTo Error_Handler

PbarrProceso.Min = 0
PbarrProceso.Max = 100
PbarrProceso.value = PbarrProceso.value + 1
lblProceso.Caption = PbarrProceso.value & "%"
If PbarrProceso.value = 100 Then
  tmrProceso.Enabled = False
  Unload FrmProceso
End If

Exit Sub
  
Error_Handler:

End Sub
