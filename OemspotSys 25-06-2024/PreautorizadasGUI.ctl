VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.UserControl PreautorizadasGUI 
   ClientHeight    =   9495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   13230
   DefaultCancel   =   -1  'True
   ScaleHeight     =   9495
   ScaleWidth      =   13230
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   12360
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   330
      Left            =   270
      TabIndex        =   12
      Top             =   8490
      Width           =   300
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   330
      Left            =   705
      TabIndex        =   11
      Top             =   8490
      Width           =   300
   End
   Begin VB.CommandButton cmdIngreso 
      Caption         =   "INGRESO >>"
      Height          =   375
      Left            =   11625
      TabIndex        =   9
      Top             =   4305
      Visible         =   0   'False
      Width           =   1365
   End
   Begin VB.CommandButton cmdEliminar 
      Caption         =   "Eliminar"
      Height          =   330
      Left            =   11640
      TabIndex        =   8
      Top             =   3210
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdModificar 
      Caption         =   "Modificar"
      Height          =   330
      Left            =   11640
      TabIndex        =   7
      Top             =   2745
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Agregar"
      Height          =   330
      Left            =   11640
      TabIndex        =   6
      Top             =   2280
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   330
      Left            =   11535
      TabIndex        =   4
      Top             =   9105
      Width           =   1425
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Default         =   -1  'True
      Height          =   330
      Left            =   10065
      TabIndex        =   2
      Top             =   120
      Width           =   1365
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   315
      Left            =   2850
      TabIndex        =   1
      Top             =   120
      Width           =   6945
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   210
      TabIndex        =   5
      Top             =   945
      Width           =   11235
      _ExtentX        =   19817
      _ExtentY        =   13150
      _Version        =   393216
      AllowBigSelection=   0   'False
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   12135
      Top             =   6915
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   11895
      Picture         =   "PreautorizadasGUI.ctx":0000
      ToolTipText     =   "Imprimir Datos"
      Top             =   195
      Width           =   285
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   12255
      Picture         =   "PreautorizadasGUI.ctx":043E
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   195
      Width           =   285
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   12615
      Picture         =   "PreautorizadasGUI.ctx":08B8
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   195
      Width           =   270
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   11640
      TabIndex        =   14
      Top             =   960
      Width           =   615
   End
   Begin VB.Label lblContador 
      Height          =   270
      Left            =   8460
      TabIndex        =   10
      Top             =   8565
      Width           =   2655
   End
   Begin VB.Line Line3 
      X1              =   150
      X2              =   13095
      Y1              =   9000
      Y2              =   9000
   End
   Begin VB.Label lblSinIngresar 
      Caption         =   "VISITAS PENDIENTES A INGRESAR:"
      Height          =   270
      Left            =   1545
      TabIndex        =   3
      Top             =   690
      Width           =   2880
   End
   Begin VB.Line Line1 
      X1              =   135
      X2              =   13065
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label lblBuscar 
      Caption         =   "Ingrese Nº Lote , Entidad o Persona:"
      Height          =   270
      Left            =   120
      TabIndex        =   0
      Top             =   150
      Width           =   4170
   End
End
Attribute VB_Name = "PreautorizadasGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private SeleccionMode As Boolean
Private PreService As PreSVR
Private NroPagina As Long
Private MaximoNroPagina As Long
Private db_TextoBusqueda As String
Private db_PreautorizadoID As Long



Private Sub txtBusqueda_GotFocus()
On Error Resume Next
    txtBusqueda.SelStart = 0
    txtBusqueda.SelLength = Len(txtBusqueda)

End Sub

Private Sub UserControl_Initialize()
    
    
    Set PreService = New PreSVR
    'getNumeroPaginas
  
End Sub

Private Sub UserControl_Terminate()
    Set PreService = Nothing

End Sub

Property Let TextoBusqueda(value As String)
    Let db_TextoBusqueda = value
    txtBusqueda = value
End Property



Property Let PreautorizadoID(value As Long)
    Let db_PreautorizadoID = value
    
End Property

Sub init()
    'actualizarLocalizacion
    cmdBuscar_Click
    'If db_perfilID <> 0 Then
    '    onUpdate = True
    '    loadData
    'Else
    '    onUpdate = False
    'End If

    'enableEdition
End Sub

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property

Private Sub cmdBuscar_Click()
Dim V() As String
On Error GoTo Salir
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Call Separar_en_Vector(txtBusqueda.Text, V)
    Grid.Clear
    
    Call PreService.PreQuery.EliminarPreautorizacionesVencidas(Date)
    Call getNumeroPaginas(V)
               
    If PreService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        'lblContador.Caption = CLng(PreService.PreQuery.DbRecordsetQRY.Fields(0).value) & " Registros."
        fillGrid Grid, PreService.PreQuery.DbRecordsetQRY, 2
    End If
    
    Descargar_Cartel
    
Exit Sub
Salir:
    Descargar_Cartel
    MsgBox "PreautorizadasGUI.Buscar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub



Sub loadData()
End Sub

Sub loadGrids()


End Sub

Function validarDatos() As Boolean
'    If txtNombre.Text = "" Then
'        MsgBox "Ingrese Nombre", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
'    If validarDatos Then
'        If Not onUpdate Then
'            db_perfilID = AdminPerfilesService.PerfilOrm.crearPerfil(txtNombre.Text, txtDescripcion.Text)
'            If db_perfilID <> -1 Then
'                enableEdition
'                onUpdate = True
'            Else
'                MsgBox "No se puede crear Perfil", vbCritical, "Atención"
'                Exit Sub
'            End If
'        Else
'            If AdminPerfilesService.PerfilOrm.actualizarPerfil(db_perfilID, txtNombre.Text, txtDescripcion.Text) Then
'                ParentWindow.Destroy
'            Else
'                MsgBox "No se puede actualizar Perfil", vbCritical, "Atención"
'                Exit Sub
'            End If
'        End If
'    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    'ElseIf KeyAscii = vbKeySpace Then
        'cmdActualizar_Click
    End If
End Sub

'Private Sub CmdAgregar_Click()
'    Set PreautorizadasPerMOD.ParentWindow = Me
'    'PreautorizadasPerMOD.PerfilID = db_perfilID'
'    'PreautorizadasPerMOD.ItemID = 0
'    PreautorizadasPerMOD.Show vbModal
'End Sub

Private Sub cmdActualizar_Click()
If Not ParentWindow.ParentWindow Is Nothing Then
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Set PuestoControlManualMOD.ParentWindow = Me
        'PuestoControlManualMOD.db_PreautorizadoID = CLng(Grid.Text)
        PreautorizadasMOD.Show vbModal
    End If
 End If
End Sub

Private Sub Grid_DblClick()
    If ParentWindow.ParentWindow Is Nothing Then
        cmdActualizar_Click
    Else
        If Grid.Text <> "" And Grid.Row >= 1 Then
            Grid.Col = 0
            Grid.Row = Grid.RowSel
            ParentWindow.PreautorizadoID = CLng(Grid.Text)
            Grid.Col = 1
            Grid.Row = Grid.RowSel
            ParentWindow.LoteID = CLng(Grid.Text)
            ParentWindow.Destroy
        End If
    End If
End Sub

Private Sub cmdBorrar_Click()
'    If Grid.Text <> "" And Grid.Row >= 1 Then
'        Grid.Col = 1
'        Grid.Row = Grid.RowSel
'        If MsgBox("Está seguro de quitar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
'            Grid.Col = 0
'            Grid.Row = Grid.RowSel
'            If Not AdminPerfilesService.PerfilOrm.eliminarPrfVal(db_perfilID, CLng(Grid.Text)) Then
'                MsgBox "No se puede quitar Valor de Perfil", vbCritical, "Atención"
'                Exit Sub
'            End If
'            loadGrids
'        End If
'    End If
End Sub

Sub getNumeroPaginas(ByRef txtBusqueda() As String)
    If PreService.getCantidadItems(txtBusqueda()) Then
        MaximoNroPagina = PreService.PreQuery.DbRecordsetQRY.Fields(0).value
        
        
        'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
        'afa 07/2009
        'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
        'si la division da con resto debo agregar una pagina mas
        
        'cargo la parte entera
        Dim aux As Long
        aux = MaximoNroPagina \ MAX_GRID_ROWS_SIZE_SYS
        If MaximoNroPagina Mod MAX_GRID_ROWS_SIZE_SYS <> 0 Then
            MaximoNroPagina = aux + 1
        Else
            MaximoNroPagina = aux
        End If
        
        '''''''''''''''''''''''''''''
        
        llenarComboNumeros Combo1, MaximoNroPagina, False
    Else
        MaximoNroPagina = 1
        llenarComboNumeros Combo1, MaximoNroPagina, False
    End If
End Sub

Private Sub cmdAnterior_Click()
Dim V() As String
On Error GoTo Salir

    If Separar_en_Vector(txtBusqueda.Text, V) Then
        NroPagina = NroPagina - 1
        If NroPagina < 1 Then NroPagina = 1
        Combo1.ListIndex = NroPagina - 1
        If PreService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
            fillGrid Grid, PreService.PreQuery.DbRecordsetQRY, 0
        End If
    
    End If
Exit Sub
Salir:
MsgBox "PreautorizadasGUI.cmdAnterior_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdSiguiente_Click()
'Dim V() As String
On Error GoTo Salir
'
'If Separar_en_Vector(txtBusqueda.Text, V) Then
'    If MaximoNroPagina = 0 Then Exit Sub
'    NroPagina = NroPagina + 1
'    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
'    Combo1.ListIndex = NroPagina + 1
'    If PreService.getList(V, (NroPagina + 1) * MAX_GRID_ROWS_SIZE_SYS) Then
'        fillGrid Grid, PreService.PreQuery.DbRecordsetQRY, 0
'    End If
'
'End If
Combo1.Text = Combo1.Text + 1
Exit Sub
Salir:
MsgBox "PreautorizadasGUI.cmdSiguiente_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub Combo1_Click()
Dim V() As String
On Error GoTo Salir

If Separar_en_Vector(txtBusqueda.Text, V) Then
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
    If PreService.getList(V, ((NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) - 1) Then
        fillGrid Grid, PreService.PreQuery.DbRecordsetQRY, 2
    End If
End If
Exit Sub
Salir:
MsgBox "PreautorizadasGUI.Combo1_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Sub exportar(NombreArchivo As String)
Dim V() As String
Dim i As Long
On Error GoTo Salir

If Separar_en_Vector(txtBusqueda.Text, V) Then
    MainMOD.setStatusMessage "Procesando..."
    SplashScreenMOD.Show
    For i = 1 To MaximoNroPagina
        If PreService.getList(V, (i - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
            If i = 1 Then
                exportarQueryAArchivo PreService.PreQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Visitass", 1, True
            Else
                exportarQueryAArchivo PreService.PreQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Visitas", 1, False
            End If
        End If
        SplashScreenMOD.cambiarTexto " Exportando " & CStr(Round(i * 100 / MaximoNroPagina)) & "% ..."
    Next
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
    
End If
Exit Sub
Salir:
    MsgBox "PreautorizadasGUI.Exportar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub CmdImprimir_Click()
On Error GoTo Salir
    Dim NombreImpresion As String
    NombreImpresion = "Visitas"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.Path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.Path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Lista de Visitas", 1
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
    Shell NombreArchivo, vbNormalFocus
Exit Sub
Salir:
    MsgBox "PreautorizadasGUI.Imprimir" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub CmdInternetExplorer_Click()
On Error GoTo Salir
    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportar (CommonDialog1.FileName)
    End If
Exit Sub
Salir:
    MsgBox "PreautorizadasGUI.Explorer" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub CmdPlanilla_Click()
On Error GoTo Salir
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportar (CommonDialog1.FileName)
    End If
    Exit Sub
Salir:
    MsgBox "Preautorizadas.Excel" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub

