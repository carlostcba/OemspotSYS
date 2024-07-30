VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.UserControl GestorLicenciasGUI 
   ClientHeight    =   3030
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9045
   KeyPreview      =   -1  'True
   ScaleHeight     =   3030
   ScaleWidth      =   9045
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   7920
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox txtCompra 
      Height          =   285
      Left            =   1320
      TabIndex        =   2
      Top             =   1920
      Width           =   5415
   End
   Begin VB.TextBox txtSolicitud 
      Height          =   285
      Left            =   1320
      TabIndex        =   0
      Top             =   1440
      Width           =   5415
   End
   Begin VB.CommandButton CmdArchivoCompra 
      Caption         =   "Archivo de Compra ..."
      Height          =   255
      Left            =   6840
      TabIndex        =   3
      Top             =   1920
      Width           =   1935
   End
   Begin VB.CommandButton CmdArchivoSolicitud 
      Caption         =   "Archivo de Solicitud ..."
      Height          =   255
      Left            =   6840
      TabIndex        =   1
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CommandButton CmdGenerarLicencia 
      Caption         =   "Generar Licencias"
      Height          =   255
      Left            =   5640
      TabIndex        =   4
      Top             =   2640
      Width           =   1695
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   7440
      TabIndex        =   5
      Top             =   2640
      Width           =   1335
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7920
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblArchivoCompra 
      Caption         =   "Compra:"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   1920
      Width           =   735
   End
   Begin VB.Label lblArchivoSolicitud 
      Caption         =   "Solicitud: "
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   1440
      Width           =   735
   End
   Begin VB.Image Image1 
      Height          =   885
      Left            =   360
      Picture         =   "GestorLicenciasGUI.ctx":0000
      Stretch         =   -1  'True
      Top             =   120
      Width           =   2085
   End
   Begin VB.Label LblDescripcionLicencia 
      Caption         =   "Ingrese el archivo de Solicitud Recibido del Cliente para generar el correspondiente archivo de Compra de Licencias."
      Height          =   615
      Left            =   2640
      TabIndex        =   6
      Top             =   360
      Width           =   4815
   End
   Begin VB.Line Line6 
      X1              =   120
      X2              =   8880
      Y1              =   2520
      Y2              =   2520
   End
End
Attribute VB_Name = "GestorLicenciasGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private Sub CmdArchivoCompra_Click()

    CommonDialog2.DefaultExt = "Lic"
    CommonDialog2.Filter = "*.Lic"
    CommonDialog2.FileName = "Compra.Lic"
    CommonDialog2.ShowSave

    txtCompra.Text = CommonDialog2.FileName

End Sub

Private Sub CmdArchivoSolicitud_Click()

    CommonDialog1.DefaultExt = "Lic"
    CommonDialog1.Filter = "*.Lic"
    CommonDialog1.FileName = "Solicitud.Lic"
    CommonDialog1.ShowSave

    txtSolicitud.Text = CommonDialog1.FileName

End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub CmdGenerarLicencia_Click()

    If procesarSolicitudLicencia(txtSolicitud.Text, txtCompra.Text) Then
        MsgBox "El archivo de Compra ha sido generado. Envíe este archivo al Cliente para liberar las Licencias.", vbInformation, "Generador de Licencias"
    Else
        MsgBox "No se puede generar Compra.", vbCritical, "Generador de Licencias"
    End If

End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub
