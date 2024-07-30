VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl EstadoGUI 
   ClientHeight    =   6180
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9660
   KeyPreview      =   -1  'True
   ScaleHeight     =   6180
   ScaleWidth      =   9660
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   8160
      TabIndex        =   3
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   8160
      TabIndex        =   4
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   8160
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   6600
      TabIndex        =   5
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   8160
      TabIndex        =   6
      Top             =   5760
      Width           =   1335
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   4695
      Left            =   1080
      TabIndex        =   1
      Top             =   600
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   8281
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   9480
      Y1              =   5520
      Y2              =   5520
   End
   Begin VB.Label lblValores 
      Caption         =   "Valor:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   600
      Width           =   855
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "EstadoGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
