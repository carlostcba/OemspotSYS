VERSION 5.00
Begin VB.UserControl ValidaTicketConfigGUI 
   ClientHeight    =   4890
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6555
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   4890
   ScaleWidth      =   6555
   Begin VB.Frame Frame1 
      Height          =   4695
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   6495
      Begin VB.CommandButton cmdAceptar 
         Caption         =   "Aceptar"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   2040
         TabIndex        =   6
         Top             =   2280
         Width           =   2535
      End
      Begin VB.TextBox Txtvalor 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4320
         TabIndex        =   4
         Text            =   "1"
         Top             =   1200
         Width           =   615
      End
      Begin VB.TextBox txttiempo 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4320
         TabIndex        =   1
         Text            =   "1"
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Valor a cobrar: $"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   5
         Top             =   1200
         Width           =   1815
      End
      Begin VB.Label Label2 
         Caption         =   "minutos"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4920
         TabIndex        =   3
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "Tiempo maximo de permanencia:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   720
         TabIndex        =   2
         Top             =   600
         Width           =   3975
      End
   End
End
Attribute VB_Name = "ValidaTicketConfigGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean
Public DbCommandQRY As ADODB.Command
Public DbRecordsetQRY As ADODB.RecordSet

Sub init()

    Set DbCommandQRY = New ADODB.Command

    If Not Chequear_conexion_Motor_MySQL Then Exit Sub
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    
    
    Dim sql As String
    
    sql = "select * from valida_config"
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    
    If Not DbRecordsetQRY.EOF Then
        txttiempo.Text = DbRecordsetQRY!tiempo_max
        Txtvalor.Text = DbRecordsetQRY!Valor
        
    End If
    


End Sub

Private Sub cmdAceptar_Click()

    Dim sql As String
    
    On Error Resume Next
    
    If txttiempo = "" Or Txtvalor = "" Then
        MsgBox "valores não podem ser vazio", vbCritical
        Exit Sub
    End If
    
    
    If Int(txttiempo) > 999999 Then
        MsgBox "valores não podem ser maior a 999999", vbCritical
        Exit Sub
    End If
    
    sql = "update valida_config set tiempo_max='" & txttiempo & "', valor='" & Replace(Txtvalor, ",", ".") & "'"
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    ParentWindow.Destroy


End Sub

Private Sub txttiempo_KeyPress(KeyAscii As Integer)
KeyAscii = SoloNumeros(KeyAscii, False)
End Sub
Function SoloNumeros(ByVal KeyAscii As Integer, coma As Boolean) As Integer
Dim aux As String
'permite que solo sean ingresados los numeros, el ENTER y el RETROCESO
    If coma Then
        aux = "0123456789/-,"
    Else
        aux = "0123456789"
    End If
    If InStr(aux, Chr(KeyAscii)) = 0 Then
    
    SoloNumeros = 0
    Else
    SoloNumeros = KeyAscii
    End If
    ' teclas especiales permitidas
    If KeyAscii = 8 Then SoloNumeros = KeyAscii ' borrado atras
    If KeyAscii = 13 Then SoloNumeros = KeyAscii 'Enter
End Function

Private Sub Txtvalor_KeyPress(KeyAscii As Integer)
KeyAscii = SoloNumeros(KeyAscii, True)
End Sub
