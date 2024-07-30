VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.UserControl PersonaGUI 
   ClientHeight    =   9495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   14370
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   9495
   ScaleWidth      =   14370
   Begin VB.CommandButton cmdCreate 
      Caption         =   "Crear Tabla Registro y Polizas"
      Height          =   375
      Left            =   2640
      TabIndex        =   85
      Top             =   9000
      Width           =   2295
   End
   Begin VB.CommandButton cmdInicPerpolreg 
      Caption         =   "Inicializa Registro y Polizas"
      Height          =   375
      Left            =   240
      TabIndex        =   84
      Top             =   9000
      Width           =   2055
   End
   Begin VB.TextBox txtRCentidad 
      Height          =   285
      Left            =   12240
      TabIndex        =   82
      Top             =   2520
      Width           =   1815
   End
   Begin VB.CommandButton cmdPAhasta 
      Caption         =   "..."
      Height          =   255
      Left            =   13800
      TabIndex        =   81
      Top             =   5760
      Width           =   255
   End
   Begin VB.TextBox txtPAhasta 
      Height          =   285
      Left            =   12240
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   80
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton cmdPAdesde 
      Caption         =   "..."
      Height          =   255
      Left            =   11280
      TabIndex        =   78
      Top             =   5760
      Width           =   255
   End
   Begin VB.TextBox txtPAdesde 
      Height          =   285
      Left            =   9840
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   77
      Top             =   5760
      Width           =   1245
   End
   Begin VB.TextBox txtPAempresa 
      Height          =   285
      Left            =   12240
      MaxLength       =   64
      TabIndex        =   75
      Top             =   5160
      Width           =   1815
   End
   Begin VB.TextBox txtPAnro 
      Height          =   285
      Left            =   9720
      MaxLength       =   64
      TabIndex        =   73
      Top             =   5160
      Width           =   1695
   End
   Begin VB.TextBox txtPSnro 
      Height          =   285
      Left            =   9720
      MaxLength       =   64
      TabIndex        =   70
      Top             =   3840
      Width           =   1695
   End
   Begin VB.TextBox txtPSempresa 
      Height          =   285
      Left            =   12240
      MaxLength       =   64
      TabIndex        =   69
      Top             =   3840
      Width           =   1815
   End
   Begin VB.CommandButton cmdPShasta 
      Caption         =   "..."
      Height          =   255
      Left            =   13800
      TabIndex        =   68
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtPShasta 
      Height          =   285
      Left            =   12240
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   67
      Top             =   4440
      Width           =   1335
   End
   Begin VB.CommandButton cmdPSdesde 
      Caption         =   "..."
      Height          =   255
      Left            =   11280
      TabIndex        =   65
      Top             =   4440
      Width           =   255
   End
   Begin VB.TextBox txtPSdesde 
      Height          =   285
      Left            =   9840
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   64
      Top             =   4440
      Width           =   1245
   End
   Begin VB.CommandButton cmdRChasta 
      Caption         =   "..."
      Height          =   255
      Left            =   13800
      TabIndex        =   61
      Top             =   3120
      Width           =   255
   End
   Begin VB.TextBox txtRChasta 
      Height          =   285
      Left            =   12240
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   60
      Top             =   3120
      Width           =   1335
   End
   Begin VB.CommandButton cmdRCdesde 
      Caption         =   "..."
      Height          =   255
      Left            =   11280
      TabIndex        =   59
      Top             =   3120
      Width           =   255
   End
   Begin VB.TextBox txtRCdesde 
      Height          =   285
      Left            =   9840
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   57
      Top             =   3120
      Width           =   1245
   End
   Begin VB.TextBox txtRCconductor 
      Height          =   285
      Left            =   9720
      MaxLength       =   64
      TabIndex        =   55
      Top             =   2520
      Width           =   1575
   End
   Begin MSComCtl2.DTPicker DtpSalida 
      Height          =   300
      Left            =   4920
      TabIndex        =   52
      Top             =   2040
      Visible         =   0   'False
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   529
      _Version        =   393216
      Format          =   129171458
      CurrentDate     =   40926
   End
   Begin VB.CommandButton CmdImportarFotoDNI 
      Caption         =   "Importar Foto DNI"
      Height          =   255
      Left            =   12840
      TabIndex        =   51
      Top             =   240
      Width           =   1455
   End
   Begin VB.CommandButton CmdCapturaFotoDNI 
      Caption         =   "Capturar Foto DNI"
      Height          =   255
      Left            =   12840
      TabIndex        =   50
      Top             =   600
      Width           =   1455
   End
   Begin VB.CommandButton cmdFechaFin 
      Caption         =   "..."
      Height          =   255
      Left            =   6360
      TabIndex        =   48
      Top             =   1560
      Width           =   255
   End
   Begin VB.TextBox txtFechaFin 
      Height          =   285
      Left            =   4920
      MaxLength       =   32
      TabIndex        =   47
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton cmdFechaInicio 
      Caption         =   "..."
      Height          =   255
      Left            =   2895
      TabIndex        =   45
      Top             =   1545
      Width           =   255
   End
   Begin VB.TextBox txtFechaInicio 
      Height          =   285
      Left            =   1560
      MaxLength       =   32
      TabIndex        =   44
      Top             =   1560
      Width           =   1245
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   13440
      Top             =   960
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdAgregarPrx 
      Caption         =   "Crear ..."
      Height          =   195
      Left            =   13200
      TabIndex        =   28
      Top             =   6480
      Width           =   1095
   End
   Begin VB.CommandButton cmdBorrarPrx 
      Caption         =   "Borrar"
      Height          =   195
      Left            =   13200
      TabIndex        =   30
      Top             =   7200
      Width           =   1095
   End
   Begin VB.CommandButton cmdActualizarPrx 
      Caption         =   "Actualizar ..."
      Height          =   195
      Left            =   13200
      TabIndex        =   29
      Top             =   6840
      Width           =   1095
   End
   Begin VB.CommandButton cmdCapturarFoto 
      Caption         =   "Capturar Foto..."
      Height          =   255
      Left            =   9360
      TabIndex        =   7
      Top             =   600
      Width           =   1335
   End
   Begin VB.CommandButton CmdImportarFoto 
      Caption         =   "Importar Foto..."
      Height          =   255
      Left            =   9360
      TabIndex        =   6
      Top             =   240
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregarDoc 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   6960
      TabIndex        =   12
      Top             =   3720
      Width           =   855
   End
   Begin VB.CommandButton cmdBorrarDoc 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   6960
      TabIndex        =   14
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton cmdActualizarDoc 
      Caption         =   "Actualizar"
      Height          =   255
      Left            =   6960
      TabIndex        =   13
      Top             =   4080
      Width           =   855
   End
   Begin VB.CommandButton cmdAgregarDir 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   12840
      TabIndex        =   24
      Top             =   7680
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrarDir 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   12840
      TabIndex        =   26
      Top             =   8400
      Width           =   1335
   End
   Begin VB.CommandButton cmdActualizarDir 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   12840
      TabIndex        =   25
      Top             =   8040
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregarMai 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   6960
      TabIndex        =   20
      Top             =   6360
      Width           =   855
   End
   Begin VB.CommandButton cmdBorrarMai 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   6960
      TabIndex        =   22
      Top             =   7080
      Width           =   855
   End
   Begin VB.CommandButton cmdActualizarMai 
      Caption         =   "Actualizar"
      Height          =   255
      Left            =   6960
      TabIndex        =   21
      Top             =   6720
      Width           =   855
   End
   Begin VB.CommandButton cmdAgregarTel 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   6960
      TabIndex        =   16
      Top             =   5040
      Width           =   855
   End
   Begin VB.CommandButton cmdBorrarTel 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   6960
      TabIndex        =   18
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmdActualizarTel 
      Caption         =   "Actualizar"
      Height          =   255
      Left            =   6960
      TabIndex        =   17
      Top             =   5400
      Width           =   855
   End
   Begin VB.CommandButton cmdAgregarRol 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   6960
      TabIndex        =   9
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdBorrarRol 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   6960
      TabIndex        =   10
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox txtFechaNacimiento 
      Height          =   285
      Left            =   4920
      MaxLength       =   32
      TabIndex        =   3
      Top             =   600
      Width           =   1350
   End
   Begin VB.CommandButton cmdFechaNacimiento 
      Caption         =   "..."
      Height          =   255
      Left            =   6360
      TabIndex        =   4
      Top             =   600
      Width           =   255
   End
   Begin VB.ComboBox txtPais 
      Height          =   315
      ItemData        =   "PersonaGUI.ctx":0000
      Left            =   1560
      List            =   "PersonaGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1080
      Width           =   1935
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   4920
      MaxLength       =   32
      TabIndex        =   1
      Top             =   120
      Width           =   1935
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   375
      Left            =   11280
      TabIndex        =   31
      Top             =   9000
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   375
      Left            =   12840
      TabIndex        =   32
      Top             =   9000
      Width           =   1335
   End
   Begin VB.TextBox txtApellido 
      Height          =   285
      Left            =   1560
      MaxLength       =   64
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PersonaGUI.ctx":0004
      Left            =   1560
      List            =   "PersonaGUI.ctx":0006
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   600
      Width           =   735
   End
   Begin MSFlexGridLib.MSFlexGrid GridRoles 
      Height          =   975
      Left            =   1080
      TabIndex        =   8
      Top             =   2520
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   1720
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridTelefonos 
      Height          =   1095
      Left            =   1080
      TabIndex        =   15
      Top             =   5040
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   1931
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridEmails 
      Height          =   1095
      Left            =   1080
      TabIndex        =   19
      Top             =   6360
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   1931
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridDirecciones 
      Height          =   1095
      Left            =   1080
      TabIndex        =   23
      Top             =   7680
      Width           =   11175
      _ExtentX        =   19711
      _ExtentY        =   1931
      _Version        =   393216
      Cols            =   5
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridDocumentos 
      Height          =   1095
      Left            =   1080
      TabIndex        =   11
      Top             =   3720
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   1931
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSFlexGridLib.MSFlexGrid GridPropiedadesExtendidas 
      Height          =   1095
      Left            =   8640
      TabIndex        =   27
      Top             =   6360
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   1931
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label Label12 
      Caption         =   "Entidad Emisora"
      Height          =   495
      Left            =   11520
      TabIndex        =   83
      Top             =   2520
      Width           =   615
   End
   Begin VB.Label Label13 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   11640
      TabIndex        =   79
      Top             =   5760
      Width           =   525
   End
   Begin VB.Label Label11 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   8520
      TabIndex        =   76
      Top             =   5760
      Width           =   1215
   End
   Begin VB.Label Label10 
      Caption         =   "Empresa"
      Height          =   255
      Left            =   11520
      TabIndex        =   74
      Top             =   5160
      Width           =   645
   End
   Begin VB.Label Label9 
      Caption         =   "Pol. ART Nro.:"
      Height          =   255
      Left            =   8520
      TabIndex        =   72
      Top             =   5160
      Width           =   1335
   End
   Begin VB.Label Label8 
      Caption         =   "Empresa"
      Height          =   255
      Left            =   11520
      TabIndex        =   71
      Top             =   3960
      Width           =   645
   End
   Begin VB.Label Label7 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   11640
      TabIndex        =   66
      Top             =   4440
      Width           =   525
   End
   Begin VB.Label Label6 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   8520
      TabIndex        =   63
      Top             =   4440
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "Pol.Seguro Nro.:"
      Height          =   255
      Left            =   8520
      TabIndex        =   62
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   11640
      TabIndex        =   58
      Top             =   3120
      Width           =   525
   End
   Begin VB.Label Label3 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   8520
      TabIndex        =   56
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Reg.Conductor:"
      Height          =   255
      Left            =   8520
      TabIndex        =   54
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Hora Salida:"
      Height          =   255
      Left            =   3720
      TabIndex        =   53
      Top             =   2085
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Image Image1 
      Height          =   1695
      Index           =   1
      Left            =   10800
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblVigenciaFin 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   3720
      TabIndex        =   49
      Top             =   1560
      Width           =   525
   End
   Begin VB.Label lblVigenciaInicio 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   120
      TabIndex        =   46
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   1695
      Index           =   0
      Left            =   7200
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblOtrosDatos 
      Caption         =   "Otros Datos:"
      Height          =   615
      Left            =   8040
      TabIndex        =   43
      Top             =   6480
      Width           =   615
   End
   Begin VB.Line Line7 
      X1              =   120
      X2              =   14160
      Y1              =   8880
      Y2              =   8880
   End
   Begin VB.Line Line5 
      X1              =   120
      X2              =   14160
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Label lblDocumentos 
      Caption         =   "Documentos:"
      Height          =   255
      Left            =   120
      TabIndex        =   42
      Top             =   3720
      Width           =   975
   End
   Begin VB.Line Line4 
      X1              =   120
      X2              =   14160
      Y1              =   7560
      Y2              =   7560
   End
   Begin VB.Label lblDirecciones 
      Caption         =   "Direcciones:"
      Height          =   255
      Left            =   120
      TabIndex        =   41
      Top             =   7680
      Width           =   975
   End
   Begin VB.Line Line3 
      X1              =   120
      X2              =   14280
      Y1              =   6240
      Y2              =   6240
   End
   Begin VB.Label lblEmails 
      Caption         =   "E-mails:"
      Height          =   255
      Left            =   120
      TabIndex        =   40
      Top             =   6360
      Width           =   975
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   14160
      Y1              =   4920
      Y2              =   4920
   End
   Begin VB.Label lblTelefonos 
      Caption         =   "Teléfonos:"
      Height          =   255
      Left            =   120
      TabIndex        =   39
      Top             =   5040
      Width           =   975
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   14160
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Label lblFechaNacimiento 
      Caption         =   "Fecha Nac.:"
      Height          =   255
      Left            =   3720
      TabIndex        =   38
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblNacionalidad 
      Caption         =   "Nacionalidad:"
      Height          =   255
      Left            =   120
      TabIndex        =   37
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label lblSexo 
      Caption         =   "Sexo:"
      Height          =   255
      Left            =   120
      TabIndex        =   36
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   3720
      TabIndex        =   35
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lblRoles 
      Caption         =   "Roles:"
      Height          =   255
      Left            =   120
      TabIndex        =   34
      Top             =   2640
      Width           =   975
   End
   Begin VB.Label lblApellido 
      Caption         =   "Apellido:"
      Height          =   255
      Left            =   120
      TabIndex        =   33
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "PersonaGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public bMuestro_DNI As Boolean
Public ParentWindow As Object
Private onUpdate As Boolean
Private AdminPersonasService As AdminPersonasSVR
Private PerDataObject As PerDAO
Public db_PersonaID As Long
Public db_PropiedadID As Long
Private de_historicos As Boolean
Private opt_Realizo_Actualizacion As Boolean
Public DbCommand As ADODB.Command
Public DbRecordset As ADODB.RecordSet
Public DbCommand2 As ADODB.Command
Public DbRecordset2 As ADODB.RecordSet
Public DbRecordset3 As ADODB.RecordSet




Private Sub CmdCapturaFotoDNI_Click()
On Error GoTo Salir
    Set TomarFotoMOD.ParentWindow = Me
    TomarFotoMOD.PersonaID = db_PersonaID
    TomarFotoMOD.bTomarFotoPersona = False
    TomarFotoMOD.Show vbModal
    cargarFoto 1, "PATH_DNI_PERSONAS", True
    UpdateWindow
Exit Sub
Salir:
       MsgBox "PersonaGUI.cmdCapturarFoto_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

'**************************************** Crea la Tabla de Registro de conducir Seguro Automotor y ART ******************************
Private Sub cmdCreate_Click()
On Error GoTo Salir

Dim sql As String
Set DbCommand = New ADODB.Command
Set DbRecordset = New ADODB.RecordSet

If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS

sql = "CREATE TABLE perpolreg (" _
& " PersonaID int NOT NULL," _
& " FechaInicioRC datetime NOT NULL," _
& " FechaFinRC datetime NOT NULL," _
& " NroRC varchar(50) NOT NULL," _
& " ExpedidoRC varchar(50) NOT NULL," _
& " FechaInicioPS datetime NOT NULL," _
& " FechaFinPS datetime NOT NULL," _
& " NroPS varchar(50) NOT NULL," _
& " EmpresaPS varchar(50) NOT NULL," _
& " FechaInicioPA datetime NOT NULL," _
& " FechaFinPA datetime NOT NULL," _
& " NroPA varchar(50) NOT NULL," _
& " EmpresaPA varchar(50) NOT NULL," _
& " PRIMARY KEY (PersonaID)," _
& ");"

 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 MsgBox "Creacion de la Tabla Registro de Conductor y Polizas de Seguro y ART Exitosa..!!!", vbExclamation, "Aviso..!!!"

Exit Sub

Salir:
  MsgBox "Error al intentar Crear tabla de Registro de conductor ,Seguros y ART", vbExclamation, "Aviso..!!!"
End Sub



Private Sub CmdImportarFotoDNI_Click()
On Error Resume Next
    CommonDialog1.DefaultExt = "jpg"
    CommonDialog1.Filter = "*.jpg"
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        FileCopy CommonDialog1.FileName, getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_DNI_PERSONAS") & "\" & db_PersonaID & ".jpg"
        cargarFoto 1, "PATH_DNI_PERSONAS", True
    End If
End Sub

Private Sub cmdInicPerpolreg_Click()        'Aqui Inicializamos la tabla "perpolreg" Persona --> Registro --> Poliza Seguro --> ART
 On Error GoTo Salir                        'Por primera y unica vez..."

 Dim sql As String
 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 Set DbCommand2 = New ADODB.Command
 Set DbRecordset2 = New ADODB.RecordSet
 
 
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
 
 If DbRecordset.State = 1 Then DbRecordset.Close    ' Verifico si la conexion estaba abierta dado que la volvere a abrir
 DbRecordset.Open "select * from perpolreg ", DbConnectionSYS, adOpenStatic, adLockOptimistic
 If DbRecordset2.State = 1 Then DbRecordset2.Close    ' Verifico si la conexion estaba abierta dado que la volvere a abrir
 DbRecordset2.Open "select PersonaID from per ", DbConnectionSYS, adOpenStatic, adLockOptimistic
 
 If DbRecordset.RecordCount = 0 Then       ' Si la tabla "perpolreg" posee algun registro quiere decir que estaba inicializada y se va...
 
    txtRCdesde.Text = "01/01/1900"          'Esta operacion se realiza dado que esta tabla fue creada a posterior de la creacion
    txtRChasta.Text = "01/01/1900"          'de la base de datos Videoman , por ende donde esta instalada la Base de datos y existen
    txtRCconductor.Text = "SPACE"           'personas dadas de alta , a todas esas personas le asignamos el registro inicializado
    txtRCentidad.Text = "SPACE"             ' en la tabla "perpolreg" .
    txtPSdesde.Text = "01/01/1900"          ' Los parametros de fecha "01/01/1900" y string "SPACE" indica
    txtPShasta.Text = "01/01/1900"          ' que los registros se cran con campos sin datos asignados
    txtPSnro.Text = "SPACE"
    txtPSempresa.Text = "SPACE"
    txtPAdesde.Text = "01/01/1900"
    txtPAhasta.Text = "01/01/1900"
    txtPAnro.Text = "SPACE"
    txtPAempresa.Text = "SPACE"
     
    Do While Not DbRecordset2.EOF
       db_PersonaID = DbRecordset2!PersonaID
       DbRecordset2.MoveNext
       
       sql = "insert into perpolreg values(" & db_PersonaID & ",'" & txtRCdesde.Text & "','" & txtRChasta.Text & "','" & txtRCconductor.Text & "','" & txtRCentidad.Text & "','" & txtPSdesde.Text & "','" & txtPShasta.Text & "','" & txtPSnro.Text & "','" & txtPSempresa.Text & "','" & txtPAdesde.Text & "','" & txtPAhasta.Text & "','" & txtPAnro.Text & "','" & txtPAempresa.Text & "')"
       DbCommand.CommandText = sql
       Set DbRecordset = DbCommand.Execute
    Loop
    MsgBox "Inicializacion de la Tabla Registro de Conductor y Polizas de Seguro y ART Exitosa..!!!", vbExclamation, "Aviso..!!!"
    If DbRecordset.State = 1 Then DbRecordset.Close
    If DbRecordset2.State = 1 Then DbRecordset2.Close
    Exit Sub
 End If
 If DbRecordset.State = 1 Then DbRecordset.Close
 If DbRecordset2.State = 1 Then DbRecordset2.Close
 MsgBox "La tabla NO puede inicializarse porque contiene datos.....", vbExclamation, "Aviso..!!!"
 Exit Sub

Salir:
  MsgBox "Error al intentar inicializar la tabla de Registro de conductor ,Seguros y ART", vbExclamation, "Aviso..!!!"
End Sub


Private Sub cmdPAdesde_Click()
On Error GoTo Salir
    Unload DatePickerMOD                                ' Aqui indica la fecha de vigencia "desde" de la Poliza ART
    Set DatePickerMOD.parentControl = txtPAdesde
    DatePickerMOD.Show vbModal
Salir:
End Sub

Private Sub cmdPAhasta_Click()
On Error GoTo Salir
    Unload DatePickerMOD                                ' Aqui indica la fecha de vigencia "hasta" de la Poliza ART
    Set DatePickerMOD.parentControl = txtPAhasta
    DatePickerMOD.Show vbModal
Salir:
End Sub

Private Sub cmdPSdesde_Click()
 On Error GoTo Salir
    Unload DatePickerMOD                                ' Aqui indica la fecha de vigencia "desde" de la Poliza Seguro Automotor
    Set DatePickerMOD.parentControl = txtPSdesde
    DatePickerMOD.Show vbModal
Salir:
End Sub

Private Sub cmdPShasta_Click()
 On Error GoTo Salir
    Unload DatePickerMOD                                ' Aqui indica la fecha de vigencia "hasta" de la Poliza Seguro Automotor
    Set DatePickerMOD.parentControl = txtPShasta
    DatePickerMOD.Show vbModal
Salir:
End Sub

Private Sub cmdRCdesde_Click()
  On Error GoTo Salir
    Unload DatePickerMOD                                ' Aqui indica la fecha de vigencia "desde" del Registro de conducir
    Set DatePickerMOD.parentControl = txtRCdesde
    DatePickerMOD.Show vbModal
Salir:
End Sub

Private Sub cmdRChasta_Click()
 On Error GoTo Salir
    Unload DatePickerMOD                                ' Aqui indica la fecha de vigencia "hasta" del Registro de conducir
    Set DatePickerMOD.parentControl = txtRChasta
    DatePickerMOD.Show vbModal
Salir:
End Sub



Private Sub UserControl_Initialize()
    Set AdminPersonasService = New AdminPersonasSVR
    Set PerDataObject = New PerDAO

    UtilitySYS.llenarListaPaises txtPais

    Combo1.AddItem "M"
    Combo1.AddItem "F"

    Combo1.ListIndex = 0
End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
    Set PerDataObject = Nothing
End Sub

Public Property Let Realizo_Actualizacion(data As Boolean)
    opt_Realizo_Actualizacion = data
End Property

Property Let PersonaID(value As Long)
    Let db_PersonaID = value
End Property

Sub init()
On Error GoTo Salir
   ' actualizarLocalizacion
    
    If bMuestro_DNI = False Then
        Image1(1).Visible = False
        CmdImportarFotoDNI.Visible = False
        CmdCapturaFotoDNI.Visible = False
    End If
    
    txtFechaInicio.Text = Date
    txtFechaFin.Text = Date

    If db_PersonaID <> 0 Then
        onUpdate = True
        loadData
    Else
   
        onUpdate = False
    End If

    enableEdition
Exit Sub
Salir:
       MsgBox "PersonaGUI.init" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Sub enableEdition()
On Error GoTo Salir
    If db_PersonaID <> 0 Then
        GridRoles.Enabled = True
        cmdAgregarRol.Enabled = True
        cmdBorrarRol.Enabled = True

        GridDocumentos.Enabled = True
        cmdAgregarDoc.Enabled = True
        cmdActualizarDoc.Enabled = True
        cmdBorrarDoc.Enabled = True

        GridTelefonos.Enabled = True
        cmdAgregarTel.Enabled = True
        cmdActualizarTel.Enabled = True
        cmdBorrarTel.Enabled = True

        GridEmails.Enabled = True
        cmdAgregarMai.Enabled = True
        cmdActualizarMai.Enabled = True
        cmdBorrarMai.Enabled = True

        GridDirecciones.Enabled = True
        cmdAgregarDir.Enabled = True
        cmdActualizarDir.Enabled = True
        cmdBorrarDir.Enabled = True

        GridPropiedadesExtendidas.Enabled = True
        cmdAgregarPrx.Enabled = True
        cmdActualizarPrx.Enabled = True
        cmdBorrarPrx.Enabled = True

        cmdGuardar.Caption = localizar(cmdGuardar.name)

    Else
        GridRoles.Enabled = False
        cmdAgregarRol.Enabled = False
        cmdBorrarRol.Enabled = False

        GridDocumentos.Enabled = False
        cmdAgregarDoc.Enabled = False
        cmdActualizarDoc.Enabled = False
        cmdBorrarDoc.Enabled = False

        GridTelefonos.Enabled = False
        cmdAgregarTel.Enabled = False
        cmdActualizarTel.Enabled = False
        cmdBorrarTel.Enabled = False

        GridEmails.Enabled = False
        cmdAgregarMai.Enabled = False
        cmdActualizarMai.Enabled = False
        cmdBorrarMai.Enabled = False

        GridDirecciones.Enabled = False
        cmdAgregarDir.Enabled = False
        cmdActualizarDir.Enabled = False
        cmdBorrarDir.Enabled = False

        GridPropiedadesExtendidas.Enabled = False
        cmdAgregarPrx.Enabled = False
        cmdActualizarPrx.Enabled = False
        cmdBorrarPrx.Enabled = False

        cmdGuardar.Caption = localizar("cmdSiguiente")
    End If
Exit Sub
Salir:
       MsgBox "PersonaGUI.enable_edition" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub CmdImportarFoto_Click()
On Error Resume Next
    CommonDialog1.DefaultExt = "jpg"
    CommonDialog1.Filter = "*.jpg"
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        FileCopy CommonDialog1.FileName, getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg"
        cargarFoto 0, "PATH_IMAGENES_PERSONAS"
        'cargarFoto
    End If
End Sub

Sub loadData()                                                  ' Aqui cargamos los datos de la persona selecionada para presentarlos
    On Error Resume Next                                        ' en el formulario de la Persona
    
    Dim sql As String
    
    Set PerDataObject = AdminPersonasService.PersonaOrm.obtenerPersona(db_PersonaID)

    If Not (PerDataObject Is Nothing) Then
        txtNombre.Text = PerDataObject.Nombre
        TxtApellido.Text = PerDataObject.Apellido
        txtFechaNacimiento.Text = PerDataObject.FechaNacimiento
        txtFechaInicio.Text = PerDataObject.FechaInicio
        txtFechaFin.Text = Format(PerDataObject.FechaFin, "dd/mm/yyyy")
        DtpSalida.value = Format(PerDataObject.FechaFin, "HH:MM:SS")
        
        
        Dim i As Integer

        For i = 0 To Combo1.ListCount - 1
            If Combo1.List(i) = CStr(PerDataObject.Sexo) Then
                Combo1.ListIndex = i
            End If
        Next

        For i = 0 To txtPais.ListCount - 1
            If txtPais.List(i) = CStr(PerDataObject.Pais) Then
                txtPais.ListIndex = i
            End If
        Next

        cargarFoto 0, "PATH_IMAGENES_PERSONAS"
        cargarFoto 1, "PATH_DNI_PERSONAS", True
        
        
' ************ Aqui cargamos los datos del [Registro de Conducir,Poliza de Seguro y Art !!!!!!!!!!!! *****************
        
        Set DbCommand = New ADODB.Command
        Set DbRecordset = New ADODB.RecordSet
    
        If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
    
        sql = "SELECT * FROM perpolreg  WHERE PersonaID=" & db_PersonaID
        DbCommand.CommandText = sql
        Set DbRecordset = DbCommand.Execute
        If DbRecordset.BOF Then
          MsgBox "No se encontro el usuario seleccionado", vbExclamation, "Aviso..!!!"
          Exit Sub
        Else
           
          txtRCdesde.Text = DbRecordset!FechaInicioRC
          txtRChasta.Text = DbRecordset!FechaFinRC
          txtRCconductor.Text = DbRecordset!NroRC
          txtRCentidad.Text = DbRecordset!ExpedidoRC
      
          txtPSdesde.Text = DbRecordset!FechaInicioPS
          txtPShasta.Text = DbRecordset!FechaFinPS
          txtPSnro.Text = DbRecordset!NroPS
          txtPSempresa.Text = DbRecordset!EmpresaPS
      
          txtPAdesde.Text = DbRecordset!FechaInicioPA
          txtPAhasta.Text = DbRecordset!FechaFinPA
          txtPAnro.Text = DbRecordset!NroPA
          txtPAempresa.Text = DbRecordset!EmpresaPA
           
          If txtRCdesde.Text = "01/01/1900" Then txtRCdesde.Text = ""            ' Retornamos los valores originales de los Textbox para
          If txtRChasta.Text = "01/01/1900" Then txtRChasta.Text = ""            ' presentarlos en el formulario
          If txtRCconductor.Text = "SPACE" Then txtRCconductor.Text = ""
          If txtRCentidad.Text = "SPACE" Then txtRCentidad.Text = ""
          If txtPSdesde.Text = "01/01/1900" Then txtPSdesde.Text = ""
          If txtPShasta.Text = "01/01/1900" Then txtPShasta.Text = ""
          If txtPSnro.Text = "SPACE" Then txtPSnro.Text = ""
          If txtPSempresa.Text = "SPACE" Then txtPSempresa.Text = ""
          If txtPAdesde.Text = "01/01/1900" Then txtPAdesde.Text = ""
          If txtPAhasta.Text = "01/01/1900" Then txtPAhasta.Text = ""
          If txtPAnro.Text = "SPACE" Then txtPAnro.Text = ""
          If txtPAempresa.Text = "SPACE" Then txtPAempresa.Text = ""
              
        End If

    Else
        MsgBox "No se puede leer Persona", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids

End Sub

Private Sub CmdCapturarFoto_Click()
On Error GoTo Salir
    Set TomarFotoMOD.ParentWindow = Me
    TomarFotoMOD.PersonaID = db_PersonaID
    TomarFotoMOD.bTomarFotoPersona = True
    TomarFotoMOD.Show vbModal
    cargarFoto 0, "PATH_IMAGENES_PERSONAS"
    UpdateWindow
Exit Sub
Salir:
       MsgBox "PersonaGUI.cmdCapturarFoto_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdFechaInicio_Click()
On Error GoTo Salir
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaInicio
    DatePickerMOD.Show vbModal
Salir:
End Sub

Private Sub cmdFechaFin_Click()
On Error GoTo Salir
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaFin
    DatePickerMOD.Show vbModal
Exit Sub
Salir:
End Sub

Sub cargarFoto(ByVal Index As Integer, ByVal sPath As String, Optional bValida As Boolean)
On Error GoTo noHayFoto

'   Image1.Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg")
'   Image1.ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg"
   Image1(Index).Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", sPath, bValida) & "\" & db_PersonaID & ".jpg")
   Image1(Index).ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", sPath, bValida) & "\" & db_PersonaID & ".jpg"
   Exit Sub
noHayFoto:
    On Error Resume Next
    Image1(Index).Picture = LoadPicture("")
    Image1(Index).Picture = LoadPicture(App.path & "\NoHayFoto.jpg")
End Sub

Sub loadGrids()
On Error GoTo Salir
    GridRoles.Clear
    If AdminPersonasService.getCatList(db_PersonaID, CAT_TIPO_PERSONA) Then
        fillGrid GridRoles, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
    End If

    GridDocumentos.Clear
    If AdminPersonasService.getDocList(db_PersonaID) Then
        fillGrid GridDocumentos, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 2
    End If

    GridTelefonos.Clear
    If AdminPersonasService.getTelList(db_PersonaID) Then
        fillGrid GridTelefonos, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 2
    End If

    GridEmails.Clear
    If AdminPersonasService.getMaiList(db_PersonaID) Then
        fillGrid GridEmails, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 2
    End If

    GridDirecciones.Clear
    If AdminPersonasService.getDirList(db_PersonaID) Then
        fillGrid GridDirecciones, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 2
    End If
    
    GridPropiedadesExtendidas.Clear
    If AdminPersonasService.getPrxList(db_PersonaID) Then
        fillGrid GridPropiedadesExtendidas, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
    End If
Exit Sub
Salir:
End Sub

Function validarDatos() As Boolean
On Error GoTo Salir
    If TxtApellido.Text = "" Then
        MsgBox "Ingrese Apellido", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If txtNombre.Text = "" Then
        MsgBox "Ingrese Nombre", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo1.ListIndex = -1 Then
        MsgBox "Ingrese Sexo", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If txtFechaNacimiento.Text <> "" Then
        If Not esFechaValida(txtFechaNacimiento.Text) Then
            MsgBox "Fecha de Nacimiento Errónea", vbCritical, "Atención"
            txtFechaNacimiento.SetFocus
            validarDatos = False
            Exit Function
        End If
    End If

    If Not esFechaValida(txtFechaInicio.Text) Then
        MsgBox "Fecha de Vigencia de Inicio Errónea", vbCritical, "Atención"
        txtFechaInicio.SetFocus
        validarDatos = False
        Exit Function
    End If

    If Not esFechaValida(txtFechaFin.Text) Then
        MsgBox "Fecha de Vigencia de Fin Errónea", vbCritical, "Atención"
        txtFechaFin.SetFocus
        validarDatos = False
        Exit Function
    End If

    validarDatos = True

Salir:
End Function

Private Sub cmdGuardar_Click()


    If validarDatos Then
        If Not onUpdate Then
            db_PersonaID = AdminPersonasService.PersonaOrm.crearPersona(TxtApellido.Text, txtNombre.Text, txtFechaNacimiento.Text, Combo1.List(Combo1.ListIndex), txtPais.List(txtPais.ListIndex), txtFechaInicio.Text, txtFechaFin.Text, Format(DtpSalida.value, "HH:mm"))
            If db_PersonaID <> -1 Then
                enableEdition
                onUpdate = True
                'cargarFoto
                crearPerRCPSPA                         ' Creamos los campos de Registro de conductor,Poliza de Seguro y ART
            Else
                MsgBox "No se puede crear Persona", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminPersonasService.PersonaOrm.actualizarPersona(db_PersonaID, TxtApellido.Text, txtNombre.Text, txtFechaNacimiento.Text, Combo1.List(Combo1.ListIndex), txtPais.List(txtPais.ListIndex), txtFechaInicio.Text, txtFechaFin.Text, Format(DtpSalida.value, "HH:MM:SS")) Then
                ParentWindow.Destroy
                modPerRCPSPA                          ' Modificamos los campos de Registro de conductor,Poliza de Seguro y ART
            Else
                MsgBox "No se puede actualizar Persona", vbCritical, "Atención"
                Exit Sub
            End If
        End If
    End If
Exit Sub
Salir:
End Sub

'***************************** ' Creamos los campos de Registro de conductor,Poliza de Seguro y ART   *******************************

 Public Sub crearPerRCPSPA()
 On Error GoTo Salir
 
 Dim sql As String
 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
 
 If txtRCdesde.Text = "" Then txtRCdesde.Text = "01/01/1900"            'En aquellos campos que NO se hayan ingresado datos le asignamos
 If txtRChasta.Text = "" Then txtRChasta.Text = "01/01/1900"            'un valor dado que debemos insertar el registro en la base de datos
 If txtRCconductor.Text = "" Then txtRCconductor.Text = "SPACE"         'pero todos los campos deben tener algun caracter sino da error
 If txtRCentidad.Text = "" Then txtRCentidad.Text = "SPACE"
 If txtPSdesde.Text = "" Then txtPSdesde.Text = "01/01/1900"            ' los parametros de fecha "01/01/1900" y string "SPACE" indica
 If txtPShasta.Text = "" Then txtPShasta.Text = "01/01/1900"            ' que No tiene datos asignados
 If txtPSnro.Text = "" Then txtPSnro.Text = "SPACE"
 If txtPSempresa.Text = "" Then txtPSempresa.Text = "SPACE"
 If txtPAdesde.Text = "" Then txtPAdesde.Text = "01/01/1900"
 If txtPAhasta.Text = "" Then txtPAhasta.Text = "01/01/1900"
 If txtPAnro.Text = "" Then txtPAnro.Text = "SPACE"
 If txtPAempresa.Text = "" Then txtPAempresa.Text = "SPACE"
        
 sql = "insert into perpolreg values(" & db_PersonaID & ",'" & txtRCdesde.Text & "','" & txtRChasta.Text & "','" & txtRCconductor.Text & "','" & txtRCentidad.Text & "','" & txtPSdesde.Text & "','" & txtPShasta.Text & "','" & txtPSnro.Text & "','" & txtPSempresa.Text & "','" & txtPAdesde.Text & "','" & txtPAhasta.Text & "','" & txtPAnro.Text & "','" & txtPAempresa.Text & " ')"
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute                                    ' Insertamos el registro
 
 If txtRCdesde.Text = "01/01/1900" Then txtRCdesde.Text = ""            ' Retornamos los valores originales de los Textbox para
 If txtRChasta.Text = "01/01/1900" Then txtRChasta.Text = ""            ' presentarlos en el formulario
 If txtRCconductor.Text = "SPACE" Then txtRCconductor.Text = ""
 If txtRCentidad.Text = "SPACE" Then txtRCentidad.Text = ""
 If txtPSdesde.Text = "01/01/1900" Then txtPSdesde.Text = ""
 If txtPShasta.Text = "01/01/1900" Then txtPShasta.Text = ""
 If txtPSnro.Text = "SPACE" Then txtPSnro.Text = ""
 If txtPSempresa.Text = "SPACE" Then txtPSempresa.Text = ""
 If txtPAdesde.Text = "01/01/1900" Then txtPAdesde.Text = ""
 If txtPAhasta.Text = "01/01/1900" Then txtPAhasta.Text = ""
 If txtPAnro.Text = "SPACE" Then txtPAnro.Text = ""
 If txtPAempresa.Text = "SPACE" Then txtPAempresa.Text = ""
 
 Exit Sub
    
Salir:
   MsgBox "Error al intentar insertar en la Base de Datos :                              " & sql, vbCritical, "Atención"
End Sub
 
'***************************** Modificamos los campos de Registro de conductor,Poliza de Seguro y ART   *******************************

Public Sub modPerRCPSPA()
 On Error GoTo Salir
  
 Dim sql As String
 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
 
 If txtRCdesde.Text = "" Then txtRCdesde.Text = "01/01/1900"            'En aquellos campos que NO se hayan ingresado datos le asignamos
 If txtRChasta.Text = "" Then txtRChasta.Text = "01/01/1900"            'un valor dado que debemos insertar el registro en la base de datos
 If txtRCconductor.Text = "" Then txtRCconductor.Text = "SPACE"         'pero todos los campos deben tener algun caracter sino da error
 If txtRCentidad.Text = "" Then txtRCentidad.Text = "SPACE"
 If txtPSdesde.Text = "" Then txtPSdesde.Text = "01/01/1900"            ' los parametros de fecha "01/01/1900" y string "SPACE" indica
 If txtPShasta.Text = "" Then txtPShasta.Text = "01/01/1900"            ' que No tiene datos asignados
 If txtPSnro.Text = "" Then txtPSnro.Text = "SPACE"
 If txtPSempresa.Text = "" Then txtPSempresa.Text = "SPACE"
 If txtPAdesde.Text = "" Then txtPAdesde.Text = "01/01/1900"
 If txtPAhasta.Text = "" Then txtPAhasta.Text = "01/01/1900"
 If txtPAnro.Text = "" Then txtPAnro.Text = "SPACE"
 If txtPAempresa.Text = "" Then txtPAempresa.Text = "SPACE"
 
 
 
 ' **********************************************    Actualizamos el registro ******************************************************
  
 sql = "update perpolreg set FechaInicioRC = '" & txtRCdesde.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set FechaFinRC = '" & txtRChasta.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set NroRC = '" & txtRCconductor.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set ExpedidoRC = '" & txtRCentidad.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 
 sql = "update perpolreg set FechaInicioPS = '" & txtPSdesde.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set FechaFinPS = '" & txtPShasta.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set NroPS = '" & txtPSnro.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set EmpresaPS = '" & txtPSempresa.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 
 sql = "update perpolreg set FechaInicioPA = '" & txtPAdesde.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set FechaFinPA = '" & txtPAhasta.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set NroPA = '" & txtPAnro.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 sql = "update perpolreg set EmpresaPA = '" & txtPAempresa.Text & "' where PersonaID = " & db_PersonaID
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 
 If txtRCdesde.Text = "01/01/1900" Then txtRCdesde.Text = ""            ' Retornamos los valores originales de los Textbox para
 If txtRChasta.Text = "01/01/1900" Then txtRChasta.Text = ""            ' presentarlos en el formulario
 If txtRCconductor.Text = "SPACE" Then txtRCconductor.Text = ""
 If txtRCentidad.Text = "SPACE" Then txtRCentidad.Text = ""
 If txtPSdesde.Text = "01/01/1900" Then txtPSdesde.Text = ""
 If txtPShasta.Text = "01/01/1900" Then txtPShasta.Text = ""
 If txtPSnro.Text = "SPACE" Then txtPSnro.Text = ""
 If txtPSempresa.Text = "SPACE" Then txtPSempresa.Text = ""
 If txtPAdesde.Text = "01/01/1900" Then txtPAdesde.Text = ""
 If txtPAhasta.Text = "01/01/1900" Then txtPAhasta.Text = ""
 If txtPAnro.Text = "SPACE" Then txtPAnro.Text = ""
 If txtPAempresa.Text = "SPACE" Then txtPAempresa.Text = ""
 
 Exit Sub
    
Salir:
   MsgBox "Error al actualizar la Base de Datos :                              " & sql, vbCritical, "Atención"
End Sub
Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
    If fgPuesto = True Then
      PuestoControlManualMOD.Lectura_Doc_Cruda.SetFocus
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Private Sub cmdFechaNacimiento_Click()
On Error GoTo Salir
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaNacimiento
    DatePickerMOD.Show vbModal
Exit Sub
Salir:
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub

' Roles:

Private Sub cmdAgregarRol_Click()
    Set PersonaCatValMOD.ParentWindow = Me
    PersonaCatValMOD.PersonaID = db_PersonaID
    PersonaCatValMOD.CategoriaID = CAT_TIPO_PERSONA
    PersonaCatValMOD.Show vbModal
End Sub

Private Sub cmdBorrarRol_Click()
    GridRoles.col = 1
    GridRoles.Row = GridRoles.RowSel
    If GridRoles.Text <> "" And GridRoles.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridRoles.Text & "]?", vbYesNo, "Atención") = vbYes Then
            GridRoles.col = 0
            GridRoles.Row = GridRoles.RowSel
            If Not AdminPersonasService.PersonaOrm.eliminarPerCatVal(db_PersonaID, CAT_TIPO_PERSONA, CLng(GridRoles.Text)) Then
                MsgBox "No se puede quitar el Rol de la Persona", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

' Documentos:

Private Sub cmdAgregarDoc_Click()
    Set PersonaDocCatValMOD.ParentWindow = Me
    PersonaDocCatValMOD.PersonaID = db_PersonaID
    PersonaDocCatValMOD.CategoriaID = CAT_TIPO_DOC_PERSONA
    PersonaDocCatValMOD.ValorID = 0
    PersonaDocCatValMOD.DocumentoID = 0
    PersonaDocCatValMOD.Show vbModal
End Sub

Private Sub cmdActualizarDoc_Click()
    
    On Error Resume Next
    
    opt_Realizo_Actualizacion = False ' aca inicializamos para luego comprobar
    AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Iniciar
    
    GridDocumentos.col = 0
    GridDocumentos.Row = GridDocumentos.RowSel
    If GridDocumentos.Text <> "" And GridDocumentos.Row >= 1 Then
        GridDocumentos.col = 0
        GridDocumentos.Row = GridDocumentos.RowSel
        Dim DocumentoID  As Long
        DocumentoID = CLng(GridDocumentos.Text)

        GridDocumentos.col = 1
        GridDocumentos.Row = GridDocumentos.RowSel
        Dim ValorID  As Long
        ValorID = CLng(GridDocumentos.Text)
        
        Set PersonaDocCatValMOD.ParentWindow = Me
        PersonaDocCatValMOD.PersonaID = db_PersonaID
        PersonaDocCatValMOD.CategoriaID = CAT_TIPO_DOC_PERSONA
        PersonaDocCatValMOD.ValorID = ValorID
        PersonaDocCatValMOD.DocumentoID = DocumentoID
        GridDocumentos.col = 3
        PersonaDocCatValMOD.Numero = (GridDocumentos.Text)
        Call AdminPersonasService.PersonaOrm.eliminarPerDocCatVal(db_PersonaID, DocumentoID, CAT_TIPO_DOC_PERSONA, ValorID)
        PersonaDocCatValMOD.Show vbModal
        If opt_Realizo_Actualizacion Then
            AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Finalizar
        Else
           AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Cancelar
        End If
    End If
End Sub

Private Sub GridDocumentos_DblClick()
    cmdActualizarDoc_Click
End Sub

Private Sub cmdBorrarDoc_Click()
    On Error Resume Next
    GridDocumentos.col = 1
    GridDocumentos.Row = GridDocumentos.RowSel
    If GridDocumentos.Text <> "" And GridDocumentos.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridDocumentos.Text & "]?", vbYesNo, "Atención") = vbYes Then
            
            GridDocumentos.col = 0
            GridDocumentos.Row = GridDocumentos.RowSel
            Dim DocumentoID  As Long
            DocumentoID = CLng(GridDocumentos.Text)

            GridDocumentos.col = 1
            GridDocumentos.Row = GridDocumentos.RowSel
            Dim ValorID  As Long
            ValorID = CLng(GridDocumentos.Text)

            If Not AdminPersonasService.PersonaOrm.eliminarPerDocCatVal(db_PersonaID, DocumentoID, CAT_TIPO_DOC_PERSONA, ValorID) Then
                MsgBox "No se puede quitar el Documento de la Persona", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

' Teléfonos:

Private Sub cmdAgregarTel_Click()
    On Error Resume Next
    Set PersonaTelCatValMOD.ParentWindow = Me
    PersonaTelCatValMOD.PersonaID = db_PersonaID
    PersonaTelCatValMOD.CategoriaID = CAT_TIPO_TEL_PERSONA
    PersonaTelCatValMOD.ValorID = 0
    PersonaTelCatValMOD.TelefonoID = 0
    PersonaTelCatValMOD.Show vbModal
End Sub

Private Sub cmdActualizarTel_Click()

    On Error Resume Next

    opt_Realizo_Actualizacion = False ' aca inicializamos para luego comprobar
    AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Iniciar

    GridTelefonos.col = 0
    GridTelefonos.Row = GridTelefonos.RowSel
    If GridTelefonos.Text <> "" And GridTelefonos.Row >= 1 Then
        GridTelefonos.col = 0
        GridTelefonos.Row = GridTelefonos.RowSel
        Dim TelefonoID  As Long
        TelefonoID = CLng(GridTelefonos.Text)

        GridTelefonos.col = 1
        GridTelefonos.Row = GridTelefonos.RowSel
        Dim ValorID  As Long
        ValorID = CLng(GridTelefonos.Text)
        
        Set PersonaTelCatValMOD.ParentWindow = Me
        PersonaTelCatValMOD.PersonaID = db_PersonaID
        PersonaTelCatValMOD.CategoriaID = CAT_TIPO_TEL_PERSONA
        PersonaTelCatValMOD.ValorID = ValorID
        PersonaTelCatValMOD.TelefonoID = TelefonoID
        GridTelefonos.col = 3
        PersonaTelCatValMOD.Telefono = (GridTelefonos.Text)
        Call AdminPersonasService.PersonaOrm.eliminarPerTelCatVal(db_PersonaID, TelefonoID, CAT_TIPO_TEL_PERSONA, ValorID)
        PersonaTelCatValMOD.Show vbModal
        If opt_Realizo_Actualizacion Then
            AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Finalizar
        Else
           AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Cancelar
        End If
    End If
End Sub

Private Sub GridTelefonos_DblClick()
    cmdActualizarTel_Click
End Sub

Private Sub cmdBorrarTel_Click()
    On Error Resume Next
    GridTelefonos.col = 1
    GridTelefonos.Row = GridTelefonos.RowSel
    If GridTelefonos.Text <> "" And GridTelefonos.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridTelefonos.Text & "]?", vbYesNo, "Atención") = vbYes Then
            
            GridTelefonos.col = 0
            GridTelefonos.Row = GridTelefonos.RowSel
            Dim TelefonoID  As Long
            TelefonoID = CLng(GridTelefonos.Text)

            GridTelefonos.col = 1
            GridTelefonos.Row = GridTelefonos.RowSel
            Dim ValorID  As Long
            ValorID = CLng(GridTelefonos.Text)

            If Not AdminPersonasService.PersonaOrm.eliminarPerTelCatVal(db_PersonaID, TelefonoID, CAT_TIPO_TEL_PERSONA, ValorID) Then
                MsgBox "No se puede quitar el Teléfono de la Persona", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

' E-mails:

Private Sub cmdAgregarMai_Click()
    Set PersonaMaiCatValMOD.ParentWindow = Me
    PersonaMaiCatValMOD.PersonaID = db_PersonaID
    PersonaMaiCatValMOD.CategoriaID = CAT_TIPO_EMAIL_PERSONA
    PersonaMaiCatValMOD.ValorID = 0
    PersonaMaiCatValMOD.EmailID = 0
    PersonaMaiCatValMOD.Show vbModal
End Sub

Private Sub cmdActualizarMai_Click()
    
    
    On Error Resume Next
    
     opt_Realizo_Actualizacion = False ' aca inicializamos para luego comprobar
    AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Iniciar

    
    GridEmails.col = 0
    GridEmails.Row = GridEmails.RowSel
    If GridEmails.Text <> "" And GridEmails.Row >= 1 Then
        GridEmails.col = 0
        GridEmails.Row = GridEmails.RowSel
        Dim EmailID  As Long
        EmailID = CLng(GridEmails.Text)

        GridEmails.col = 1
        GridEmails.Row = GridEmails.RowSel
        Dim ValorID  As Long
        ValorID = CLng(GridEmails.Text)
        
        Set PersonaMaiCatValMOD.ParentWindow = Me
        PersonaMaiCatValMOD.PersonaID = db_PersonaID
        PersonaMaiCatValMOD.CategoriaID = CAT_TIPO_EMAIL_PERSONA
        PersonaMaiCatValMOD.ValorID = ValorID
        PersonaMaiCatValMOD.EmailID = EmailID
        GridEmails.col = 3
        PersonaMaiCatValMOD.Email = GridEmails.Text
        Call AdminPersonasService.PersonaOrm.eliminarPerMaiCatVal(db_PersonaID, EmailID, CAT_TIPO_EMAIL_PERSONA, ValorID)
        PersonaMaiCatValMOD.Show vbModal
        If opt_Realizo_Actualizacion Then
            AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Finalizar
        Else
           AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Cancelar
        End If
    End If
End Sub

Private Sub GridEmails_DblClick()
    cmdActualizarMai_Click
End Sub

Private Sub cmdBorrarMai_Click()

    On Error Resume Next
    
    GridEmails.col = 1
    GridEmails.Row = GridEmails.RowSel
    If GridEmails.Text <> "" And GridEmails.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridEmails.Text & "]?", vbYesNo, "Atención") = vbYes Then
            
            GridEmails.col = 0
            GridEmails.Row = GridEmails.RowSel
            Dim EmailID  As Long
            EmailID = CLng(GridEmails.Text)

            GridEmails.col = 1
            GridEmails.Row = GridEmails.RowSel
            Dim ValorID  As Long
            ValorID = CLng(GridEmails.Text)

            If Not AdminPersonasService.PersonaOrm.eliminarPerMaiCatVal(db_PersonaID, EmailID, CAT_TIPO_EMAIL_PERSONA, ValorID) Then
                MsgBox "No se puede quitar el E-mail de la Persona", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

' Direcciones:

Private Sub cmdAgregarDir_Click()
    Set PersonaDirCatValMOD.ParentWindow = Me
    PersonaDirCatValMOD.PersonaID = db_PersonaID
    PersonaDirCatValMOD.CategoriaID = CAT_TIPO_DIR_PERSONA
    PersonaDirCatValMOD.ValorID = 0
    PersonaDirCatValMOD.DireccionID = 0
    PersonaDirCatValMOD.Show vbModal
End Sub



Private Sub cmdActualizarDir_Click()
    
    On Error Resume Next
    
    opt_Realizo_Actualizacion = False ' aca inicializamos para luego comprobar
    AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Iniciar

    
    GridDirecciones.col = 0
    GridDirecciones.Row = GridDirecciones.RowSel
    If GridDirecciones.Text <> "" And GridDirecciones.Row >= 1 Then
        GridDirecciones.col = 0
        GridDirecciones.Row = GridDirecciones.RowSel
        Dim DireccionID  As Long
        DireccionID = CLng(GridDirecciones.Text)

        GridDirecciones.col = 1
        GridDirecciones.Row = GridDirecciones.RowSel
        Dim ValorID  As Long
        ValorID = CLng(GridDirecciones.Text)

        Set PersonaDirCatValMOD.ParentWindow = Me
        PersonaDirCatValMOD.PersonaID = db_PersonaID
        PersonaDirCatValMOD.CategoriaID = CAT_TIPO_DIR_PERSONA
        PersonaDirCatValMOD.ValorID = ValorID
        PersonaDirCatValMOD.DireccionID = DireccionID
        GridDirecciones.col = 3
        PersonaDirCatValMOD.Numero = GridDirecciones.Text
        Call AdminPersonasService.PersonaOrm.eliminarPerDirCatVal(db_PersonaID, DireccionID, CAT_TIPO_TEL_PERSONA, ValorID)
        PersonaDirCatValMOD.Show vbModal
        If opt_Realizo_Actualizacion Then
            AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Finalizar
        Else
           AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Cancelar
        End If
    End If
End Sub

Private Sub GridDirecciones_DblClick()
    cmdActualizarDir_Click
End Sub

Private Sub cmdBorrarDir_Click()

    On Error Resume Next

    GridDirecciones.col = 1
    GridDirecciones.Row = GridDirecciones.RowSel
    If GridDirecciones.Text <> "" And GridDirecciones.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridDirecciones.Text & "]?", vbYesNo, "Atención") = vbYes Then

            GridDirecciones.col = 0
            GridDirecciones.Row = GridDirecciones.RowSel
            Dim DireccionID  As Long
            DireccionID = CLng(GridDirecciones.Text)

            GridDirecciones.col = 1
            GridDirecciones.Row = GridDirecciones.RowSel
            Dim ValorID  As Long
            ValorID = CLng(GridDirecciones.Text)

            If Not AdminPersonasService.PersonaOrm.eliminarPerDirCatVal(db_PersonaID, DireccionID, CAT_TIPO_DIR_PERSONA, ValorID) Then
                MsgBox "No se puede quitar la Dirección de la Persona", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

' Propiedades Extendidas:

Private Sub cmdAgregarPrx_Click()
    Set PersonaPrxMOD.ParentWindow = Me
    PersonaPrxMOD.PersonaID = db_PersonaID
    PersonaPrxMOD.PropiedadID = 0
    PersonaPrxMOD.Show vbModal
End Sub

Private Sub cmdActualizarPrx_Click()
       
    
    On Error Resume Next
    
    opt_Realizo_Actualizacion = False ' aca inicializamos para luego comprobar
    AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Iniciar

    
    GridPropiedadesExtendidas.col = 0
    GridPropiedadesExtendidas.Row = GridPropiedadesExtendidas.RowSel
    If GridPropiedadesExtendidas.Text <> "" And GridPropiedadesExtendidas.Row >= 1 Then
        GridPropiedadesExtendidas.col = 0
        GridPropiedadesExtendidas.Row = GridPropiedadesExtendidas.RowSel
        Dim PropiedadID  As Long
        PropiedadID = CLng(GridPropiedadesExtendidas.Text)

        Set PersonaPrxMOD.ParentWindow = Me
        PersonaPrxMOD.PersonaID = db_PersonaID
        PersonaPrxMOD.PropiedadID = PropiedadID
        GridPropiedadesExtendidas.col = 2
        PersonaPrxMOD.Valor = GridPropiedadesExtendidas.Text
        Call AdminPersonasService.PersonaOrm.eliminarPerPrx(db_PersonaID, PropiedadID)
        PersonaPrxMOD.Show vbModal
        If opt_Realizo_Actualizacion Then
            AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Finalizar
        Else
           AdminPersonasService.PersonaOrm.AsistenteDataObject.Transaccion_Cancelar
        End If
    End If
End Sub

Private Sub GridPropiedadesExtendidas_DblClick()
    cmdActualizarPrx_Click
End Sub

Private Sub cmdBorrarPrx_Click()

    On Error Resume Next

    GridPropiedadesExtendidas.col = 1
    GridPropiedadesExtendidas.Row = GridPropiedadesExtendidas.RowSel
    If GridPropiedadesExtendidas.Text <> "" And GridPropiedadesExtendidas.Row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridPropiedadesExtendidas.Text & "]?", vbYesNo, "Atención") = vbYes Then

            GridPropiedadesExtendidas.col = 0
            GridPropiedadesExtendidas.Row = GridPropiedadesExtendidas.RowSel
            Dim PropiedadID  As Long
            PropiedadID = CLng(GridPropiedadesExtendidas.Text)

            If Not AdminPersonasService.PersonaOrm.eliminarPerPrx(db_PersonaID, PropiedadID) Then
                MsgBox "No se puede quitar el Propiedad Extendida de la Persona", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

Sub actualizarLocalizacion()
    lblApellido.Caption = localizar(lblApellido.name)
    lblNombre.Caption = localizar(lblNombre.name)
    lblSexo.Caption = localizar(lblSexo.name)
    lblNacionalidad.Caption = localizar(lblNacionalidad.name)
    lblRoles.Caption = localizar(lblRoles.name)
    lblDocumentos.Caption = localizar(lblDocumentos.name)
    lblTelefonos.Caption = localizar(lblTelefonos.name)
    lblEmails.Caption = localizar(lblEmails.name)
    lblDirecciones.Caption = localizar(lblDirecciones.name)
    lblOtrosDatos.Caption = localizar(lblOtrosDatos.name)
    CmdImportarFoto.Caption = localizar(CmdImportarFoto.name)
    CmdCapturarFoto.Caption = localizar(CmdCapturarFoto.name)
    cmdAgregarRol.Caption = localizar(cmdAgregarRol.name)
    cmdBorrarRol.Caption = localizar(cmdBorrarRol.name)
    cmdAgregarDoc.Caption = localizar(cmdAgregarDoc.name)
    cmdActualizarDoc.Caption = localizar(cmdActualizarDoc.name)
    cmdBorrarDoc.Caption = localizar(cmdBorrarDoc.name)
    cmdAgregarTel.Caption = localizar(cmdAgregarTel.name)
    cmdActualizarTel.Caption = localizar(cmdActualizarTel.name)
    cmdBorrarTel.Caption = localizar(cmdBorrarTel.name)
    cmdAgregarMai.Caption = localizar(cmdAgregarMai.name)
    cmdActualizarMai.Caption = localizar(cmdActualizarMai.name)
    cmdBorrarMai.Caption = localizar(cmdBorrarMai.name)
    cmdAgregarDir.Caption = localizar(cmdAgregarDir.name)
    cmdActualizarDir.Caption = localizar(cmdActualizarDir.name)
    cmdBorrarDir.Caption = localizar(cmdBorrarDir.name)
    cmdAgregarPrx.Caption = localizar(cmdAgregarPrx.name)
    cmdActualizarPrx.Caption = localizar(cmdActualizarPrx.name)
    cmdBorrarPrx.Caption = localizar(cmdBorrarPrx.name)
    cmdCerrar.Caption = localizar(cmdCerrar.name)
    lblFechaNacimiento.Caption = localizar(lblFechaNacimiento.name)
End Sub
