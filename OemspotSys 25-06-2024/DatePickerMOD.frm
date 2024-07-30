VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form DatePickerMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Seleccione Fecha"
   ClientHeight    =   2400
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   3060
   Icon            =   "DatePickerMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2400
   ScaleWidth      =   3060
   ShowInTaskbar   =   0   'False
   Begin MSComCtl2.MonthView Calendar1 
      Height          =   2370
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2625
      _ExtentX        =   4630
      _ExtentY        =   4180
      _Version        =   393216
      ForeColor       =   -2147483630
      BackColor       =   -2147483633
      BorderStyle     =   1
      Appearance      =   1
      ShowToday       =   0   'False
      ShowWeekNumbers =   -1  'True
      StartOfWeek     =   117768193
      TitleBackColor  =   -2147483645
      CurrentDate     =   40120
   End
End
Attribute VB_Name = "DatePickerMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public parentControl As Object


Private Sub Calendar1_DateClick(ByVal DateClicked As Date)
On Error Resume Next
    parentControl.Text = Format(Calendar1.Day, "0#") & "/" & Format(Calendar1.Month, "0#") & "/" & Calendar1.Year
    'parentControl.Text = DateClicked
    Unload Me
End Sub



Private Sub Form_KeyPress(KeyAscii As Integer)
On Error Resume Next
    If KeyAscii = vbKeyEscape Then
        Unload Me
    End If
End Sub

Private Sub Form_Load()
On Error Resume Next
    Dim i As Integer
    Dim primerBarra As Integer
    Dim segundaBarra As Integer

    If parentControl.Text <> "" And esFechaValida(parentControl.Text) Then
        For i = 1 To Len(parentControl.Text)
            If Right(Left(parentControl.Text, i), 1) = "/" Then
                Calendar1.Day = CInt(Left(parentControl.Text, i - 1))
                primerBarra = i
                Exit For
            End If
        Next

        For i = 1 To Len(parentControl.Text)
            If Right(Left(parentControl.Text, i), 1) = "/" Then
                Calendar1.Month = CInt(Mid(parentControl.Text, primerBarra + 1, i - 1))
                segundaBarra = i
                Exit For
            End If
        Next

        Calendar1.Year = CInt(Right(parentControl.Text, segundaBarra + 1))
    Else
        Calendar1.value = Date
    End If
End Sub
