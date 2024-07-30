VERSION 5.00
Begin VB.UserControl EstadoValGUI 
   ClientHeight    =   1200
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4710
   KeyPreview      =   -1  'True
   ScaleHeight     =   1200
   ScaleWidth      =   4710
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
      Left            =   3120
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   840
      Width           =   1335
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4560
      Y1              =   600
      Y2              =   600
   End
End
Attribute VB_Name = "EstadoValGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
