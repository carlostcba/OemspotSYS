VERSION 5.00
Begin VB.UserControl ArbolItemGUI 
   ClientHeight    =   2040
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7980
   KeyPreview      =   -1  'True
   ScaleHeight     =   2040
   ScaleWidth      =   7980
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "ArbolItemGUI.ctx":0000
      Left            =   1080
      List            =   "ArbolItemGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   1080
      Width           =   1695
   End
   Begin VB.TextBox txtPadre 
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
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   600
      Width           =   5655
   End
   Begin VB.CommandButton cmdArbolItems 
      Caption         =   "Buscar ..."
      Height          =   255
      Left            =   6840
      TabIndex        =   1
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6360
      TabIndex        =   4
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   4800
      TabIndex        =   3
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label lblOrden 
      Caption         =   "Orden:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label lblItemPadre 
      Caption         =   "Item Padre:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   855
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   7800
      Y1              =   1560
      Y2              =   1560
   End
End
Attribute VB_Name = "ArbolItemGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
