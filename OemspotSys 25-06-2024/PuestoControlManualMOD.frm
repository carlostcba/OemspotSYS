VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{3F5913F3-36BC-4902-925F-1DF63BCAEB57}#1.0#0"; "LiveX_8300.ocx"
Begin VB.Form PuestoControlManualMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "1"
   ClientHeight    =   10320
   ClientLeft      =   4200
   ClientTop       =   405
   ClientWidth     =   15360
   ControlBox      =   0   'False
   Icon            =   "PuestoControlManualMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10320
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton btn_AutoOut 
      Caption         =   "Salida Automatica"
      Height          =   435
      Left            =   13920
      Style           =   1  'Graphical
      TabIndex        =   84
      Top             =   9840
      Width           =   1335
   End
   Begin VB.Timer TimerMSComm 
      Interval        =   1000
      Left            =   11280
      Top             =   7320
   End
   Begin VB.OptionButton Opt_Acompañante 
      Caption         =   "Option2"
      Height          =   255
      Left            =   5400
      TabIndex        =   81
      Top             =   1920
      Width           =   255
   End
   Begin VB.OptionButton Opt_Conductor 
      Caption         =   "Option1"
      Height          =   255
      Left            =   5400
      TabIndex        =   80
      Top             =   1560
      Width           =   255
   End
   Begin MSFlexGridLib.MSFlexGrid msfgObservacion 
      Height          =   1335
      Left            =   1080
      TabIndex        =   79
      Top             =   5520
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   2355
      _Version        =   393216
      Rows            =   10
      FixedCols       =   0
   End
   Begin VB.TextBox txtRCentidad 
      Height          =   285
      Left            =   12960
      TabIndex        =   77
      Top             =   7080
      Width           =   1815
   End
   Begin VB.TextBox txtPShasta 
      Height          =   285
      Left            =   12960
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   76
      Top             =   8520
      Width           =   1335
   End
   Begin VB.CommandButton cmdPAhasta 
      Caption         =   "..."
      Height          =   255
      Left            =   14640
      TabIndex        =   75
      Top             =   9480
      Width           =   255
   End
   Begin VB.CommandButton cmdPAdesde 
      Caption         =   "..."
      Height          =   255
      Left            =   10680
      TabIndex        =   73
      Top             =   9480
      Width           =   255
   End
   Begin VB.TextBox txtPAdesde 
      Height          =   285
      Left            =   9120
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   72
      Top             =   9480
      Width           =   1245
   End
   Begin VB.TextBox txtPAempresa 
      Height          =   285
      Left            =   12960
      MaxLength       =   64
      TabIndex        =   70
      Top             =   9000
      Width           =   1815
   End
   Begin VB.TextBox txtPAnro 
      Height          =   285
      Left            =   9120
      MaxLength       =   64
      TabIndex        =   68
      Top             =   9000
      Width           =   1695
   End
   Begin VB.CommandButton cmdPShasta 
      Caption         =   "..."
      Height          =   255
      Left            =   14640
      TabIndex        =   66
      Top             =   8520
      Width           =   255
   End
   Begin VB.CommandButton cmdRChasta 
      Caption         =   "..."
      Height          =   255
      Left            =   14640
      TabIndex        =   65
      Top             =   7560
      Width           =   255
   End
   Begin VB.TextBox txtPAhasta 
      Height          =   285
      Left            =   12960
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   64
      Top             =   9480
      Width           =   1335
   End
   Begin VB.CommandButton cmdPSdesde 
      Caption         =   "..."
      Height          =   255
      Left            =   10680
      TabIndex        =   62
      Top             =   8520
      Width           =   255
   End
   Begin VB.TextBox txtPSdesde 
      Height          =   285
      Left            =   9120
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   61
      Top             =   8520
      Width           =   1245
   End
   Begin VB.TextBox txtPSempresa 
      Height          =   285
      Left            =   12960
      MaxLength       =   64
      TabIndex        =   59
      Top             =   8040
      Width           =   1815
   End
   Begin VB.TextBox txtPSnro 
      Height          =   285
      Left            =   9120
      MaxLength       =   64
      TabIndex        =   57
      Top             =   8040
      Width           =   1695
   End
   Begin VB.TextBox txtRChasta 
      BackColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   12960
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   55
      Top             =   7560
      Width           =   1335
   End
   Begin VB.CommandButton cmdRCdesde 
      Caption         =   "..."
      Height          =   255
      Left            =   10680
      TabIndex        =   53
      Top             =   7560
      Width           =   255
   End
   Begin VB.TextBox txtRCdesde 
      BackColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   9120
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   51
      Top             =   7560
      Width           =   1245
   End
   Begin VB.TextBox txtRCconductor 
      Height          =   285
      Left            =   9120
      MaxLength       =   64
      TabIndex        =   49
      Top             =   7080
      Width           =   1935
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H0000FF00&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   7200
      ScaleHeight     =   495
      ScaleWidth      =   255
      TabIndex        =   48
      Top             =   120
      Width           =   255
   End
   Begin VB.TextBox Lectura_Doc_Cruda 
      Height          =   285
      Left            =   7320
      TabIndex        =   47
      Top             =   360
      Width           =   150
   End
   Begin VB.TextBox txtPatente 
      Height          =   315
      Left            =   900
      MaxLength       =   32
      TabIndex        =   32
      Top             =   2340
      Width           =   4215
   End
   Begin VB.CheckBox chkCacheoSalida 
      Caption         =   "Cacheo a la Salida"
      Height          =   495
      Left            =   5640
      TabIndex        =   31
      Top             =   6960
      Value           =   1  'Checked
      Width           =   1200
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PuestoControlManualMOD.frx":15162
      Left            =   4320
      List            =   "PuestoControlManualMOD.frx":15164
      Style           =   2  'Dropdown List
      TabIndex        =   30
      Top             =   9960
      Width           =   780
   End
   Begin VB.CommandButton cmdVerFicha 
      Caption         =   "Ver ficha ..."
      Height          =   350
      Left            =   5280
      TabIndex        =   29
      Top             =   2760
      Width           =   1665
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "PuestoControlManualMOD.frx":15166
      Left            =   6240
      List            =   "PuestoControlManualMOD.frx":15168
      Style           =   2  'Dropdown List
      TabIndex        =   28
      Top             =   9960
      Width           =   780
   End
   Begin VB.CommandButton cmdPreautorizadas 
      Caption         =   "Preautorizar"
      Height          =   350
      Left            =   2160
      TabIndex        =   27
      Top             =   9960
      Width           =   1335
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   300
      Index           =   3
      Left            =   900
      TabIndex        =   26
      Top             =   2820
      Width           =   4215
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   285
      Index           =   1
      Left            =   900
      TabIndex        =   25
      Top             =   1425
      Width           =   4215
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   285
      Index           =   0
      Left            =   900
      TabIndex        =   24
      Top             =   960
      Width           =   4215
   End
   Begin VB.TextBox txtFechaInicio 
      Height          =   300
      Left            =   2010
      MaxLength       =   32
      TabIndex        =   23
      Top             =   5115
      Width           =   1470
   End
   Begin VB.CommandButton cmdFechaInicio 
      Caption         =   "..."
      Height          =   270
      Left            =   3525
      TabIndex        =   22
      Top             =   5115
      Width           =   255
   End
   Begin VB.TextBox txtFechaFin 
      Height          =   285
      Left            =   5040
      MaxLength       =   32
      TabIndex        =   21
      Top             =   5115
      Width           =   1455
   End
   Begin VB.CommandButton cmdFechaFin 
      Caption         =   "..."
      Height          =   270
      Left            =   6645
      TabIndex        =   20
      Top             =   5115
      Width           =   255
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   315
      Index           =   2
      Left            =   3090
      TabIndex        =   19
      Top             =   1860
      Width           =   2025
   End
   Begin VB.ComboBox txtDocumento 
      Height          =   315
      Left            =   930
      TabIndex        =   18
      Text            =   "txtDocumento"
      Top             =   1860
      Width           =   2055
   End
   Begin VB.CommandButton cmdBorrarTck 
      Height          =   225
      Left            =   360
      TabIndex        =   12
      Top             =   4680
      Visible         =   0   'False
      Width           =   180
   End
   Begin VB.CommandButton cmdVisita 
      Caption         =   "Generar >>"
      Height          =   465
      Index           =   0
      Left            =   9000
      TabIndex        =   11
      Top             =   9840
      Width           =   3975
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   465
      Left            =   7245
      TabIndex        =   10
      Top             =   9840
      Width           =   1560
   End
   Begin VB.CommandButton cmdverLote 
      Caption         =   "Lote Destino"
      Height          =   300
      Left            =   5280
      TabIndex        =   9
      Top             =   3225
      Width           =   1665
   End
   Begin VB.TextBox txtDatosLotes 
      Height          =   1410
      Left            =   960
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   3570
      Width           =   5805
   End
   Begin VB.TextBox txtLote 
      Height          =   285
      Left            =   900
      TabIndex        =   7
      Top             =   3240
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Cancel          =   -1  'True
      Caption         =   "Cancelar Operación"
      Height          =   350
      Left            =   120
      TabIndex        =   5
      Top             =   9960
      Width           =   1860
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   195
      Index           =   4
      Left            =   360
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Top             =   4320
      Visible         =   0   'False
      Width           =   150
   End
   Begin VB.CommandButton cmdVisita 
      Caption         =   "Generar >>"
      Height          =   350
      Index           =   1
      Left            =   13200
      TabIndex        =   3
      Top             =   9960
      Width           =   615
   End
   Begin VB.TextBox txtDatosPermiso 
      Height          =   555
      Index           =   2
      Left            =   1080
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   6960
      Width           =   4215
   End
   Begin VB.CommandButton cmdListas 
      Caption         =   "Listas"
      Height          =   350
      Left            =   5280
      TabIndex        =   1
      Top             =   945
      Width           =   1665
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar..."
      Default         =   -1  'True
      Height          =   350
      Left            =   5280
      TabIndex        =   0
      Top             =   2280
      Width           =   1665
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2985
      Index           =   0
      Left            =   7200
      TabIndex        =   6
      Top             =   840
      Width           =   3810
      _Version        =   65536
      _ExtentX        =   6720
      _ExtentY        =   5265
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   3000
      Index           =   1
      Left            =   11160
      TabIndex        =   13
      Top             =   840
      Width           =   3810
      _Version        =   65536
      _ExtentX        =   6720
      _ExtentY        =   5292
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2400
      Index           =   2
      Left            =   7200
      TabIndex        =   14
      Top             =   4080
      Width           =   2595
      _Version        =   65536
      _ExtentX        =   4577
      _ExtentY        =   4233
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2415
      Index           =   3
      Left            =   9840
      TabIndex        =   15
      Top             =   4080
      Width           =   2595
      _Version        =   65536
      _ExtentX        =   4577
      _ExtentY        =   4260
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2400
      Index           =   4
      Left            =   12480
      TabIndex        =   16
      Top             =   4080
      Width           =   2475
      _Version        =   65536
      _ExtentX        =   4366
      _ExtentY        =   4233
      _StockProps     =   0
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   765
      Left            =   0
      TabIndex        =   17
      Top             =   0
      Width           =   15165
      _ExtentX        =   26749
      _ExtentY        =   1349
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   240
      Top             =   3720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label14 
      Caption         =   "Acompañante"
      Height          =   255
      Left            =   5760
      TabIndex        =   83
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Conductor"
      Height          =   255
      Left            =   5760
      TabIndex        =   82
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   4
      Left            =   5400
      Stretch         =   -1  'True
      Top             =   7680
      Width           =   1620
   End
   Begin VB.Image ImgOemspot 
      Height          =   1920
      Left            =   0
      Picture         =   "PuestoControlManualMOD.frx":1516A
      Top             =   5280
      Width           =   7005
   End
   Begin VB.Label Label12 
      Caption         =   "Entidad Emisora"
      Height          =   495
      Left            =   12000
      TabIndex        =   78
      Top             =   7080
      Width           =   615
   End
   Begin VB.Label Label13 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   11880
      TabIndex        =   74
      Top             =   9480
      Width           =   525
   End
   Begin VB.Label Label11 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   7680
      TabIndex        =   71
      Top             =   9480
      Width           =   1215
   End
   Begin VB.Label Label10 
      Caption         =   "Empresa"
      Height          =   255
      Left            =   11880
      TabIndex        =   69
      Top             =   9120
      Width           =   645
   End
   Begin VB.Label Label9 
      Caption         =   "Pol. ART Nro.:"
      Height          =   255
      Left            =   7680
      TabIndex        =   67
      Top             =   9000
      Width           =   1335
   End
   Begin VB.Line Line7 
      X1              =   7200
      X2              =   15240
      Y1              =   8880
      Y2              =   8880
   End
   Begin VB.Line Line6 
      X1              =   7200
      X2              =   15240
      Y1              =   6960
      Y2              =   6960
   End
   Begin VB.Label Label7 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   11880
      TabIndex        =   63
      Top             =   8520
      Width           =   525
   End
   Begin VB.Label Label6 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   7680
      TabIndex        =   60
      Top             =   8520
      Width           =   1215
   End
   Begin VB.Label Label8 
      Caption         =   "Empresa"
      Height          =   255
      Left            =   11880
      TabIndex        =   58
      Top             =   8040
      Width           =   645
   End
   Begin VB.Label Label5 
      Caption         =   "Pol.Seguro Nro.:"
      Height          =   255
      Left            =   7680
      TabIndex        =   56
      Top             =   8040
      Width           =   1215
   End
   Begin VB.Line Line4 
      X1              =   7200
      X2              =   15240
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Label Label4 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   12000
      TabIndex        =   54
      Top             =   7560
      Width           =   525
   End
   Begin VB.Label Label3 
      Caption         =   "Vigencia Desde:"
      Height          =   255
      Left            =   7680
      TabIndex        =   52
      Top             =   7560
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Reg.Conductor:"
      Height          =   255
      Left            =   7680
      TabIndex        =   50
      Top             =   7080
      Width           =   1335
   End
   Begin VB.Label lblPatente 
      Caption         =   "Patente:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   90
      TabIndex        =   46
      Top             =   2385
      Width           =   735
   End
   Begin VB.Label lblCantidadOcupantes 
      Caption         =   "Adultos:"
      Height          =   255
      Index           =   0
      Left            =   3600
      TabIndex        =   45
      Top             =   9960
      Width           =   675
   End
   Begin VB.Label lblCantidadOcupantes 
      Caption         =   "Menores:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   1
      Left            =   5280
      TabIndex        =   44
      Top             =   9960
      Width           =   810
   End
   Begin VB.Label lblEntidad 
      Caption         =   "Entidad:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   330
      Index           =   2
      Left            =   120
      TabIndex        =   43
      Top             =   2880
      Width           =   765
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   2
      Left            =   90
      TabIndex        =   42
      Top             =   1530
      Width           =   645
   End
   Begin VB.Label lblApellido 
      Caption         =   "Apellido:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   1
      Left            =   105
      TabIndex        =   41
      Top             =   1050
      Width           =   660
   End
   Begin VB.Label lblVigenciaInicio 
      Caption         =   "Desde:"
      Height          =   210
      Left            =   1350
      TabIndex        =   40
      Top             =   5175
      Width           =   585
   End
   Begin VB.Label lblVigenciaFin 
      Caption         =   "Hasta:"
      Height          =   210
      Left            =   4320
      TabIndex        =   39
      Top             =   5160
      Width           =   525
   End
   Begin VB.Label lblMotivo 
      Caption         =   " Informe       de la Persona"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   600
      Index           =   0
      Left            =   105
      TabIndex        =   38
      Top             =   5865
      Width           =   900
   End
   Begin VB.Label lblAutorizacion 
      Caption         =   "Autorización:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   45
      TabIndex        =   37
      Top             =   5130
      Width           =   1170
   End
   Begin VB.Label lblEntidad 
      Caption         =   "Documento:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   0
      Left            =   75
      TabIndex        =   36
      Top             =   1935
      Width           =   840
   End
   Begin VB.Line Line1 
      X1              =   45
      X2              =   6990
      Y1              =   5040
      Y2              =   5040
   End
   Begin VB.Label lblDestino 
      Caption         =   "Destino:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   90
      TabIndex        =   35
      Top             =   3300
      Width           =   660
   End
   Begin VB.Line Line3 
      X1              =   45
      X2              =   6990
      Y1              =   3165
      Y2              =   3165
   End
   Begin VB.Line Line5 
      X1              =   0
      X2              =   6990
      Y1              =   7560
      Y2              =   7560
   End
   Begin VB.Line Line2 
      X1              =   7095
      X2              =   7095
      Y1              =   10650
      Y2              =   900
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   0
      Left            =   0
      Stretch         =   -1  'True
      Top             =   7680
      Width           =   1740
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   1
      Left            =   1800
      Stretch         =   -1  'True
      Top             =   7680
      Width           =   1740
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   2
      Left            =   3600
      Stretch         =   -1  'True
      Top             =   7680
      Width           =   1740
   End
   Begin VB.Image Image1 
      Height          =   5985
      Index           =   3
      Left            =   0
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   6975
   End
   Begin VB.Label lblMotivo 
      Caption         =   "Permisos:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Index           =   1
      Left            =   75
      TabIndex        =   34
      Top             =   7080
      Width           =   870
   End
   Begin VB.Label lblEntidad 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   225
      Index           =   1
      Left            =   5400
      TabIndex        =   33
      Top             =   7200
      Width           =   120
   End
End
Attribute VB_Name = "PuestoControlManualMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim PATH_IMAGENES_VISITA_INGRESOS As String

Public DbCommand As ADODB.Command
Public DbRecordset As ADODB.RecordSet

Public ParentWindow As Object
Private AdminPersonasService As New AdminPersonasSVR
Private AdminModulosService As New AdminModulosSVR
Private AdminLotesService As New AdminLotesSVR
'Private PlatformService As New PlatformSVR
Private PreService As New PreSVR


Dim AsistenteDataObject As New AsistenteDAO
''Dim PreDataObjet As New PreDAO
Private WpcService As New WpcSvr
Private GeoService As New GeoSVR

Public mi_tck As New TckSVR
Public TckDataObject As New TckDAO
Public fg_leyoDocumento As Boolean ' Indica con True que leyo el docuemnto en el scanner


Dim TckPerDataObject As New TckPerDAO
Dim TckPrxDataObject As New TckPrxDAO
Dim PerDocCatValDataObject As New PerDocCatValDAO
Dim MdlDataObject As New MdlDAO
Dim PreDataObject As New PreDAO

Dim LotperDataObject As New LotPerDAO
Dim Mi_Lote As New LoteDAO


''Dim Mi_Persona As New PerDAO

Dim Lote As String
Dim db_ModuloVirtualID As Long
Dim db_LoteID As Long
Dim db_PersonaID As Long
Dim db_DocumentoID As Long
Dim db_CategoriaID As Long
Dim db_ValorID As Long
Dim db_FechaInicio As String
Dim db_FechaFin As String
Dim db_TicketID As Currency
Private db_PreautorizadoID As Long
Private db_perfilID As Long

'para el manejo de los modulos virtuales
Private ModulosVirtuales() As String
Private Tam_Vector As Integer
Private i_Modulo_Virtual_Seleccionado As Integer
Private Const i_virtual_moduloID As Integer = 0
Private Const i_virtual_sentido As Integer = 1
Private Const i_virtual_tipo_identificacion As Integer = 2
Private Const i_virtual_ingreso_moduloID As Integer = 3
Private Const i_virtual_ingreso_nombre As Integer = 4
Private Const i_virtual_ingreso_ordenencuesta As Integer = 5
Private Const i_virtual_ingreso_adrs As Integer = 6
Private Const i_virtual_salida_moduloID As Integer = 7
Private Const i_virtual_salida_nombre As Integer = 8
Private Const i_virtual_salida_ordenencuesta As Integer = 9
Private Const i_virtual_salida_adrs As Integer = 10
Private Const i_virtual_total_items = 11


Dim oRs As New RecordSet
Dim sSql As String
Dim aux4 As Date
Dim aux5 As String

Private Sub btn_AutoOut_Click()
  If btn_AutoOut.BackColor = &H80FF& Then
    btn_AutoOut.BackColor = &H8000000F                  ' Desactiva modo se Salida automatico
  Else
    btn_AutoOut.BackColor = &H80FF&                     ' Activa el modo de salida automatico
  End If
  limpiarcampos
  Lectura_Doc_Cruda.SetFocus                  ' Posiciona el foco en Textbox de captura de scanner de documento
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

Private Sub Form_Load()
   
On Error GoTo Salir
Dim i As Integer
Dim sSql As String

    fgPuesto = True                             ' Indica que el formulario "Puesto de Control" esta activo
    fg_leyoDocumento = False                    ' Inicializa flag indicador de lectura de documento por scanner
    
    
    DoEvents
    Grid.Clear
    Tam_Vector = 0


    sSql = "SELECT CatVal.ValorID AS 'ID', CatVal.Nombre AS 'Nombre' FROM CatVal WHERE CatVal.CategoriaID = " & CAT_TIPO_DOC_PERSONA & " ORDER BY CatVal.Nombre"
    
    Set oRs = GetData_oRs(sSql)
    
    If Not oRs.EOF Then
        i = 0
        While Not oRs.EOF
            DoEvents
            txtDocumento.List(i) = oRs.Fields(1)
            txtDocumento.ItemData(i) = oRs.Fields(0)
            i = i + 1
            oRs.MoveNext
        Wend
        'txtDocumento.ListIndex = 4
    End If
    
    Set oRs = Nothing
    
    llenarComboNumeros Combo1, 30, False
    llenarComboNumeros Combo2, 30, True
    Inicializar_Cmdcomandos
'    actualizarLocalizacion

    ' Aqui Seleccion de modulo virtual se ocupa de colocar los "Caption" de los botones
    ' segun si el modulo es de entrada o de salida.
    ' Init, se ocupa de presentar las imagenes iniciales en la grilla donde estan los livex(0-4)
        
    Call Seleccion_Modulo_Virtual(0) ' por defecto cargo el primer modulo del vector
    init
    
    
    PuestoControlManualMOD.Caption = PuestoControlManualMOD.Caption & "    V." & VERSION_PLATAFORMA_SYS
    Exit Sub
Salir:
    MsgBox "Error al arrancar" + Err.Number + " " + Err.Description
    

End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim i As Integer

    Set AdminPersonasService = Nothing
    Set AdminModulosService = Nothing
    Set AdminLotesService = Nothing
    Set AsistenteDataObject = Nothing
    'Set PlatformService = Nothing
    Set PreService = Nothing
    Set LotperDataObject = Nothing
    
    Set TckPerDataObject = Nothing
    Set TckPrxDataObject = Nothing
    Set PerDocCatValDataObject = Nothing
    Set PreDataObject = Nothing
    Set WpcService = Nothing
    If GeoService.GeoVisionConectada Then
        For i = 0 To 4
            Mi_LiveX(i).Disconnect
            Mi_LiveX(i).ClearPTZflag
            ''Call GeoService.Desconectar(Mi_LiveX(i))
        Next
    End If
    Set GeoService = Nothing
    Set MdlDataObject = Nothing
    Set mi_tck = Nothing
    Set TckDataObject = Nothing
    
    fgPuesto = False
    
End Sub


Private Sub Lectura_Doc_Cruda_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
  If Len(Lectura_Doc_Cruda) > 50 Then                         ' Consultamos si hubo lectura de documento
     lecturaDeDocumentos (Lectura_Doc_Cruda.Text)             ' con foco en el textbox "Lectura_Doc_Cruda"
     cmdListas_Click
  End If

End If
'Debug.Print Lectura_Doc_Cruda.Text
End Sub
Public Sub Lectura_Doc_Cruda_KeyPressDoc(KeyAscii As Integer)

If KeyAscii = 13 Then
  If Len(Lectura_Doc_Cruda) > 50 Then                         ' Consultamos si hubo lectura de documento
     lecturaDeDocumentos (Lectura_Doc_Cruda.Text)             ' con foco en el textbox "Lectura_Doc_Cruda"
     If (cmdListas.Caption = "Ticket Ingresados...") Then
       cmdListas_Click
     Else
       cmdBuscar_Click
     End If
  End If
End If

End Sub
Private Sub Opt_Acompañante_Click()
 txtdatospersona(3).Text = "ACOMPAÑANTE..."
  
End Sub

Private Sub Opt_Conductor_Click()
  txtdatospersona(3).Text = "CONDUCTOR..."
  
End Sub

Private Sub TimerMSComm_Timer()
  MainMOD.ReadLectorSerialQR
End Sub

Private Sub txtLote_GotFocus()
'on error resume next
    cmdverLote.Default = True

End Sub

'Private Sub UserControl_Initialize()
'
'
'End Sub

'Private Sub UserControl_Terminate()
'Dim i As Integer
'On Error Resume Next
'
'    Set AdminPersonasService = Nothing
'    Set AdminModulosService = Nothing
'    Set AdminLotesService = Nothing
'    Set AsistenteDataObject = Nothing
'    Set PlatformService = Nothing
'    Set PreService = Nothing
'    Set LotperDataObject = Nothing
'
'    Set TckPerDataObject = Nothing
'    Set TckPrxDataObject = Nothing
'    Set PerDocCatValDataObject = Nothing
'    Set PreDataObject = Nothing
'    Set WpcService = Nothing
'    If GeoService.GeoVisionConectada Then
'        For i = 0 To 4
'            Set Mi_LiveX(i) = Nothing
'            ''Call GeoService.Desconectar(Mi_LiveX(i))
'        Next
'    End If
'    Set GeoService = Nothing
'    Set MdlDataObject = Nothing
'    Set mi_tck = Nothing
'    Set TckDataObject = Nothing
'End Sub


Public Property Let TicketID(dato As Currency)
Dim pathfoto As String
Dim LoteIDlong As Long
LoteIDlong = 100000


On Error Resume Next
If dato > 0 Then
Let db_TicketID = dato
     If AdminModulosService.ModuloQuery.obtenerTicketPendienteDetallado((db_TicketID)) Then
        If db_TicketID <> 0 Then
            If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
'afa 200912               LoteID = Val(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value))
               PersonaID = Val(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value))
               Dim value As Long                                                                    ' Hay veces que un registro se carga con datos errados
               value = Val(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value))     ' o faltantes, para el caso que no se haya cargado correctamente
               db_LoteID = value                                                                    ' el numero de lote , no dejaria salir al registro pendiente,
               If value < 100000 Then                                                               ' en estos casos le asignamos el "LOTE1" que se define
                   db_LoteID = 100000                                                               ' con el Id_Lote (100000)
               End If
               LoteID = db_LoteID
               'FechaInicio = CDate(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value))
               txtdatospersona(4).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(6).value)
               'txtDatosPermiso(2).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(8).value)
               Combo2.Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(9).value)
               Combo1.Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(10).value)
               TxtPatente.Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(11).value)
               
          '     txtDatosTicket(4).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
          '     txtDatosTicket(5).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(7).value)
               Call Cargar_Foto(Image1(0), getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value) & ".jpg") 'foto persona
               pathfoto = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_VISITA_INGRESOS")
               pathfoto = Path_Relativo_Fecha(pathfoto, AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
               pathfoto = pathfoto & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
               Call Cargar_Foto(Image1(2), pathfoto & "_1.jpg")   'foto documento
               Call Cargar_Foto(Image1(4), pathfoto & "_2.jpg")   'foto ingreso patente
          End If
       End If
    End If
End If


End Property

Public Property Let PreautorizadoID(value As Long)
  Let db_PreautorizadoID = value
   
   'If AdminPersonasService.buscarPersonaPorPersonaID((db_personaID)) Then
If db_PreautorizadoID <> 0 Then
   If PreService.PreQuery.obtenerPreautorizado((db_PreautorizadoID)) Then
       If Not PreService.PreQuery.DbRecordsetQRY.EOF Then
            txtLote.Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(0).value)
            txtdatospersona(3).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(1).value)
            txtdatospersona(0).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(2).value)
            txtdatospersona(1).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(3).value)
'  Dado que no gusrdaba el docuento , lo guardo en el campo "Motivo" de la tabla "Pre" y
'  lo presento en "txtdatospersona(2).Text" que es el DNI
'           txtdatospersona(4).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(4).value)
            txtdatospersona(2).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(4).value)
            txtFechaInicio.Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(5).value)
            txtFechaFin.Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(6).value)
       End If
'      *************** CHEQUEO SI LA PERSONA TIENE AUTORIZACION PARA EL DIA DE HOY *****************************
       If PreService.PreQuery.DbRecordsetQRY.Fields(5).value > Date Then
                    txtFechaInicio.BackColor = vbRed
                    txtFechaFin.BackColor = vbRed
                    
          MsgBox "La persona no se encuentra autorizada para ingresar en esta fecha", vbCritical, "Autorización fuera de término"
       Else
                    txtFechaInicio.BackColor = vbGreen
                    txtFechaFin.BackColor = vbGreen
       End If
       cmdFechaInicio.Enabled = False
       cmdFechaFin.Enabled = False
'      ************************************************************************************************************
   End If
End If
  
End Property
'////////////////////////////////////PROPIEDADES DE LA PERSONA//////////////////////////////////////////////////////
Property Let PersonaID(value As Long)
  Dim hoy As Date
  Let db_PersonaID = value
  Dim i As Long
  Dim sql As String
 
  
  
    If db_PersonaID <> 0 Then
'************************* CARGO EL NOMBRE, APELLIDO, NUMERO Y TIPO DE DOCUMENTO*************************************
        If AdminPersonasService.PersonaQuery.buscarPersonaPreautorizadaEspecifica((db_PersonaID)) Then
            If Not AdminPersonasService.PersonaQuery.DbRecordsetQRY.EOF Then
                txtdatospersona(1).Text = " " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0).value)
                txtdatospersona(0).Text = " " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(1).value)
                txtdatospersona(2).Text = " " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(2).value)
                For i = 0 To txtDocumento.ListCount - 1
                    If txtDocumento.ItemData(i) = CStr(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(3).value) Then
                        txtDocumento.ListIndex = i
                    End If
                Next
            End If
        
            cargarFoto
            cmdVerFicha.Enabled = True
            Call Show_Obsv_Persona              ' Muestra el MsFlexGrid de Observaciones de la persona..!!
                  
       
'*************************VERIFICO SI LA PERSONA TIENE PERMISO PARA INGRESA A ALGUN LOTE*******************************
         If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
            If AdminLotesService.getLotPerPrf_con_PersonaID((db_PersonaID), (Date + Time)) Then
                'txtDatosPermiso(2) = "Relacion = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(4).value) & vbCrLf & _
                '                     "Perfil Nombre = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(5).value)
                'PerfilID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(1).value
                'txtDatosPermiso(2).BackColor = vbGreen 'la funcion anterior lo pinto de amarillo, aca lo pinto de verde
                'txtFechaInicio = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value
                'txtFechaFin = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value
                'txtFechaInicio.BackColor = vbGreen.
                'txtFechaFin.BackColor = vbGreen
                LoteID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(0).value ' lo cargo a lo ultimo porque sino me pisa los permisos
               ' AdminLotesService.LoteQuery.DbRecordsetQRY.Close
            End If
        
'************************* VERIFICO LA ULTIMA VISITA DE LA PERSONA SI ES QUE EXISTE **********************
'        If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
            If AdminPersonasService.PersonaQuery.getUltimaVisitaPersona(db_PersonaID) Then
                TxtPatente.Text = Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0).value)
                txtdatospersona(4) = Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(1).value)
            End If
            AdminPersonasService.PersonaQuery.DbRecordsetQRY.Close
        'End If
        End If
      End If ' SI EXISTE LA PERSONA EN LA BASE DE DATOS
    End If ' SI EL PERSONAID ES MAYOR A CERO
    cmdFechaInicio.Enabled = False
    cmdFechaFin.Enabled = False
    
'********** VERIFICO SI TIENE PARA PRESENTAR INFORMACIONES DE REGISTRO DE CONDUCIR ,SEGURO Y ART **********

'************************* LEVANTAMOS DE LA BASE DE DATOS INFO Y LA PRESENTAMOS SI ES QUE EXISTE..*********
 'If Not Chequear_conexion_Motor_MySQL Then Exit Function
   
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
    
    If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       
    sql = "SELECT * FROM perpolreg  WHERE PersonaID=" & db_PersonaID
    DbCommand.CommandText = sql
    Set DbRecordset = DbCommand.Execute
    If DbRecordset.BOF Then
       MsgBox "No se encontro el usuario seleccionado", vbExclamation, "Aviso..!!!"
       Exit Property
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


'************************* COLOCAMOS LOS COLORES DE VALIDACION EN CADA CASO *******************************

  If txtRChasta.Text <> "" Then            ' La persona tiene ingresados datos del registro de conducir ??
    If Date > CDate(txtRChasta.Text) Then
       txtRCdesde.BackColor = &HFF&         ' Color Rojo
       txtRChasta.BackColor = &HFF&         ' Color Rojo
       txtRCconductor.BackColor = &HFF&     ' Color Rojo
       txtRCentidad.BackColor = &HFF&       ' Color Rojo
    Else
       txtRCdesde.BackColor = &HFF00&       ' Color Verde
       txtRChasta.BackColor = &HFF00&       ' Color Verde
       txtRCconductor.BackColor = &HFF00&   ' Color Verde
       txtRCentidad.BackColor = &HFF00&     ' Color Verde
    End If
  End If
  
  If txtPShasta.Text <> "" Then            ' La persona tiene ingresados datos de la Poliza de Seguros ??
    If Date > CDate(txtPShasta.Text) Then
       txtPSdesde.BackColor = &HFF&         ' Color Rojo
       txtPShasta.BackColor = &HFF&         ' Color Rojo
       txtPSnro.BackColor = &HFF&           ' Color Rojo
       txtPSempresa.BackColor = &HFF&       ' Color Rojo
    Else
       txtPSdesde.BackColor = &HFF00&       ' Color Verde
       txtPShasta.BackColor = &HFF00&       ' Color Verde
       txtPSnro.BackColor = &HFF00&         ' Color Verde
       txtPSempresa.BackColor = &HFF00&     ' Color Verde
    End If
  End If
  
   If txtPAhasta.Text <> "" Then            ' La persona tiene ingresados datos de la Poliza de ART ??
    If Date > CDate(txtPAhasta.Text) Then
       txtPAdesde.BackColor = &HFF&         ' Color Rojo
       txtPAhasta.BackColor = &HFF&         ' Color Rojo
       txtPAnro.BackColor = &HFF&           ' Color Rojo
       txtPAempresa.BackColor = &HFF&       ' Color Rojo
    Else
       txtPAdesde.BackColor = &HFF00&       ' Color Verde
       txtPAhasta.BackColor = &HFF00&       ' Color Verde
       txtPAnro.BackColor = &HFF00&         ' Color Verde
       txtPAempresa.BackColor = &HFF00&     ' Color Verde
    End If
  End If
   
    
End Property

'//////////////////////////////////////////PROPIEDADES DEL LOTE//////////////////////////////////////////////////////////
Property Let LoteID(value As Long)
On Error GoTo noexiste
Dim Referente As String
Dim Encontre As Boolean
Dim Ahora As Date
'afa 07/2009 para poder pedir los telefonos de una persona
Dim rec As ADODB.RecordSet

   
Let db_LoteID = value


Set rec = New ADODB.RecordSet



If db_LoteID > 0 Then
   Set Mi_Lote = AdminLotesService.LoteOrm.obtenerLote(db_LoteID)
   txtDatosLotes.Text = "Lote = " & Str(Mi_Lote.Lote) & vbCrLf & _
                        "Unidad Funcional = " & Str(Mi_Lote.UF) & vbCrLf & _
                        "Calle = " & Str(Mi_Lote.Calle) & vbCrLf & _
                        "Interno = " & Str(Mi_Lote.Interno) & vbCrLf & _
                        "OBSERVACIONES = " & Str(Mi_Lote.Numero) & vbCrLf

                        
                        
     If AdminLotesService.LotperQuery.obtenerReferenteLoteTelefono(db_LoteID) Then
         
        Set rec = AdminLotesService.LotperQuery.DbRecordsetQRY
         rec.MoveFirst
                    
          While Not rec.EOF
          
          'afa 07/2009
          'While Not AdminLotesService.LotperQuery.DbRecordsetQRY.EOF
              
            'afa 07/2009
            'txtDatosLotes.Text = txtDatosLotes.Text & vbCrLf & "Referente = " & Str(AdminLotesService.LotperQuery.DbRecordsetQRY.Fields(0).value)
           txtDatosLotes.Text = txtDatosLotes.Text & vbCrLf & Str(rec.Fields(1).value) & " = " & Str(rec.Fields(0).value)
           If AdminLotesService.LotperQuery.obtenerReferentePersonaTelefono(rec.Fields(2).value) Then
                While Not AdminLotesService.LotperQuery.DbRecordsetQRY.EOF
                    txtDatosLotes.Text = txtDatosLotes.Text & " -- " & Str(AdminLotesService.LotperQuery.DbRecordsetQRY.Fields(1).value)
                    AdminLotesService.LotperQuery.DbRecordsetQRY.MoveNext
                Wend
                AdminLotesService.LotperQuery.DbRecordsetQRY.Close
             End If
            'afa 07/2009   AdminLotesService.LotperQuery.DbRecordsetQRY.MoveNext
            rec.MoveNext
         Wend
         rec.Close
         Set rec = Nothing
         
         'AdminLotesService.LotperQuery.DbRecordsetQRY.Close
     End If
    If db_PersonaID <> 0 Then '
       If AdminLotesService.getPerPrf_con_PersonaID((db_PersonaID), db_LoteID) Then
         Encontre = False
         Ahora = Date '+ Time
         While (Not Encontre) And (Not AdminLotesService.LoteQuery.DbRecordsetQRY.EOF)
             If AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value <= Ahora And _
                AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value >= Ahora Then
                txtFechaInicio = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value
                txtFechaFin = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value
                txtFechaInicio.BackColor = vbGreen
                txtFechaFin.BackColor = vbGreen
                Encontre = True
                PerfilID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(1).value
                txtDatosPermiso(2) = "Relacion = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(4).value) & vbCrLf & _
                                  "Perfil Nombre = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(5).value) & vbCrLf & _
                                  txtDatosPermiso(2).Text
             Else
                AdminLotesService.LoteQuery.DbRecordsetQRY.MoveNext
             End If
         Wend
            If Not Encontre Then
                AdminLotesService.LoteQuery.DbRecordsetQRY.MoveFirst
                txtFechaInicio = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value
                txtFechaFin = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value
                txtFechaInicio.BackColor = vbYellow
                txtFechaFin.BackColor = vbYellow
                PerfilID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(1).value
                txtDatosPermiso(2) = "Relacion = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(4).value) & vbCrLf & _
                                     "Perfil Nombre = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(5).value) & vbCrLf & _
                                     txtDatosPermiso(2).Text
            End If
            AdminLotesService.LoteQuery.DbRecordsetQRY.Close
      Else ' no encontro ningun permiso para este lote esta persona
           txtDatosPermiso(2).BackColor = vbRed
      End If ' no encontro ningun permiso para este lote esta persona
    End If 'fin de si esta la persona
  End If ' fin de si el perfil es mayor a cero
     
  Call Show_Obsv_Persona                        ' Presenta el MsFlexGrid de las Observaciones de la Persona
    
noexiste:
End Property

Property Let PerfilID(value As Long)
Dim AdminPerfilesService As AdminPerfilesSVR
Dim hoy As Integer
Dim hora As Integer

  hora = Format(Time, "HHMM")
  hoy = (Weekday(Date, vbSunday) - 1) 'domingo es el primer dia de la semana


On Error GoTo Salir
If value > 0 Then
    txtDatosPermiso(2).BackColor = vbYellow 'por defecto cargo amarillo si hay algun perfil
    Let db_perfilID = value
    Set AdminPerfilesService = New AdminPerfilesSVR
    If AdminPerfilesService.getItemsList(value) Then
        Do While Not AdminPerfilesService.PerfilQuery.DbRecordsetQRY.EOF
             If CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(1).value) = hoy Then
                If hora >= CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(2).value) And _
                   hora <= CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(3).value) Then
                    txtDatosPermiso(2).BackColor = vbGreen 'pinto de verde si el dia que de hoy y ahora puede entrar
                End If
             End If
             txtDatosPermiso(2).Text = txtDatosPermiso(2).Text & vbCrLf & _
                                       obtenerDeLaSemana(CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(1).value)) & ": " & _
                                       obtenerHora(CStr(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(2).value)) & " a " & _
                                       obtenerHora(CStr(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(3).value))
             AdminPerfilesService.PerfilQuery.DbRecordsetQRY.MoveNext
        Loop
        AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Close
    Else
        txtDatosPermiso(2).BackColor = vbRed
    End If
Else
    txtDatosPermiso(2).BackColor = vbRed
End If

Salir:
Set AdminPerfilesService = Nothing
End Property

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
      'CategoriaID = AdminPersonasService.(db_CategoriaID)
End Property

Property Let ValorID(value As Long)
    Let db_ValorID = value
    'ValorID = AdminLotesService.LotperOrm.getValorID(db_ValorID)
End Property

Property Let FechaInicio(value As String)
    Let db_FechaInicio = value
    txtFechaInicio.Text = AdminLotesService.LotperOrm.getFechaInicio(db_FechaInicio)
End Property

Property Let FechaFin(value As String)
    Let db_FechaFin = value
    txtFechaFin.Text = AdminLotesService.LotperOrm.getFechaFin(db_FechaFin)
End Property

Sub init()
Dim camara_ As Integer          ' Aqui inicializa por primera ver la grilla cada vez que se invoca al Puesto de control
Dim i As Integer                ' Hay 5 posiciones para visualizar las camaras (0,1,2,3,4) La posicion "0" se usa para capturar foto
                                ' del documento y en el inicio rellenamos las grilla con las 4 camaras restantes en las posiciones
                                ' Camara 1 de Geo  en Posicion 0
                                ' Camara 2 de Geo  en Posicion 1
                                ' Camara 3 de Geo  en Posicion 2
                                ' Camara 4 de Geo  en Posicion 3
                                ' Camara 5 de Geo  en Posicion 4
    On Error Resume Next
    
    'db_ModuloVirtualID = AdminModulosService.obtenerModuloVirtual(getWindowsComputerName)
    Set MdlDataObject = AdminModulosService.ModuloOrm.obtenerModulo(db_ModuloVirtualID)
    
    If GeoService.Cargar_Propiedades_GEO(DbConnectionSYS, MdlDataObject.GrupoModulos) Then
        PATH_IMAGENES_VISITA_INGRESOS = GeoService.PATH_IMAGENES_VISITA_INGRESOS
        camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloVirtualID)
     
     
      
       camara_ = 1
       If GeoService.Conectar(Mi_LiveX(0), 265, 215, camara_) Then
       End If                               ' Posiciona Camara "1" en posicion de grilla "0"
       
     '  camara_ = 2
       If GeoService.Conectar(Mi_LiveX(1), 265, 215, camara_) Then
       End If                               ' Posiciona Camara "2" en posicion de grilla "1"
       
       
     '  camara_ = 3
       If GeoService.Conectar(Mi_LiveX(2), 175, 180, camara_) Then
       End If                               ' Posiciona Camara "3" en posicion de grilla "2"
       
     '  camara_ = 4
       If GeoService.Conectar(Mi_LiveX(3), 175, 180, camara_) Then
       End If                               ' Posiciona Camara "4" en posicion de grilla "3"
        
     '  camara_ = 5
       If GeoService.Conectar(Mi_LiveX(4), 178, 180, camara_) Then
       End If                               ' Posiciona Camara "5" en posicion de grilla "4"
        
 
          
    End If
      
    sSql = "SELECT CatVal.ValorID AS 'ID', CatVal.Nombre AS 'Nombre' FROM CatVal WHERE CatVal.CategoriaID = " & CAT_TIPO_DOC_PERSONA & " ORDER BY CatVal.Nombre"
    
    Set oRs = GetData_oRs(sSql)
    
    If Not oRs.EOF Then
        i = 0
        While Not oRs.EOF
            DoEvents
            txtDocumento.List(i) = oRs.Fields(1)
            txtDocumento.ItemData(i) = oRs.Fields(0)
            i = i + 1
            oRs.MoveNext
        Wend
        'txtDocumento.ListIndex = 3
    End If
    
    Set oRs = Nothing

'    If db_DocumentoID <> 0 Then
'      '  onUpdate = True
'        loadData
'    Else
'      '  onUpdate = False
'    End If
'    loadData
'''''''''''''''''''''''''''''''''''''''''''''''''''' LimpiarCampos


    Exit Sub
Salir:
    MsgBox "ERROR -- init -- " & Err.Number & "  " & Err.Description, vbCritical
    'Err.Clear
'Resume 0
End Sub

Private Sub cmdPreautorizadas_Click()
On Error GoTo Salir
   
   If validarDatos_preautorizado Then
    db_PreautorizadoID = PreService.PreORM.crearPreautorizacion(db_LoteID, txtdatospersona(3), txtdatospersona(0), txtdatospersona(1), txtdatospersona(2), txtFechaInicio.Text, txtFechaFin.Text)
    If db_PreautorizadoID > 0 Then
        limpiarcampos
    Else
         MsgBox "No se puede crear la preautorización," & vbCrLf & _
         " Verifique los datos", vbCritical, "Atención"
    End If
  Else
    MsgBox "Datos Incompletos", vbCritical, "Error en los Datos"
  End If
  
Exit Sub
Salir:
    MsgBox "PuestoControlManualGUI.cmdPreautorizadas_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub


Public Sub cmdVisita_Click(Index As Integer)

Dim tmp As Long
Dim camara_ As Integer
Dim Path_Foto As String
Dim Respuesta As Integer

On Error GoTo Salir
'///////////////////////////// INICIO LA TRANSACCION DEL TICKET /////////////////////////////////////////////////////
       ''AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Iniciar
       DbConnectionSYS.BeginTrans
'////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    If Not validarDatos_persona Then
       If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
          MsgBox "No se puede completar el movimiento de entrada porque faltan completar datos para el mismo.....Por favor verifique los datos faltantes !!!", vbCritical + vbOKCancel
       Else
          MsgBox "No se puede completar el movimiento de salida porque faltan datos del ingreso....!!!", vbCritical + vbOKCancel
       End If
       DbConnectionSYS.RollbackTrans
       Exit Sub
    End If
'A') Verificar existencia de la persona por DNI y NUMERO, si no es  asi crearla
    If db_PersonaID = 0 Then
        If AdminPersonasService.buscarPersonaPorDocumento((txtDocumento.ItemData(txtDocumento.ListIndex)), txtdatospersona(2)) Then 'existe a lo sumo la edito
           db_PersonaID = AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(6).value
           'debo verificar el antipass back
           If Existe_ticket_previo_persona(db_PersonaID) Then
              DbConnectionSYS.RollbackTrans
              Exit Sub
           End If
        Else ' no existe debo crearla
            db_PersonaID = AdminPersonasService.PersonaOrm.crearPersona(txtdatospersona(0), txtdatospersona(1), "", "", "", txtFechaInicio, txtFechaFin, "")
            Call CrearPolReg                   ' Crea el registro en la tabla "perpolreg"
            If AdminPersonasService.PersonaOrm.crearPerDocCatVal(db_PersonaID, CAT_TIPO_DOC_PERSONA, (txtDocumento.ItemData(txtDocumento.ListIndex)), txtdatospersona(2)) Then
            End If
        End If
    Else ' esta persona ya existe por que anteriormente fue cargada
        'entonces antes de seguir debo verificar el antipass back para saber si no intenta entrar 2 veces sin salir
        If Existe_ticket_previo_persona(db_PersonaID) Then
           DbConnectionSYS.RollbackTrans
            Exit Sub
        End If
    End If



'/////////////////////////////// B) SE CREA EL TICKET ////////////////////////////////////////////////////////////

' PRIMERO VEO SI ESTOY USANDO LA ENTRADA O LA SALIDA PARA CONFIGURAR LOS CONTROLES Y MODULOS CON LOS CUALES TRABAJO

'******************************************************************************************************************
'******************* SI ESTA SELECCIONADA LA ENTRADA ENTONCES HACER LO SIGUIENTE **********************************
'******************************************************************************************************************
If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
    
    mi_tck.FechaHoraIngreso = (Date + Time)
    'Mi_Tck.DestinoVisita = ""
    mi_tck.Numero = 0
    If Index = 0 Then ' apretaron el boton normal
        mi_tck.ModuloIngresoID = ModulosVirtuales(i_virtual_ingreso_moduloID, i_Modulo_Virtual_Seleccionado) 'ModuloID_Relacionado_Para_Evento 'MdlDataObject.ModuloEntradaID
    Else ' apretaron el boton de sin ticket
        mi_tck.ModuloIngresoID = ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado) 'ModuloID_ propio del modulo virtual
    End If
    If mi_tck.Crear_Movimiento_Tck(DbConnectionSYS, mi_tck) Then
        If GeoService.GeoVisionConectada Then
          Path_Foto = Path_Relativo_Fecha(PATH_IMAGENES_VISITA_INGRESOS, mi_tck.FechaHoraIngreso)
            If Path_Foto = "" Then
              MsgBox "Error en la carpeta de Imagenes", vbCritical, "Error"
            Else
                If GeoService.Tomar_Foto(Mi_LiveX(0), Path_Foto & "\" & mi_tck.TicketID & "_1.jpg") Then
                    'solo si tomo la foto del documento tomo la del vehiculo
                    camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento)
                    If camara_ > -1 Then
                        'Sleep (300)
                        If GeoService.Cambiar_Camara(Mi_LiveX(0), camara_) Then
                           ' Sleep (300)
                           ' Call GeoService.Tomar_Foto(Mi_LiveX(0), Path_Foto & "\" & mi_tck.TicketID & "_2.jpg")
                        End If
                    End If
                Else
                     MsgBox "No se pudieron tomar las imagenes", vbCritical, "Atención"
                End If
            End If
        End If
        
        
        ' C) Agregamos información de propiedades extendidas al ticket
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_PATENTE
        TckPrxDataObject.Valor = TxtPatente.Text
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_CANTIDAD_PERSONAS
        TckPrxDataObject.Valor = Combo1.ItemData(Combo1.ListIndex)
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_CANTIDAD_MENORES
        TckPrxDataObject.Valor = Combo2.ItemData(Combo2.ListIndex)
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        
        '*** PROPIEDAD AGREGADA PARA TALAR DEL LAGO 7/7/09
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_ENTIDAD
        TckPrxDataObject.Valor = txtdatospersona(3).Text
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        '*******
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_CACHEO
        TckPrxDataObject.Valor = chkCacheoSalida.value
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_DESTINO_VISITA
        TckPrxDataObject.Valor = db_LoteID 'txtLote.Text
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        
        TckPrxDataObject.TicketID = mi_tck.TicketID
        TckPrxDataObject.PropiedadID = PROPIEDAD_MOTIVO_VISITA
        TckPrxDataObject.Valor = txtdatospersona(4).Text
        tmp = AsistenteDataObject.create(TckPrxDataObject)
        
        ' D) Se relaciona el ticket con la Persona
        
        TckPerDataObject.TicketID = mi_tck.TicketID
        TckPerDataObject.PersonaID = db_PersonaID
        tmp = AsistenteDataObject.create(TckPerDataObject)
        
        
        'borro el preaturizado
        If db_PreautorizadoID > 0 Then
            Call PreService.PreORM.borrarPreautorizacion(db_PreautorizadoID)
        End If
    
    
    Else '
        ' no se pudo crear el registro de ingreso

        MsgBox "No se generó el registro del ticket", vbCritical, "Error"
'/////////////////////////////////// SE CANCELA LA TRANSACCION DEL TICKET ////////////////////////////////////////////
        AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
'//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        DbConnectionSYS.RollbackTrans
        Exit Sub
    End If
    
'******************************************************************************************************************
Else ' ******************** SI ESTA SELECCIONADA LA SALIDA ENTONCES HACER LO SIGUIENTE******************************
'******************************************************************************************************************
    If mi_tck.TraerTicketIngreso(DbConnectionSYS, db_TicketID) Then
        If Index = 0 Then
            mi_tck.ModuloSalidaID = ModulosVirtuales(i_virtual_salida_moduloID, i_Modulo_Virtual_Seleccionado)
        Else ' ******** APRETARON EL BOTON PARA SALIDA "SIN TICKET"
            mi_tck.ModuloSalidaID = ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado) 'ModuloID_ propio del modulo virtual
        End If
        mi_tck.FechaHoraSalida = (Date + Time)
        If mi_tck.Crear_Movimiento_TckHst(DbConnectionSYS, mi_tck) Then
            If mi_tck.Borrar_Movimiento_Tck(DbConnectionSYS, db_TicketID) Then
               ' LimpiarCampos
            Else
                'mensaje de error que no pudo borrar
                MsgBox "El ticket no pudo ser borrado de la tabla de tickets, por lo tanto no se creará el histórico de este movimiento", vbCritical, "Error en la operación"
                '/////////// SE CANCELA LA TRANSACCION DEL TICKET /////////////////////////
                    AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
                '//////////////////////////////////////////////////////////////////////////
                DbConnectionSYS.RollbackTrans
                Exit Sub
            End If
        Else
         'mensaje de error que no pudo crear el historico
          MsgBox "No se generó el registro de salida del ticket", vbCritical, "Error"
          '//////////////// SE CANCELA LA TRANSACCION DEL TICKET /////////////////////////////
            AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
          '///////////////////////////////////////////////////////////////////////////////////
          DbConnectionSYS.RollbackTrans
          Exit Sub
        End If
    Else
        'mensaje de error que no entcontro el ticket
        MsgBox "El ticket no pudo ser encontrado en la base de datos", vbCritical, "Error"
        '///////////////// SE CANCELA LA TRANSACCION DEL TICKET /////////////////////////////
            AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
        '////////////////////////////////////////////////////////////////////////////////////
         DbConnectionSYS.RollbackTrans
        Exit Sub
    End If

End If
'******************************** FINALIZA LA SALIDA EXITOSAMENTE ***************************************************
    
' E) Se manda el comando de impresión de ticket
'CARGO EL MODULO ID RELACIONADO DE ENTRADA
'If ModulosVirtuales(i_virtual_tipo_identificacion, i_Modulo_Virtual_Seleccionado) =
'    CAT_VAL_IDENTIFICACION_CODIGO_BARRA Then

Select Case ModulosVirtuales(i_virtual_tipo_identificacion, i_Modulo_Virtual_Seleccionado)
    Case CAT_VAL_IDENTIFICACION_CODIGO_BARRA
        If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = _
            CAT_VAL_SENTIDO_INGRESO Then
            If Index = 0 Then 'EMITE TICKET
                           
                               
                If Not WpcService.EnviarImpresionTicketModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento, mi_tck.TicketID) Then
                    MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
                End If
            Else ' APERTURA SIN EMISION DE TICKET
                'If Not WpcService.EnviarAperturaModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) Then
                '    MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
                'End If
            End If
        Else ' es salida tambien debe abrir
          If Opt_Conductor.value Then          ' Si es conductor habilita para activar la barrera si es acompañante no lo habilita
            If Not WpcService.EnviarAperturaModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento, mi_tck.TicketID) Then
                MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
            End If
          End If
        End If
    Case CAT_VAL_IDENTIFICACION_CONTROLADA
        'no genera comando pendiente
    Case Else
      If Opt_Conductor.value Then                     ' Si es conductor habilita para activar la barrera si es acompañante no lo habilita
        If Not WpcService.EnviarAperturaModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento, mi_tck.TicketID) Then
            MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
        End If
      End If
End Select

'MsgBox "Registración exitosa", vbInformation, "Registración exitosa"

'/////////////////////////// FINALIZO LA TRANSACCION DEL TICKET /////////////////////////////////////////////////////
    DbConnectionSYS.CommitTrans
    ''AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Finalizar
'////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

' Aqui verifica si estaba registrando un EGRESO VEHICULAR ....Si se cumple Toma la foto del poste de salida

If cmdListas.Caption = "Ticket Ingresados..." Then

    camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) 'Camara del Poste relacionado en el modulo Virtual de Salida
    If camara_ > -1 Then
      Call GeoService.Cambiar_Camara(Mi_LiveX(0), camara_)
    End If
    Path_Foto = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_VISITA_SALIDAS")
    Path_Foto = Path_Relativo_Fecha(Path_Foto, mi_tck.FechaHoraSalida)
    Call GeoService.Tomar_Foto(Mi_LiveX(0), Path_Foto & "\" & mi_tck.TicketID & "_3.jpg")

Else
    'Sleep (10000)
     Call GeoService.Tomar_Foto(Mi_LiveX(0), Path_Foto & "\" & mi_tck.TicketID & "_2.jpg")
     Call modPerRCPSPA               ' Modificamos los campos de Registro de conductor,Poliza de Seguro y ART
End If

limpiarcampos
Lectura_Doc_Cruda.SetFocus
Exit Sub

Salir:
    MsgBox "No se generó el registro del ticket " & Err.Description, vbCritical, "Error Inesperado"
    DbConnectionSYS.RollbackTrans
    'Resume 0
    limpiarcampos
    Lectura_Doc_Cruda.SetFocus
End Sub


Private Function validarDatos_persona() As Boolean
On Error GoTo Salir
  
  If Opt_Conductor.value Then
     validarDatos_persona = (txtdatospersona(2).Text <> "" And _
                             txtdatospersona(1).Text <> "" And _
                             txtdatospersona(0).Text <> "" And _
                             txtDatosLotes.Text <> "" And _
                             txtDocumento.Text <> "" And _
                             TxtPatente.Text <> "" And _
                             txtPSempresa.Text <> "" And _
                             txtPShasta.Text <> "" And _
                             txtRChasta.Text <> "" And _
                             txtdatospersona(3).Text <> "")
                             ' txtPSdesde.Text <> "" And _
                             ' txtRCdesde.Text <> "" And _
                             ' txtPSnro.Text <> "" And _
                             ' txtRCentidad.Text <> "" And _
                             ' txtRCconductor.Text <> ""
  Else
     validarDatos_persona = (txtdatospersona(2).Text <> "" And _
                             txtdatospersona(1).Text <> "" And _
                             txtDatosLotes.Text <> "" And _
                             txtdatospersona(0).Text <> "")
                          
  End If
                          
Exit Function
Salir:
MsgBox "PuestoControlManualGUI.validarDatos_persona" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Function

Private Function validarDatos_preautorizado() As Boolean
On Error GoTo Salir
  validarDatos_preautorizado = (db_LoteID > 0) And _
                               (txtdatospersona(0).Text <> "" Or _
                                txtdatospersona(1).Text <> "" Or _
                                txtdatospersona(3).Text <> "")
Exit Function
Salir:
MsgBox "PuestoControlManualGUI.validarDatos_preautorizado" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Function


Private Sub cmdVisitasPendientes_Click()
    Unload ReporteMovimientosMOD
    Set ReporteMovimientosMOD = Nothing
    Set ReporteMovimientosMOD.ParentWindow = Me
    ReporteMovimientosMOD.Desde = CDate(0)
    ReporteMovimientosMOD.Hasta = Date
    ReporteMovimientosMOD.Show
End Sub

Private Sub cmdListas_Click()

On Error GoTo Salir

Dim Texto As String

    If cmdListas.Caption = "Ticket Ingresados..." Then
        Unload ReporteMovimientosMOD
        Set ReporteMovimientosMOD = Nothing
        'ReporteMovimientosMOD.ReporteMovimientosGUI1.TextoBusqueda = (txtdatospersona(0).Text) & " " & (txtdatospersona(1).Text) & " " & (txtdatospersona(2).Text)
        Set ReporteMovimientosMOD.ParentWindow = Me
        ReporteMovimientosMOD.Desde = CDate(0)
        ReporteMovimientosMOD.Hasta = Date
        ReporteMovimientosMOD.Show
        If btn_AutoOut.BackColor = &H80FF& Then                 ' Esta en modo "Salida Automatica" ?? boton en rojo
          If (txtdatospersona(0).Text = "") Then
             Unload ReporteMovimientosMOD
             MsgBox " En Modo de Trabajo SALIDA AUTOMATICA no habilita la salida manual ..!!!", vbInformation, "Atención"
             Exit Sub
          End If
          ReporteMovimientosMOD.Grid_DblClick                   ' ejecuta los pasos que ingresaria el operador
          PuestoControlManualMOD.cmdVisita_Click (1)            ' almacena el movimiento y activa la barrera
        End If                                                  ' para que salga sin cacheo ni detencion....
    Else  '"Preautorizados..."
        Unload PreautorizadasMOD
        Set PreautorizadasMOD = Nothing
        Set PreautorizadasMOD.ParentWindow = Me
        'Texto = (txtdatospersona(0).Text) & " " & (txtdatospersona(1).Text) & " " & (txtdatospersona(3).Text)
        Texto = (txtdatospersona(0).Text)                 ' Solo busqueda por apellido
        PreautorizadasMOD.TextoBusqueda = Texto

        PreautorizadasMOD.Show vbModal
    End If
    
    Exit Sub
    
    
Salir:
MsgBox "Error al Cerrar el Formulario " & Err.Description, vbCritical, "Error en Ejecución"
    
End Sub

Private Sub Command1_Click()                    ' Boton de Cancelar Operacion en Form Puesto de control"
    limpiarcampos
    Lectura_Doc_Cruda.SetFocus                  ' Posiciona el foco en Textbox de captura de scanner de documento
End Sub

Private Sub Grid_Click()                        ' Conmuta la grilla de modulos virtuales en Form Puesto de control
   If (Grid.ColSel = 0) Then
       Picture1.BackColor = &HFF00&             ' Fija Color Verde en el picture1 que oculta el textbox de
   Else                                         ' lectura cruda
       Picture1.BackColor = &HC0C0C0
   End If
   
   Seleccion_Modulo_Virtual Grid.ColSel
   limpiarcampos
   Lectura_Doc_Cruda.SetFocus                   ' Posiciona el foco en Textbox de captura de scanner de documento
End Sub

Private Sub Image1_Click(Index As Integer)      ' Si se hace 1 click en alguna de las 3 imagenes pequeñas
On Error Resume Next                            ' que indican la foto de la persona, foto del documento
    Select Case Index                           ' y foto del poste de entrada , se presenta la imagen en grande
        Case 0, 1, 2, 4                         ' ocupando el lugar de la info de la persona y los controles
            If Image1(Index).ToolTipText <> "" Then
                Set Image1(3) = Image1(Index)
                visualizar_controles False      ' Apaga los controles
            End If
        Case 3
            visualizar_controles True           'Visualiza los controles
    End Select
End Sub

Private Sub visualizar_controles(ByRef opcion As Boolean)
    
    txtdatospersona(3).Visible = opcion
    txtdatospersona(4).Visible = opcion
    txtdatospersona(2).Visible = opcion
    txtdatospersona(1).Visible = opcion
    txtdatospersona(0).Visible = opcion
    
    TxtPatente.Visible = opcion
    txtDocumento.Visible = opcion
    txtDatosPermiso(2).Visible = opcion
    txtFechaInicio.Visible = opcion
    txtFechaFin.Visible = opcion
    txtLote.Visible = opcion
    txtDatosLotes.Visible = opcion
    Line1.Visible = opcion
    Line3.Visible = opcion
    lblEntidad(1).Visible = opcion
    
    cmdListas.Visible = opcion
    cmdBuscar.Visible = opcion
    cmdFechaFin.Visible = opcion
    cmdFechaInicio.Visible = opcion
    cmdverLote.Visible = opcion
    cmdPreautorizadas.Visible = opcion
    cmdVerFicha.Visible = opcion

    chkCacheoSalida.Visible = opcion
    Combo1.Visible = opcion
    Combo2.Visible = opcion
    Image1(3).Visible = Not opcion
    lblMotivo(0).Visible = opcion
    lblMotivo(1).Visible = opcion
    lblApellido(1).Visible = opcion
    lblNombre(2).Visible = opcion
    lblPatente.Visible = opcion
    lblAutorizacion.Visible = opcion
    lblVigenciaInicio.Visible = opcion
    lblVigenciaFin.Visible = opcion
    lblDestino(0).Visible = opcion
    lblEntidad(2).Visible = opcion
    lblEntidad(1).Visible = opcion
    lblEntidad(0).Visible = opcion
    lblCantidadOcupantes(0).Visible = opcion
    lblCantidadOcupantes(1).Visible = opcion
    msfgObservacion.Visible = opcion
    Opt_Conductor.Visible = opcion
    Opt_Acompañante.Visible = opcion
    
End Sub

Private Sub cmdBorrarTck_Click()
  
    Dim tmp As Long
    Dim camara_ As Integer
    Dim Path_Foto As String
On Error GoTo Salir
   
' A) Verificar que  haya un ticket para este módulo en la tabla de comandos pendientes
'       Si NO hay un Ticket pendiente salir
    
    'ModulosVirtuales(
    If Not AdminModulosService.existeTicketPendiente(ModuloID_Relacionado_Para_Evento) Then
        MsgBox " No Existe ningún ticket pendiente a procesar", vbInformation, "Atención"
        'Exit Sub
    End If

' B) Se borra el  Ticket pendiente
    If mi_tck.ExisteTicketIngreso_SinNumero(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) Then
        If MsgBox("Esta seguro que desea eliminar el Ticket Pendiente generado el " & mi_tck.FechaHoraIngreso, vbOKCancel + vbQuestion + vbDefaultButton1, "Confirme Acción") = vbCancel Then
            MsgBox "Se ha Cancelado el ticket pendiente a procesar", vbInformation, "Atención"
            cmdVisita(0).SetFocus
            Exit Sub
        End If
    Else
        MsgBox " No Existe ningún ticket pendiente a procesar", vbInformation, "Atención"
        cmdVisita(0).SetFocus
        'Exit Sub
    End If
    
    If GeoService.GeoVisionConectada Then
         Path_Foto = Path_Relativo_Fecha(PATH_IMAGENES_VISITA_INGRESOS, mi_tck.FechaHoraIngreso)
         If Path_Foto = "" Then
             MsgBox "Error en la carpeta de Imagenes, verifique si existen ", vbCritical, "Error"
         Else
            Call GeoService.Borrar_Foto(Path_Foto & "\" & mi_tck.TicketID & "_1.jpg")
            Call GeoService.Borrar_Foto(Path_Foto & "\" & mi_tck.TicketID & "_2.jpg")
         End If
    End If
    
    ' C) Borramos información de propiedades extendidas al ticket
    If mi_tck.Borrar_Movimiento_Tck_Per(DbConnectionSYS, mi_tck.TicketID) Then
    
    End If
    
    If mi_tck.Borrar_Movimiento_Tck_Prx(DbConnectionSYS, mi_tck.TicketID) Then
    
    End If
        
                     
    ' E) Se Borra el comando de impresión de ticket
    'CARGO EL MODULO ID RELACIONADO DE ENTRADA
    
    If Not WpcService.Eliminar_Comando_Pendiente(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) Then
        MsgBox "No se Eliminó la comunicación pendiente con el poste de ingreso", vbCritical, "Error"
    End If
    
    If mi_tck.Borrar_Movimiento_Tck(DbConnectionSYS, mi_tck.TicketID) Then
        MsgBox "Cancelación de ticket exitosa", vbInformation, ""
        cmdVisita(0).SetFocus
    Else
        MsgBox "No se pudo cancelar el registro del ticket pendiente", vbCritical, "Error"
        cmdVisita(0).SetFocus
    End If
    
 

Exit Sub
Salir:
    MsgBox "No se cancelo el registro del ticket", vbCritical, "Error Inesperado"
    'Resume 0
End Sub



Private Sub cmdListaPre_Click()

    Set PreautorizadasMOD.ParentWindow = Me
        PreautorizadasMOD.Show vbModal
End Sub

Public Sub cmdverLote_Click()
On Error GoTo Salir
  'db_LoteID = 0
  'txtDatosPersona(1) = ""

  txtDatosPermiso(2).BackColor = vbWhite
  txtDatosPermiso(2).Text = ""
  db_perfilID = 0
  Unload AdminLotesMOD
  Set AdminLotesMOD.ParentWindow = Me
  AdminLotesMOD.ReadOnly = True
  AdminLotesMOD.Seleccion = True
  If txtLote.Text = "" Then         ' Si Destino no informa ningun lote indicado por el visitante , .....
  '  AdminLotesMOD.db_busqueda = txtdatospersona(0) & " " & txtdatospersona(1)
    AdminLotesMOD.db_busqueda = " "
    AdminLotesMOD.BuscarTodo = True  ' .....visualiza todos los lotes
  Else
    AdminLotesMOD.db_busqueda = txtLote.Text
  End If
  
  
  AdminLotesMOD.Show vbModal
  
  AdminLotesMOD.Destroy
Salir:
End Sub

Private Sub Mi_LiveX_OnDBClick(Index As Integer)
 Dim aux1 As Boolean
 Dim aux2 As Boolean
 
 
 
 If Index = 0 Then
   If fgTogleo = False Then
     fgTogleo = True
     Call Invisible_Datos                                    ' coloco en invisible los datos de la persona
     Call GeoService.Conectar(Mi_LiveX(0), 530, 600, 0)      ' para presentar la camara 1 en forma ampliada
   Else
     fgTogleo = False
     Call Visible_Datos                                      ' regreso a visible los datos de la persona
     Call GeoService.Conectar(Mi_LiveX(0), 265, 215, 0)      ' vuelvo a retornar la camara 1 en tamaño normal
   End If
   
 Else
   
   aux1 = Mi_LiveX(Index).ShowCamMenuX
   aux2 = Mi_LiveX(Index).ChangeCamX(aux1)
   
 End If
 
 'Call Mi_LiveX(Index).ChangeCamX(Mi_LiveX(Index).ShowCamMenuX)

End Sub

Private Sub Visible_Datos()
  
  txtRCconductor.Visible = True
  txtRCentidad.Visible = True
  txtRCdesde.Visible = True
  txtRChasta.Visible = True
  txtPSnro.Visible = True
  txtPSempresa.Visible = True
  txtPSdesde.Visible = True
  txtPShasta.Visible = True
  txtPAnro.Visible = True
  txtPAempresa.Visible = True
  txtPAdesde.Visible = True
  txtPAhasta.Visible = True
  Label2.Visible = True
  Label3.Visible = True
  Label12.Visible = True
  Label4.Visible = True
  Label5.Visible = True
  Label6.Visible = True
  Label7.Visible = True
  Label8.Visible = True
  Label9.Visible = True
  Label10.Visible = True
  Label11.Visible = True
  Label13.Visible = True
  cmdRCdesde.Visible = True
  cmdRChasta.Visible = True
  cmdPSdesde.Visible = True
  cmdPShasta.Visible = True
  cmdPAdesde.Visible = True
  cmdPAhasta.Visible = True
    
End Sub
Private Sub Invisible_Datos()
  
  txtRCconductor.Visible = False
  txtRCentidad.Visible = False
  txtRCdesde.Visible = False
  txtRChasta.Visible = False
  txtPSnro.Visible = False
  txtPSempresa.Visible = False
  txtPSdesde.Visible = False
  txtPShasta.Visible = False
  txtPAnro.Visible = False
  txtPAempresa.Visible = False
  txtPAdesde.Visible = False
  txtPAhasta.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label12.Visible = False
  Label4.Visible = False
  Label5.Visible = False
  Label6.Visible = False
  Label7.Visible = False
  Label8.Visible = False
  Label9.Visible = False
  Label10.Visible = False
  Label11.Visible = False
  Label13.Visible = False
  cmdRCdesde.Visible = False
  cmdRChasta.Visible = False
  cmdPSdesde.Visible = False
  cmdPShasta.Visible = False
  cmdPAdesde.Visible = False
  cmdPAhasta.Visible = False
  
End Sub
Private Sub cmdVerFicha_Click()
    Set PersonaMOD.ParentWindow = Me
    PersonaMOD.PersonaID = db_PersonaID
    PersonaMOD.Show vbModal
End Sub

Sub cargarFoto()
On Error GoTo noHayFoto      'Aqui cargo la foto de la persona y foto DNI que esta ingresando y que existia en fotos de persona
    Image1(0).Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg")
    Image1(0).ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg"
    Image1(1).Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_DNI_PERSONAS") & "\" & db_PersonaID & ".jpg")
    Image1(1).ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_DNI_PERSONAS") & "\" & db_PersonaID & ".jpg"
    Exit Sub

noHayFoto:
    On Error Resume Next
    Image1(0).Picture = LoadPicture("")
    Image1(0).Picture = LoadPicture(App.path & "\NoHayFoto.jpg")
    Image1(1).Picture = LoadPicture("")
    Image1(1).Picture = LoadPicture(App.path & "\NoHayFoto.jpg")
End Sub

Private Sub lecturaDeDocumentos(textbox_doc As String)

Dim Index As Integer
Dim comillas As String
Dim cursor As Integer
Dim posicion As Integer
Dim cantidad_Caracteres As Integer
Dim contador_comillas As Integer

Index = 0
posicion = 1
comillas = """"
cursor = 1
contador_comillas = 0


For Index = 1 To 80
 If Mid(textbox_doc, Index, 1) = comillas Then              ' Verifico que el texto ingresado tenga
   contador_comillas = contador_comillas + 1                ' 7 comillas que separan los campos del
   
 End If                                                     ' documento...si esto se cumple ingreso por
Next                                                        ' lectura de scanner de documento

If contador_comillas < 7 Then
  fg_leyoDocumento = False                                  ' Indica NO leyo el documento por el scanner
  Exit Sub                                                  ' o leyo mal
End If


documento_Codigo = textbox_doc

If (Mid(documento_Codigo, 1, 1) = comillas) Then             ' Si el documento leido comienza con "@" ,procesamos de los nuevos
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 5
  posicion = posicion + 1
  documento_Numero = Mid(documento_Codigo, posicion, cantidad_Caracteres)
  cantidad_Caracteres = cantidad_Caracteres + 4

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_Genero = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_Genero = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  cursor = cursor + 1
  posicion = cursor
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion
  documento_Apellido = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_Nombre = Mid(documento_Codigo, posicion, cantidad_Caracteres)

Else

  While Not (Mid(documento_Codigo, cursor, 1) = comillas)     ' Aqui procesamos los documentos Standart
   cursor = cursor + 1                                        ' Descartamos los primeros digitos numericos
  Wend

  cursor = cursor + 1
  posicion = cursor
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion
  documento_Apellido = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_Nombre = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_Genero = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_Numero = Mid(documento_Codigo, posicion, cantidad_Caracteres)
  
  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
    cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_ejemplar = Mid(documento_Codigo, posicion, cantidad_Caracteres)

  posicion = posicion + cantidad_Caracteres
  cursor = cursor + 1
  While Not (Mid(documento_Codigo, cursor, 1) = comillas)
   cursor = cursor + 1
  Wend
  cantidad_Caracteres = cursor - posicion - 1
  posicion = posicion + 1
  documento_FechaNacimiento = Mid(documento_Codigo, posicion, cantidad_Caracteres)

End If
  
txtdatospersona(0) = documento_Apellido
txtdatospersona(1) = documento_Nombre
txtdatospersona(2) = documento_Numero

fg_leyoDocumento = True                         ' Indica leyo el documento por el scanner

End Sub


Private Sub cmdBuscar_Click()
Dim persona As String


On Error GoTo ERROR_FORM_BUSCAR

' Aqui ingresa cuando se oprime el boton de "Buscar" personas en el formulario "PuestoControlManualMod"
' que es el formulario principal , y muestra las personas que correspondan con el dato ingresado
' Esta subrrutina tambien se ejecuta automaticamente cuando se leyo un documento por el Scanner USB
' entonces verificamos que los datos que pudieron ingresar por cualquier texbox (Nombre,Documento,Patente
' etc dado que depende si movio el foco el operador) , contenga mas de 50 caracteres lo que indica que
' ingreso por el Scanner , en ese caso leemos el String enviado por el Scanner y llenamos los Texbox
' como si los hubiera completado manualmente el operador

 fg_leyoDocumento = False

If Len(Lectura_Doc_Cruda) > 50 Then                         ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (Lectura_Doc_Cruda.Text)             ' con foco en el textbox "Lectura_Doc_Cruda"
End If
If Len(txtdatospersona(0)) > 50 Then                        ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtdatospersona(0).Text)            ' con foco en el textbox "txtdatospersona(0)"("Apellido")
End If
If Len(txtdatospersona(1)) > 50 Then                        ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtdatospersona(1).Text)            ' con foco en el textbox "txtdatospersona(1)"("Nombre")
End If
If Len(txtdatospersona(2)) > 50 Then                        ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtdatospersona(2).Text)            ' con foco en el textbox "txtdatospersona(2)"("Documento")
End If
If Len(TxtPatente) > 50 Then                                ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (TxtPatente.Text)                    ' con foco en el textbox "txtpatente"("Patente")
   TxtPatente.Text = ""
End If
If Len(txtdatospersona(3)) > 50 Then                        ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtdatospersona(3).Text)            ' con foco en el textbox "txtdatospersona(3)"("Entidad")
   txtdatospersona(3).Text = ""
End If
If Len(txtdatospersona(4)) > 50 Then                        ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtdatospersona(4).Text)            ' con foco en el textbox "txtdatospersona(4)"("Motivo Observacion")
   txtdatospersona(4).Text = ""
End If
If Len(txtLote) > 50 Then                                   ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtLote.Text)                       ' con foco en el textbox "txtLote"("Lote")
   txtLote.Text = ""
End If
If Len(txtDatosLotes) > 50 Then                             ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtDatosLotes.Text)                 ' con foco en el textbox "txtdatoLotes"("Dato Lotes")
End If
If Len(txtDatosPermiso(2)) > 50 Then                        ' Consultamos si hubo lectura de documento
   lecturaDeDocumentos (txtDatosPermiso(2).Text)            ' con foco en el textbox "txtDatosPermiso"("Dato Permiso")
End If


db_PersonaID = 0

' Si realizo la lectura del documento por el scanner solo debe buscar por el documento dado que pueden
' haberse cargado anteriormente personas sin todos los datos que figuran en el dni o mal escritos...
' Si se ingresa en forma manual entonces buscamos por apellido o por nombre o por dni

If fg_leyoDocumento = False Then
  persona = (txtdatospersona(0).Text) & " " & (txtdatospersona(1).Text) & " " & (txtdatospersona(2).Text)
Else
  persona = (txtdatospersona(2).Text)
  fg_leyoDocumento = False
End If

Unload AdminPersonasMOD

AdminPersonasMOD.ReadOnly = True
AdminPersonasMOD.Seleccion = True
AdminPersonasMOD.db_busqueda = persona
Set AdminPersonasMOD.ParentWindow = Me

AdminPersonasMOD.Show vbModal

If db_PersonaID = 0 Then
    cmdVerFicha.Enabled = False                     ' si no hay datos ingresados presenta el cartel
                                                    ' que la persona no esta ingresada
    Beep
    If Len(persona) > 2 Then                        'vacio va a ocupar 2 por los espacios que cargue cuando lleno el control
        MsgBox "La Persona no se encuentra en la base de datos" & vbCrLf & _
                persona & vbCrLf & _
                "Verifique los datos o ingreselos manualmente" & vbCrLf & _
                "para dar de alta a una nueva Persona", vbInformation, "Persona no encontrada"
                Lectura_Doc_Cruda.SetFocus             ' Prepara el foco para recibir otro documento por
    End If                                             ' si lo hace nuevamente el operador
End If
Exit Sub

ERROR_FORM_BUSCAR:
  CmdCerrar_Click
End Sub


Public Sub UpdateWindow()
'   cmdBuscar_Click
End Sub

Private Sub CmdCerrar_Click()
   limpiarcampos
   If MainMOD.MSComm.PortOpen Then
     MainMOD.MSComm.PortOpen = False
   End If
   Unload Me
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Sub actualizarLocalizacion()
End Sub

Private Function Existe_ticket_previo_persona(ByRef PersonaID_ As Long) As Boolean
On Error GoTo Salir
    If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
        If AdminPersonasService.buscarTicketIngresoPorPersonaID((PersonaID_)) Then
           MsgBox "Esta Persona ya ha ingresado y aún no se registró su salida", vbCritical, "ANTIPASSBACK"
           Set ReporteMovimientosDetalleMOD.ParentWindow = Nothing
           ReporteMovimientosDetalleMOD.TicketID = AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0)
           ReporteMovimientosDetalleMOD.de_historicos = False
           ReporteMovimientosDetalleMOD.Show vbModal
           AdminPersonasService.PersonaQuery.DbRecordsetQRY.Close
           limpiarcampos
           Existe_ticket_previo_persona = True
        End If
    End If
Salir:
End Function


Private Sub cmdFechaInicio_Click()
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaInicio
    DatePickerMOD.Show vbModal
End Sub

Private Sub cmdFechaFin_Click()
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaFin
    DatePickerMOD.Show vbModal
End Sub
Sub limpiarcampos()
Dim i As Integer
Dim camara_ As Integer
On Error Resume Next

    If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then     ' Siempre que el modulo de la grilla sea de entrada
        camara_ = 0                                                                                          ' Selecciona la camara 0 para visualizar el documento
        Call GeoService.Cambiar_Camara(Mi_LiveX(0), camara_)
    Else
      camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado))
     'camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, MdlDataObject.ModuloEntradaID)              ' Como es modulo de salida , visualiza la camara
      If camara_ > -1 Then                                                                                   ' asociada al modulo
        Call GeoService.Cambiar_Camara(Mi_LiveX(0), camara_)
      End If
    End If
    
    
    
    Image1(0) = LoadPicture("")
    Image1(1) = LoadPicture("")
    Image1(2) = LoadPicture("")
    Image1(4) = LoadPicture("")
    
    
    cmdFechaInicio.Enabled = True
    cmdFechaFin.Enabled = True
    txtLote.Text = ""
    txtDatosLotes.Text = ""
    txtDatosPermiso(2).Text = ""
    txtDatosPermiso(2).BackColor = vbWhite
    txtdatospersona(0).Text = ""
    txtdatospersona(1).Text = ""
    txtdatospersona(2).Text = ""
    If Opt_Conductor.value Then
      txtdatospersona(3).Text = "CONDUCTOR..."
    End If
    txtdatospersona(4).Text = ""
    TxtPatente.Text = ""
    txtFechaFin.Text = Date
    txtFechaInicio.Text = Date
    txtFechaInicio.BackColor = vbWhite
    txtFechaFin.BackColor = vbWhite
    fgTogleo = False
    
    
    db_PersonaID = 0
    db_LoteID = 0
    db_PreautorizadoID = 0
    db_DocumentoID = 0
    db_CategoriaID = 0
    db_ValorID = 0
    db_FechaInicio = Date
    db_FechaFin = Date
    db_TicketID = 0
    Combo1.ListIndex = 0
    Combo2.ListIndex = 0
    txtDocumento.ListIndex = 4
    If Not i_Modulo_Virtual_Seleccionado = 0 Then
    If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
        chkCacheoSalida = vbChecked
        Combo1.ListIndex = 0
        Combo2.ListIndex = 0
        cmdBuscar.SetFocus
    Else
        cmdListas.SetFocus
    End If
    End If
    cmdVerFicha.Enabled = False
    'txtdatospersona(0).SetFocus
    cmdBuscar.Default = True
    
    documento_Nombre = " "
    documento_Apellido = " "
    documento_Genero = " "
    documento_FechaNacimiento = " "
    documento_Numero = " "
    documento_ejemplar = " "
    documento_Codigo = " "
    Lectura_Doc_Cruda = " "
    
' ********************* Presenta el Logo OEMSPOT y coloca en invisible los botones y textbox **************
    
    msfgObservacion.Visible = False
    lblAutorizacion.Visible = False
    lblVigenciaInicio.Visible = False
    txtFechaInicio.Visible = False
    cmdFechaInicio.Visible = False
    lblVigenciaFin.Visible = False
    txtFechaFin.Visible = False
    cmdFechaFin.Visible = False
    chkCacheoSalida.Visible = False
    lblMotivo(0).Visible = False
    lblMotivo(1).Visible = False
    txtDatosPermiso(2).Visible = False
    ImgOemspot.Visible = True
    
' ********************* Limpia los campos de Registro de conductor,Seguro del Vehiculo y ART **************

    txtRCdesde.Text = Date
    txtRCdesde.BackColor = &H80000005
    txtRChasta.Text = Date
    txtRChasta.BackColor = &H80000005
    txtRCconductor.Text = ""
    txtRCconductor.BackColor = &H80000005
    txtRCentidad.Text = ""
    txtRCentidad.BackColor = &H80000005
    txtPSdesde.Text = Date
    txtPSdesde.BackColor = &H80000005
    txtPShasta.Text = Date
    txtPShasta.BackColor = &H80000005
    txtPSnro.Text = ""
    txtPSnro.BackColor = &H80000005
    txtPSempresa.Text = "COMPANIA SEGUROS"
    txtPSempresa.BackColor = &H80000005
    txtPAdesde.Text = Date
    txtPAdesde.BackColor = &H80000005
    txtPAhasta.Text = Date
    txtPAhasta.BackColor = &H80000005
    txtPAnro.Text = ""
    txtPAnro.BackColor = &H80000005
    txtPAempresa.Text = ""
    txtPAempresa.BackColor = &H80000005
        
End Sub

Private Function Inicializar_Cmdcomandos() As Boolean
On Error GoTo Salir
  
  
  If AdminModulosService.obtenerListaModuloVirtual( _
    AdminModulosService.obtenerWorkStationID(getWindowsComputerName)) Then
    
    If Not LlenarVectorMV(AdminModulosService.ModuloQuery.DbRecordsetQRY) Then
      GoTo Salir
    End If
    
    If Not HubicarCmdsMV() Then
      GoTo Salir
    End If
    
    Inicializar_Cmdcomandos = True
  Else
    MsgBox "Esta estación de trabajo " & getWindowsComputerName & vbCrLf & _
           "No esta configurada como puesto de ingreso Manual" & vbCrLf & _
           "Para ello deberá hacerlo desde el Administrador de Modulos", vbExclamation
  End If

Salir:
  
End Function


Private Function LlenarVectorMV(ByRef Rst As ADODB.RecordSet) As Boolean
Dim i As Integer
On Error GoTo Salir
                                
    While (Not Rst.EOF())
      ReDim Preserve ModulosVirtuales(i_virtual_total_items, Tam_Vector)
      i = 0
      For i = 0 To i_virtual_total_items - 1
        ModulosVirtuales(i, Tam_Vector) = Rst.Fields(i)
      Next
      Rst.MoveNext
      Tam_Vector = Tam_Vector + 1
    Wend
    LlenarVectorMV = True
    
    
Salir:
End Function

Private Function HubicarCmdsMV() As Boolean
Dim i As Integer
Const fuente As Integer = 20
On Error GoTo Salir

     
    i = 0
    Grid.FixedCols = 0
    Grid.FixedRows = 0
    Grid.Rows = 1
    Grid.RowHeight(0) = Grid.Height - 60
  
    Grid.Font.name = "Arial"
    Grid.Font.Size = fuente
    Grid.Cols = Tam_Vector
    Grid.BackColor = &HC0C0C0
    Grid.GridColor = vbGrayed
    'Grid.AllowBigSelection = False
    Grid.AllowUserResizing = flexResizeNone
    Grid.Appearance = flex3D
    Grid.BorderStyle = flexBorderSingle
    
    Grid.row = 0
    
    For i = 0 To Tam_Vector - 1
      Grid.col = i
      Grid.CellAlignment = 3
      Grid.ColWidth(i) = (Grid.Width - 80) / Tam_Vector
      Select Case ModulosVirtuales(i_virtual_sentido, i)
        Case CAT_VAL_SENTIDO_INGRESO
          'Grid.CellBackColor = vbGreen
          Grid.Text = "-> " & ModulosVirtuales(i_virtual_ingreso_nombre, i)
        Case CAT_VAL_SENTIDO_SALIDA
          'Grid.CellBackColor = vbRed
          Grid.Text = "<- " & ModulosVirtuales(i_virtual_salida_nombre, i)
      End Select
      
    Next
      
  'Grid.ColSel = 0
  'Grid.RowSel = 0
  HubicarCmdsMV = True
    
    
Salir:
End Function

Private Function ModuloID_Relacionado_Para_Evento() As Long
On Error GoTo Salir
     Select Case ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado)
        Case CAT_VAL_SENTIDO_INGRESO
           ModuloID_Relacionado_Para_Evento = ModulosVirtuales(i_virtual_ingreso_moduloID, i_Modulo_Virtual_Seleccionado)
        Case CAT_VAL_SENTIDO_SALIDA
           ModuloID_Relacionado_Para_Evento = ModulosVirtuales(i_virtual_salida_moduloID, i_Modulo_Virtual_Seleccionado)
     End Select
Salir:
End Function

Private Function ModuloID_Relacionado_Para_Evento_ADDRESS() As Long
On Error GoTo Salir
     Select Case ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado)
        Case CAT_VAL_SENTIDO_INGRESO
           ModuloID_Relacionado_Para_Evento_ADDRESS = ModulosVirtuales(i_virtual_ingreso_adrs, i_Modulo_Virtual_Seleccionado)
        Case CAT_VAL_SENTIDO_SALIDA
           ModuloID_Relacionado_Para_Evento_ADDRESS = ModulosVirtuales(i_virtual_salida_adrs, i_Modulo_Virtual_Seleccionado)
     End Select
Salir:
End Function

Private Function ModuloID_Relacionado_Para_Evento_OrdenEncuesta() As Long
On Error GoTo Salir
     Select Case ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado)
        Case CAT_VAL_SENTIDO_INGRESO
           ModuloID_Relacionado_Para_Evento_OrdenEncuesta = ModulosVirtuales(i_virtual_ingreso_ordenencuesta, i_Modulo_Virtual_Seleccionado)
        Case CAT_VAL_SENTIDO_SALIDA
           ModuloID_Relacionado_Para_Evento_OrdenEncuesta = ModulosVirtuales(i_virtual_salida_ordenencuesta, i_Modulo_Virtual_Seleccionado)
     End Select
Salir:
End Function


Private Sub Seleccion_Modulo_Virtual(ByVal indice_ As Integer)
'FALTA PROBAR
On Error GoTo Salir
Dim i As Integer
  

i_Modulo_Virtual_Seleccionado = indice_
'aca cargo cual es el ModuloID seleccionado
db_ModuloVirtualID = ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado)

For i = 0 To Tam_Vector - 1
  DoEvents
  Grid.col = i
  If i = i_Modulo_Virtual_Seleccionado Then
'    ConecatarGeo db_ModuloVirtualID, True
    Select Case ModulosVirtuales(i_virtual_sentido, i)
      Case CAT_VAL_SENTIDO_INGRESO
        cmdListas.Caption = "Preautorizados..."
        
        Grid.CellBackColor = vbGreen
        cmdVisita(0).Caption = "Ingreso  " & ModulosVirtuales(i_virtual_ingreso_nombre, i_Modulo_Virtual_Seleccionado)
        
        If ModulosVirtuales(i_virtual_tipo_identificacion, i) = CAT_VAL_IDENTIFICACION_CODIGO_BARRA Then
            cmdVisita(1).Visible = True
            cmdVisita(1).Caption = "SIN TICKET " & ModulosVirtuales(i_virtual_ingreso_nombre, i_Modulo_Virtual_Seleccionado)
        Else
            cmdVisita(1).Visible = False
        End If
        
        cmdverLote.Enabled = True
        cmdFechaFin.Enabled = True
        cmdFechaInicio.Enabled = True
        
        cmdPreautorizadas.Enabled = True
        
        cmdBuscar.Visible = True
        txtdatospersona(3).Visible = True
        lblEntidad(2).Visible = True
        
        If Opt_Conductor.value Then
          txtdatospersona(3).Text = "CONDUCTOR..."
        Else
          txtdatospersona(3).Text = "ACOMPAÑANTE..."
        End If
        
        
        txtLote.Locked = False
        'txtDatosPermiso(2).Locked = False
        txtdatospersona(0).Locked = False
        txtdatospersona(1).Locked = False
        txtdatospersona(2).Locked = False
        txtdatospersona(3).Locked = False
        txtdatospersona(4).Locked = False
        TxtPatente.Locked = False
        txtFechaFin.Locked = False
        txtFechaInicio.Locked = False
       
'******** Presenta el Logo OEMSPOT y coloca en invisible los botones y textbox **************
    
        msfgObservacion.Visible = False
        lblAutorizacion.Visible = False
        lblVigenciaInicio.Visible = False
        txtFechaInicio.Visible = False
        cmdFechaInicio.Visible = False
        lblVigenciaFin.Visible = False
        txtFechaFin.Visible = False
        cmdFechaFin.Visible = False
        chkCacheoSalida.Visible = False
        lblMotivo(0).Visible = False
        lblMotivo(1).Visible = False
        txtDatosPermiso(2).Visible = False
        ImgOemspot.Visible = True
        
        
      Case CAT_VAL_SENTIDO_SALIDA
      
        cmdListas.Caption = "Ticket Ingresados..."
        
        Grid.CellBackColor = vbRed
        
        cmdVisita(1).Visible = False
        
        cmdVisita(0).Caption = "Salida  " & ModulosVirtuales(i_virtual_salida_nombre, i_Modulo_Virtual_Seleccionado)
        cmdverLote.Enabled = False
        cmdFechaFin.Enabled = False
        cmdFechaInicio.Enabled = False

        cmdPreautorizadas.Enabled = False
        cmdBuscar.Visible = False
        txtdatospersona(3).Visible = False
        lblEntidad(2).Visible = False
        txtDatosPermiso(2).BackColor = vbWhite '&HFFF0C0
        txtDatosPermiso(2).Text = ""
            
            
            txtLote.Locked = True
            txtDatosPermiso(2).Locked = True
            txtdatospersona(0).Locked = True
            txtdatospersona(1).Locked = True
            txtdatospersona(2).Locked = True
            txtdatospersona(3).Locked = True
            txtdatospersona(4).Locked = True
            TxtPatente.Locked = True
            txtFechaFin.Locked = True
            txtFechaInicio.Locked = True
        
    End Select
  Else
    Grid.CellBackColor = &HC0C0C0
  End If
Next
Salir:
End Sub

''FMV
''Procedimiento Nuevo Conexion a geo antes hacia cualquier cosaa
Sub ConecatarGeo(ByVal sModulo As Long, Optional NoCargaPath As Boolean)
Dim camara_ As Integer
Dim i As Integer

On Error GoTo Error:

    Set GeoService = New GeoSVR
    
    If MdlDataObject.GrupoModulos <> "" Then
    If GeoService.Cargar_Propiedades_GEO(DbConnectionSYS, MdlDataObject.GrupoModulos, NoCargaPath) Then
        
        camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloVirtualID)
        
'''FMV ESTO ESTA COMO EL ORTO'''''''''''''''''''''
        For i = 0 To 10                         ''  ancho x altura
            If GeoService.Conectar(Mi_LiveX(i), 300, 270, camara_) Then
                Exit For
            End If
            DoEvents
            Sleep (300)
        Next
''''''''''''''''''''''''''''''''''''''''''''''''''

        ''FMV Desconectamos la camara para rehacer la conexion
        ''Mi_LiveX(0).Disconnect
        ''DoEvents
        ''GeoService.Conectar Mi_LiveX(0), 300, 270, camara_
        ''''''''''''''''''''''''''''''''''''''''''''''''''''''
        
        'For i = 1 To 4
'        For i = 2 To 4
'            DoEvents
'            If Not GeoService.Conectar(Mi_LiveX(i), 230, 179, i) Then
'                Exit For
'            End If
'        Next
        
    End If
    End If
    'Set GeoService = Nothing
    
Error:
    'MsgBox Err.Description
    Exit Sub

End Sub

 Public Sub modPerRCPSPA()
 On Error GoTo Salir
  
  '**************** Modificamos los campos de Registro de conductor,Poliza de Seguro y ART   *******************************
 
 Dim textoFecha As String
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
 
 textoFecha = txtRCdesde.Text                                           ' Si alguna fecha tiene un dato inconsistente
 If Not EsFechaValida(textoFecha) Then txtRCdesde.Text = Date           ' fija como valor la fecha del dia
 textoFecha = txtRChasta.Text
 If Not EsFechaValida(textoFecha) Then txtRChasta.Text = Date
 textoFecha = txtPSdesde.Text
 If Not EsFechaValida(textoFecha) Then txtPSdesde.Text = Date
 textoFecha = txtPShasta.Text
 If Not EsFechaValida(textoFecha) Then txtPShasta.Text = Date
 textoFecha = txtPAdesde.Text
 If Not EsFechaValida(textoFecha) Then txtPAdesde.Text = Date
 textoFecha = txtPAhasta.Text
 If Not EsFechaValida(textoFecha) Then txtPAhasta.Text = Date
 

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
  
 Public Sub CrearPolReg()                   'Aqui Creamos el Registro de Polizas de seguro , ART  y Registro
 On Error GoTo Salir                        'de conducir cuando ingresa una Visita...que obviamente no se "
                                            'registro a travez de la solapa "PERSONA"
 Dim textoFecha As String
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
 
 textoFecha = txtRCdesde.Text                                           ' Si alguna fecha tiene un dato inconsistente
 If Not EsFechaValida(textoFecha) Then txtRCdesde.Text = Date           ' fija como valor la fecha del dia
 textoFecha = txtRChasta.Text
 If Not EsFechaValida(textoFecha) Then txtRChasta.Text = Date
 textoFecha = txtPSdesde.Text
 If Not EsFechaValida(textoFecha) Then txtPSdesde.Text = Date
 textoFecha = txtPShasta.Text
 If Not EsFechaValida(textoFecha) Then txtPShasta.Text = Date
 textoFecha = txtPAdesde.Text
 If Not EsFechaValida(textoFecha) Then txtPAdesde.Text = Date
 textoFecha = txtPAhasta.Text
 If Not EsFechaValida(textoFecha) Then txtPAhasta.Text = Date
          
 sql = "insert into perpolreg values(" & db_PersonaID & ",'" & txtRCdesde.Text & "','" & txtRChasta.Text & "','" & txtRCconductor.Text & "','" & txtRCentidad.Text & "','" & txtPSdesde.Text & "','" & txtPShasta.Text & "','" & txtPSnro.Text & "','" & txtPSempresa.Text & "','" & txtPAdesde.Text & "','" & txtPAhasta.Text & "','" & txtPAnro.Text & "','" & txtPAempresa.Text & "')"
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 If DbRecordset.State = 1 Then DbRecordset.Close
 
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
  MsgBox "Error al intentar inicializar la tabla de Registro de conductor ,Seguros y ART", vbExclamation, "Aviso..!!!"
End Sub


Public Sub Show_Obsv_Persona()
'************* Aqui Presenta la Informacion de "Observaciones" en el formulario de  "Personas" **************
  
  Dim sql As String
  Dim col, Fila As Integer
  Set DbCommand = New ADODB.Command
  Set DbRecordset = New ADODB.RecordSet
    
  If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
  
  ' Seleccionamos la union de 2 tablas que tienen la info de tipo y dato de la observacion....
  
  sql = "SELECT * FROM perprx  JOIN prx ON perprx.PropiedadID   = prx.PropiedadID AND perprx.PersonaID = " & db_PersonaID
  DbCommand.CommandText = sql
  Set DbRecordset = DbCommand.Execute
    
  For Fila = 0 To 9                           'Limpia la MsFlexGrid
     msfgObservacion.TextMatrix(Fila, 0) = " "
     msfgObservacion.TextMatrix(Fila, 1) = " "
  Next
  
  ' ************ Coloca en "Invisible" el Logo OEMSPOT y coloca en "Visible" los botones y textbox **************
    
  msfgObservacion.Visible = True
  lblAutorizacion.Visible = True
  lblVigenciaInicio.Visible = True
  txtFechaInicio.Visible = True
  cmdFechaInicio.Visible = True
  lblVigenciaFin.Visible = True
  txtFechaFin.Visible = True
  cmdFechaFin.Visible = True
  chkCacheoSalida.Visible = True
  
  lblMotivo(0).Visible = True
  lblMotivo(1).Visible = True
  txtDatosPermiso(2).Visible = True
  ImgOemspot.Visible = False
  
  msfgObservacion.ColWidth(0) = 1650                  'Define tamaño de columna 0 del MSFlexGrid
  msfgObservacion.ColWidth(1) = 5550                  'Define tamaño de columna 1 del MSFlexGrid
  msfgObservacion.TextMatrix(0, 0) = "Tipo"           'Fija Nombre a las columnas fijas
  msfgObservacion.TextMatrix(0, 1) = "Observacion"
  msfgObservacion.ColAlignment(0) = 1                 'Define la propiedad de alineacion en las columnas
  msfgObservacion.ColAlignment(1) = 1                 ' 4: Centro, 7: derecha , 1: Izquierda , 5: Centro Boton
   
  Fila = 1
  
    
  While Not DbRecordset.EOF
    msfgObservacion.TextMatrix(Fila, 0) = DbRecordset!Nombre
    msfgObservacion.TextMatrix(Fila, 1) = DbRecordset!Valor
    Fila = Fila + 1
    DbRecordset.MoveNext
  Wend


End Sub

Private Function EsFechaValida(ByVal Texto As String) As Boolean
    On Error Resume Next
    Dim Fecha As Date
    Fecha = CDate(Texto)
    If Err.Number = 0 Then
        ' La conversión fue exitosa, por lo tanto, la fecha es válida.
        EsFechaValida = True
    Else
        ' La conversión falló, por lo tanto, la fecha no es válida.
        EsFechaValida = False
    End If
    On Error GoTo 0
End Function
