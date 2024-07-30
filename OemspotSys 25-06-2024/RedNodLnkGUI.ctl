VERSION 5.00
Begin VB.UserControl RedNodLnkGUI 
   ClientHeight    =   1830
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7950
   KeyPreview      =   -1  'True
   ScaleHeight     =   1830
   ScaleWidth      =   7950
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6360
      TabIndex        =   6
      Top             =   1440
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   4800
      TabIndex        =   5
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   2
      Top             =   120
      Width           =   3375
   End
   Begin VB.TextBox txtRedNodos 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   600
      Width           =   5655
   End
   Begin VB.CommandButton cmdRedNodos 
      Caption         =   "Buscar ..."
      Height          =   255
      Left            =   6840
      TabIndex        =   0
      Top             =   600
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   7800
      Y1              =   1200
      Y2              =   1200
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   735
   End
   Begin VB.Label lblNodo 
      Caption         =   "Nodo:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   735
   End
End
Attribute VB_Name = "RedNodLnkGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
