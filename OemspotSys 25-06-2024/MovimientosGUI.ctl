VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl MovimientosGUI 
   ClientHeight    =   10950
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12390
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   10950
   ScaleWidth      =   12390
   Begin VB.Frame Frame1 
      Caption         =   "Reportes Generales"
      Height          =   855
      Left            =   360
      TabIndex        =   18
      Top             =   1080
      Width           =   10455
      Begin VB.ComboBox cbTipoMovimiento 
         Height          =   315
         ItemData        =   "MovimientosGUI.ctx":0000
         Left            =   6600
         List            =   "MovimientosGUI.ctx":0002
         Style           =   2  'Dropdown List
         TabIndex        =   23
         Top             =   240
         Width           =   2895
      End
      Begin VB.ComboBox cbModulo 
         Height          =   315
         ItemData        =   "MovimientosGUI.ctx":0004
         Left            =   3240
         List            =   "MovimientosGUI.ctx":0006
         Style           =   2  'Dropdown List
         TabIndex        =   21
         Top             =   240
         Width           =   2895
      End
      Begin VB.ComboBox cbGrupo 
         Height          =   315
         ItemData        =   "MovimientosGUI.ctx":0008
         Left            =   -120
         List            =   "MovimientosGUI.ctx":000A
         Style           =   2  'Dropdown List
         TabIndex        =   19
         Top             =   240
         Width           =   2895
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         Caption         =   "Tipo de Movimiento:"
         Height          =   255
         Left            =   6840
         TabIndex        =   24
         Top             =   480
         Width           =   1575
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Modulo:"
         Height          =   255
         Left            =   3840
         TabIndex        =   22
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Caption         =   "Grupo:"
         Height          =   255
         Left            =   480
         TabIndex        =   20
         Top             =   480
         Width           =   735
      End
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "MovimientosGUI.ctx":000C
      Left            =   7800
      List            =   "MovimientosGUI.ctx":000E
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   240
      Width           =   2895
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11280
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   3600
      Width           =   735
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   10560
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   11
      Top             =   10560
      Width           =   255
   End
   Begin VB.TextBox txtFechaDesde 
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   8
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton cmdFechaDesde 
      Caption         =   "..."
      Height          =   255
      Left            =   2520
      TabIndex        =   7
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtFechaHasta 
      Height          =   285
      Left            =   4440
      MaxLength       =   32
      TabIndex        =   6
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton cmdFechaHasta 
      Caption         =   "..."
      Height          =   255
      Left            =   5520
      TabIndex        =   5
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1440
      TabIndex        =   0
      Top             =   120
      Width           =   2775
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Default         =   -1  'True
      Height          =   255
      Index           =   0
      Left            =   4440
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   3
      Top             =   9360
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Interval        =   30000
      Left            =   11160
      Top             =   6000
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   8295
      Left            =   120
      TabIndex        =   2
      Top             =   2040
      Width           =   10455
      _ExtentX        =   18441
      _ExtentY        =   14631
      _Version        =   393216
      Rows            =   1024
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   3
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   11160
      Top             =   6840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblCantidadDeRegistros 
      Caption         =   "Cantidad de Registros"
      Height          =   255
      Left            =   7800
      TabIndex        =   17
      Top             =   10560
      Visible         =   0   'False
      Width           =   2355
   End
   Begin VB.Label lblTipoMovimiento 
      Caption         =   "Tipo de Movimiento:"
      Height          =   255
      Left            =   6120
      TabIndex        =   15
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   10680
      TabIndex        =   14
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label lblFechaDesde 
      Caption         =   "Fecha Desde:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblFechaHasta 
      Caption         =   "Fecha Hasta:"
      Height          =   255
      Left            =   3240
      TabIndex        =   9
      Top             =   600
      Width           =   1095
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "MovimientosGUI.ctx":0010
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "MovimientosGUI.ctx":0442
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "MovimientosGUI.ctx":08BC
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12000
      Y1              =   10440
      Y2              =   10440
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "MovimientosGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim AdminModulosService As AdminModulosSVR
Dim AdminGruposService As AdminGruposSVR
Dim PlatformService As PlatformSVR
Private NroPagina As Long
Private MaximoNroPagina As Long
Private Repaginar As Boolean
Private db_GrupoID As Long
Private presentes As Boolean

Property Let GrupoID(data As Long)
  db_GrupoID = data
  generar_reporte_presentes_segunda_parte
End Property


Private Sub cmdBuscar_Click(Index As Integer)
  Dim V() As String
    Dim TipoMovimiento As Long
     
presentes = False
     
On Error GoTo Salir
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    
Select Case Index
  Case 0 'busqueda original
    If validarDatos Then
        TipoMovimiento = Combo2.ItemData(Combo2.ListIndex)
        Call Separar_en_Vector(txtBusqueda.Text, V)
        Grid.Clear
        
        If Repaginar Then
          Call getNumeroPaginas(V)
          'cuando obtiene el numero de pagina hace la busqueda por evento del combo de pagina, al llenarlo
        Else
            If AdminModulosService.getListaMovimientos(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, TipoMovimiento, txtFechaDesde.Text, txtFechaHasta.Text) Then
              fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
            End If
        End If
        Me.ParentWindow.Refresh
    Else
       MsgBox "Verifique las fechas...", vbCritical, "Error"
    End If
  Case 1 'presentes
    generar_reporte_presentes
  End Select
  
Salir:
    Descargar_Cartel
End Sub

Private Sub Combo2_Change()
  Repaginar = True
End Sub

Private Sub Combo2_Click()
Repaginar = True
End Sub

Private Sub Combo2_KeyPress(KeyAscii As Integer)
  Repaginar = True
End Sub

Private Sub Combo2_Scroll()
Repaginar = True
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


Private Sub txtBusqueda_Change()
  Repaginar = True
End Sub

Private Sub txtFechaDesde_Change()
  Repaginar = True
End Sub

Private Sub txtFechaHasta_Change()
  Repaginar = True
End Sub

Private Sub UserControl_Initialize()
    Set AdminModulosService = New AdminModulosSVR

    Set PlatformService = New PlatformSVR
    Set AdminGruposService = New AdminGruposSVR
    Set AdminModulosService = New AdminModulosSVR
    
    Dim i As Integer
    
    Frame1.Visible = False
    
    Repaginar = True
    txtFechaHasta.Text = Date
    txtFechaDesde.Text = Date
  '  txtPdesde.Text = Date
   ' txtPhasta.Text = Date
    
  '  chkfecha.value = 1
    
    
    'lleno combos de tipos de movimientos
    i = 0
    Combo2.List(i) = CStr("")
    Combo2.ItemData(i) = CStr("-1")
    cbTipoMovimiento.List(i) = "--- TODOS ---"
    cbTipoMovimiento.ItemData(i) = CStr("-1")
    
    i = i + 1
    
    If PlatformService.getValoresCategoria(CAT_TIPO_MOVIMIENTO) Then
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo2.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo2.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            cbTipoMovimiento.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            cbTipoMovimiento.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo2.ListIndex = 0
        cbTipoMovimiento.ListIndex = 0
    End If
    



    ' lleno combo de grupos
    
    i = 0
    cbGrupo.List(i) = "--- TODOS ---"
    cbGrupo.ItemData(i) = CStr("-1")
    i = i + 1
    If AdminGruposService.getList("", 0) Then
        Do While Not AdminGruposService.GruposQuery.DbRecordsetQRY.EOF
            cbGrupo.List(i) = CStr(AdminGruposService.GruposQuery.DbRecordsetQRY.Fields(1).value)
            cbGrupo.ItemData(i) = CStr(AdminGruposService.GruposQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            AdminGruposService.GruposQuery.DbRecordsetQRY.MoveNext
        Loop
        cbGrupo.ListIndex = 0
    End If
    
    
    
    'lleno combos de modulos

    i = 0
    cbModulo.List(i) = "--- TODOS ---"
    cbModulo.ItemData(i) = CStr("-1")
    i = i + 1
    If AdminModulosService.getList("", 0) Then
        Do While Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF
            cbModulo.List(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(1).value)
            cbModulo.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            AdminModulosService.ModuloQuery.DbRecordsetQRY.MoveNext
        Loop
        cbModulo.ListIndex = 0
    End If


 
End Sub

Private Sub UserControl_Terminate()
    Set AdminModulosService = Nothing
    Set AdminModulosService = Nothing
    'CmdCerrar_Click
End Sub

Sub init()
  
End Sub

Private Sub cmdFechaDesde_Click()
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaDesde
    DatePickerMOD.Show vbModal
End Sub

Private Sub cmdFechaHasta_Click()
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaHasta
    DatePickerMOD.Show vbModal
End Sub

Sub getNumeroPaginas(ByRef busqueda() As String)
 Dim TipoMovimiento As Long

  If validarDatos Then
    TipoMovimiento = Combo2.ItemData(Combo2.ListIndex)
    If AdminModulosService.getCantidadMovimientos(busqueda(), TipoMovimiento, txtFechaDesde.Text, txtFechaHasta.Text) Then
        MaximoNroPagina = AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value
        
        'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS + 1
        
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
 End If
End Sub

Private Sub cmdAnterior_Click()
    If NroPagina <= 1 Then Exit Sub
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    Repaginar = False
    If presentes Then
    '    cmdBuscar_Click (1)
    Else
        cmdBuscar_Click (0)
    End If
End Sub

Private Sub cmdSiguiente_Click()
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    Repaginar = False
    If presentes Then
      '  cmdBuscar_Click (1)
    Else
        cmdBuscar_Click (0)
    End If
End Sub

Private Sub Combo1_Click()
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
    Repaginar = False
    If presentes Then
      '  cmdBuscar_Click (1)
    Else
        cmdBuscar_Click (0)
    End If
End Sub

Function validarDatos() As Boolean
On Error GoTo Salir
    
    validarDatos = EsFechaValida(txtFechaDesde.Text) And EsFechaValida(txtFechaHasta.Text)
    
Exit Function
Salir:

End Function

Private Sub Grid_DblClick()
'On Error GoTo Salir
    Grid.col = 0
    Grid.row = Grid.RowSel
    If Grid.Text <> "" And Grid.row >= 1 Then
        Grid.col = 0
        Grid.row = Grid.RowSel
        MovimientoDetalleMOD.MovimientoID = Grid.Text
        'Set MovimientoDetalleMOD.ParentWindow = Me
        MovimientoDetalleMOD.Show vbModal
    End If
'Exit Sub
'Salir:
'    MsgBox "MovimientoDetalleMOD.Doble_Click" & vbCrLf & _
'           "Descripción: " & Err.Description & vbCrLf & _
'           "Número error: " & Err.Number, _
'           vbCritical, _
'           "Error en Ejecución"
End Sub

Sub exportar(NombreArchivo As String)
    Dim i As Integer
    Dim V() As String
    Dim TipoMovimiento As Long
    Dim num_pag As Long
    
    
    
If Not presentes Then
    If validarDatos Then
        TipoMovimiento = Combo2.ItemData(Combo2.ListIndex)
        Call Separar_en_Vector(txtBusqueda.Text, V)
        MainMOD.setStatusMessage "Procesando..."
        SplashScreenMOD.Show
        For i = 0 To MaximoNroPagina
    '        num_pag = (i - 1) * MAX_GRID_ROWS_SIZE_SYS
    'afa 07/2009  esta mal calculada las paginas a pasar a excel
            num_pag = i * MAX_GRID_ROWS_SIZE_SYS
            
            If num_pag < 0 Then
                num_pag = 0
            End If
            If AdminModulosService.getListaMovimientos(V, num_pag, TipoMovimiento, txtFechaDesde.Text, txtFechaHasta.Text) Then
                'If i = 1 Then
                If i = 0 Then
                    exportarQueryAArchivo AdminModulosService.ModuloQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Movimientos", 1, True
                Else
                    exportarQueryAArchivo AdminModulosService.ModuloQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Movimientos", 1, False
                End If
            End If
            SplashScreenMOD.cambiarTexto " Exportando " & getporcentaje(i, MaximoNroPagina) & "% ..."
        Next
        SplashScreenMOD.Hide
        MainMOD.setStatusMessage "Listo."
    Else
          MsgBox "Verifique las fechas...", vbCritical, "Error"
    End If
Else
    Call exportar_generar_reporte_presentes_totales(NombreArchivo, generar_filtro_presentes)
End If
   
   
End Sub

Private Sub CmdImprimir_Click()
On Error GoTo Salir
    Dim NombreImpresion As String
    NombreImpresion = "Reporte de Movimientos"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"
    
    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Personas", 1
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
    'exportar (ArchivoTemporal)

    Shell NombreArchivo, vbNormalFocus
Exit Sub
Salir:
    MsgBox "MovimientosGUI.Imprimir" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub
Private Sub CmdInternetExplorer_Click()
  
Dim Fin As Boolean

    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.fileName <> "" Then
        ExportarHTML (CommonDialog1.fileName)
        Fin = Mdlshell.StartDoc(CommonDialog1.fileName, (App.path))             ' Aqui lo presentamos por un "SHELL EXCECUTE" de Windows
    End If
End Sub

'Para exportar la información mostrada en el control de grilla a HTML a través de un botón "CmdInternetExplorer",
' vamos a realizar el codigo necesario para generar el contenido HTML basado en los datos de la grilla
' y guardarlo en un archivo.  "OK"

Public Sub ExportarHTML(ByVal fileName As String)
    On Error Resume Next

    Dim fileNum As Integer
    Dim i As Integer, j As Integer
    Dim htmlContent As String

    ' Abrir el archivo para escribir
    fileNum = FreeFile
    Open fileName For Output As fileNum

    ' Escribir el encabezado HTML
    Print #fileNum, "<html>"
    Print #fileNum, "<head>"
    Print #fileNum, "<title>Datos Exportados</title>"
    Print #fileNum, "</head>"
    Print #fileNum, "<body>"

    ' Escribir la tabla HTML con los datos de la grilla
    Print #fileNum, "<table border='1'>"
    Print #fileNum, "<tr>"
    For i = 0 To Grid.Cols - 1
        Print #fileNum, "<th>" & Grid.TextMatrix(0, i) & "</th>"
    Next i
    Print #fileNum, "</tr>"
    For i = 1 To Grid.Rows - 1
        If Grid.TextMatrix(i, 0) <> "" Then
            Print #fileNum, "<tr>"
            For j = 0 To Grid.Cols - 1
                Print #fileNum, "<td>" & Grid.TextMatrix(i, j) & "</td>"
            Next j
            Print #fileNum, "</tr>"
        End If
    Next i
    Print #fileNum, "</table>"

    ' Escribir el cierre del documento HTML
    Print #fileNum, "</body>"
    Print #fileNum, "</html>"

    ' Cerrar el archivo
    Close fileNum
   
End Sub

Private Sub CmdPlanilla_Click()
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.fileName <> "" Then
        exportar (CommonDialog1.fileName)
    End If
End Sub

Public Sub UpdateWindow()
    Repaginar = True
    cmdBuscar_Click (0)
    cmdBuscar(0).SetFocus
End Sub

Private Sub CmdCerrar_Click()
    Grid.Clear
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.Destroy
    End If
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Private Sub generar_reporte_presentes()
'On Error GoTo Salir
'  Unload AdminGruposMOD
'  Set AdminGruposMOD = Nothing
'  AdminGruposMOD.ReadOnly = True
'  AdminGruposMOD.Seleccion = True
'  Set AdminGruposMOD.ParentWindow = Me
'  AdminGruposMOD.Show
'Salir:


Dim Res As ADODB.RecordSet
presentes = True

On Error GoTo Salir
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    
   Grid.Clear
        
        
   Dim busqueda As String
   busqueda = generar_filtro_presentes()
        
   If Repaginar Then
      Call getNumeroPaginasPresentes(busqueda)
          'cuando obtiene el numero de pagina hace la busqueda por evento del combo de pagina, al llenarlo
   Else
    Set Res = AdminModulosService.ModuloQuery.MovimintoPresentes(busqueda, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS)
    If Not Res.EOF Then
       fillGrid Grid, Res, 1
    End If
    Me.ParentWindow.Refresh
  End If
  
Salir:
    Descargar_Cartel


End Sub

Private Sub generar_reporte_presentes_segunda_parte()
Dim PerSrv As AdminPersonasSVR
Dim Nombre_Archivo  As String
Dim Directorio As String
Dim nombre_grupo As String
Dim presentes() As String
Dim i_presentes As Long

On Error GoTo Salir

  '''''''''''''''''''''''''''''''''''''''''''''
  ' si no hago esto me hace una busqueda normal
  nombre_grupo = AdminGruposMOD.AdminGruposGUI1.Nombre_Grupo_Seleccionado
  Set AdminGruposMOD.ParentWindow = Nothing
  Set AdminGruposMOD = Nothing
  '''''''''''''''''''''''''''''''''''''''''''''
  If db_GrupoID > 0 Then
    Set PerSrv = New AdminPersonasSVR
    If PerSrv.PersonaQuery.getPersonasGrupoList(db_GrupoID) Then
      CommonDialog1.fileName = "Presentes"
      CommonDialog1.DefaultExt = "html"
      CommonDialog1.Filter = "*.html"
      CommonDialog1.ShowSave
      If CommonDialog1.fileName <> "" Then
        'ACA DEBO HACER EL ENCABEZADO DEL REPORTE.
        'field(0) es personaID
        'field(1) es Apellido y nombre
        Mostrar_Cartel "Generando Reporte de Presentes ..."
        ReDim presentes(1) ' inicializo el vector
        presentes(0) = "Grupo: " & nombre_grupo & "   " & Date + Time
        Nombre_Archivo = (CommonDialog1.fileName)
        While Not PerSrv.PersonaQuery.DbRecordsetQRY.EOF
          If AdminModulosService.ModuloQuery.UltimoMovimintoEsEntrada(PerSrv.PersonaQuery.DbRecordsetQRY.Fields(0)) Then
            i_presentes = UBound(presentes)
            ReDim Preserve presentes(i_presentes + 1)
            presentes(i_presentes) = PerSrv.PersonaQuery.DbRecordsetQRY.Fields(1)
            ' ESTE CHABON ESTA ADENTRO.
          End If
          PerSrv.PersonaQuery.DbRecordsetQRY.MoveNext
        Wend
        'aca hago el reporte y se deberia ver
        i_presentes = UBound(presentes)
        ReDim Preserve presentes(i_presentes + 1)
        presentes(i_presentes) = "TOTAL:   " & (i_presentes - 1)
        exportarArrayArchivo presentes, Nombre_Archivo, "Reporte de Presentes", 1, True
        SplashScreenMOD.Hide
        Call Mdlshell.StartDoc(Nombre_Archivo, Directorio)
        MainMOD.setStatusMessage "Listo."
        ReDim presentes(0)
      End If
      PerSrv.PersonaQuery.DbRecordsetQRY.Close
    End If ' si hay personas en el grupo
  End If ' si el grupo era mayor a cero
  
Salir:
Set PerSrv = Nothing
End Sub

Private Sub exportar_generar_reporte_presentes_totales(NombreArchivo As String, busqueda As String)
'Dim Nombre_Archivo  As String
Dim Directorio As String
Dim Res As ADODB.RecordSet

On Error GoTo Salir

    Set Res = AdminModulosService.ModuloQuery.MovimintoPresentes(busqueda, -1)
    If Not Res.EOF Then
        exportarQueryAArchivo Res, NombreArchivo, "Reporte de Presentes", 1, True
    End If
    Res.Close
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
    Exit Sub
Salir:
    Set Res = Nothing
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
End Sub

Sub getNumeroPaginasPresentes(busqueda As String)
 Dim Cantidad As Long

    Cantidad = AdminModulosService.ModuloQuery.MovimintoPresentesCantidad(busqueda)
    If Cantidad >= 0 Then
        MaximoNroPagina = Cantidad
        
        'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS + 1
        
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

Private Function generar_filtro_presentes() As String
Dim filtro As String
filtro = ""


'    If chkfecha.value = 1 Then
'        filtro = " ingreso between '" & Format(txtPdesde, "YYYYMMDD") & "' and '" & Format(txtPhasta, "YYYYMMDD") & "' and"

'    End If


    If cbModulo.ItemData(cbModulo.ListIndex) <> "-1" Then
        filtro = filtro & " md.moduloid = " & cbModulo.ItemData(cbModulo.ListIndex) & " and"
    End If

    If cbTipoMovimiento.ItemData(cbTipoMovimiento.ListIndex) <> "-1" Then
        filtro = filtro & " am.valorid = " & cbTipoMovimiento.ItemData(cbTipoMovimiento.ListIndex) & " and"
    End If


    If cbGrupo.ItemData(cbGrupo.ListIndex) <> "-1" Then
        filtro = filtro & " g.grupoid = " & cbGrupo.ItemData(cbGrupo.ListIndex) & " and"
    End If


    If Len(filtro) > 3 Then
    filtro = Mid(filtro, 1, Len(filtro) - 3)
    End If
    generar_filtro_presentes = filtro

End Function

