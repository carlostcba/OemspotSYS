VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl AdminCulturasGUI 
   ClientHeight    =   8655
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12150
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   8655
   ScaleWidth      =   12150
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   6
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton cmdCambiar 
      Caption         =   "Cambiar ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   5
      Top             =   1440
      Width           =   1335
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1080
      TabIndex        =   0
      Top             =   120
      Width           =   2895
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
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   3
      Top             =   8280
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   13150
      _Version        =   393216
      Rows            =   4096
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   11040
      Top             =   6960
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   10680
      TabIndex        =   9
      Top             =   840
      Width           =   615
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "AdminCulturasGUI.ctx":0000
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "AdminCulturasGUI.ctx":0432
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "AdminCulturasGUI.ctx":08AC
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12000
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "AdminCulturasGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim AdminCulturaService As AdminCulturaSVR
Private NroPagina As Long
Private MaximoNroPagina As Long

Sub getNumeroPaginas()
    If AdminCulturaService.getCantidadItems(txtBusqueda.Text) Then
        MaximoNroPagina = AdminCulturaService.CulturaQuery.DbRecordsetQRY.Fields(0).value
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
    
End Sub

Private Sub cmdBuscar_Click()
    loadGrids
End Sub

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

Private Sub UserControl_Initialize()
    Set AdminCulturaService = New AdminCulturaSVR

    getNumeroPaginas
End Sub

Private Sub UserControl_Terminate()
    Set AdminCulturaService = Nothing
End Sub

Sub init()
    actualizarLocalizacion
    loadGrids
End Sub

Sub loadGrids()
    Grid.Clear
    If AdminCulturaService.getTokensList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminCulturaService.CulturaQuery.DbRecordsetQRY, 1
    End If
End Sub

Private Sub cmdCambiar_Click()
    Grid.col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.col = 0
        Grid.Row = Grid.RowSel
        Dim TokenID As Long
        TokenID = CLng(Grid.Text)

        Set TokenMOD.ParentWindow = Me
        TokenMOD.TokenID = TokenID
        TokenMOD.Show vbModal
    End If
End Sub

Private Sub CmdImprimir_Click()
    Dim NombreImpresion As String
    NombreImpresion = "Culturas"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Culturas", 1
    
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
        exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Administración de Culturas", 1
    End If
End Sub

Private Sub CmdPlanilla_Click()
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Administración de Culturas", 1
    End If
End Sub

Private Sub Grid_DblClick()
    cmdCambiar_Click
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub

Sub actualizarLocalizacion()
    lblBusqueda.Caption = localizar(lblBusqueda.name)
    cmdBuscar.Caption = localizar(cmdBuscar.name)
    CmdImprimir.ToolTipText = localizar(CmdImprimir.name)
    CmdInternetExplorer.ToolTipText = localizar(CmdInternetExplorer.name)
    CmdPlanilla.ToolTipText = localizar(CmdPlanilla.name)
    cmdCerrar.Caption = localizar(cmdCerrar.name)
End Sub

