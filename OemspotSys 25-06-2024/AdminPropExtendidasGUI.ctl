VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl AdminPropExtendidasGUI 
   ClientHeight    =   8670
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12180
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   8670
   ScaleMode       =   0  'User
   ScaleWidth      =   12225
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   10
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton CmdBorrar 
      Caption         =   "Borrar ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   6
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   7
      Top             =   8280
      Width           =   1335
   End
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   5
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   4
      Top             =   1440
      Width           =   1335
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Default         =   -1  'True
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
   Begin VB.CommandButton CmdMasOpciones 
      Caption         =   "Más Opciones >>"
      Height          =   255
      Left            =   8880
      TabIndex        =   2
      Top             =   120
      Width           =   1575
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
      TabIndex        =   13
      Top             =   840
      Width           =   615
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120.443
      X2              =   12044.33
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "AdminPropExtendidasGUI.ctx":0000
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "AdminPropExtendidasGUI.ctx":043E
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "AdminPropExtendidasGUI.ctx":08B8
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Label lblSeleccion 
      Caption         =   "Doble click para seleccionar un elemento"
      Height          =   255
      Left            =   5640
      TabIndex        =   8
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "AdminPropExtendidasGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private AdminPropExtendidasService As AdminPropExtendidasSVR
Private SeleccionMode As Boolean
Private WindowIsExpanded As Boolean
Private NroPagina As Long
Private MaximoNroPagina As Long

Private Sub Grid_Click()
  'afa 07/2009 para ordenar la grilla
  ' Ordena al hacer clic en el encabezado de columna
 '*************************************************************
    Static Modo  As Boolean
     If (Grid.MouseRow = 0) Then
        ' Ordena en forma ascendente
        If Modo Then
        Grid.col = Grid.MouseCol
        Grid.Sort = 2
        Modo = False
        ' Ordena en forma descendente
        Else
        Grid.col = Grid.MouseCol
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
    Set AdminPropExtendidasService = New AdminPropExtendidasSVR
    
    getNumeroPaginas
    
End Sub

Private Sub UserControl_Terminate()
    Set AdminPropExtendidasService = Nothing
End Sub

Sub init()
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
End Sub

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property

Sub getNumeroPaginas()
    If AdminPropExtendidasService.getCantidadItems(txtBusqueda.Text) Then
        MaximoNroPagina = AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY.Fields(0).value
        
        'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
        
        'afa 07/2009
        'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
        'si la division da con resto debo agregar una pagina mas
        
        'cargo la parte entera
        Dim aux As Long
        If Not MAX_GRID_ROWS_SIZE_SYS = 0 Then
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
    End If
End Sub

Private Sub cmdAnterior_Click()
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    cmdBuscar_Click
End Sub

Private Sub cmdSiguiente_Click()
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    cmdBuscar_Click
End Sub

Private Sub Combo1_Click()
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
    cmdBuscar_Click
    If AdminPropExtendidasService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY, 1
    End If
End Sub

Private Sub cmdBuscar_Click()
    Grid.Clear
    If AdminPropExtendidasService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPropExtendidasService.PropExtendidasQuery.DbRecordsetQRY, 1
    End If
    Combo1.ListIndex = 0
End Sub

Private Sub CmdAgregar_Click()
    Set PropExtendidaMOD.ParentWindow = Me
    PropExtendidaMOD.PropExtendidaID = 0
    PropExtendidaMOD.Show vbModal
End Sub

Private Sub cmdActualizar_Click()
    Grid.col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.col = 0
        Grid.Row = Grid.RowSel
        Set PropExtendidaMOD.ParentWindow = Me
        PropExtendidaMOD.PropExtendidaID = CLng(Grid.Text)
        PropExtendidaMOD.Show vbModal
    End If
End Sub

Private Sub cmdBorrar_Click()
    Grid.col = 1
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
            Grid.col = 0
            Grid.Row = Grid.RowSel
            If Not AdminPropExtendidasService.PropExtendidasOrm.eliminarPropiedad(CLng(Grid.Text)) Then
                MsgBox "No se puede eliminar Propiedad Extendida", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
End Sub

Private Sub CmdMasOpciones_Click()
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
    NombreImpresion = "PropExtendidas"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Propiedades Extendidas", 1
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
    Shell NombreArchivo, vbNormalFocus
End Sub

Private Sub CmdInternetExplorer_Click()
    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Administración de Propiedads Extendidas", 1
    End If
End Sub

Private Sub CmdPlanilla_Click()
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Administración de PropExtendidas", 1
    End If
End Sub

Public Sub UpdateWindow()
    cmdBuscar_Click
    cmdBuscar.SetFocus
End Sub

Private Sub CmdCerrar_Click()
    Grid.Clear
    ParentWindow.Destroy
End Sub

Private Sub Grid_DblClick()
    If ParentWindow.ParentWindow Is Nothing Then
        cmdActualizar_Click
    Else
        If Grid.Text <> "" And Grid.Row >= 1 Then
            Grid.col = 0
            Grid.Row = Grid.RowSel
            ParentWindow.UpdateWindow CLng(Grid.Text)
        End If
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    'ElseIf KeyAscii = vbKeySpace Then
    '    Grid_DblClick
    End If
End Sub

Sub actualizarLocalizacion()
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

