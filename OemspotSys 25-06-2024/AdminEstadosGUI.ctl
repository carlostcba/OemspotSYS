VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.UserControl AdminEstadosGUI 
   ClientHeight    =   8685
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12150
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   8685
   ScaleWidth      =   12150
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   10
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton CmdMasOpciones 
      Caption         =   "Más Opciones >>"
      Height          =   255
      Left            =   8880
      TabIndex        =   2
      Top             =   120
      Width           =   1575
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1080
      TabIndex        =   0
      Top             =   120
      Width           =   2895
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Default         =   -1  'True
      Height          =   255
      Left            =   4200
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   4
      Top             =   1440
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   6
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   5
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   7
      Top             =   8280
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   13150
      _Version        =   393216
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   11160
      Top             =   6840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   10680
      TabIndex        =   13
      Top             =   840
      Width           =   615
   End
   Begin VB.Label lblSeleccion 
      Caption         =   "Doble click para seleccionar un elemento"
      Height          =   255
      Left            =   5640
      TabIndex        =   9
      Top             =   120
      Width           =   3015
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "AdminEstadosGUI.ctx":0000
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "AdminEstadosGUI.ctx":0432
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "AdminEstadosGUI.ctx":08AC
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12000
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "AdminEstadosGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
