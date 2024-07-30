VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3F5913F3-36BC-4902-925F-1DF63BCAEB57}#1.0#0"; "LiveX_8500.ocx"
Begin VB.UserControl PuestoControlManualGUI 
   ClientHeight    =   10800
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   14775
   ControlContainer=   -1  'True
   DefaultCancel   =   -1  'True
   ForwardFocus    =   -1  'True
   KeyPreview      =   -1  'True
   LockControls    =   -1  'True
   ScaleHeight     =   10800
   ScaleWidth      =   14775
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar..."
      Default         =   -1  'True
      Height          =   350
      Left            =   5280
      TabIndex        =   45
      Top             =   1650
      Width           =   1725
   End
   Begin VB.CommandButton cmdListas 
      Caption         =   "Listas"
      Height          =   350
      Left            =   5280
      TabIndex        =   44
      Top             =   960
      Width           =   1725
   End
   Begin VB.TextBox txtDatosPermiso 
      Height          =   1035
      Index           =   2
      Left            =   960
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   42
      Top             =   6720
      Width           =   4215
   End
   Begin VB.CommandButton cmdVisita 
      Caption         =   "Generar >>"
      Height          =   350
      Index           =   1
      Left            =   9360
      TabIndex        =   15
      Top             =   870
      Width           =   5295
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   765
      Index           =   4
      Left            =   960
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   13
      Top             =   5865
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Cancel          =   -1  'True
      Caption         =   "Cancelar Operación"
      Height          =   350
      Left            =   75
      TabIndex        =   17
      Top             =   10335
      Width           =   2340
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   3585
      Index           =   0
      Left            =   7215
      TabIndex        =   28
      Top             =   1575
      Width           =   4290
      _Version        =   65536
      _ExtentX        =   7567
      _ExtentY        =   6324
      _StockProps     =   0
   End
   Begin VB.TextBox txtLote 
      Height          =   285
      Left            =   960
      TabIndex        =   6
      Top             =   3255
      Width           =   4215
   End
   Begin VB.TextBox txtDatosLotes 
      Height          =   1410
      Left            =   960
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   19
      Top             =   3585
      Width           =   5800
   End
   Begin VB.CommandButton cmdverLote 
      Caption         =   "Lotes ..."
      Height          =   300
      Left            =   5280
      TabIndex        =   7
      Top             =   3240
      Width           =   1725
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   345
      Left            =   7305
      TabIndex        =   23
      Top             =   10320
      Width           =   1920
   End
   Begin VB.CommandButton cmdVisita 
      Caption         =   "Generar >>"
      Height          =   345
      Index           =   0
      Left            =   9360
      TabIndex        =   16
      Top             =   10320
      Width           =   5295
   End
   Begin VB.CommandButton cmdBorrarTck 
      Caption         =   "Cancelar Ticket Pendiente"
      Height          =   350
      Left            =   4740
      TabIndex        =   18
      Top             =   10320
      Visible         =   0   'False
      Width           =   2340
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   3600
      Index           =   1
      Left            =   7215
      TabIndex        =   29
      Top             =   5655
      Width           =   4290
      _Version        =   65536
      _ExtentX        =   7567
      _ExtentY        =   6350
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2400
      Index           =   2
      Left            =   11760
      TabIndex        =   30
      Top             =   4290
      Width           =   3075
      _Version        =   65536
      _ExtentX        =   5424
      _ExtentY        =   4233
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2415
      Index           =   3
      Left            =   11760
      TabIndex        =   31
      Top             =   1575
      Width           =   3075
      _Version        =   65536
      _ExtentX        =   5424
      _ExtentY        =   4260
      _StockProps     =   0
   End
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   2400
      Index           =   4
      Left            =   11760
      TabIndex        =   32
      Top             =   7005
      Width           =   3075
      _Version        =   65536
      _ExtentX        =   5424
      _ExtentY        =   4233
      _StockProps     =   0
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   765
      Left            =   60
      TabIndex        =   41
      Top             =   15
      Width           =   15090
      _ExtentX        =   26617
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
   Begin VB.ComboBox txtDocumento 
      Height          =   315
      Left            =   990
      TabIndex        =   2
      Text            =   "txtDocumento"
      Top             =   1875
      Width           =   2055
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   315
      Index           =   2
      Left            =   3150
      TabIndex        =   3
      Top             =   1875
      Width           =   2025
   End
   Begin VB.CommandButton cmdFechaFin 
      Caption         =   "..."
      Height          =   270
      Left            =   6705
      TabIndex        =   9
      Top             =   5130
      Width           =   255
   End
   Begin VB.TextBox txtFechaFin 
      Height          =   285
      Left            =   5175
      MaxLength       =   32
      TabIndex        =   22
      Top             =   5130
      Width           =   1455
   End
   Begin VB.CommandButton cmdFechaInicio 
      Caption         =   "..."
      Height          =   270
      Left            =   3585
      TabIndex        =   8
      Top             =   5130
      Width           =   255
   End
   Begin VB.TextBox txtFechaInicio 
      Height          =   300
      Left            =   2070
      MaxLength       =   32
      TabIndex        =   21
      Top             =   5130
      Width           =   1470
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   285
      Index           =   0
      Left            =   960
      TabIndex        =   0
      Top             =   975
      Width           =   4215
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   285
      Index           =   1
      Left            =   960
      TabIndex        =   1
      Top             =   1440
      Width           =   4215
   End
   Begin VB.TextBox txtdatospersona 
      Height          =   300
      Index           =   3
      Left            =   960
      TabIndex        =   5
      Top             =   2835
      Width           =   4215
   End
   Begin VB.CommandButton cmdPreautorizadas 
      Caption         =   "Preautorizar"
      Height          =   350
      Left            =   5280
      TabIndex        =   14
      Top             =   5880
      Width           =   1710
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "PuestoControlManualGUI.ctx":0000
      Left            =   6195
      List            =   "PuestoControlManualGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   5490
      Width           =   780
   End
   Begin VB.CommandButton cmdVerFicha 
      Caption         =   "Ver ficha ..."
      Height          =   350
      Left            =   5280
      TabIndex        =   20
      Top             =   2340
      Width           =   1725
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "PuestoControlManualGUI.ctx":0004
      Left            =   4215
      List            =   "PuestoControlManualGUI.ctx":0006
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   5490
      Width           =   780
   End
   Begin VB.CheckBox chkCacheoSalida 
      Caption         =   "Cacheo a la salida"
      Height          =   255
      Left            =   1335
      TabIndex        =   10
      Top             =   5535
      Value           =   1  'Checked
      Width           =   1680
   End
   Begin VB.TextBox txtPatente 
      Height          =   315
      Left            =   960
      MaxLength       =   32
      TabIndex        =   4
      Top             =   2355
      Width           =   4215
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5625
      Top             =   6555
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblEntidad 
      Caption         =   "Solo p/preautorizar"
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
      Left            =   5280
      TabIndex        =   46
      Top             =   2880
      Width           =   1800
   End
   Begin VB.Label lblMotivo 
      Caption         =   "Permisos:"
      Height          =   210
      Index           =   1
      Left            =   135
      TabIndex        =   43
      Top             =   6750
      Width           =   645
   End
   Begin VB.Image Image1 
      Height          =   4980
      Index           =   3
      Left            =   90
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   6975
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   2
      Left            =   4725
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   2340
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   1
      Left            =   2400
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   2340
   End
   Begin VB.Image Image1 
      Height          =   2175
      Index           =   0
      Left            =   75
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   2340
   End
   Begin VB.Line Line2 
      X1              =   7155
      X2              =   7155
      Y1              =   10665
      Y2              =   915
   End
   Begin VB.Line Line5 
      X1              =   75
      X2              =   7065
      Y1              =   7935
      Y2              =   7935
   End
   Begin VB.Line Line3 
      X1              =   105
      X2              =   7050
      Y1              =   3180
      Y2              =   3180
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
      Left            =   150
      TabIndex        =   26
      Top             =   3315
      Width           =   660
   End
   Begin VB.Line Line1 
      X1              =   105
      X2              =   7050
      Y1              =   5055
      Y2              =   5055
   End
   Begin VB.Label lblEntidad 
      Caption         =   "Documento:"
      Height          =   225
      Index           =   0
      Left            =   135
      TabIndex        =   40
      Top             =   1950
      Width           =   840
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
      Left            =   105
      TabIndex        =   39
      Top             =   5145
      Width           =   1170
   End
   Begin VB.Label lblMotivo 
      Caption         =   "Motivo Obs:"
      Height          =   480
      Index           =   0
      Left            =   165
      TabIndex        =   38
      Top             =   5880
      Width           =   660
   End
   Begin VB.Label lblVigenciaFin 
      Caption         =   "Hasta:"
      Height          =   210
      Left            =   4530
      TabIndex        =   37
      Top             =   5175
      Width           =   525
   End
   Begin VB.Label lblVigenciaInicio 
      Caption         =   "Desde:"
      Height          =   210
      Left            =   1410
      TabIndex        =   36
      Top             =   5190
      Width           =   585
   End
   Begin VB.Label lblApellido 
      Caption         =   "Apellido:"
      Height          =   225
      Index           =   1
      Left            =   165
      TabIndex        =   35
      Top             =   1065
      Width           =   660
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   210
      Index           =   2
      Left            =   150
      TabIndex        =   34
      Top             =   1545
      Width           =   645
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
      ForeColor       =   &H000000FF&
      Height          =   225
      Index           =   2
      Left            =   150
      TabIndex        =   33
      Top             =   2910
      Width           =   645
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
      Left            =   5265
      TabIndex        =   27
      Top             =   5550
      Width           =   810
   End
   Begin VB.Label lblCantidadOcupantes 
      Caption         =   "Adultos:"
      Height          =   255
      Index           =   0
      Left            =   3435
      TabIndex        =   25
      Top             =   5535
      Width           =   675
   End
   Begin VB.Label lblPatente 
      Caption         =   "Patente:"
      Height          =   300
      Left            =   150
      TabIndex        =   24
      Top             =   2400
      Width           =   735
   End
End
Attribute VB_Name = "PuestoControlManualGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'Option Explicit
'Public ParentWindow As Object
'Private AdminPersonasService As AdminPersonasSVR
'Private AdminModulosService As AdminModulosSVR
'Private AdminLotesService As AdminLotesSVR
'Private PlatformService As PlatformSVR
'Private PreService As PreSVR
'
'
'Dim AsistenteDataObject As AsistenteDAO
'Dim PreDataObjet As PreDAO
'Private WpcService As WpcSvr
'Private GeoService As GeoSVR
'
'Public mi_tck As TckSVR
'Public TckDataObject As TckDAO
'Dim TckPerDataObject As TckPerDAO
'Dim TckPrxDataObject As TckPrxDAO
'Dim PerDocCatValDataObject As PerDocCatValDAO
'Dim MdlDataObject As MdlDAO
'Dim PreDataObject As PreDAO
'Dim LotperDataObject As LotPerDAO
'Dim Mi_Lote As LoteDAO
'Dim Mi_Persona As PerDAO
'Dim Lote As String
'Dim db_ModuloVirtualID As Long
'Dim db_LoteID As Long
'Dim db_PersonaID As Long
'Dim db_DocumentoID As Long
'Dim db_CategoriaID As Long
'Dim db_ValorID As Long
'Dim db_FechaInicio As String
'Dim db_FechaFin As String
'Dim db_TicketID As Currency
'Private db_PreautorizadoID As Long
'Private db_perfilID As Long
'
''para el manejo de los modulos virtuales
'Private ModulosVirtuales() As String
'Private Tam_Vector As Integer
'Private i_Modulo_Virtual_Seleccionado As Integer
'Private Const i_virtual_moduloID As Integer = 0
'Private Const i_virtual_sentido As Integer = 1
'Private Const i_virtual_tipo_identificacion As Integer = 2
'Private Const i_virtual_ingreso_moduloID As Integer = 3
'Private Const i_virtual_ingreso_nombre As Integer = 4
'Private Const i_virtual_ingreso_ordenencuesta As Integer = 5
'Private Const i_virtual_ingreso_adrs As Integer = 6
'Private Const i_virtual_salida_moduloID As Integer = 7
'Private Const i_virtual_salida_nombre As Integer = 8
'Private Const i_virtual_salida_ordenencuesta As Integer = 9
'Private Const i_virtual_salida_adrs As Integer = 10
'Private Const i_virtual_total_items = 11
'
'
'
'Private Sub Command2_Click()
'
'End Sub
'
'Private Sub txtLote_GotFocus()
''on error resume next
'    cmdverLote.Default = True
'
'End Sub
'
'Private Sub UserControl_Initialize()
'
'    On Error GoTo Salir
'    Set AdminPersonasService = New AdminPersonasSVR
'    Set AdminModulosService = New AdminModulosSVR
'    Set AdminLotesService = New AdminLotesSVR
'    Set AsistenteDataObject = New AsistenteDAO
'    Set PlatformService = New PlatformSVR
'    Set PreService = New PreSVR
'    Set LotperDataObject = New LotPerDAO
'
'    Set TckPerDataObject = New TckPerDAO
'    Set TckPrxDataObject = New TckPrxDAO
'    Set PerDocCatValDataObject = New PerDocCatValDAO
'    Set PreDataObject = New PreDAO
'    Set WpcService = New WpcSvr
'    Set GeoService = New GeoSVR
'    Set mi_tck = New TckSVR
'    Set TckDataObject = New TckDAO
'    Set MdlDataObject = New MdlDAO
'
'    Dim i As Integer
'
'    If PlatformService.getValoresCategoria(CAT_TIPO_DOC_PERSONA) Then
'        i = 0
'        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
'            txtDocumento.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
'            txtDocumento.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
'            i = i + 1
'            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
'        Loop
'        'txtDocumento.ListIndex = 4
'    End If
'
'    llenarComboNumeros Combo1, 30, False
'    llenarComboNumeros Combo2, 30, True
'    Inicializar_Cmdcomandos
''    actualizarLocalizacion
'
'
'    Call Seleccion_Modulo_Virtual(0) ' por defecto cargo el primer modulo del vector
'    Exit Sub
'Salir:
'    MsgBox "Error al arrancar" + Err.Number + " " + Err.Description
'
'
'End Sub
'
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
'            Call GeoService.Desconectar(Mi_LiveX(i))
'        Next
'    End If
'    Set GeoService = Nothing
'    Set MdlDataObject = Nothing
'    Set mi_tck = Nothing
'    Set TckDataObject = Nothing
'End Sub
'
'
'Public Property Let TicketID(dato As Currency)
'Dim pathfoto As String
'
'On Error Resume Next
'If dato > 0 Then
'Let db_TicketID = dato
'     If AdminModulosService.ModuloQuery.obtenerTicketPendienteDetallado((db_TicketID)) Then
'        If db_TicketID <> 0 Then
'            If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
''afa 200912               LoteID = Val(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value))
'               PersonaID = Val(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value))
'               LoteID = Val(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(5).value))
'               'FechaInicio = CDate(Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value))
'               txtdatospersona(4).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(6).value)
'               'txtDatosPermiso(2).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(8).value)
'               Combo2.Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(9).value)
'               Combo1.Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(10).value)
'               TxtPatente.Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(11).value)
'
'          '     txtDatosTicket(4).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
'          '     txtDatosTicket(5).Text = Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(7).value)
'               Call Cargar_Foto(Image1(0), getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value) & ".jpg") 'foto persona
'               pathfoto = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_VISITA_INGRESOS")
'               pathfoto = Path_Relativo_Fecha(pathfoto, AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(3).value)
'               pathfoto = pathfoto & "\" & Str(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
'               Call Cargar_Foto(Image1(1), pathfoto & "_1.jpg")   'foto documento
'               Call Cargar_Foto(Image1(2), pathfoto & "_2.jpg")   'foto ingreso patente
'            End If
'       End If
'    End If
'End If
'
'
'End Property
'
'Public Property Let PreautorizadoID(value As Long)
'  Let db_PreautorizadoID = value
'
'   'If AdminPersonasService.buscarPersonaPorPersonaID((db_personaID)) Then
'If db_PreautorizadoID <> 0 Then
'   If PreService.PreQuery.obtenerPreautorizado((db_PreautorizadoID)) Then
'       If Not PreService.PreQuery.DbRecordsetQRY.EOF Then
'            txtLote.Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(0).value)
'            txtdatospersona(3).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(1).value)
'            txtdatospersona(0).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(2).value)
'            txtdatospersona(1).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(3).value)
'            txtdatospersona(4).Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(4).value)
'            txtFechaInicio.Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(5).value)
'            txtFechaFin.Text = " " & Str(PreService.PreQuery.DbRecordsetQRY.Fields(6).value)
'       End If
''      *************** CHEQUEO SI LA PERSONA TIENE AUTORIZACION PARA EL DIA DE HOY *****************************
'       If PreService.PreQuery.DbRecordsetQRY.Fields(5).value > Date Then
'                    txtFechaInicio.BackColor = vbRed
'                    txtFechaFin.BackColor = vbRed
'
'          MsgBox "La persona no se encuentra autorizada para ingresar en esta fecha", vbCritical, "Autorización fuera de término"
'       Else
'                    txtFechaInicio.BackColor = vbGreen
'                    txtFechaFin.BackColor = vbGreen
'       End If
'       cmdFechaInicio.Enabled = False
'       cmdFechaFin.Enabled = False
''      ************************************************************************************************************
'   End If
'End If
'
'End Property
''////////////////////////////////////PROPIEDADES DE LA PERSONA//////////////////////////////////////////////////////
'Property Let PersonaID(value As Long)
'  Dim hoy As Date
'  Let db_PersonaID = value
'
'
'    Dim i As Long
'    If db_PersonaID <> 0 Then
''************************* CARGO EL NOMBRE, APELLIDO, NUMERO Y TIPO DE DOCUMENTO*************************************
'        If AdminPersonasService.PersonaQuery.buscarPersonaPreautorizadaEspecifica((db_PersonaID)) Then
'            If Not AdminPersonasService.PersonaQuery.DbRecordsetQRY.EOF Then
'                txtdatospersona(1).Text = " " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0).value)
'                txtdatospersona(0).Text = " " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(1).value)
'                txtdatospersona(2).Text = " " & Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(2).value)
'                For i = 0 To txtDocumento.ListCount - 1
'                    If txtDocumento.ItemData(i) = CStr(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(3).value) Then
'                        txtDocumento.ListIndex = i
'                    End If
'                Next
'            End If
'
'            CargarFoto
'            cmdVerFicha.Enabled = True
'
''*************************VERIFICO SI LA PERSONA TIENE PERMISO PARA INGRESA A ALGUN LOTE*******************************
'         If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
'            If AdminLotesService.getLotPerPrf_con_PersonaID((db_PersonaID), (Date + Time)) Then
'                'txtDatosPermiso(2) = "Relacion = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(4).value) & vbCrLf & _
'                '                     "Perfil Nombre = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(5).value)
'                'PerfilID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(1).value
'                'txtDatosPermiso(2).BackColor = vbGreen 'la funcion anterior lo pinto de amarillo, aca lo pinto de verde
'                'txtFechaInicio = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value
'                'txtFechaFin = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value
'                'txtFechaInicio.BackColor = vbGreen
'                'txtFechaFin.BackColor = vbGreen
'                LoteID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(0).value ' lo cargo a lo ultimo porque sino me pisa los permisos
'               ' AdminLotesService.LoteQuery.DbRecordsetQRY.Close
'            End If
'
''************************* VERIFICO LA ULTIMA VISITA DE LA PERSONA SI ES QUE EXISTE **********************
''        If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
'            If AdminPersonasService.PersonaQuery.getUltimaVisitaPersona(db_PersonaID) Then
'                TxtPatente.Text = Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0).value)
'                txtdatospersona(4) = Str(AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(1).value)
'            End If
'            AdminPersonasService.PersonaQuery.DbRecordsetQRY.Close
'        'End If
'        End If
'      End If ' SI EXISTE LA PERSONA EN LA BASE DE DATOS
'    End If ' SI EL PERSONAID ES MAYOR A CERO
'    cmdFechaInicio.Enabled = False
'    cmdFechaFin.Enabled = False
'End Property
'
''//////////////////////////////////////////PROPIEDADES DEL LOTE//////////////////////////////////////////////////////////
'Property Let LoteID(value As Long)
'On Error GoTo noexiste
'Dim Referente As String
'Dim Encontre As Boolean
'Dim Ahora As Date
''afa 07/2009 para poder pedir los telefonos de una persona
'Dim rec As ADODB.RecordSet
'
'
'Let db_LoteID = value
'
'
'Set rec = New ADODB.RecordSet
'
'
'
'If db_LoteID > 0 Then
'   Set Mi_Lote = AdminLotesService.LoteOrm.obtenerLote(db_LoteID)
'   txtDatosLotes.Text = "Lote = " & Str(Mi_Lote.Lote) & vbCrLf & _
'                        "Unidad Funcional = " & Str(Mi_Lote.UF) & vbCrLf & _
'                        "Calle = " & Str(Mi_Lote.Calle) & vbCrLf & _
'                        "Interno = " & Str(Mi_Lote.Interno) & vbCrLf & _
'                        "OBSERVACIONES = " & Str(Mi_Lote.Numero) & vbCrLf
'
'
'
'     If AdminLotesService.LotperQuery.obtenerReferenteLoteTelefono(db_LoteID) Then
'
'        Set rec = AdminLotesService.LotperQuery.DbRecordsetQRY
'         rec.MoveFirst
'
'          While Not rec.EOF
'
'          'afa 07/2009
'          'While Not AdminLotesService.LotperQuery.DbRecordsetQRY.EOF
'
'            'afa 07/2009
'            'txtDatosLotes.Text = txtDatosLotes.Text & vbCrLf & "Referente = " & Str(AdminLotesService.LotperQuery.DbRecordsetQRY.Fields(0).value)
'           txtDatosLotes.Text = txtDatosLotes.Text & vbCrLf & Str(rec.Fields(1).value) & " = " & Str(rec.Fields(0).value)
'           If AdminLotesService.LotperQuery.obtenerReferentePersonaTelefono(rec.Fields(2).value) Then
'                While Not AdminLotesService.LotperQuery.DbRecordsetQRY.EOF
'                    txtDatosLotes.Text = txtDatosLotes.Text & " -- " & Str(AdminLotesService.LotperQuery.DbRecordsetQRY.Fields(1).value)
'                    AdminLotesService.LotperQuery.DbRecordsetQRY.MoveNext
'                Wend
'                AdminLotesService.LotperQuery.DbRecordsetQRY.Close
'             End If
'            'afa 07/2009   AdminLotesService.LotperQuery.DbRecordsetQRY.MoveNext
'            rec.MoveNext
'         Wend
'         rec.Close
'         Set rec = Nothing
'
'         'AdminLotesService.LotperQuery.DbRecordsetQRY.Close
'     End If
'    If db_PersonaID <> 0 Then '
'       If AdminLotesService.getPerPrf_con_PersonaID((db_PersonaID), db_LoteID) Then
'         Encontre = False
'         Ahora = Date '+ Time
'         While (Not Encontre) And (Not AdminLotesService.LoteQuery.DbRecordsetQRY.EOF)
'             If AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value <= Ahora And _
'                AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value >= Ahora Then
'                txtFechaInicio = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value
'                txtFechaFin = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value
'                txtFechaInicio.BackColor = vbGreen
'                txtFechaFin.BackColor = vbGreen
'                Encontre = True
'                PerfilID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(1).value
'                txtDatosPermiso(2) = "Relacion = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(4).value) & vbCrLf & _
'                                  "Perfil Nombre = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(5).value) & vbCrLf & _
'                                  txtDatosPermiso(2).Text
'             Else
'                AdminLotesService.LoteQuery.DbRecordsetQRY.MoveNext
'             End If
'         Wend
'            If Not Encontre Then
'                AdminLotesService.LoteQuery.DbRecordsetQRY.MoveFirst
'                txtFechaInicio = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(2).value
'                txtFechaFin = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(3).value
'                txtFechaInicio.BackColor = vbYellow
'                txtFechaFin.BackColor = vbYellow
'                PerfilID = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(1).value
'                txtDatosPermiso(2) = "Relacion = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(4).value) & vbCrLf & _
'                                     "Perfil Nombre = " & Str(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(5).value) & vbCrLf & _
'                                     txtDatosPermiso(2).Text
'            End If
'            AdminLotesService.LoteQuery.DbRecordsetQRY.Close
'      Else ' no encontro ningun permiso para este lote esta persona
'           txtDatosPermiso(2).BackColor = vbRed
'      End If ' no encontro ningun permiso para este lote esta persona
'    End If 'fin de si esta la persona
'  End If ' fin de si el perfil es mayor a cero
'
'noexiste:
'End Property
'
'Property Let PerfilID(value As Long)
'Dim AdminPerfilesService As AdminPerfilesSVR
'Dim hoy As Integer
'Dim hora As Integer
'
'  hora = Format(Time, "HHMM")
'  hoy = (Weekday(Date, vbSunday) - 1) 'domingo es el primer dia de la semana
'
'
'On Error GoTo Salir
'If value > 0 Then
'    txtDatosPermiso(2).BackColor = vbYellow 'por defecto cargo amarillo si hay algun perfil
'    Let db_perfilID = value
'    Set AdminPerfilesService = New AdminPerfilesSVR
'    If AdminPerfilesService.getItemsList(value) Then
'        Do While Not AdminPerfilesService.PerfilQuery.DbRecordsetQRY.EOF
'             If CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(1).value) = hoy Then
'                If hora >= CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(2).value) And _
'                   hora <= CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(3).value) Then
'                    txtDatosPermiso(2).BackColor = vbGreen 'pinto de verde si el dia que de hoy y ahora puede entrar
'                End If
'             End If
'             txtDatosPermiso(2).Text = txtDatosPermiso(2).Text & vbCrLf & _
'                                       obtenerDeLaSemana(CInt(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(1).value)) & ": " & _
'                                       obtenerHora(CStr(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(2).value)) & " a " & _
'                                       obtenerHora(CStr(AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Fields(3).value))
'             AdminPerfilesService.PerfilQuery.DbRecordsetQRY.MoveNext
'        Loop
'        AdminPerfilesService.PerfilQuery.DbRecordsetQRY.Close
'    Else
'        txtDatosPermiso(2).BackColor = vbRed
'    End If
'Else
'    txtDatosPermiso(2).BackColor = vbRed
'End If
'
'Salir:
'Set AdminPerfilesService = Nothing
'End Property
'
'Property Let CategoriaID(value As Long)
'    Let db_CategoriaID = value
'      'CategoriaID = AdminPersonasService.(db_CategoriaID)
'End Property
'
'Property Let ValorID(value As Long)
'    Let db_ValorID = value
'    'ValorID = AdminLotesService.LotperOrm.getValorID(db_ValorID)
'End Property
'
'Property Let FechaInicio(value As String)
'    Let db_FechaInicio = value
'    txtFechaInicio.Text = AdminLotesService.LotperOrm.getFechaInicio(db_FechaInicio)
'End Property
'
'Property Let FechaFin(value As String)
'    Let db_FechaFin = value
'    txtFechaFin.Text = AdminLotesService.LotperOrm.getFechaFin(db_FechaFin)
'End Property
'
'Sub init()
'Dim camara_ As Integer
'Dim i As Integer
'
'
'    On Error Resume Next
'
'    'db_ModuloVirtualID = AdminModulosService.obtenerModuloVirtual(getWindowsComputerName)
'    Set MdlDataObject = AdminModulosService.ModuloOrm.obtenerModulo(db_ModuloVirtualID)
'
'    If GeoService.Cargar_Propiedades_GEO(DbConnectionSYS, MdlDataObject.GrupoModulos) Then
'        camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloVirtualID)
'        For i = 0 To 1                         ''  ancho x altura
'            If Not GeoService.Conectar(Mi_LiveX(i), 300, 270, camara_) Then
'                Exit For
'            End If
'        Next
'        For i = 2 To 4
'            If Not GeoService.Conectar(Mi_LiveX(i), 230, 179, i) Then
'                Exit For
'            End If
'        Next
'
'    End If
'
'    If PlatformService.getValoresCategoria(db_CategoriaID) Then
'        i = 0
'        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
'            DoEvents
'            txtDocumento.List(i) = IIf(IsNull(CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)), "", CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
'            txtDocumento.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
'            i = i + 1
'            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
'        Loop
'        'txtDocumento.ListIndex = 3
'    End If
'
''    If db_DocumentoID <> 0 Then
''      '  onUpdate = True
''        loadData
''    Else
''      '  onUpdate = False
''    End If
''    loadData
''''''''''''''''''''''''''''''''''''''''''''''''''''' LimpiarCampos
'
'
'    Exit Sub
'Salir:
'    'MsgBox "ERROR -- init -- " & Err.Number & "  " & Err.Description, vbCritical
'    Err.Clear
''Resume 0
'End Sub
'
'Private Sub cmdPreautorizadas_Click()
'On Error GoTo Salir
'
'   If validarDatos_preautorizado Then
'    db_PreautorizadoID = PreService.PreORM.crearPreautorizacion(db_LoteID, txtdatospersona(3), txtdatospersona(0), txtdatospersona(1), txtdatospersona(4), txtFechaInicio.Text, txtFechaFin.Text)
'    If db_PreautorizadoID > 0 Then
'        LimpiarCampos
'    Else
'         MsgBox "No se puede crear la preautorización," & vbCrLf & _
'         " Verifique los datos", vbCritical, "Atención"
'    End If
'  Else
'    MsgBox "Datos Incompletos", vbCritical, "Error en los Datos"
'  End If
'
'Exit Sub
'Salir:
'    MsgBox "PuestoControlManualGUI.cmdPreautorizadas_Click" & vbCrLf & _
'           "Descripción: " & Err.Description & vbCrLf & _
'           "Número error: " & Err.Number, _
'           vbCritical, _
'           "Error en Ejecución"
'End Sub
'
'
'Private Sub cmdVisita_Click(Index As Integer)
'
'Dim tmp As Long
'Dim camara_ As Integer
'Dim Path_Foto As String
'On Error GoTo Salir
''///////////////////////////// INICIO LA TRANSACCION DEL TICKET /////////////////////////////////////////////////////
'       AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Iniciar
''////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'If Index = 0 Then 'solo buscara ticket pendientes si debe generar un comando para el WPC
'' A) Verificar que no haya un ticket para este módulo en la tabla de comandos pendientes
''       Si hay un Ticket, no procesar... poniéndo un cartel de
''               "existe un ticket pendiente de procesar. Por favor verifique que
''               el modulo controlador de dispositivos este funcionando correctamente o
''               aguarde unos instantes hasta el ticket pendiente sea procesado"
''
''       Si no hay un Ticket pendiente, todo bien y procesar
'
'
'Dim Respuesta As Integer
'    If AdminModulosService.existeTicketPendiente(ModuloID_Relacionado_Para_Evento) Then
'      Respuesta = MsgBox("Existe un comando pendiente a procesar. ¿Desea eliminarlo en este momento? Esta operación es irreversible.", vbYesNo + vbExclamation + vbDefaultButton2, "Error: Ticket Pendiente de Impresión")
'        If Respuesta = 6 Then
'           cmdBorrarTck_Click
'        End If
'        cmdVisita(0).SetFocus
'        Exit Sub
'    End If
'End If
''A') Verificar existencia de la persona por DNI y NUMERO, si no es  asi crearla
'    If db_PersonaID = 0 Then
'        If validarDatos_persona Then
'            If AdminPersonasService.buscarPersonaPorDocumento((txtDocumento.ItemData(txtDocumento.ListIndex)), txtdatospersona(2)) Then 'existe a lo sumo la edito
'                db_PersonaID = AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(6).value
'                'debo verificar el antipass back
'                If Existe_ticket_previo_persona(db_PersonaID) Then
'                    Exit Sub
'                End If
'            Else ' no existe debo crearla
'                db_PersonaID = AdminPersonasService.PersonaOrm.crearPersona(txtdatospersona(0), txtdatospersona(1), "", "", "", txtFechaInicio, txtFechaFin, "")
'                If AdminPersonasService.PersonaOrm.crearPerDocCatVal(db_PersonaID, CAT_TIPO_DOC_PERSONA, (txtDocumento.ItemData(txtDocumento.ListIndex)), txtdatospersona(2)) Then
'
'                End If
'            End If
'        Else
'            MsgBox "No se puede completar el movimiento porque faltan datos para el mismo", vbCritical
'            Exit Sub
'        End If
'    Else ' esta persona ya existe por que anteriormente fue cargada
'        'entonces antes de seguir debo verificar el antipass back para saber si no intenta entrar 2 veces sin salir
'        If Existe_ticket_previo_persona(db_PersonaID) Then
'            Exit Sub
'        End If
'    End If
'
'
'
''/////////////////////////////// B) SE CREA EL TICKET ////////////////////////////////////////////////////////////
'
'' PRIMERO VEO SI ESTOY USANDO LA ENTRADA O LA SALIDA PARA CONFIGURAR LOS CONTROLES Y MODULOS CON LOS CUALES TRABAJO
'
''******************************************************************************************************************
''******************* SI ESTA SELECCIONADA LA ENTRADA ENTONCES HACER LO SIGUIENTE **********************************
''******************************************************************************************************************
'If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
'    mi_tck.FechaHoraIngreso = (Date + Time)
'    'Mi_Tck.DestinoVisita = ""
'    mi_tck.Numero = 0
'    If Index = 0 Then ' apretaron el boton normal
'        mi_tck.ModuloIngresoID = ModulosVirtuales(i_virtual_ingreso_moduloID, i_Modulo_Virtual_Seleccionado) 'ModuloID_Relacionado_Para_Evento 'MdlDataObject.ModuloEntradaID
'    Else ' apretaron el boton de sin ticket
'        mi_tck.ModuloIngresoID = ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado) 'ModuloID_ propio del modulo virtual
'    End If
'    If mi_tck.Crear_Movimiento_Tck(DbConnectionSYS, mi_tck) Then
'        If GeoService.GeoVisionConectada Then
'          Path_Foto = Path_Relativo_Fecha(GeoService.PATH_IMAGENES_VISITA_INGRESOS, mi_tck.FechaHoraIngreso)
'            If Path_Foto = "" Then
'              MsgBox "Error en la carpeta de Imagenes", vbCritical, "Error"
'            Else
'                If GeoService.Tomar_Foto(Mi_LiveX(0), Path_Foto & "\" & mi_tck.TicketID & "_1.jpg") Then
'                    'solo si tomo la foto del documento tomo la del vehiculo
'                    camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento)
'                    If camara_ > -1 Then
'                        If GeoService.Cambiar_Camara(Mi_LiveX(0), camara_) Then
'                            Call GeoService.Tomar_Foto(Mi_LiveX(0), Path_Foto & "\" & mi_tck.TicketID & "_2.jpg")
'                        End If
'                    End If
'                Else
'                     MsgBox "No se pudieron tomar las imagenes", vbCritical, "Atención"
'                End If
'            End If
'        End If
'
'
'        ' C) Agregamos información de propiedades extendidas al ticket
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_PATENTE
'        TckPrxDataObject.valor = TxtPatente.Text
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_CANTIDAD_PERSONAS
'        TckPrxDataObject.valor = Combo1.ItemData(Combo1.ListIndex)
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_CANTIDAD_MENORES
'        TckPrxDataObject.valor = Combo2.ItemData(Combo2.ListIndex)
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'
'        '*** PROPIEDAD AGREGADA PARA TALAR DEL LAGO 7/7/09
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_ENTIDAD
'        TckPrxDataObject.valor = txtdatospersona(3).Text
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'        '*******
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_CACHEO
'        TckPrxDataObject.valor = chkCacheoSalida.value
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_DESTINO_VISITA
'        TckPrxDataObject.valor = db_LoteID 'txtLote.Text
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'
'        TckPrxDataObject.TicketID = mi_tck.TicketID
'        TckPrxDataObject.PropiedadID = PROPIEDAD_MOTIVO_VISITA
'        TckPrxDataObject.valor = txtdatospersona(4).Text
'        tmp = AsistenteDataObject.create(TckPrxDataObject)
'
'        ' D) Se relaciona el ticket con la Persona
'
'        TckPerDataObject.TicketID = mi_tck.TicketID
'        TckPerDataObject.PersonaID = db_PersonaID
'        tmp = AsistenteDataObject.create(TckPerDataObject)
'
'        'borro el preaturizado
'        If db_PreautorizadoID > 0 Then
'            Call PreService.PreORM.borrarPreautorizacion(db_PreautorizadoID)
'        End If
'    Else '
'        ' no se pudo crear el registro de ingreso
'
'        MsgBox "No se generó el registro del ticket", vbCritical, "Error"
''/////////////////////////////////// SE CANCELA LA TRANSACCION DEL TICKET ////////////////////////////////////////////
'        AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
''//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'        Exit Sub
'    End If
''******************************************************************************************************************
'Else ' ******************** SI ESTA SELECCIONADA LA SALIDA ENTONCES HACER LO SIGUIENTE******************************
''******************************************************************************************************************
'    If mi_tck.TraerTicketIngreso(DbConnectionSYS, db_TicketID) Then
'        If Index = 0 Then
'            mi_tck.ModuloSalidaID = ModulosVirtuales(i_virtual_salida_moduloID, i_Modulo_Virtual_Seleccionado)
'        Else ' ******** APRETARON EL BOTON PARA SALIDA "SIN TICKET"
'            mi_tck.ModuloSalidaID = ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado) 'ModuloID_ propio del modulo virtual
'        End If
'        mi_tck.FechaHoraSalida = (Date + Time)
'        If mi_tck.Crear_Movimiento_TckHst(DbConnectionSYS, mi_tck) Then
'            If mi_tck.Borrar_Movimiento_Tck(DbConnectionSYS, db_TicketID) Then
'                LimpiarCampos
'            Else
'                'mensaje de error que no pudo borrar
'                MsgBox "El ticket no pudo ser borrado de la tabla de tickets, por lo tanto no se creará el histórico de este movimiento", vbCritical, "Error en la operación"
'                '/////////// SE CANCELA LA TRANSACCION DEL TICKET /////////////////////////
'                    AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
'                '//////////////////////////////////////////////////////////////////////////
'                Exit Sub
'            End If
'        Else
'         'mensaje de error que no pudo crear el historico
'          MsgBox "No se generó el registro de salida del ticket", vbCritical, "Error"
'          '//////////////// SE CANCELA LA TRANSACCION DEL TICKET /////////////////////////////
'            AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
'          '///////////////////////////////////////////////////////////////////////////////////
'          Exit Sub
'        End If
'    Else
'        'mensaje de error que no entcontro el ticket
'        MsgBox "El ticket no pudo ser encontrado en la base de datos", vbCritical, "Error"
'        '///////////////// SE CANCELA LA TRANSACCION DEL TICKET /////////////////////////////
'            AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Cancelar
'        '////////////////////////////////////////////////////////////////////////////////////
'        Exit Sub
'    End If
''????????????????????????????????????????????????????????????????????????????????????????
'End If
''******************************** FINALIZA LA SALIDA EXITOSAMENTE ***************************************************
'
'' E) Se manda el comando de impresión de ticket
''CARGO EL MODULO ID RELACIONADO DE ENTRADA
''If ModulosVirtuales(i_virtual_tipo_identificacion, i_Modulo_Virtual_Seleccionado) =
''    CAT_VAL_IDENTIFICACION_CODIGO_BARRA Then
'
'Select Case ModulosVirtuales(i_virtual_tipo_identificacion, i_Modulo_Virtual_Seleccionado)
'    Case CAT_VAL_IDENTIFICACION_CODIGO_BARRA
'        If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = _
'            CAT_VAL_SENTIDO_INGRESO Then
'            If Index = 0 Then 'EMITE TICKET
'
'
'                If Not WpcService.EnviarImpresionTicketModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento, mi_tck.TicketID) Then
'                    MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
'                End If
'            Else ' APERTURA SIN EMISION DE TICKET
'                'If Not WpcService.EnviarAperturaModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) Then
'                '    MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
'                'End If
'            End If
'        Else ' es salida tambien debe abrir
'            If Not WpcService.EnviarAperturaModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento, mi_tck.TicketID) Then
'                MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
'            End If
'        End If
'    Case CAT_VAL_IDENTIFICACION_CONTROLADA
'        'no genera comando pendiente
'    Case Else
'        If Not WpcService.EnviarAperturaModulo(DbConnectionSYS, ModuloID_Relacionado_Para_Evento, mi_tck.TicketID) Then
'            MsgBox "No se generó la comunicacion con el modulo asociado", vbCritical, "Error"
'        End If
'End Select
'
'MsgBox "Registración exitosa", vbInformation, "Registración exitosa"
'
''/////////////////////////// FINALIZO LA TRANSACCION DEL TICKET /////////////////////////////////////////////////////
'    AdminModulosService.ModuloOrm.AsistenteDataObject.Transaccion_Finalizar
''////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'
''camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloVirtualID)
''camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, MdlDataObject.ModuloEntradaID)
''If camara_ > -1 Then
''  Call GeoService.Cambiar_Camara(Mi_LiveX(0), camara_)
''End If
''Call Seleccion_Modulo_Virtual(0)
'LimpiarCampos
'
'
'Exit Sub
'Salir:
'    MsgBox "No se generó el registro del ticket", vbCritical, "Error Inesperado"
'    ''Resume 0
'    LimpiarCampos
'End Sub
'
'
'Private Function validarDatos_persona() As Boolean
'On Error GoTo Salir
'  validarDatos_persona = (txtdatospersona(2).Text <> "" And _
'                          txtdatospersona(1).Text <> "" And _
'                          txtdatospersona(0).Text <> "")
'Exit Function
'Salir:
'MsgBox "PuestoControlManualGUI.validarDatos_persona" & vbCrLf & _
'           "Descripción: " & Err.Description & vbCrLf & _
'           "Número error: " & Err.Number, _
'           vbCritical, _
'           "Error en Ejecución"
'
'End Function
'
'Private Function validarDatos_preautorizado() As Boolean
'On Error GoTo Salir
'  validarDatos_preautorizado = (db_LoteID > 0) And _
'                               (txtdatospersona(0).Text <> "" Or _
'                                txtdatospersona(1).Text <> "" Or _
'                                txtdatospersona(3).Text <> "")
'Exit Function
'Salir:
'MsgBox "PuestoControlManualGUI.validarDatos_preautorizado" & vbCrLf & _
'           "Descripción: " & Err.Description & vbCrLf & _
'           "Número error: " & Err.Number, _
'           vbCritical, _
'           "Error en Ejecución"
'
'End Function
'
'
'Private Sub cmdVisitasPendientes_Click()
'    Unload ReporteMovimientosMOD
'    Set ReporteMovimientosMOD = Nothing
'    Set ReporteMovimientosMOD.ParentWindow = Me
'    ReporteMovimientosMOD.Desde = CDate(0)
'    ReporteMovimientosMOD.Hasta = Date
'    ReporteMovimientosMOD.Show
'End Sub
'
'Private Sub cmdListas_Click()
'Dim Texto As String
'
'    If cmdListas.Caption = "Ticket Ingresados..." Then
'        Unload ReporteMovimientosMOD
'        Set ReporteMovimientosMOD = Nothing
'        'ReporteMovimientosMOD.ReporteMovimientosGUI1.TextoBusqueda = (txtdatospersona(0).Text) & " " & (txtdatospersona(1).Text) & " " & (txtdatospersona(2).Text)
'        Set ReporteMovimientosMOD.ParentWindow = Me
'        ReporteMovimientosMOD.Desde = CDate(0)
'        ReporteMovimientosMOD.Hasta = Date
'        ReporteMovimientosMOD.Show
'    Else  '"Preautorizados..."
'        Unload PreautorizadasMOD
'        Set PreautorizadasMOD = Nothing
'        Set PreautorizadasMOD.ParentWindow = Me
'        Texto = (txtdatospersona(0).Text) & " " & (txtdatospersona(1).Text) & " " & (txtdatospersona(3).Text)
'        PreautorizadasMOD.TextoBusqueda = Texto
'
'        PreautorizadasMOD.Show vbModal
'    End If
'
'End Sub
'
'Private Sub Command1_Click()
'    LimpiarCampos
'End Sub
'
'Private Sub Grid_Click()
'    Call Seleccion_Modulo_Virtual(Grid.ColSel)
'End Sub
'
'Private Sub Image1_Click(Index As Integer)
'On Error Resume Next
'    Select Case Index
'        Case 0, 1, 2
'            If Image1(Index).ToolTipText <> "" Then
'                Set Image1(3) = Image1(Index)
'                visualizar_controles False
'            End If
'        Case 3
'            visualizar_controles True
'    End Select
'End Sub
'
'Private Sub visualizar_controles(ByRef opcion As Boolean)
'
'    txtdatospersona(3).Visible = opcion
'    txtdatospersona(4).Visible = opcion
'    txtDatosPermiso(2).Visible = opcion
'    txtFechaInicio.Visible = opcion
'    txtFechaFin.Visible = opcion
'    txtLote.Visible = opcion
'    txtDatosLotes.Visible = opcion
'    Line1.Visible = opcion
'    Line3.Visible = opcion
'    lblEntidad(1).Visible = opcion
'
'    cmdFechaFin.Visible = opcion
'    cmdFechaInicio.Visible = opcion
'    cmdverLote.Visible = opcion
'    cmdPreautorizadas.Visible = opcion
'
'    chkCacheoSalida.Visible = opcion
'    Combo1.Visible = opcion
'    Combo2.Visible = opcion
'    Image1(3).Visible = Not opcion
'    lblMotivo(0).Visible = opcion
'    lblMotivo(1).Visible = opcion
'
'
'End Sub
'
'Private Sub cmdBorrarTck_Click()
'
'    Dim tmp As Long
'    Dim camara_ As Integer
'    Dim Path_Foto As String
'On Error GoTo Salir
'
'' A) Verificar que  haya un ticket para este módulo en la tabla de comandos pendientes
''       Si NO hay un Ticket pendiente salir
'
'    'ModulosVirtuales(
'    If Not AdminModulosService.existeTicketPendiente(ModuloID_Relacionado_Para_Evento) Then
'        MsgBox " No Existe ningún ticket pendiente a procesar", vbInformation, "Atención"
'        'Exit Sub
'    End If
'
'' B) Se borra el  Ticket pendiente
'    If mi_tck.ExisteTicketIngreso_SinNumero(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) Then
'        If MsgBox("Esta seguro que desea eliminar el Ticket Pendiente generado el " & mi_tck.FechaHoraIngreso, vbOKCancel + vbQuestion + vbDefaultButton1, "Confirme Acción") = vbCancel Then
'            MsgBox "Se ha Cancelado el ticket pendiente a procesar", vbInformation, "Atención"
'            cmdVisita(0).SetFocus
'            Exit Sub
'        End If
'    Else
'        MsgBox " No Existe ningún ticket pendiente a procesar", vbInformation, "Atención"
'        cmdVisita(0).SetFocus
'        'Exit Sub
'    End If
'
'    If GeoService.GeoVisionConectada Then
'         Path_Foto = Path_Relativo_Fecha(GeoService.PATH_IMAGENES_VISITA_INGRESOS, mi_tck.FechaHoraIngreso)
'         If Path_Foto = "" Then
'             MsgBox "Error en la carpeta de Imagenes, verifique si existen ", vbCritical, "Error"
'         Else
'            Call GeoService.Borrar_Foto(Path_Foto & "\" & mi_tck.TicketID & "_1.jpg")
'            Call GeoService.Borrar_Foto(Path_Foto & "\" & mi_tck.TicketID & "_2.jpg")
'         End If
'    End If
'
'    ' C) Borramos información de propiedades extendidas al ticket
'    If mi_tck.Borrar_Movimiento_Tck_Per(DbConnectionSYS, mi_tck.TicketID) Then
'
'    End If
'
'    If mi_tck.Borrar_Movimiento_Tck_Prx(DbConnectionSYS, mi_tck.TicketID) Then
'
'    End If
'
'
'    ' E) Se Borra el comando de impresión de ticket
'    'CARGO EL MODULO ID RELACIONADO DE ENTRADA
'
'    If Not WpcService.Eliminar_Comando_Pendiente(DbConnectionSYS, ModuloID_Relacionado_Para_Evento) Then
'        MsgBox "No se Eliminó la comunicación pendiente con el poste de ingreso", vbCritical, "Error"
'    End If
'
'    If mi_tck.Borrar_Movimiento_Tck(DbConnectionSYS, mi_tck.TicketID) Then
'        MsgBox "Cancelación de ticket exitosa", vbInformation, ""
'        cmdVisita(0).SetFocus
'    Else
'        MsgBox "No se pudo cancelar el registro del ticket pendiente", vbCritical, "Error"
'        cmdVisita(0).SetFocus
'    End If
'
'
'
'Exit Sub
'Salir:
'    MsgBox "No se cancelo el registro del ticket", vbCritical, "Error Inesperado"
'    'Resume 0
'End Sub
'
'
'
'Private Sub cmdListaPre_Click()
'
'    Set PreautorizadasMOD.ParentWindow = Me
'        PreautorizadasMOD.Show vbModal
'End Sub
'
'Public Sub cmdverLote_Click()
'On Error GoTo Salir
'  'db_LoteID = 0
'  'txtDatosPersona(1) = ""
'
'  txtDatosPermiso(2).BackColor = vbWhite
'  txtDatosPermiso(2).Text = ""
'  db_perfilID = 0
'  Unload AdminLotesMOD
'  Set AdminLotesMOD.ParentWindow = Me
'  AdminLotesMOD.ReadOnly = True
'  AdminLotesMOD.Seleccion = True
'  If txtLote.Text = "" Then
'    AdminLotesMOD.db_busqueda = txtdatospersona(0) & " " & txtdatospersona(1)
'    AdminLotesMOD.BuscarTodo = True
'  Else
'    AdminLotesMOD.db_busqueda = txtLote.Text
'  End If
'
'
'  AdminLotesMOD.Show vbModal
'
'  AdminLotesMOD.Destroy
'Salir:
'End Sub
'
'Private Sub Mi_LiveX_OnDBClick(Index As Integer)
' Call Mi_LiveX(Index).ChangeCamX(Mi_LiveX(Index).ShowCamMenuX)
'End Sub
'
'Private Sub cmdVerFicha_Click()
'    Set PersonaMOD.ParentWindow = Me
'    PersonaMOD.PersonaID = db_PersonaID
'    PersonaMOD.Show vbModal
'End Sub
'
'Sub CargarFoto()
'On Error GoTo noHayFoto
'    Image1(0).Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg")
'    Image1(0).ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg"
'    Exit Sub
'noHayFoto:
'    On Error Resume Next
'    Image1(0).Picture = LoadPicture("")
'    Image1(0).Picture = LoadPicture(App.Path & "\NoHayFoto.jpg")
'End Sub
'
'Private Sub cmdBuscar_Click()
'Dim persona As String
'
'
'
'db_PersonaID = 0
''db_LoteID = 0
'
'persona = (txtdatospersona(0).Text) & " " & (txtdatospersona(1).Text) & " " & (txtdatospersona(2).Text)
'
'Unload AdminPersonasMOD
'AdminPersonasMOD.ReadOnly = True
'AdminPersonasMOD.Seleccion = True
'AdminPersonasMOD.db_busqueda = persona
'Set AdminPersonasMOD.ParentWindow = Me
'AdminPersonasMOD.Show vbModal
'
'If db_PersonaID = 0 Then
'    cmdVerFicha.Enabled = False
'    txtdatospersona(0).Text = ""
'    Beep
'    If Len(persona) > 2 Then 'vacio va a ocupar 2 por los espacios que cargue cuando lleno el control
'        MsgBox "La Persona no se encuentra en la base de datos" & vbCrLf & _
'                persona & vbCrLf & _
'                "Verifique los datos o ingreselos manualmente" & vbCrLf & _
'                "para dar de alta a una nueva Persona", vbInformation, "Persona no encontrada"
'        '    Set CargaRapidaPersonaMOD.ParentWindow = Me
'        '    CargaRapidaPersonaMOD.DNI = txtBusqueda(2).Text
'        '    CargaRapidaPersonaMOD.Show vbModal
'            txtdatospersona(0).SetFocus
'
'    End If
'End If
'
'End Sub
'
'
'
''Private Sub Form_KeyPress(KeyAscii As Integer)
''If KeyAscii = 13 Then
''SendKeys "{tab}"
''KeyAscii = 0
''End If
''End Sub
''Private Sub txtPatente_KeyPress(KeyAscii As Integer)
''If KeyAscii = 13 Then
''SendKeys "(9)"
''KeyAscii = 0
''End If
''End Sub
''
''Private Sub Combo1_KeyPress(KeyAscii As Integer)
''If KeyAscii = 13 Then
''SendKeys "(10)"
''KeyAscii = 0
''End If
''End Sub
''
''Private Sub txtDestinoVisita_KeyPress(KeyAscii As Integer)
''If KeyAscii = 13 Then
''SendKeys "(12)"
''KeyAscii = 0
''End If
''End Sub
'
'
'Public Sub UpdateWindow()
''   cmdBuscar_Click
'End Sub
'
'Private Sub CmdCerrar_Click()
'    ParentWindow.Destroy
'End Sub
'
'Private Sub UserControl_KeyPress(KeyAscii As Integer)
'    If KeyAscii = vbKeyEscape Then
'        CmdCerrar_Click
'    End If
'End Sub
'
'Sub actualizarLocalizacion()
'End Sub
'
'Private Function Existe_ticket_previo_persona(ByRef PersonaID_ As Long) As Boolean
'On Error GoTo Salir
'    If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
'        If AdminPersonasService.buscarTicketIngresoPorPersonaID((PersonaID_)) Then
'           MsgBox "Esta Persona ya ha ingresado y aún no se registró su salida", vbCritical, "ANTIPASSBACK"
'           Set ReporteMovimientosDetalleMOD.ParentWindow = Nothing
'           ReporteMovimientosDetalleMOD.TicketID = AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0)
'           ReporteMovimientosDetalleMOD.de_historicos = False
'           ReporteMovimientosDetalleMOD.Show vbModal
'           AdminPersonasService.PersonaQuery.DbRecordsetQRY.Close
'           LimpiarCampos
'           Existe_ticket_previo_persona = True
'        End If
'    End If
'Salir:
'End Function
'
'
'Private Sub cmdFechaInicio_Click()
'    Unload DatePickerMOD
'    Set DatePickerMOD.parentControl = txtFechaInicio
'    DatePickerMOD.Show vbModal
'End Sub
'
'Private Sub cmdFechaFin_Click()
'    Unload DatePickerMOD
'    Set DatePickerMOD.parentControl = txtFechaFin
'    DatePickerMOD.Show vbModal
'End Sub
'Sub LimpiarCampos()
'Dim i As Integer
'Dim camara_ As Integer
'On Error Resume Next
'
'    camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado))
'    'camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, MdlDataObject.ModuloEntradaID)
'    If camara_ > -1 Then
'        Call GeoService.Cambiar_Camara(Mi_LiveX(0), camara_)
'    End If
'
'    If Mi_LiveX(0).DefaultCam <> camara_ Then
'        ConecatarGeo ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado)
'    End If
'
'    For i = 0 To 2
'        Image1(i) = LoadPicture("")
'    Next
'
'    cmdFechaInicio.Enabled = True
'    cmdFechaFin.Enabled = True
'    txtLote.Text = ""
'    txtDatosLotes.Text = ""
'    txtDatosPermiso(2).Text = ""
'    txtDatosPermiso(2).BackColor = vbWhite
'    txtdatospersona(0).Text = ""
'    txtdatospersona(1).Text = ""
'    txtdatospersona(2).Text = ""
'    txtdatospersona(3).Text = ""
'    txtdatospersona(4).Text = ""
'    TxtPatente.Text = ""
'    txtFechaFin.Text = Date
'    txtFechaInicio.Text = Date
'    txtFechaInicio.BackColor = vbWhite
'    txtFechaFin.BackColor = vbWhite
'
'
'    db_PersonaID = 0
'    db_LoteID = 0
'    db_PreautorizadoID = 0
'    db_DocumentoID = 0
'    db_CategoriaID = 0
'    db_ValorID = 0
'    db_FechaInicio = Date
'    db_FechaFin = Date
'    db_TicketID = 0
'    Combo1.ListIndex = 0
'    Combo2.ListIndex = 0
'    txtDocumento.ListIndex = 4
'    If ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado) = CAT_VAL_SENTIDO_INGRESO Then
'        chkCacheoSalida = vbChecked
'        Combo1.ListIndex = 0
'        Combo2.ListIndex = 0
'        cmdBuscar.SetFocus
'    Else
'        cmdListas.SetFocus
'    End If
'
'    cmdVerFicha.Enabled = False
'    txtdatospersona(0).SetFocus
'    cmdBuscar.Default = True
'
'End Sub
'
'Private Function Inicializar_Cmdcomandos() As Boolean
'On Error GoTo Salir
'
'
'  If AdminModulosService.obtenerListaModuloVirtual( _
'    AdminModulosService.obtenerWorkStationID(getWindowsComputerName)) Then
'
'    If Not LlenarVectorMV(AdminModulosService.ModuloQuery.DbRecordsetQRY) Then
'      GoTo Salir
'    End If
'
'    If Not HubicarCmdsMV() Then
'      GoTo Salir
'    End If
'
'    Inicializar_Cmdcomandos = True
'  Else
'    MsgBox "Esta estación de trabajo " & getWindowsComputerName & vbCrLf & _
'           "No esta configurada como puesto de ingreso Manual" & vbCrLf & _
'           "Para ello deberá hacerlo desde el Administrador de Modulos", vbExclamation
'  End If
'
'Salir:
'
'End Function
'
'
'Private Function LlenarVectorMV(ByRef Rst As ADODB.RecordSet) As Boolean
'Dim i As Integer
'On Error GoTo Salir
'
'    While (Not Rst.EOF())
'      ReDim Preserve ModulosVirtuales(i_virtual_total_items, Tam_Vector)
'      i = 0
'      For i = 0 To i_virtual_total_items - 1
'        ModulosVirtuales(i, Tam_Vector) = Rst.Fields(i)
'      Next
'      Rst.MoveNext
'      Tam_Vector = Tam_Vector + 1
'    Wend
'    LlenarVectorMV = True
'
'
'Salir:
'End Function
'
'Private Function HubicarCmdsMV() As Boolean
'Dim i As Integer
'Const fuente As Integer = 20
'On Error GoTo Salir
'
'
'    i = 0
'    Grid.FixedCols = 0
'    Grid.FixedRows = 0
'    Grid.Rows = 1
'    Grid.RowHeight(0) = Grid.Height - 60
'
'    Grid.Font.name = "Arial"
'    Grid.Font.Size = fuente
'    Grid.Cols = Tam_Vector
'    Grid.BackColor = &HC0C0C0
'    Grid.GridColor = vbGrayed
'    'Grid.AllowBigSelection = False
'    Grid.AllowUserResizing = flexResizeNone
'    Grid.Appearance = flex3D
'    Grid.BorderStyle = flexBorderSingle
'
'    Grid.Row = 0
'
'    For i = 0 To Tam_Vector - 1
'      Grid.Col = i
'      Grid.CellAlignment = 3
'      Grid.ColWidth(i) = (Grid.Width - 80) / Tam_Vector
'      Select Case ModulosVirtuales(i_virtual_sentido, i)
'        Case CAT_VAL_SENTIDO_INGRESO
'          'Grid.CellBackColor = vbGreen
'          Grid.Text = "-> " & ModulosVirtuales(i_virtual_ingreso_nombre, i)
'        Case CAT_VAL_SENTIDO_SALIDA
'          'Grid.CellBackColor = vbRed
'          Grid.Text = "<- " & ModulosVirtuales(i_virtual_salida_nombre, i)
'      End Select
'
'    Next
'
'  'Grid.ColSel = 0
'  'Grid.RowSel = 0
'  HubicarCmdsMV = True
'
'
'Salir:
'End Function
'
'Private Function ModuloID_Relacionado_Para_Evento() As Long
'On Error GoTo Salir
'     Select Case ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado)
'        Case CAT_VAL_SENTIDO_INGRESO
'           ModuloID_Relacionado_Para_Evento = ModulosVirtuales(i_virtual_ingreso_moduloID, i_Modulo_Virtual_Seleccionado)
'        Case CAT_VAL_SENTIDO_SALIDA
'           ModuloID_Relacionado_Para_Evento = ModulosVirtuales(i_virtual_salida_moduloID, i_Modulo_Virtual_Seleccionado)
'     End Select
'Salir:
'End Function
'
'Private Function ModuloID_Relacionado_Para_Evento_ADDRESS() As Long
'On Error GoTo Salir
'     Select Case ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado)
'        Case CAT_VAL_SENTIDO_INGRESO
'           ModuloID_Relacionado_Para_Evento_ADDRESS = ModulosVirtuales(i_virtual_ingreso_adrs, i_Modulo_Virtual_Seleccionado)
'        Case CAT_VAL_SENTIDO_SALIDA
'           ModuloID_Relacionado_Para_Evento_ADDRESS = ModulosVirtuales(i_virtual_salida_adrs, i_Modulo_Virtual_Seleccionado)
'     End Select
'Salir:
'End Function
'
'Private Function ModuloID_Relacionado_Para_Evento_OrdenEncuesta() As Long
'On Error GoTo Salir
'     Select Case ModulosVirtuales(i_virtual_sentido, i_Modulo_Virtual_Seleccionado)
'        Case CAT_VAL_SENTIDO_INGRESO
'           ModuloID_Relacionado_Para_Evento_OrdenEncuesta = ModulosVirtuales(i_virtual_ingreso_ordenencuesta, i_Modulo_Virtual_Seleccionado)
'        Case CAT_VAL_SENTIDO_SALIDA
'           ModuloID_Relacionado_Para_Evento_OrdenEncuesta = ModulosVirtuales(i_virtual_salida_ordenencuesta, i_Modulo_Virtual_Seleccionado)
'     End Select
'Salir:
'End Function
'
'
'Private Sub Seleccion_Modulo_Virtual(ByVal indice_ As Integer)
''FALTA PROBAR
'On Error GoTo Salir
'Dim i As Integer
'
'LimpiarCampos
'
'i_Modulo_Virtual_Seleccionado = indice_
''aca cargo cual es el ModuloID seleccionado
'db_ModuloVirtualID = ModulosVirtuales(i_virtual_moduloID, i_Modulo_Virtual_Seleccionado)
'
'For i = 0 To Tam_Vector - 1
'  Grid.Col = i
'  If i = i_Modulo_Virtual_Seleccionado Then
'    ConecatarGeo db_ModuloVirtualID
'    Select Case ModulosVirtuales(i_virtual_sentido, i)
'      Case CAT_VAL_SENTIDO_INGRESO
'        cmdListas.Caption = "Preautorizados..."
'
'        Grid.CellBackColor = vbGreen
'        cmdVisita(0).Caption = "Ingreso  " & ModulosVirtuales(i_virtual_ingreso_nombre, i_Modulo_Virtual_Seleccionado)
'
'        If ModulosVirtuales(i_virtual_tipo_identificacion, i) = CAT_VAL_IDENTIFICACION_CODIGO_BARRA Then
'            cmdVisita(1).Visible = True
'            cmdVisita(1).Caption = "SIN TICKET " & ModulosVirtuales(i_virtual_ingreso_nombre, i_Modulo_Virtual_Seleccionado)
'        Else
'            cmdVisita(1).Visible = False
'        End If
'
'        cmdverLote.Enabled = True
'        cmdFechaFin.Enabled = True
'        cmdFechaInicio.Enabled = True
'
'        cmdPreautorizadas.Enabled = True
'
'        cmdBuscar.Visible = True
'        txtdatospersona(3).Visible = True
'        lblEntidad(2).Visible = True
'
'
'            txtLote.Locked = False
'            'txtDatosPermiso(2).Locked = False
'            txtdatospersona(0).Locked = False
'            txtdatospersona(1).Locked = False
'            txtdatospersona(2).Locked = False
'            txtdatospersona(3).Locked = False
'            txtdatospersona(4).Locked = False
'            TxtPatente.Locked = False
'            txtFechaFin.Locked = False
'            txtFechaInicio.Locked = False
'
'      Case CAT_VAL_SENTIDO_SALIDA
'
'        cmdListas.Caption = "Ticket Ingresados..."
'
'        Grid.CellBackColor = vbRed
'
'        cmdVisita(1).Visible = False
'
'        cmdVisita(0).Caption = "Salida  " & ModulosVirtuales(i_virtual_salida_nombre, i_Modulo_Virtual_Seleccionado)
'        cmdverLote.Enabled = False
'        cmdFechaFin.Enabled = False
'        cmdFechaInicio.Enabled = False
'
'        cmdPreautorizadas.Enabled = False
'        cmdBuscar.Visible = False
'        txtdatospersona(3).Visible = False
'        lblEntidad(2).Visible = False
'        txtDatosPermiso(2).BackColor = vbWhite '&HFFF0C0
'        txtDatosPermiso(2).Text = ""
'
'
'            txtLote.Locked = True
'            txtDatosPermiso(2).Locked = True
'            txtdatospersona(0).Locked = True
'            txtdatospersona(1).Locked = True
'            txtdatospersona(2).Locked = True
'            txtdatospersona(3).Locked = True
'            txtdatospersona(4).Locked = True
'            TxtPatente.Locked = True
'            txtFechaFin.Locked = True
'            txtFechaInicio.Locked = True
'
'    End Select
'  Else
'    Grid.CellBackColor = &HC0C0C0
'  End If
'Next
'Salir:
'End Sub
'
'''FMV
'''Procedimiento Nuevo Conexion a geo antes hacia cualquier cosaa
'Sub ConecatarGeo(ByVal sModulo As Long)
'Dim camara_ As Integer
'Dim i As Integer
'
'On Error GoTo Error:
'
'    Set GeoService = New GeoSVR
'
'    If GeoService.Cargar_Propiedades_GEO(DbConnectionSYS, MdlDataObject.GrupoModulos) Then
'        camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloVirtualID)
'
''''FMV ESTO ESTA COMO EL ORTO'''''''''''''''''''''
''        For i = 0 To 1                         ''  ancho x altura
''            DoEvents
''            If Not GeoService.Conectar(Mi_LiveX(i), 300, 270, camara_) Then
''                Exit For
''            End If
''        Next
'''''''''''''''''''''''''''''''''''''''''''''''''''
'
'        ''FMV Desconectamos la camara para rehacer la conexion
'        Mi_LiveX(0).Disconnect
'        DoEvents
'        GeoService.Conectar Mi_LiveX(0), 300, 270, camara_
'        ''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'        'For i = 1 To 4
''        For i = 2 To 4
''            DoEvents
''            If Not GeoService.Conectar(Mi_LiveX(i), 230, 179, i) Then
''                Exit For
''            End If
''        Next
'
'    End If
'
'    'Set GeoService = Nothing
'
'Error:
'
'    Exit Sub
'
'End Sub

