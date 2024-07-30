VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.UserControl AdminLicenciasGUI 
   ClientHeight    =   8655
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12270
   KeyPreview      =   -1  'True
   ScaleHeight     =   8655
   ScaleWidth      =   12270
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   10440
      Top             =   2640
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton CmdBorrarLicencia 
      Caption         =   "Quitar Licencia de esta Solicitud"
      Height          =   255
      Left            =   9240
      TabIndex        =   4
      Top             =   4440
      Width           =   2775
   End
   Begin VB.CommandButton CmdAgregarNuevaSolicitud 
      Caption         =   "Agregar a Nueva Solicitud"
      Height          =   255
      Left            =   9240
      TabIndex        =   1
      Top             =   1920
      Width           =   2775
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10560
      TabIndex        =   7
      Top             =   8280
      Width           =   1335
   End
   Begin VB.CommandButton cmdInstalarActualizacion 
      Caption         =   "Instalar Archivo de Actualización ..."
      Height          =   255
      Left            =   9240
      TabIndex        =   6
      Top             =   6480
      Width           =   2775
   End
   Begin VB.CommandButton cmdSolicitarLicencias 
      Caption         =   "Solicitar estas Licencias ..."
      Height          =   255
      Left            =   9240
      TabIndex        =   3
      Top             =   4080
      Width           =   2775
   End
   Begin MSFlexGridLib.MSFlexGrid GridLicenciasDisponibles 
      Height          =   2055
      Left            =   1440
      TabIndex        =   0
      Top             =   1560
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   3625
      _Version        =   393216
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridLicenciasYaInstaladas 
      Height          =   1935
      Left            =   1440
      TabIndex        =   5
      Top             =   6120
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   3413
      _Version        =   393216
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridLicenciasASolicitar 
      Height          =   2055
      Left            =   1440
      TabIndex        =   2
      Top             =   3720
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   3625
      _Version        =   393216
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Line Line4 
      X1              =   120
      X2              =   12000
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Label LblDescripcionLicencia2 
      Caption         =   "Una vez procesada la Solicitud, recibirá una Actualización de Software con las Licencias Correspondientes."
      Height          =   255
      Left            =   1560
      TabIndex        =   12
      Top             =   840
      Width           =   10215
   End
   Begin VB.Label LblDescripcionLicencia1 
      Caption         =   $"AdminLicenciasGUI.ctx":0000
      Height          =   615
      Left            =   1560
      TabIndex        =   11
      Top             =   120
      Width           =   10215
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   480
      Picture         =   "AdminLicenciasGUI.ctx":012D
      Top             =   240
      Width           =   480
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   12000
      Y1              =   5880
      Y2              =   5880
   End
   Begin VB.Label lblLicenciasASolicitar 
      Caption         =   "Nueva Solicitud:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label lblLicenciasYaInstaladas 
      Caption         =   "Licencias ya Instaladas:"
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   6120
      Width           =   1215
   End
   Begin VB.Label lblLicenciasDisponibles 
      Caption         =   "Licencias disponibles para Solicitud:"
      Height          =   975
      Left            =   120
      TabIndex        =   8
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12000
      Y1              =   8160
      Y2              =   8160
   End
End
Attribute VB_Name = "AdminLicenciasGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private AdminLicenciasService As AdminLicenciasSVR

Private Sub UserControl_Initialize()
    Set AdminLicenciasService = New AdminLicenciasSVR
End Sub

Private Sub UserControl_Terminate()
    Set AdminLicenciasService = Nothing
End Sub

Sub init()
    actualizarLocalizacion
    loadGrids
End Sub

Private Sub CmdAgregarNuevaSolicitud_Click()
    GridLicenciasDisponibles.Col = 0
    GridLicenciasDisponibles.Row = GridLicenciasDisponibles.RowSel
    If GridLicenciasDisponibles.Text <> "" And GridLicenciasDisponibles.Row >= 1 Then
        GridLicenciasDisponibles.Col = 0
        GridLicenciasDisponibles.Row = GridLicenciasDisponibles.RowSel

        If AdminLicenciasService.crearNuevoItemSolictudLicencia(GridLicenciasDisponibles.Text) = -1 Then
            MsgBox "No se puede agregar Licencia a la Solicitud", vbCritical, "Atención"
            Exit Sub
        End If

        loadGrids
    End If
End Sub

Private Sub CmdBorrarLicencia_Click()
    GridLicenciasASolicitar.Col = 1
    GridLicenciasASolicitar.Row = GridLicenciasASolicitar.RowSel
    If GridLicenciasASolicitar.Text <> "" And GridLicenciasASolicitar.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & GridLicenciasASolicitar.Text & "]?", vbYesNo, "Atención") = vbYes Then
            GridLicenciasASolicitar.Col = 0
            GridLicenciasASolicitar.Row = GridLicenciasASolicitar.RowSel
            If GridLicenciasASolicitar.Text <> "" Then
                If Not AdminLicenciasService.eliminarNuevoItemSolictudLicencia(CLng(GridLicenciasASolicitar.Text)) Then
                    MsgBox "No se puede eliminar la Licencia de la Nueva Solicitud", vbCritical, "Atención"
                    Exit Sub
                End If
            End If
            loadGrids
        End If
    End If
End Sub

Private Sub cmdSolicitarLicencias_Click()

    CommonDialog1.DefaultExt = "Lic"
    CommonDialog1.Filter = "*.Lic"
    CommonDialog1.FileName = "Solicitud.Lic"
    CommonDialog1.ShowSave

    If CommonDialog1.FileName <> "" Then
        generarSolicitudLicencia CommonDialog1.FileName
        MsgBox "El archivo de Solicitud de Licencia " & CommonDialog1.FileName & " ha sigo generado con éxito", vbOKOnly, "Solicitud de Licencias"
    End If

    ' Limpiar los items del listado de Nueva Solicitud
    AdminLicenciasService.limpiarItemsNuevaSolicitud

    loadGrids

End Sub

Private Sub cmdInstalarActualizacion_Click()

    CommonDialog1.DefaultExt = "Lic"
    CommonDialog1.Filter = "*.Lic"
    CommonDialog1.FileName = "Compra.Lic"
    CommonDialog1.ShowOpen
    
    If CommonDialog1.FileName <> "" Then
        If procesarRespuestaRecibidaASolicitudLicencia(CommonDialog1.FileName) Then
            MsgBox "Las Licencias Adquiridas han sido instaladas contenidas en " & CommonDialog1.FileName, vbOKOnly, "Solicitud de Licencias"
        End If
    End If

    loadGrids

End Sub

Sub loadGrids()

    GridLicenciasDisponibles.Clear
    If AdminLicenciasService.getLicenciasDisponibles Then
        fillGrid GridLicenciasDisponibles, AdminLicenciasService.LicenciaQuery.DbRecordsetQRY, 1
    End If

    GridLicenciasASolicitar.Clear
    If AdminLicenciasService.getLicenciasASolicitar Then
        fillGrid GridLicenciasASolicitar, AdminLicenciasService.LicenciaQuery.DbRecordsetQRY, 1
    End If

    GridLicenciasYaInstaladas.Clear
    If AdminLicenciasService.getLicenciasYaInstaladas Then
        fillGrid GridLicenciasYaInstaladas, AdminLicenciasService.LicenciaQuery.DbRecordsetQRY, 1
    End If

End Sub

Private Sub CmdCerrar_Click()
    GridLicenciasDisponibles.Clear
    GridLicenciasASolicitar.Clear
    GridLicenciasYaInstaladas.Clear
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Sub actualizarLocalizacion()
    LblDescripcionLicencia1.Caption = localizar(LblDescripcionLicencia1.name)
    LblDescripcionLicencia2.Caption = localizar(LblDescripcionLicencia2.name)
    lblLicenciasDisponibles.Caption = localizar(lblLicenciasDisponibles.name)
    lblLicenciasASolicitar.Caption = localizar(lblLicenciasASolicitar.name)
    lblLicenciasYaInstaladas.Caption = localizar(lblLicenciasYaInstaladas.name)
    CmdAgregarNuevaSolicitud.Caption = localizar(CmdAgregarNuevaSolicitud.name)
    cmdSolicitarLicencias.Caption = localizar(cmdSolicitarLicencias.name)
    CmdBorrarLicencia.Caption = localizar(CmdBorrarLicencia.name)
    cmdInstalarActualizacion.Caption = localizar(cmdInstalarActualizacion.name)
End Sub
