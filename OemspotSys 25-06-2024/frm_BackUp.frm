VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frm_BackUp 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Respaldo / BackUP del Sistema"
   ClientHeight    =   4065
   ClientLeft      =   6285
   ClientTop       =   3735
   ClientWidth     =   6645
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4065
   ScaleWidth      =   6645
   Begin VB.FileListBox flbBackUp 
      BackColor       =   &H0080FF80&
      Height          =   870
      Left            =   1320
      TabIndex        =   8
      Top             =   3120
      Width           =   3975
   End
   Begin VB.CommandButton cmdRestore 
      Caption         =   "Restaurar"
      Height          =   615
      Left            =   3480
      TabIndex        =   5
      Top             =   2160
      Width           =   1815
   End
   Begin VB.CommandButton cmdBackUp 
      Caption         =   "Respaldo  BackUp"
      Height          =   615
      Left            =   1320
      TabIndex        =   3
      Top             =   2160
      Width           =   1815
   End
   Begin VB.TextBox txtDestination 
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Text            =   " "
      Top             =   360
      Width           =   3975
   End
   Begin MSComDlg.CommonDialog cdBackUP 
      Left            =   480
      Top             =   2160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Timer tmrBackUp 
      Enabled         =   0   'False
      Interval        =   50
      Left            =   6000
      Top             =   2040
   End
   Begin MSComctlLib.ProgressBar pbarrBackUp 
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   1320
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   873
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.CommandButton cmdSelArchivo 
      Caption         =   "...."
      Height          =   375
      Left            =   5640
      TabIndex        =   0
      Top             =   360
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "Seleccione la Ruta"
      Height          =   255
      Left            =   5280
      TabIndex        =   7
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label lblBackUp 
      Caption         =   "% Completo"
      Height          =   255
      Left            =   5520
      TabIndex        =   6
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Ruta BackUp"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   480
      Width           =   1095
   End
End
Attribute VB_Name = "frm_BackUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public DbCommand As ADODB.Command
Public DbRecordset As ADODB.RecordSet
Public path As String


Private Sub cmdBackUp_Click()
On Error GoTo Error_Handler
  Dim sql As String
  
  Set DbCommand = New ADODB.Command
  Set DbRecordset = New ADODB.RecordSet
  
  For i = 0 To flbBackUp.ListCount - 1
     
     sql = flbBackUp.path & "\" & flbBackUp.List(i)
     If sql = path Then
        frm_BackUp.Height = 4530
        flbBackUp.Visible = True
        flbBackUp.path = Replace(cdBackUP.FileName, "OemspotDB", "") 'Dejamos solo el directorio
        flbBackUp.Pattern = "*.bak"
        MsgBox "Operacion BackUP / Respaldo Erronea..!!!", vbOKOnly + vbCritical, "Advertencia"
        Unload frm_BackUp
        Exit Sub
     End If
  Next
  
  
  
  
  If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
    
  sql = "backup database videoman to disk='" & path & "'"
  DbCommand.CommandText = sql
  Set DbRecordset = DbCommand.Execute
  
  tmrBackUp.Enabled = True               'activamos timer para mostrar el "ProgressBar
  
  
  
  
  
  Exit Sub
  
  
  
Error_Handler:
  MsgBox "Error al correr Script en la base de datos, contacte al proveedor del sistema" + vbCrLf + " comando:" + sql
End Sub

Private Sub cmdSelArchivo_Click()
On Error GoTo Error_Handler
  Dim dateformated As String
 
  
  dateformated = Format(Date, "ddmmyyyy")            ' Formateamos la fecha "16/08/2021"
  cdBackUP.FileName = "OemspotDB"                    ' a "16082021"
  cdBackUP.CancelError = True
  cdBackUP.ShowSave
  path = cdBackUP.FileName & dateformated & ".bak"   ' Se va a almacenar el BackUp con
  txtDestination.Text = path                         ' el nombre "OemspotDBddmmyyyy.bak"
    
  cmdBackUp.Enabled = True                           ' Habilito el BackUp Botom
  Exit Sub
  
Error_Handler:
  If Err.Number = &H7FF3 Then           ' Si se oprimio el boton "Cancel" y no se designo
    txtDestination.Text = ""            ' la ruta , nos vamos....
  End If
End Sub



Private Sub Form_Load()
  cmdBackUp.Enabled = False
  cmdRestore.Enabled = False
  flbBackUp.Visible = False
  frm_BackUp.Height = 4000
End Sub

Private Sub tmrBackUp_Timer()
On Error GoTo Error_Handler

pbarrBackUp.Min = 0
pbarrBackUp.Max = 100
pbarrBackUp.value = pbarrBackUp.value + 1
lblBackUp.Caption = pbarrBackUp.value & "%"
If pbarrBackUp.value = 100 Then
  tmrBackUp.Enabled = False
  MsgBox "Operacion BackUP / Respaldo Exitosa..!!!", vbOKOnly + vbExclamation, "Copia de respaldo"
  Unload frm_BackUp
End If

Exit Sub
  
Error_Handler:
  
End Sub
