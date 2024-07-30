VERSION 5.00
Begin VB.UserControl frValida 
   ClientHeight    =   5055
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6630
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   5055
   ScaleWidth      =   6630
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   240
      Top             =   4560
   End
   Begin VB.Frame frValida 
      Height          =   4815
      Left            =   0
      TabIndex        =   3
      Top             =   120
      Width           =   6495
      Begin VB.Frame Frame3 
         Height          =   2535
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   6135
         Begin VB.TextBox txtTicket 
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   24
               Charset         =   178
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   735
            Left            =   240
            TabIndex        =   0
            Text            =   "13245678999999"
            Top             =   1200
            Width           =   5655
         End
         Begin VB.Label Label1 
            Caption         =   "Número de Ticket"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   20.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   1200
            TabIndex        =   6
            Top             =   600
            Width           =   3735
         End
      End
      Begin VB.Frame Frame2 
         Height          =   1575
         Left            =   120
         TabIndex        =   4
         Top             =   2880
         Width           =   6135
         Begin VB.CommandButton cmdValidar 
            Caption         =   "Validar"
            Default         =   -1  'True
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   120
            Picture         =   "ValidaTicketGUI.ctx":0000
            TabIndex        =   1
            Top             =   240
            Width           =   2175
         End
         Begin VB.CommandButton cmdCancelar 
            Caption         =   "Cancelar"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   178
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   3600
            Picture         =   "ValidaTicketGUI.ctx":048B
            TabIndex        =   2
            Top             =   240
            Width           =   2175
         End
      End
   End
   Begin VB.Frame frmensaje 
      Height          =   4935
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   6495
      Begin VB.Frame frcobra 
         Height          =   1575
         Left            =   120
         TabIndex        =   10
         Top             =   2880
         Width           =   6135
         Begin VB.CommandButton cmdCancelaCobro 
            Caption         =   "Cancelar"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   178
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   3600
            Picture         =   "ValidaTicketGUI.ctx":0772
            TabIndex        =   12
            Top             =   240
            Width           =   2175
         End
         Begin VB.CommandButton cmdCobrar 
            Caption         =   "Cobrar"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   14.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   120
            Picture         =   "ValidaTicketGUI.ctx":0A59
            TabIndex        =   11
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame4 
         Height          =   2535
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   6135
         Begin VB.Label lblMensaje 
            Alignment       =   2  'Center
            Caption         =   "Mensaje"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   48
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1215
            Left            =   240
            TabIndex        =   9
            Top             =   600
            Width           =   5655
         End
      End
   End
End
Attribute VB_Name = "frValida"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean
Public DbCommandQRY As ADODB.Command
Public DbRecordsetQRY As ADODB.RecordSet


Private Sub cmdCancelaCobro_Click()
    frValida.Visible = True
    frmensaje.Visible = False
    frcobra.Visible = False
    txtTicket.Text = ""
    txtTicket.SetFocus
End Sub

Private Sub cmdCancelar_Click()
    ParentWindow.Destroy

End Sub

Private Sub cmdCobrar_Click()
    Dim sql As String
    
    On Error GoTo Salir
    

    sql = "update tck set validado=1 where numero='" & Trim(txtTicket.Text) & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

'    MsgBox "Ticket validado con exito!", vbInformation
    frValida.Visible = False
    frmensaje.Visible = True
    frcobra.Visible = False
    lblMensaje.FontSize = 24
    lblMensaje.Caption = "Ticket Validado!"
    Timer1.Enabled = True
    Exit Sub

Salir:
    MsgBox "Erro ao validar o ticket, reintente", vbCritical

End Sub

Private Sub cmdValidar_Click()

    If Not Chequear_conexion_Motor_MySQL Then Exit Sub
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    If txtTicket.Text = "" Then
        MsgBox "Por favor, digite o número do ticket.", vbInformation
        Exit Sub
    End If
    
    
    Dim sql As String
    Dim entrada As Date
    Dim min As Long
    'primero verifico que el tickets este dentro del periodo sin costo
    
    
    sql = "select * from tck where numero='" & Trim(txtTicket.Text) & "'"
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    If Not DbRecordsetQRY.EOF Then
        If DbRecordsetQRY!validado = 0 Then
            entrada = DbRecordsetQRY!FechaHoraIngreso
        Else
            MsgBox "ticket já validado!!!", vbInformation
            txtTicket.SetFocus
            Exit Sub
        End If
    Else
        MsgBox "ticket inexistente, favor verificar o número", vbInformation
        txtTicket.SetFocus
        Exit Sub
    End If
    
    sql = "select * from valida_config"
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    If Not DbRecordsetQRY.EOF Then
        min = DbRecordsetQRY!tiempo_max
    Else
        min = 1
    End If
    
    If min < ((-1) * DateDiff("n", Now, entrada)) Then
            
        frValida.Visible = False
        frmensaje.Visible = True
        frcobra.Visible = True
        lblMensaje.FontSize = 48
        lblMensaje.Caption = "R$" & DbRecordsetQRY!valor
        'If MsgBox("Permanecer mais tempo do que o permitido, você deve recuperar o valor R$" & DbRecordsetQRY!Valor, vbOKCancel) = vbCancel Then Exit Sub
        Exit Sub
    End If
    'si todo esta ok valido

    sql = "update tck set validado=1 where numero='" & Trim(txtTicket.Text) & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

'    MsgBox "Ticket validado con exito!", vbInformation
    frValida.Visible = False
    frmensaje.Visible = True
    frcobra.Visible = False
    lblMensaje.FontSize = 24
    lblMensaje.Caption = "Ticket Validado!"
    Timer1.Enabled = True
    
   ' ParentWindow.Destroy

End Sub

Sub init()

    Set DbCommandQRY = New ADODB.Command
    frValida.Visible = True
    frcobra.Visible = False
    frmensaje.Visible = False
    Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
    Timer1.Enabled = False
    frValida.Visible = True
    frmensaje.Visible = False
    frcobra.Visible = False
    txtTicket.Text = ""
    txtTicket.SetFocus
    
End Sub

Private Sub txtTicket_KeyPress(KeyAscii As Integer)
KeyAscii = SoloNumeros(KeyAscii, False)
End Sub

Private Sub UserControl_Initialize()
    txtTicket.Text = ""
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        cmdCancelar_Click
    End If
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
