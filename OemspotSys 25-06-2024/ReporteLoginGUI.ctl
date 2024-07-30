VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl ReporteLoginGUI 
   ClientHeight    =   9135
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12285
   KeyPreview      =   -1  'True
   ScaleHeight     =   9135
   ScaleWidth      =   12285
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   1320
      Width           =   735
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   8760
      Width           =   255
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   12
      Top             =   8760
      Width           =   255
   End
   Begin VB.TextBox txtFechaDesde 
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   9
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton cmdFechaDesde 
      Caption         =   "..."
      Height          =   255
      Left            =   2520
      TabIndex        =   8
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtFechaHasta 
      Height          =   285
      Left            =   4440
      MaxLength       =   32
      TabIndex        =   7
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton cmdFechaHasta 
      Caption         =   "..."
      Height          =   255
      Left            =   5520
      TabIndex        =   6
      Top             =   600
      Width           =   255
   End
   Begin VB.Timer Timer1 
      Interval        =   30000
      Left            =   11160
      Top             =   6000
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   3
      Top             =   8760
      Width           =   1335
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Height          =   255
      Left            =   4440
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1440
      TabIndex        =   0
      Top             =   120
      Width           =   2775
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   120
      TabIndex        =   2
      Top             =   1080
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
   Begin VB.Label lblCantidadDeRegistros 
      Caption         =   "Cantidad de Registros"
      Height          =   255
      Left            =   7740
      TabIndex        =   16
      Top             =   8760
      Width           =   2355
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   10680
      TabIndex        =   15
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label lblFechaDesde 
      Caption         =   "Fecha Desde:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblFechaHasta 
      Caption         =   "Fecha Hasta:"
      Height          =   255
      Left            =   3240
      TabIndex        =   10
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblListado 
      Caption         =   "Listado de Login"
      Height          =   255
      Left            =   6000
      TabIndex        =   5
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   1095
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12000
      Y1              =   8640
      Y2              =   8640
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "ReporteLoginGUI.ctx":0000
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "ReporteLoginGUI.ctx":043E
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "ReporteLoginGUI.ctx":08B8
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
End
Attribute VB_Name = "ReporteLoginGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Dim AdminLoginService As AdminLoginSRV
Private NroPagina As Long
Private MaximoNroPagina As Long

Public TextoBusqueda As String
Dim db_Desde As Date
Dim db_Hasta As Date

Property Let Desde(value As Long)
    
    Let db_Desde = value
    txtFechaDesde = db_Desde
    
End Property

Property Let Hasta(value As Long)
    Let db_Hasta = value
    txtFechaHasta = db_Hasta
End Property

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
    Set AdminLoginService = New AdminLoginSRV
    'tipo_accion = "cargando_formulario"
    getNumeroPaginas

End Sub

Private Sub UserControl_Terminate()
    Set AdminLoginService = Nothing
    CmdCerrar_Click
End Sub

Sub init()

    Timer1.Enabled = False
    txtFechaDesde = Date
    txtFechaHasta = Date
    

    lblListado.Caption = "Listado de Longin"
    cmdBuscar_Click

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
Sub getNumeroPaginas()

        If AdminLoginService.getCantidadLogin(txtBusqueda.Text, "", "") Then
            MaximoNroPagina = AdminLoginService.LoginQuery.DbRecordsetQRY.Fields(0).value
            'afa 07/2009
            
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
    
       

'*** modificado 24/6/09 copiado de adminpersonas
Private Sub cmdAnterior_Click()
Dim V As String
On Error GoTo Salir


    
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    cmdBuscar_Click
    
   V = txtBusqueda.Text
    
    If AdminLoginService.getListaLogin(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
       fillGrid Grid, AdminLoginService.LoginQuery.DbRecordsetQRY, 0
    End If
    
    
Exit Sub
Salir:
MsgBox "ReporteLoginGUI.cmdAnterior_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdSiguiente_Click()
Dim V As String
On Error GoTo Salir
    
    V = txtBusqueda.Text
    
    
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    
    
    If AdminLoginService.getListaLogin(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
       fillGrid Grid, AdminLoginService.LoginQuery.DbRecordsetQRY, 1
    End If
    
    
    cmdBuscar_Click
Salir:
End Sub

Private Sub Combo1_Click()
Dim V As String
On Error GoTo Salir
 
'******* aca tengo que diferenciar si estoy cambiando de pagina o cargando la pantalla por primera vez ********
'
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
'    cmdBuscar_Click
    
    
    If AdminLoginService.getListaLogin(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
       fillGrid Grid, AdminLoginService.LoginQuery.DbRecordsetQRY, 0
    
       NroPagina = CInt(Combo1.List(Combo1.ListIndex))
    End If
    
    
    
    
Salir:
End Sub

Function validarDatos() As Boolean
    validarDatos = True
    If txtFechaDesde.Text <> "" Then
        If Not EsFechaValida(txtFechaDesde.Text) Then
            MsgBox "Fecha Desde Errónea", vbCritical, "Atención"
            txtFechaDesde.SetFocus
            validarDatos = False
            Exit Function
        End If
    End If
    If txtFechaHasta.Text <> "" Then
        If Not EsFechaValida(txtFechaHasta.Text) Then
            MsgBox "Fecha Hasta Errónea", vbCritical, "Atención"
            txtFechaDesde.SetFocus
            validarDatos = False
            Exit Function
        End If
    End If
End Function


Private Sub cmdBuscar_Click()
Dim V As String
Dim aux As Long
On Error GoTo Salir

    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    
    V = txtBusqueda.Text

    Grid.Clear
    If validarDatos Then
        
        If AdminLoginService.getCantidadLogin(V, txtFechaDesde.Text, txtFechaHasta.Text) Then
                lblCantidadDeRegistros.Caption = CLng(AdminLoginService.LoginQuery.DbRecordsetQRY.Fields(0).value) & " Registros."
                MaximoNroPagina = AdminLoginService.LoginQuery.DbRecordsetQRY.Fields(0).value
                
                'afa 07/2009
                
                'cargo la parte entera
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
           
           
           
           If AdminLoginService.getListaLogin(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
                fillGrid Grid, AdminLoginService.LoginQuery.DbRecordsetQRY, 1
                NroPagina = CInt(Combo1.List(Combo1.ListIndex))
           End If
        End If
        
        
        
    End If
Descargar_Cartel
Exit Sub
Salir:
    Descargar_Cartel
End Sub

Private Sub CmdRefrescar_Click()
    cmdBuscar_Click
End Sub

Private Sub Timer1_Timer()
    cmdBuscar_Click
End Sub

Private Sub CmdImprimir_Click()
    Dim NombreImpresion As String
    NombreImpresion = "Reporte de Tickets"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    'exportar (CommonDialog1.FileName)
    exportarGrillaAArchivo Grid, ArchivoTemporal, "Reporte de Logins", 1
    
    
    
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
End Sub

Private Sub CmdInternetExplorer_Click()
    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportar (CommonDialog1.FileName)
        'exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Reporte de Tickets", 1
    End If
End Sub

Private Sub CmdPlanilla_Click()
On Error GoTo Salir
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        exportar (CommonDialog1.FileName)
        'exportarGrillaAArchivo Grid, CommonDialog1.FileName, "Reporte de Tickets", 1
    End If
    Exit Sub
Salir:
    MsgBox "ReporteMovimientosGUI.Excel" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub


Public Sub UpdateWindow()
    cmdBuscar_Click
    cmdBuscar.SetFocus
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

'*************************************
' FUNCION AGREGADA 24/6/09 COPIADA DE ADMIN PERSONAS
'*************************************

Sub exportar(NombreArchivo As String)
Dim V As String
Dim i As Long
On Error GoTo Salir

  V = txtBusqueda.Text
  MainMOD.setStatusMessage "Procesando..."
 SplashScreenMOD.Show
    
        
      
    For i = 1 To MaximoNroPagina
    If AdminLoginService.getListaLogin(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
        If i = 1 Then
            exportarQueryAArchivo AdminLoginService.LoginQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Logins", 1, True
        Else
            exportarQueryAArchivo AdminLoginService.LoginQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Logins", 1, False
        End If
    End If
 
    SplashScreenMOD.cambiarTexto " Exportando " & CStr(Round(i * 100 / MaximoNroPagina)) & "% ..."
    Next
    
    
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
Exit Sub
Salir:
    MsgBox "ReporteLoginGUI.Exportar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub



