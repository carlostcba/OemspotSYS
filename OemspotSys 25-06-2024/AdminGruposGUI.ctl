VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl AdminGruposGUI 
   ClientHeight    =   8655
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12270
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   8655
   ScaleWidth      =   12270
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   840
      Width           =   735
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   12
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
   Begin VB.CommandButton cmdIdentificaciones 
      Caption         =   "Identificaciones ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   7
      Top             =   3600
      Width           =   1455
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   9
      Top             =   8280
      Width           =   1455
   End
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   5
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   6
      Top             =   2160
      Width           =   1455
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   4
      Top             =   1440
      Width           =   1455
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Height          =   255
      Left            =   4200
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1080
      TabIndex        =   0
      Top             =   120
      Width           =   2895
   End
   Begin VB.CommandButton cmdPersonas 
      Caption         =   "Personas ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   8
      Top             =   3240
      Width           =   1455
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
      TabIndex        =   15
      Top             =   840
      Width           =   615
   End
   Begin VB.Label lblSeleccion 
      Caption         =   "Doble click para seleccionar un elemento"
      Height          =   255
      Left            =   5640
      TabIndex        =   11
      Top             =   120
      Width           =   3015
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11640
      Picture         =   "AdminGruposGUI.ctx":0000
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11280
      Picture         =   "AdminGruposGUI.ctx":0432
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10920
      Picture         =   "AdminGruposGUI.ctx":08AC
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   120
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12120
      Y1              =   8160
      Y2              =   8160
   End
End
Attribute VB_Name = "AdminGruposGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private AdminGruposService As AdminGruposSVR
Private SeleccionMode As Boolean
Private WindowIsExpanded As Boolean
Private NroPagina As Long
Private MaximoNroPagina As Long
Public Nombre_Grupo_Seleccionado As String

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

End Sub
Private Sub UserControl_Initialize()
    On Error Resume Next
    Set AdminGruposService = New AdminGruposSVR

    getNumeroPaginas

End Sub

Private Sub UserControl_Terminate()
    Set AdminGruposService = Nothing
End Sub

Sub init()
    On Error Resume Next
    actualizarLocalizacion
    cmdBuscar_Click

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
    
    CmdIdentificaciones.Enabled = False
End Sub

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property

Sub getNumeroPaginas()
    On Error Resume Next
    If AdminGruposService.getCantidadItems(txtBusqueda.Text) Then
        MaximoNroPagina = AdminGruposService.GruposQuery.DbRecordsetQRY.Fields(0).value
'        MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
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
        On Error Resume Next
        Combo1.ListIndex = 0
    End If
End Sub

Private Sub cmdAnterior_Click()
    On Error Resume Next
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    cmdBuscar_Click
End Sub

Private Sub cmdSiguiente_Click()
    On Error Resume Next
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    cmdBuscar_Click
End Sub

Private Sub Combo1_Click()
    On Error Resume Next
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
    cmdBuscar_Click
    If AdminGruposService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminGruposService.GruposQuery.DbRecordsetQRY, 1
    End If
End Sub

Private Sub cmdBuscar_Click()
 On Error GoTo Salir
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Grid.Clear
    If AdminGruposService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminGruposService.GruposQuery.DbRecordsetQRY, 1
    End If
    Combo1.ListIndex = 0
    Descargar_Cartel
Exit Sub
Salir:
    Descargar_Cartel
End Sub

Private Sub CmdAgregar_Click()
    On Error Resume Next
    Set GrupoMOD.ParentWindow = Me
    GrupoMOD.GrupoID = 0
    GrupoMOD.Show vbModal
End Sub

Private Sub cmdActualizar_Click()
    On Error Resume Next
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Set GrupoMOD.ParentWindow = Me
        GrupoMOD.GrupoID = CLng(Grid.Text)
        GrupoMOD.Show vbModal
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
            If Not AdminGruposService.GruposOrm.eliminarGrupo(CLng(Grid.Text)) Then
                MsgBox "No se puede eliminar Grupos", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
End Sub

Private Sub cmdIdentificaciones_Click()
    On Error Resume Next
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Set GrupoIdnMOD.ParentWindow = Me
        GrupoIdnMOD.GrupoID = CLng(Grid.Text)
        GrupoIdnMOD.Show vbModal
    Else
        MsgBox "Debe seleccionar un Grupo", vbCritical, "Atención"
    End If
End Sub

Private Sub cmdPersonas_Click()
    On Error Resume Next
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Set GrupoPerMOD.ParentWindow = Me
        GrupoPerMOD.GrupoID = CLng(Grid.Text)
        GrupoPerMOD.Show vbModal
    Else
        MsgBox "Debe seleccionar un Grupo", vbCritical, "Atención"
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
    On Error Resume Next
    Dim NombreImpresion As String
    NombreImpresion = "Grupos"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.Path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.Path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Grupos", 1
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
        exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Administración de Grupos", 1
    End If
End Sub

Private Sub CmdPlanilla_Click()
    On Error Resume Next
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Administración de Grupos", 1
    End If
End Sub

Public Sub UpdateWindow()
On Error Resume Next
    cmdBuscar_Click
    cmdBuscar.SetFocus
End Sub

Private Sub CmdCerrar_Click()
    On Error Resume Next
    Grid.Clear
    ParentWindow.Destroy
End Sub

Private Sub Grid_DblClick()
    On Error Resume Next
    If ParentWindow.ParentWindow Is Nothing Then
        cmdActualizar_Click
    Else
        If Grid.Text <> "" And Grid.Row >= 1 Then
            Grid.Col = 1
            Nombre_Grupo_Seleccionado = Grid.Text
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


