VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl AdminPersonasGUI 
   ClientHeight    =   8640
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12285
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   8640
   ScaleWidth      =   12285
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   16
      Top             =   8280
      Width           =   255
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   8280
      Width           =   255
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   840
      Width           =   735
   End
   Begin VB.CommandButton CmdAutos 
      Caption         =   "Autos ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   12
      Top             =   3600
      Width           =   1455
   End
   Begin VB.CommandButton CmdMasOpciones 
      Caption         =   "Más Opciones >>"
      Height          =   255
      Left            =   8880
      TabIndex        =   2
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton CmdGrupos 
      Caption         =   "Grupos ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   8
      Top             =   3240
      Width           =   1455
   End
   Begin VB.CommandButton CmdIdentificaciones 
      Caption         =   "Identificaciones ..."
      Height          =   255
      Left            =   10680
      TabIndex        =   7
      Top             =   2880
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
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   10455
      _ExtentX        =   18441
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
      TabIndex        =   14
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
      Picture         =   "AdminPersonasGUI.ctx":0000
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11280
      Picture         =   "AdminPersonasGUI.ctx":0432
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10920
      Picture         =   "AdminPersonasGUI.ctx":08AC
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12120
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   120
      Width           =   855
   End
End
Attribute VB_Name = "AdminPersonasGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private AdminPersonasService As AdminPersonasSVR
Public AdminIdentificacionesService As AdminIdentificacionesSVR
Private SeleccionMode As Boolean
Private WindowIsExpanded As Boolean
Private NroPagina As Long
Private MaximoNroPagina As Long
Public db_busqueda As String
Public db_PersonaID As Long
Public DbCommand As ADODB.Command
Public DbRecordset As ADODB.RecordSet




Private Sub Grid_Click()
  'afa 07/2009 para ordenar la grilla
  ' Ordena al hacer clic en el encabezado de columna
 '*************************************************************
 On Error Resume Next
 
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
    Set AdminPersonasService = New AdminPersonasSVR
    Set AdminIdentificacionesService = New AdminIdentificacionesSVR
    
    
    getNumeroPaginas

End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
    Set AdminIdentificacionesService = Nothing
End Sub

'''let db_personaID


Sub init()
    
 On Error Resume Next
    actualizarLocalizacion
    If db_busqueda <> "" Then
      txtBusqueda.Text = db_busqueda
    End If
    
    cmdBuscar_Click

    If ReadOnlyMode Then
        cmdAgregar.Visible = False
        cmdActualizar.Visible = False
        cmdBorrar.Visible = False
        
        CmdIdentificaciones.Visible = False
        CmdGrupos.Visible = False
        CmdAutos.Visible = False
    Else
        cmdAgregar.Visible = True
        cmdActualizar.Visible = True
        cmdBorrar.Visible = True
        
        CmdIdentificaciones.Visible = True
        CmdGrupos.Visible = True
        CmdAutos.Visible = True
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
Dim V() As String
On Error GoTo Salir

    Call Separar_en_Vector(txtBusqueda.Text, V)
    
    If AdminPersonasService.getCantidadItems(V) Then
        MaximoNroPagina = AdminPersonasService.PersonaQuery.DbRecordsetQRY.Fields(0).value
        
        
        
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
    End If
Salir:
End Sub

Private Sub cmdAnterior_Click()
Dim V() As String
On Error GoTo Salir

 On Error Resume Next
    Call Separar_en_Vector(txtBusqueda.Text, V)
    
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    If AdminPersonasService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
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
    If AdminPersonasService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
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
    If AdminPersonasService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
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
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Call Separar_en_Vector(txtBusqueda.Text, V)
    Grid.Clear
    'getNumeroPaginas
    
    If AdminPersonasService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
    End If
    Combo1.ListIndex = 0
    Descargar_Cartel
Exit Sub
Salir:
    Descargar_Cartel
    MsgBox "AdminPersonasGUI.Buscar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Sub exportar(NombreArchivo As String)
Dim V() As String
Dim i As Long
On Error GoTo Salir

 Call Separar_en_Vector(txtBusqueda.Text, V)
    MainMOD.setStatusMessage "Procesando..."
    SplashScreenMOD.Show
    For i = 1 To MaximoNroPagina
        If AdminPersonasService.getList(V, (i - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
            If i = 1 Then
                exportarQueryAArchivo AdminPersonasService.PersonaQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Personas", 1, True
            Else
                exportarQueryAArchivo AdminPersonasService.PersonaQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Personas", 1, False
            End If
        End If
        SplashScreenMOD.cambiarTexto " Exportando " & CStr(Round(i * 100 / MaximoNroPagina)) & "% ..."
    Next
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
Exit Sub
Salir:
    MsgBox "AdminPersonasGUI.Exportar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub CmdAgregar_Click()
On Error GoTo Salir
    'momentaneamente!!!!!
    'If AdminPersonasService.tieneLicencias Then
        Set PersonaMOD.ParentWindow = Me
        PersonaMOD.PersonaID = 0
        PersonaMOD.Show vbModal
    'Else
    '    MsgBox "No tiene Licencia para agregar más Personas al Servidor VIDEOMAN. Por favor, haga click en la opción de menú Principal->Extender Sistema, para solicitar la extensión del Servidor", vbCritical, "Servidor VIDEOMAN"
    'End If
Exit Sub
Salir:
    MsgBox "AdminPersonasGUI.Agregar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub cmdActualizar_Click()
 On Error GoTo Salir
    Grid.col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.col = 0
        Grid.Row = Grid.RowSel
        Set PersonaMOD.ParentWindow = Me
        PersonaMOD.PersonaID = CLng(Grid.Text)
        PersonaMOD.Show vbModal
    End If
Exit Sub
Salir:
    MsgBox "AdminIdentificacionesGUI.Actualizar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdBorrar_Click()
 Dim sql As String

 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
    
 On Error Resume Next
 
    Grid.col = 1
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
            Grid.col = 0
            Grid.Row = Grid.RowSel

''' BORRADO DE LA IDENTIFICACION
            If AdminIdentificacionesService.IdentificacionOrm.eliminarIdentificacionCascada(CLng(Grid.Text)) Then
''' BORRADO DE LA PERSONA AL GRUPO QUE PERTENECE
                If AdminPersonasService.PergruQuery.eliminarPersonadelGrupo(db_PersonaID) Then
''' BORRADO DEL AUTO QUE PERTENECIA A LA PERSONA
                    If AdminPersonasService.PerautQuery.eliminarAutodePersona(db_PersonaID) Then
''' BORRADO DE LA PERSONA, Y TODAS SUS PROPIEDADES Y ATRIBUTOS
                        If Not AdminPersonasService.PersonaOrm.eliminarPersona(CLng(Grid.Text)) Then
                            MsgBox "No se puede eliminar Persona", vbCritical, "Atención"
                            Exit Sub
                        Else
                            
                            If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
                            sql = "delete perpolreg where PersonaID = " & Val(Grid.Text)
                            DbCommand.CommandText = sql
                            Set DbRecordset = DbCommand.Execute
                            MsgBox "La persona y todos sus movimientos relacionados han sido Eliminados correctamente", vbOKOnly, "Eliminación Exitosa"
                        End If
                    End If
                UpdateWindow
                End If
            End If
        End If
    End If
End Sub

Private Sub cmdGrupos_Click()
    
 On Error Resume Next
    
    Grid.col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.col = 0
        Grid.Row = Grid.RowSel
        Set PersonaGrpMOD.ParentWindow = Me
        PersonaGrpMOD.PersonaID = CLng(Grid.Text)
        PersonaGrpMOD.Show vbModal
    Else
        MsgBox "Debe seleccionar una Persona", vbCritical, "Atención"
    End If
End Sub

Private Sub cmdIdentificaciones_Click()
    
    
 On Error Resume Next
    
    Grid.col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.col = 0
        Grid.Row = Grid.RowSel
        Set PersonaIdnMOD.ParentWindow = Me
        PersonaIdnMOD.PersonaID = CLng(Grid.Text)
        PersonaIdnMOD.Show vbModal
    Else
        MsgBox "Debe seleccionar una Persona", vbCritical, "Atención"
    End If
End Sub

Private Sub cmdAutos_Click()
 On Error Resume Next
    Grid.col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.col = 0
        Grid.Row = Grid.RowSel
        Set PersonaAutMOD.ParentWindow = Me
        PersonaAutMOD.PersonaID = CLng(Grid.Text)
        PersonaAutMOD.Show vbModal
    Else
        MsgBox "Debe seleccionar una Persona", vbCritical, "Atención"
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
On Error GoTo Salir
    Dim NombreImpresion As String
    NombreImpresion = "Personas"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.Path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.Path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Personas", 1
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
    Shell NombreArchivo, vbNormalFocus
Exit Sub
Salir:
    MsgBox "AdminPersonasGUI.Imprimir" & vbCrLf & _
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
    MsgBox "AdminPersonasGUI.Explorer" & vbCrLf & _
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
    MsgBox "AdminPersonasGUI.Excel" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Public Sub UpdateWindow()
Dim V() As String
Dim i As Long

On Error GoTo Salir

Call Separar_en_Vector(txtBusqueda.Text, V)
'    cmdBuscar_Click
    If AdminPersonasService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
        fillGrid Grid, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
    End If
    cmdBuscar.SetFocus
Exit Sub
Salir:
    MsgBox "AdminPersonasGUI.UpdateWindow" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub CmdCerrar_Click()
    Grid.Clear
    ParentWindow.Destroy
    'PuestoControlManualMOD.limpiarcampos
    If fgPuesto Then
      PuestoControlManualMOD.Lectura_Doc_Cruda.SetFocus
    End If
End Sub

Private Sub Grid_DblClick()
 On Error Resume Next
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


