VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.UserControl AdminLotesGUI 
   ClientHeight    =   8640
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12360
   ScaleHeight     =   8640
   ScaleWidth      =   12360
   Begin VB.CheckBox ChkAmpliada 
      Caption         =   "Busqueda Ampliada"
      Height          =   255
      Left            =   7035
      TabIndex        =   17
      Top             =   120
      Width           =   1755
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1140
      TabIndex        =   0
      Top             =   105
      Width           =   4440
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Height          =   255
      Left            =   5700
      TabIndex        =   1
      Top             =   105
      Width           =   1215
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   10740
      TabIndex        =   11
      Top             =   1425
      Width           =   1455
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   10740
      TabIndex        =   4
      Top             =   2145
      Width           =   1455
   End
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   10740
      TabIndex        =   3
      Top             =   1755
      Width           =   1455
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10740
      MaskColor       =   &H00000000&
      TabIndex        =   7
      Top             =   8265
      Width           =   1455
   End
   Begin VB.CommandButton CmdIdentificaciones 
      Caption         =   "Identificaciones ..."
      Height          =   255
      Left            =   10740
      TabIndex        =   10
      Top             =   2865
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.CommandButton CmdGrupos 
      Caption         =   "Grupos ..."
      Height          =   255
      Left            =   10740
      TabIndex        =   9
      Top             =   3225
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.CommandButton CmdMasOpciones 
      Caption         =   "Más Opciones >>"
      Height          =   255
      Left            =   8940
      TabIndex        =   16
      Top             =   105
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.CommandButton CmdAutos 
      Caption         =   "Autos ..."
      Height          =   255
      Left            =   10740
      TabIndex        =   8
      Top             =   3585
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11460
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   825
      Width           =   735
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   180
      TabIndex        =   5
      Top             =   8265
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   540
      TabIndex        =   6
      Top             =   8265
      Width           =   255
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   165
      TabIndex        =   12
      Top             =   555
      Width           =   10380
      _ExtentX        =   18309
      _ExtentY        =   13150
      _Version        =   393216
      Rows            =   1024
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   11220
      Top             =   6825
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   180
      TabIndex        =   15
      Top             =   105
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   180
      X2              =   12180
      Y1              =   8145
      Y2              =   8145
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10980
      Picture         =   "AdminLotesGUI.ctx":0000
      ToolTipText     =   "Imprimir Datos"
      Top             =   105
      Width           =   285
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11340
      Picture         =   "AdminLotesGUI.ctx":043E
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   105
      Width           =   285
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11700
      Picture         =   "AdminLotesGUI.ctx":08B8
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   105
      Width           =   270
   End
   Begin VB.Label lblSeleccion 
      Caption         =   "Doble click para seleccionar un elemento"
      Height          =   255
      Left            =   5700
      TabIndex        =   14
      Top             =   8280
      Width           =   3015
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   10740
      TabIndex        =   13
      Top             =   825
      Width           =   615
   End
End
Attribute VB_Name = "AdminLotesGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private AdminLotesService As AdminLotesSVR
Private SeleccionMode As Boolean
Private WindowIsExpanded As Boolean
Private NroPagina As Long
Private MaximoNroPagina As Long
Public db_busqueda As String
Private Busqueda_Ampliada As Boolean

Property Let Buscar_Todo(ByRef Valor As Boolean)
    On Error Resume Next
    If Valor = True Then
       ChkAmpliada.value = vbChecked
    Else
       ChkAmpliada.value = vbUnchecked
    End If

End Property



Private Sub ChkAmpliada_Click()
   On Error Resume Next
   Busqueda_Ampliada = (ChkAmpliada.value = vbChecked)
End Sub

Private Sub Grid_Click()
  'afa 07/2009 para ordenar la grilla
  ' Ordena al hacer clic en el encabezado de columna
 '*************************************************************
    On Error Resume Next
    Static Modo  As Boolean
     If (Grid.MouseRow = 0) Then
        ' Ordena en forma ascendente
        If Modo Then
        Grid.Col = Grid.MouseCol
        Grid.Sort = 2
        Modo = False
        ' Ordena en forma descendente
        Else
        Grid.Col = Grid.MouseCol
        Grid.Sort = 1
        Modo = True
        End If
     End If
End Sub

Private Sub txtBusqueda_GotFocus()
On Error Resume Next
    txtBusqueda.SelStart = 0
    txtBusqueda.SelLength = Len(txtBusqueda)
    'txtBusqueda.SelText
End Sub

Private Sub UserControl_Initialize()
Dim V() As String
    On Error Resume Next
    
    Set AdminLotesService = New AdminLotesSVR
    
    'Call getNumeroPaginas(V, Busqueda_Ampliada)
    
End Sub

Private Sub UserControl_Terminate()
    Set AdminLotesService = Nothing
End Sub

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property

Sub init()
    On Error Resume Next
    actualizarLocalizacion ' esto se usa para el multilenguaje del software
    If db_busqueda <> "" Then
      txtBusqueda.Text = db_busqueda
    End If
    
    If ReadOnlyMode Then
        cmdAgregar.Visible = False
        cmdActualizar.Visible = False
        cmdBorrar.Visible = False
    Else
        cmdAgregar.Visible = True
        cmdActualizar.Visible = True
        cmdBorrar.Visible = True
    End If

    If SeleccionMode Then
        lblSeleccion.Visible = True
        CmdMasOpciones.Visible = True
        WindowIsExpanded = False
    Else
        lblSeleccion.Visible = False
        CmdMasOpciones.Visible = False
        WindowIsExpanded = True
    End If
    
    cmdBuscar_Click
    
End Sub

Function getNumeroPaginas(ByRef V() As String, ByRef busqueda As Boolean) As Boolean
On Error GoTo Salir
'************///averiguo cuantos items existen, para calcular cuantas paginas cargar////***************
    
    If AdminLotesService.getCantidadItems(V, busqueda) Then
'        MaximoNroPagina = (AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(0) / MAX_GRID_ROWS_SIZE_SYS) + 1
        
        MaximoNroPagina = AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(0)
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
'        llenarComboNumeros Combo1, (MaximoNroPagina - 1), False
        'getNumeroPaginas = True
    End If
Salir:
End Function

Private Sub cmdAnterior_Click()
Dim V() As String
On Error GoTo Salir

    Call Separar_en_Vector(txtBusqueda.Text, V)
    
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    If AdminLotesService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, Busqueda_Ampliada) Then
        fillGrid Grid, AdminLotesService.LoteQuery.DbRecordsetQRY, 1
    End If
Exit Sub
Salir:
MsgBox "AdminPersonasGUI.cmdAnterior_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdSiguiente_Click()
Dim V() As String
On Error GoTo Salir

    Call Separar_en_Vector(txtBusqueda.Text, V)
    
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    If AdminLotesService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, Busqueda_Ampliada) Then
        fillGrid Grid, AdminLotesService.LoteQuery.DbRecordsetQRY, 1
    End If
Exit Sub
Salir:
MsgBox "AdminPersonasGUI.cmdSiguiente_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub Combo1_Click()
Dim V() As String
On Error GoTo Salir

    Call Separar_en_Vector(txtBusqueda.Text, V)
    
   NroPagina = CInt(Combo1.List(Combo1.ListIndex))
   If AdminLotesService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, Busqueda_Ampliada) Then
        fillGrid Grid, AdminLotesService.LoteQuery.DbRecordsetQRY, 1
   End If
   
Exit Sub
Salir:
MsgBox "AdminPersonasGUI.Combo1_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdBuscar_Click()
Dim V() As String
On Error GoTo Salir
    
'**** mientras se realiza la busqueda se muestra el cartel de espera para que no parezca tildado ****
'**** el software. *****************************************************************************
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    
    Call Separar_en_Vector(txtBusqueda.Text, V) ' aca realizo la busqueda con lo ingresado
        
    Grid.Clear ' limpio la grilla
    
    If getNumeroPaginas(V, Busqueda_Ampliada) Then
    End If
        
   
    Descargar_Cartel '<---- se oculta el cartel de espera luego de finalizada la busqueda
    Exit Sub
    
Salir:
    Descargar_Cartel
    MsgBox "AdminLotesGUI.Buscar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Sub exportar(NombreArchivo As String)
 Dim V() As String
 Dim i As Integer
On Error GoTo Salir
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Call Separar_en_Vector(txtBusqueda.Text, V)

    For i = 1 To MaximoNroPagina
        If AdminLotesService.getList(V, (i + 1) * MAX_GRID_ROWS_SIZE_SYS, Busqueda_Ampliada) Then
            If i = 1 Then
                exportarQueryAArchivo AdminLotesService.LoteQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Lotes", 1, True
            Else
                exportarQueryAArchivo AdminLotesService.LoteQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Lotes", 1, False
            End If
        End If
        SplashScreenMOD.cambiarTexto " Exportando " & CStr(Round(i * 100 / MaximoNroPagina)) & "% ..."
    Next
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
Salir:
End Sub

Private Sub cmdAgregar_Click()
'    If AdminLotesService.tieneLicencias Then
        Set LoteMOD.ParentWindow = Me
        LoteMOD.LoteID = 0
        LoteMOD.Show vbModal
 '   Else
   '     MsgBox "No tiene Licencia para agregar más Lotes al Servidor VIDEOMAN. Por favor, haga click en la opción de menú Principal->Extender Sistema, para solicitar la extensión del Servidor", vbCritical, "Servidor VIDEOMAN"
  '  End If
End Sub

Private Sub cmdActualizar_Click()
    On Error Resume Next
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Set LoteMOD.ParentWindow = Me
        LoteMOD.LoteID = CLng(Grid.Text)
       LoteMOD.Show vbModal
     Else
        MsgBox "Debe seleccionar un Lote", vbCritical, "Atención"
    End If
End Sub

Private Sub cmdBorrar_Click()
    On Error Resume Next
    Grid.Col = 1
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
            Grid.Col = 0
            Grid.Row = Grid.RowSel
            If Not AdminLotesService.LoteOrm.eliminarLote(CLng(Grid.Text)) Then
                MsgBox "No se puede eliminar el Lote", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
       End If
    Else
        MsgBox "Debe seleccionar un Lote", vbCritical, "Atención"
    End If
End Sub

Private Sub CmdMasOpciones_Click()
    On Error Resume Next
    If WindowIsExpanded Then
        ParentWindow.expandWindow False
        WindowIsExpanded = False
        CmdMasOpciones.Caption = "Más Opciones >>"
    Else
        ParentWindow.expandWindow True
        WindowIsExpanded = True
        CmdMasOpciones.Caption = "Menos Opciones <<"
    End If
End Sub

Private Sub CmdImprimir_Click()
    Dim NombreImpresion As String
    On Error Resume Next
    NombreImpresion = "Lotes"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.Path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.Path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Lotes", 1
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
    Shell NombreArchivo, vbNormalFocus
End Sub

Private Sub CmdInternetExplorer_Click()
    On Error Resume Next
    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportar (CommonDialog1.FileName)
    End If
End Sub

Private Sub CmdPlanilla_Click()
    On Error Resume Next
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportar (CommonDialog1.FileName)
    End If
End Sub

Public Sub UpdateWindow(Optional ByVal criterio As String)
On Error Resume Next
    If criterio <> "" Then
        txtBusqueda = criterio
    End If
    cmdBuscar_Click
    cmdBuscar.SetFocus
End Sub

Private Sub CmdCerrar_Click()
    Grid.Clear
    ParentWindow.Destroy
    If fgPuesto = True Then
      PuestoControlManualMOD.Lectura_Doc_Cruda.SetFocus
    End If
End Sub

Private Sub Grid_DblClick()
    
    On Error Resume Next
    If ParentWindow.ParentWindow Is Nothing Then
        cmdActualizar_Click
    Else
        If Grid.Text <> "" And Grid.Row >= 1 Then
            Grid.Col = 0
            Grid.Row = Grid.RowSel
            ParentWindow.UpdateWindow CLng(Grid.Text)
        End If
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    On Error Resume Next
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    'ElseIf KeyAscii = vbKeySpace Then
    '    Grid_DblClick
    End If
End Sub

Sub actualizarLocalizacion()
    On Error Resume Next
    lblBusqueda.Caption = localizar(lblBusqueda.name)
    cmdBuscar.Caption = localizar(cmdBuscar.name)
    CmdMasOpciones.Caption = localizar(CmdMasOpciones.name)
    CmdImprimir.ToolTipText = localizar(CmdImprimir.name)
    CmdInternetExplorer.ToolTipText = localizar(CmdInternetExplorer.name)
    CmdPlanilla.ToolTipText = localizar(CmdPlanilla.name)
    cmdAgregar.Caption = localizar(cmdAgregar.name)
    cmdActualizar.Caption = localizar(cmdActualizar.name)
    cmdBorrar.Caption = localizar(cmdBorrar.name)
    cmdCerrar.Caption = localizar(cmdCerrar.name)
End Sub



