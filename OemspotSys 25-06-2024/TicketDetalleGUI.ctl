VERSION 5.00
Begin VB.UserControl ReporteMovimientosDetalleGUI 
   ClientHeight    =   8295
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11460
   DefaultCancel   =   -1  'True
   ScaleHeight     =   8295
   ScaleWidth      =   11460
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   12
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   24
      Top             =   6120
      Width           =   4515
   End
   Begin VB.CommandButton cmdVerFicha 
      Caption         =   "Ver Lote"
      Height          =   375
      Index           =   1
      Left            =   0
      TabIndex        =   23
      Top             =   3720
      Width           =   1215
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   11
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   21
      Top             =   6600
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   10
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   20
      Top             =   7080
      Width           =   435
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   9
      Left            =   3480
      Locked          =   -1  'True
      TabIndex        =   18
      Top             =   7080
      Width           =   435
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   8
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   16
      Top             =   7080
      Width           =   435
   End
   Begin VB.TextBox txtDatos 
      Height          =   1005
      Index           =   7
      Left            =   1440
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   14
      Top             =   4920
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   1365
      Index           =   6
      Left            =   1440
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   12
      Top             =   3360
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   645
      Index           =   5
      Left            =   1440
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   10
      Top             =   2520
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   4
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   8
      Top             =   1800
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   3
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   1440
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   2
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   960
      Width           =   4515
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   1
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   600
      Width           =   4515
   End
   Begin VB.CommandButton cmdVerFicha 
      Caption         =   "Ver Persona"
      Height          =   375
      Index           =   0
      Left            =   0
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.TextBox txtDatos 
      Height          =   285
      Index           =   0
      Left            =   1440
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   4515
   End
   Begin VB.Label Label1 
      Caption         =   "Foto del Documento  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   9000
      TabIndex        =   30
      Top             =   0
      Width           =   2175
   End
   Begin VB.Image Img 
      Height          =   2040
      Index           =   6
      Left            =   9000
      Stretch         =   -1  'True
      Top             =   360
      Width           =   2280
   End
   Begin VB.Label Label2 
      Caption         =   "Foto Poste de Entrada"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6480
      TabIndex        =   29
      Top             =   2520
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Foto de Identificacion"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   9000
      TabIndex        =   28
      Top             =   2520
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   " Foto Poste de  Salida"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   7800
      TabIndex        =   27
      Top             =   5040
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "Foto de la persona  "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   6600
      TabIndex        =   26
      Top             =   0
      Width           =   2175
   End
   Begin VB.Image Img 
      Height          =   2040
      Index           =   5
      Left            =   7800
      Stretch         =   -1  'True
      Top             =   5400
      Width           =   2280
   End
   Begin VB.Label lbl 
      Caption         =   "Motivo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   10
      Left            =   0
      TabIndex        =   25
      Top             =   6120
      Width           =   1215
   End
   Begin VB.Image Img 
      Height          =   6840
      Index           =   4
      Left            =   0
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   6240
   End
   Begin VB.Label lbl 
      Caption         =   "Patente:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   9
      Left            =   0
      TabIndex        =   22
      Top             =   6600
      Width           =   1215
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   11400
      Y1              =   7560
      Y2              =   7560
   End
   Begin VB.Label lbl 
      Caption         =   "Cacheo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   8
      Left            =   4440
      TabIndex        =   19
      Top             =   7080
      Width           =   975
   End
   Begin VB.Label lbl 
      Caption         =   "Mayores:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   7
      Left            =   2400
      TabIndex        =   17
      Top             =   7080
      Width           =   975
   End
   Begin VB.Label lbl 
      Caption         =   "Menores:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   6
      Left            =   0
      TabIndex        =   15
      Top             =   7080
      Width           =   975
   End
   Begin VB.Label lbl 
      Caption         =   "Extras:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   5
      Left            =   0
      TabIndex        =   13
      Top             =   4920
      Width           =   1215
   End
   Begin VB.Label lbl 
      Caption         =   "Destino:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   4
      Left            =   0
      TabIndex        =   11
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Label lbl 
      Caption         =   "Persona:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   9
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label lbl 
      Caption         =   "Salida:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   0
      TabIndex        =   4
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label lbl 
      Caption         =   "Ingreso:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   0
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lbl 
      Caption         =   "Nº Ticket:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   0
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.Image Img 
      Height          =   6840
      Index           =   3
      Left            =   0
      Stretch         =   -1  'True
      Top             =   240
      Visible         =   0   'False
      Width           =   6240
   End
   Begin VB.Image Img 
      Height          =   2040
      Index           =   2
      Left            =   6600
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   2280
   End
   Begin VB.Image Img 
      Height          =   2040
      Index           =   1
      Left            =   9000
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   2280
   End
   Begin VB.Line Line2 
      X1              =   6000
      X2              =   120
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Line Line3 
      X1              =   6360
      X2              =   6360
      Y1              =   0
      Y2              =   7560
   End
   Begin VB.Image Img 
      Height          =   2040
      Index           =   0
      Left            =   6600
      Stretch         =   -1  'True
      Top             =   360
      Width           =   2280
   End
End
Attribute VB_Name = "ReporteMovimientosDetalleGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim AdminModulosService As AdminModulosSVR
Dim PlatformService As PlatformSVR
Dim db_TicketID As Currency
Dim db_de_historicos As Boolean
Dim db_PersonaID As Currency
Dim db_LoteID As Long

Private Sub cmdVerFicha_Click(Index As Integer)
On Error GoTo Salir
    Select Case Index
        Case 0
            If db_PersonaID > 0 Then
                Set PersonaMOD.ParentWindow = Nothing
                'PersonaMOD.PersonaGUI1
                PersonaMOD.PersonaID = db_PersonaID
                PersonaMOD.Show vbModal
                Unload PersonaMOD
                Set PersonaMOD = Nothing
             End If
         Case 1
            If db_LoteID > 0 Then
                Set LoteMOD.ParentWindow = Nothing
                'LoteMOD.LoteGUI1.enableEdition = False
                LoteMOD.LoteID = db_LoteID
                LoteMOD.Show vbModal
                Unload LoteMOD
                Set LoteMOD = Nothing
             End If
    End Select
Salir:
End Sub


Private Sub UserControl_Initialize()
On Error GoTo Salir
    Set AdminModulosService = New AdminModulosSVR
    Set PlatformService = New PlatformSVR
Salir:
End Sub

Private Sub UserControl_Terminate()
On Error GoTo Salir
    Set AdminModulosService = Nothing
    Set AdminModulosService = Nothing
Salir:
End Sub

Public Property Let de_historicos(value As Boolean)
    db_de_historicos = value
End Property


Public Property Let TicketID(value As Currency)
On Error GoTo Salir
Let db_TicketID = value
Dim pathfoto As String

If db_TicketID <> 0 Then
    If db_de_historicos Then
        If Not AdminModulosService.ModuloQuery.obtenerTicketHistoricoDetallado((db_TicketID)) Then
            Exit Property
        End If
    Else
        If Not AdminModulosService.ModuloQuery.obtenerTicketPendienteDetallado((db_TicketID)) Then
            Exit Property
        End If
    End If
    If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
         On Error Resume Next
         txtDatos(0).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(2).value) ' nº ticket
         txtDatos(1).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value) 'fecha ingreso
         txtDatos(2).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(7).value) 'modulo de ingreso
         If db_de_historicos Then
            txtDatos(3).Text = Str((AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(14).value)) 'fecha de salida
            txtDatos(4).Text = Str((AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(15).value)) 'modulo de salida
                
         End If
         
         PersonaID = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value) 'PersonaID
         'txtDatos(5).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(4).value) 'Nombre apellido persona
         LoteID = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value) 'loteid
         'txtDatos(6).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value) 'loteid
         txtDatos(7).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(6).value) & vbCrLf & _
                                    Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(8).value) 'extras
         txtDatos(8).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(9).value) 'menores
         txtDatos(9).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(10).value) 'mayores
         
         If Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(12).value) = "0" Then
            txtDatos(10).Text = "NO"
         Else
            txtDatos(10).Text = "SI"
         End If
         txtDatos(11).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(12).value)
         txtDatos(12).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(11).value)
         
         Call Cargar_Foto(Img(0), getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value) & ".jpg") 'foto persona
         Call Cargar_Foto(Img(6), getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_DNI_PERSONAS") & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value) & ".jpg") 'foto persona
         pathfoto = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_VISITA_INGRESOS")
         pathfoto = Path_Relativo_Fecha(pathfoto, AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
         pathfoto = pathfoto & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
         Call Cargar_Foto(Img(1), pathfoto & "_1.jpg")   'foto documento
         Call Cargar_Foto(Img(2), pathfoto & "_2.jpg")   'foto ingreso patente
         
         pathfoto = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_VISITA_SALIDAS")
         pathfoto = Path_Relativo_Fecha(pathfoto, AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
         pathfoto = pathfoto & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
         Call Cargar_Foto(Img(5), pathfoto & "_3.jpg")   'foto de la salida
         
         
         AdminModulosService.ModuloQuery.DbRecordsetQRY.Close
    End If 'exite ticket
    
End If ' ticket mayor a cero
Salir:
End Property

Private Property Let PersonaID(value As Currency)
Dim AdminPersonasService As AdminPersonasSVR
On Error GoTo Salir
  If value > 0 Then
    db_PersonaID = value
    Set AdminPersonasService = New AdminPersonasSVR
    If AdminPersonasService.PersonaQuery.buscarPersonaPreautorizada((db_PersonaID)) Then
        If Not AdminPersonasService.PersonaQuery.DbRecordsetQRY.EOF Then
            txtDatos(5).Text = Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(1).value) & _
                                      ", " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0).value) & _
                                       vbCrLf & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(2).value)
                                       
            AdminPersonasService.PersonaQuery.DbRecordsetQRY.Close
        End If
     End If
  End If
  
Salir:
Set AdminPersonasService = Nothing
End Property

Private Property Let LoteID(value As Long)
On Error GoTo noexiste
Dim Referente As String
Dim Encontre As Boolean
Dim Ahora As Date
Dim AdminLotesService As AdminLotesSVR
Dim Mi_Lote As LoteDAO
   

If value > 0 Then
   db_LoteID = value
   
   Set AdminLotesService = New AdminLotesSVR
   
   Set Mi_Lote = AdminLotesService.LoteOrm.obtenerLote(db_LoteID)
   
   txtDatos(6).Text = "Lote = " & Str(Mi_Lote.Lote) & vbCrLf & _
                           "Unidad Funcional = " & Str(Mi_Lote.UF) & vbCrLf & _
                           "Calle = " & Str(Mi_Lote.Calle) & vbCrLf & _
                           "Número = " & Str(Mi_Lote.Numero) & vbCrLf & _
                          "Interno = " & Str(Mi_Lote.Interno)
     If AdminLotesService.LotperQuery.obtenerReferenteLote(db_LoteID) Then
         While Not AdminLotesService.LotperQuery.DbRecordsetQRY.EOF
              txtDatos(6).Text = txtDatos(6).Text & vbCrLf & "Referente = " & Str(AdminLotesService.LotperQuery.DbRecordsetQRY.Fields(0).value)
              AdminLotesService.LotperQuery.DbRecordsetQRY.MoveNext
         Wend
         AdminLotesService.LotperQuery.DbRecordsetQRY.Close
     End If
End If

noexiste:
    Set AdminLotesService = Nothing
    Set Mi_Lote = Nothing
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

Private Sub visualizar_controles(ByRef Valor As Boolean)
Dim i As Integer

On Error Resume Next                        ' apaga los texbox y controles para visualizar en tamaño grande
    For i = 0 To 12                         ' la foto seleccionada con doble click si Valor= false
        lbl(i).Visible = Valor
        txtDatos(i).Visible = Valor
    Next
    cmdVerFicha(0).Visible = Valor          'Presenta nuevamente la informacion del movimiento historico
    cmdVerFicha(1).Visible = Valor          'de la persona si Valor =  true
    'Me.Refresh
End Sub


Private Sub Img_DblClick(Index As Integer)
                    
    Select Case Index                               ' Permite con un doble click sobre cualquiera de las
        Case 0, 1, 2, 5                             ' cuatro imagenes del movimiento historico de la persona
            If Img(Index).ToolTipText <> "" Then    ' presentar una imagen ampliada para ver los detalles
                Img(3) = Img(Index)
                Img(3).Visible = True
                visualizar_controles (False)
            End If
        Case 3                                      ' Si se hace un doble click en la imagen ampliada se
            Img(3).Visible = False                  ' vuelve a presentar la informacion del movimiento
            visualizar_controles (True)             ' historico de la persona
    End Select
    
End Sub

