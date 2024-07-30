VERSION 5.00
Begin VB.UserControl MovimientoDetalleGUI 
   ClientHeight    =   3750
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9180
   ScaleHeight     =   3750
   ScaleWidth      =   9180
   Begin VB.TextBox txtDatosMovimiento 
      Height          =   345
      Index           =   4
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   11
      Top             =   2565
      Width           =   4500
   End
   Begin VB.CommandButton cmdVerFicha 
      Caption         =   "Ver ficha"
      Height          =   375
      Left            =   525
      TabIndex        =   5
      Top             =   2655
      Width           =   1455
   End
   Begin VB.TextBox txtDatosMovimiento 
      Height          =   345
      Index           =   3
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   2040
      Width           =   4500
   End
   Begin VB.TextBox txtDatosMovimiento 
      Height          =   330
      Index           =   2
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   1530
      Width           =   4515
   End
   Begin VB.TextBox txtDatosMovimiento 
      Height          =   330
      Index           =   0
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   525
      Width           =   4515
   End
   Begin VB.TextBox txtDatosMovimiento 
      Height          =   330
      Index           =   1
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   1035
      Width           =   4500
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   345
      Left            =   7455
      TabIndex        =   0
      Top             =   3240
      Width           =   1455
   End
   Begin VB.Label lblModulo 
      Caption         =   "Modulo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2460
      TabIndex        =   12
      Top             =   2595
      Width           =   765
   End
   Begin VB.Image Image1 
      Height          =   1875
      Left            =   150
      Stretch         =   -1  'True
      Top             =   540
      Width           =   2115
   End
   Begin VB.Label lblSentido 
      Caption         =   "Sentido:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2475
      TabIndex        =   10
      Top             =   2070
      Width           =   765
   End
   Begin VB.Label lblPersona 
      Caption         =   "Persona:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2475
      TabIndex        =   9
      Top             =   1530
      Width           =   795
   End
   Begin VB.Label lblMovimiento 
      Caption         =   "Tipo Movimiento:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2475
      TabIndex        =   8
      Top             =   540
      Width           =   1575
   End
   Begin VB.Label lblFechaHora 
      Caption         =   "Fecha/Hora:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   2490
      TabIndex        =   7
      Top             =   1050
      Width           =   1185
   End
   Begin VB.Line Line2 
      X1              =   9015
      X2              =   75
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Label Label1 
      Caption         =   "Datos del evento:"
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
      Left            =   180
      TabIndex        =   6
      Top             =   90
      Width           =   1830
   End
End
Attribute VB_Name = "MovimientoDetalleGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim AdminModulosService As AdminModulosSVR
Dim PlatformService As PlatformSVR
Dim db_movimientoID As Currency
Dim db_PersonaID As Currency


Private Sub cmdVerFicha_Click()
 If db_PersonaID > 0 Then
    Set PersonaMOD.ParentWindow = Nothing
    'PersonaMOD.PersonaGUI1
    PersonaMOD.PersonaID = db_PersonaID
    PersonaMOD.Show vbModal
    Unload PersonaMOD
    Set PersonaMOD = Nothing
 End If
End Sub

Private Sub UserControl_Initialize()
    Set AdminModulosService = New AdminModulosSVR

    Set PlatformService = New PlatformSVR


End Sub

Private Sub UserControl_Terminate()
    Set AdminModulosService = Nothing
    Set AdminModulosService = Nothing
    'CmdCerrar_Click
End Sub

Sub init()
    'actualizarLocalizacion
    
  
End Sub

Public Property Let MovimientoID(value As Currency)
  
Dim pathfoto As String

On Error Resume Next
  
  Let db_movimientoID = value

If AdminModulosService.ModuloQuery.buscarMovimientoPorID((db_movimientoID)) Then
    If db_movimientoID <> 0 Then
        If AdminModulosService.ModuloQuery.buscarMovimientoPorID((db_movimientoID)) Then
            If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
                txtDatosMovimiento(1) = " " & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
                txtDatosMovimiento(2).Text = " " & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value)
                txtDatosMovimiento(4).Text = " " & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(2).value)
                txtDatosMovimiento(0).Text = " " & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
                txtDatosMovimiento(3).Text = " " & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(4).value)
                db_PersonaID = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value)
            
                pathfoto = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_MOVIMIENTOS")
                pathfoto = Path_Relativo_Fecha(pathfoto, AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
                pathfoto = pathfoto & "\" & Str(db_movimientoID)
                Call Cargar_Foto(Image1, pathfoto & ".jpg")   'foto documento
            End If
        End If
    End If
End If

End Property

Private Sub CmdCerrar_Click()
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.Destroy
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub
