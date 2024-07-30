VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form ReporteMovimientosMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Movimiento y Reporte de Visitas"
   ClientHeight    =   9405
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   12150
   ControlBox      =   0   'False
   Icon            =   "ReporteMovimientosMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9405
   ScaleWidth      =   12150
   Begin VB.CommandButton btn_Depurar 
      Caption         =   "Depuracion"
      Height          =   255
      Left            =   10680
      TabIndex        =   20
      Top             =   3000
      Width           =   1455
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
      Height          =   255
      Left            =   4440
      TabIndex        =   12
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10680
      TabIndex        =   11
      Top             =   8760
      Width           =   1335
   End
   Begin VB.CommandButton cmdHistoricos 
      Caption         =   "Ver Históricos"
      Height          =   255
      Left            =   10680
      TabIndex        =   10
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton cmdPendientes 
      Caption         =   "Ver Pendientes"
      Height          =   255
      Left            =   10680
      TabIndex        =   9
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Interval        =   30000
      Left            =   11160
      Top             =   6000
   End
   Begin VB.CommandButton CmdRefrescar 
      Caption         =   "Refrescar"
      Height          =   255
      Left            =   10680
      TabIndex        =   8
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton cmdFechaHasta 
      Caption         =   "..."
      Height          =   255
      Left            =   5520
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
   Begin VB.CommandButton cmdFechaDesde 
      Caption         =   "..."
      Height          =   255
      Left            =   2520
      TabIndex        =   5
      Top             =   600
      Width           =   255
   End
   Begin VB.TextBox txtFechaDesde 
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   4
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton CmdSiguiente 
      Caption         =   ">"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   8760
      Width           =   255
   End
   Begin VB.CommandButton cmdAnterior 
      Caption         =   "<"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   8760
      Width           =   255
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   11400
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   1320
      Width           =   735
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   7455
      Left            =   120
      TabIndex        =   13
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
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "ReporteMovimientosMOD.frx":15162
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "ReporteMovimientosMOD.frx":15594
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "ReporteMovimientosMOD.frx":15A0E
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   12000
      Y1              =   8640
      Y2              =   8640
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   19
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lblListado 
      Caption         =   "Nombre, Apellido, Lote y Patente de Visitas"
      Height          =   255
      Left            =   6000
      TabIndex        =   18
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label lblFechaHasta 
      Caption         =   "Fecha Hasta:"
      Height          =   255
      Left            =   3240
      TabIndex        =   17
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblFechaDesde 
      Caption         =   "Fecha Desde:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   10680
      TabIndex        =   15
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label lblCantidadDeRegistros 
      Caption         =   "Cantidad de Registros"
      Height          =   255
      Left            =   7740
      TabIndex        =   14
      Top             =   8760
      Width           =   2355
   End
End
Attribute VB_Name = "ReporteMovimientosMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private db_TicketID As Currency
Private db_Desde As Date
Private db_Hasta As Date

''''''''''''''''''''''''''
Dim AdminModulosService As New AdminModulosSVR
Private NroPagina As Long
Private MaximoNroPagina As Long

Public TextoBusqueda As String
Dim TipoListado As String
Dim TipodeLista As String
Dim de_historicos  As Boolean
Dim db_Listado As String

Property Let Desde(dato As Date)
    db_Desde = dato
End Property

Property Let Hasta(dato As Date)
    db_Hasta = dato
End Property

Private Sub btn_Depurar_Click()
    Dim DbCommand As ADODB.Command
    Dim DbRecordset As ADODB.RecordSet
    
    'Aqui vamos a Depurar los registros que ingresaron al predio y que si bien pasaron la validacion
    'de todos los datos requeridos Nombre,Apellido,Documento,lote etc no se almacenaron correctamente
    'en la base de datos y por ende figuran en la tabla de Tickets Pendientes (tck) , pero por ejemplo no
    'figuran en la tabla que relaciona el "TicketID" con "PersonaID" en la tabla (tckper). Por ende
    'cuando se los lista aparecen espacios en blanco como el nombre y esta SUB elimina esos registros
    'Otro problema se genera si no ingreso el documento, en ese caso , debemos ir a personas y completarle
    ' algun valor nuevamente. Si lo que falta es el Lote, cuando se cargan los datos al seleccionar la persona
    'en el Puesto de control , al cargar la propiedad "LoteID" le fijamos el valor del "lote 1" (100000)
    
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
    If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
    ' Consulta SQL para seleccionar los registros de tck que no tienen correspondencia en tckper
    Dim sql As String
    sql = "SELECT tck.TicketID " & _
          "FROM tck LEFT JOIN tckper ON tck.TicketID = tckper.TicketID " & _
          "LEFT JOIN per ON tckper.PersonaID = per.PersonaID " & _
          "WHERE tckper.TicketID IS NULL OR per.PersonaID IS NULL;"
    
    DbCommand.CommandText = sql
    Set DbRecordset = DbCommand.Execute
    
    If Not DbRecordset.EOF Then                   ' Verificamos si se encontraron registros
        Do While Not DbRecordset.EOF              ' Recorrems los registros que no tiienen correspondencia y los eliminamos de la tabla "tck"
            Dim TicketID As String                ' Obtener el TicketID del registro actual
            TicketID = CStr(DbRecordset.Fields("TicketID").value)
            sql = "DELETE FROM tck WHERE TicketID = '" & TicketID & "'"
            DbCommand.CommandText = sql
            DbCommand.Execute
            sql = "DELETE FROM tckper WHERE TicketID = '" & TicketID & "'"
            DbCommand.CommandText = sql
            DbCommand.Execute
            DbRecordset.MoveNext
        Loop
        MsgBox "Registros depurados correctamente.", vbInformation
    Else
        MsgBox "No se encontraron registros para depurar.", vbInformation
    End If
    CmdRefrescar_Click                                         ' Presenta nuevamente la Grilla
End Sub


Private Sub Form_Load()
    'Set Me.ParentWindow = Me
    'Me.Width = ReporteMovimientosGUI1.Width + 100
    'Me.Height = ReporteMovimientosGUI1.Height + 500
    ReporteMovimientosMOD.Caption = "Movimiento y Reporte de Visitas"
    Me.Desde = db_Desde
    Me.Hasta = db_Hasta
    Me.init
End Sub

Property Let TicketID(dato As Currency)
    db_TicketID = dato
End Property

Sub UpdateWindow(ModuloID As Long)
    If Not (ParentWindow Is Nothing) Then
        Unload Me
    End If
End Sub

Sub Destroy()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.TicketID = db_TicketID
        'ParentWindow.UpdateWindow
    End If
End Sub
Property Let Listado(value As String)
    Let db_Listado = value
    TipodeLista = db_Listado
    'lblListado.Caption = "Listado de Tickets Pendientes"
End Property


Public Sub Grid_Click()
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
    Set AdminModulosService = New AdminModulosSVR
    'tipo_accion = "cargando_formulario"
    getNumeroPaginas

End Sub

Private Sub UserControl_Terminate()
    Set AdminModulosService = Nothing
    CmdCerrar_Click
End Sub

Sub init()

On Error GoTo MISTAKE

Dim DbAnswerStr, sql As String
Dim DbAnswerInt As Long
Dim DbCommand As ADODB.Command
Dim DbRecordset As ADODB.RecordSet
 
    Timer1.Enabled = False
    If txtFechaDesde = "" Then
        txtFechaDesde = "01/01/19"
    End If
    
    If txtFechaHasta = "" Then
        txtFechaHasta = Date
    End If

    TipoListado = "ListadoPendientes"
    lblListado.Caption = "Nombre, Apellido, Lote y Patente de Visitas"
    TipodeLista = TipoListado
      
    If Not documento_Apellido = " " Then                                    ' Si no ingresaron datos en la salida significa que no se leyo
                                                                            ' el DNI por ende va a presentar todo el listado de Personas Pendientes
      Set DbCommand = New ADODB.Command                                     ' de salir
      Set DbRecordset = New ADODB.RecordSet
    
      If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
    
      sql = "SELECT * FROM perdoccatval  WHERE Documento = '" & documento_Numero & "'"
      ' sql = "SELECT PersonaID FROM per  WHERE Apellido = 'GEORGOPULOS'"
      DbCommand.CommandText = sql                                           ' Como presento el DNI al scanner , cargamos solo el numero de documento
      Set DbRecordset = DbCommand.Execute                                   ' y buscamos el nombre y apellido que tiene en la base de datos
      If Not DbRecordset.BOF Then
        DbAnswerInt = DbRecordset!PersonaID                                    ' Aqui cargo el Id de Persona del nro de DNI leido %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        If DbRecordset.State = 1 Then DbRecordset.Close
        Set DbRecordset = New ADODB.RecordSet
        If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
        sql = "SELECT * FROM per  WHERE PersonaID =" & DbAnswerInt
        DbCommand.CommandText = sql                                          ' NO TOMAMOS EL NOMBRE Y AOELLIDO DEL DNI PORQUE DEPENDEMOS DE LA LECTURA
        Set DbRecordset = DbCommand.Execute                                  ' QUE REALICE EL LECTOR, POR EJEMPLO LA "Ñ" LA MANEJAN CON DISTINTOS
        If Not DbRecordset.BOF Then                                          ' CARACTERES DE ACUERDO AL LENGUAJE DEL LECTOR POR ENDE LUEGO NO COINCIDE CON
          DbAnswerStr = DbRecordset!Apellido & " " & DbRecordset!Nombre      ' NOMBRE REGISTRADO EN BASE DE DATOS Y NO LO ENCUENTRA. CON EL DNI
          txtBusqueda.Text = DbAnswerStr                                     ' NUNCA HAY ERROR Y CARGAMOS EL APELLIDO Y NOMBRE DE LA BASE DE DATOS NO
          cmdBuscar_Click                                                    ' DEL DOCUMENTO PRESENTADO
        End If
      End If
      If DbRecordset.State = 1 Then DbRecordset.Close
      Set DbCommand = Nothing
      Set DbRecordset = Nothing
      Exit Sub
    
    End If
    'txtBusqueda.Text = documento_Apellido & " " & documento_Nombre
    ' txtBusqueda.Text = documento_Apellido
    cmdBuscar_Click
    Exit Sub
    
MISTAKE:
  MsgBox ("ERROR BASE DE DATOS.....") & Err.Description
  Set DbCommand = Nothing
  Set DbRecordset = Nothing
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

        If AdminModulosService.getCantidadTickets(txtBusqueda.Text) Then
            MaximoNroPagina = AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value
'            MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
            
            
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
        End If
        '''''''''''''''''''''''''''''

            llenarComboNumeros Combo1, MaximoNroPagina, False
            On Error Resume Next
            Combo1.ListIndex = 0
        End If
End Sub
    
       

'*** modificado 24/6/09 copiado de adminpersonas
Private Sub cmdAnterior_Click()
Dim V() As String
On Error GoTo Salir

    TipoListado = TipodeLista

    Call Separar_en_Vector(txtBusqueda.Text, V)
    
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    cmdBuscar_Click
    If TipoListado = "ListadoPendientes" Then
        If AdminModulosService.getListaTicketsPendientes(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
           fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
        End If
    End If
    If TipoListado = "ListadoHistoricos" Then
        If AdminModulosService.getListaTicketsHistoricos(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
           fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
        End If
    End If
'    If AdminModulosService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
'        fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
'    End If
Exit Sub
Salir:
MsgBox "ReporteMovimientosGUI.cmdAnterior_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdSiguiente_Click()
Dim V() As String
On Error GoTo Salir
    
    TipoListado = TipodeLista
    
    Call Separar_en_Vector(txtBusqueda.Text, V)
    
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    
    If TipoListado = "ListadoPendientes" Then
        If AdminModulosService.getListaTicketsPendientes(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
           fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
        End If
    End If
    If TipoListado = "ListadoHistoricos" Then
        If AdminModulosService.getListaTicketsHistoricos(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
           fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
        End If
    End If
    cmdBuscar_Click
Salir:
End Sub

Private Sub Combo1_Click()
Dim V() As String
On Error GoTo Salir
 
'******* aca tengo que diferenciar si estoy cambiando de pagina o cargando la pantalla por primera vez ********
'
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
'    cmdBuscar_Click
    If TipoListado = "ListadoPendientes" Then
        
        If AdminModulosService.getListaTicketsPendientes(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then

           fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
             NroPagina = CInt(Combo1.List(Combo1.ListIndex))
        End If
       
    End If

    If TipoListado = "ListadoHistoricos" Then
        If AdminModulosService.getListaTicketsHistoricos(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then

           fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
             NroPagina = CInt(Combo1.List(Combo1.ListIndex))
        End If
        
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

Public Sub Grid_DblClick()
On Error GoTo Salir
    
    
    Grid.col = 0
    
  If Me.ParentWindow Is Nothing Then
    Grid.row = Grid.RowSel
    If Grid.Text <> "" And Grid.row >= 1 Then
        
        'Set ReporteMovimientosDetalleMOD.ParentWindow = Me
        Grid.col = 0
        Grid.row = Grid.RowSel
        ReporteMovimientosDetalleMOD.de_historicos = de_historicos
        ReporteMovimientosDetalleMOD.TicketID = Grid.Text
       
        ReporteMovimientosDetalleMOD.Show vbModal
        
    End If
  Else
    If Grid.Text <> "" And Grid.row >= 1 Then
       Grid.row = Grid.RowSel
       ParentWindow.TicketID = Grid.Text
       Me.Destroy
    End If
 End If
        
    
Exit Sub
Salir:
    MsgBox "ReporteMovimientosDetalleMOD.Doble_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdBuscar_Click()
Dim V() As String
Dim aux As Long
On Error GoTo Salir

    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    
    Call Separar_en_Vector(txtBusqueda.Text, V)

    Grid.Clear
    If validarDatos Then
        If TipoListado = "ListadoPendientes" Then
        
            Listado = "ListadoPendientes"
            
            If AdminModulosService.getListaTicketsPendientesCantidad(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
                lblCantidadDeRegistros.Caption = CLng(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) & " Registros."
                MaximoNroPagina = AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value
                'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
                
                'afa 07/2009
                'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
                'si la division da con resto debo agregar una pagina mas
                
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

            End If
                
            If AdminModulosService.getListaTicketsPendientes(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
                fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
            End If
           

        ElseIf TipoListado = "ListadoHistoricos" Then

            Listado = "ListadoHistoricos"
            
            
            
            If AdminModulosService.getListaTicketsHistoricosCantidad(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
                lblCantidadDeRegistros.Caption = CLng(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) & " Registros."
                MaximoNroPagina = AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value
                'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
                'afa 07/2009
                'MaximoNroPagina = MaximoNroPagina / MAX_GRID_ROWS_SIZE_SYS
                'si la division da con resto debo agregar una pagina mas
                
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
                

            End If
                
                If AdminModulosService.getListaTicketsHistoricos(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
                    fillGrid Grid, AdminModulosService.ModuloQuery.DbRecordsetQRY, 1
                End If
          
        
        End If
    End If
Descargar_Cartel
Exit Sub
Salir:
    Descargar_Cartel
    'Resume 0
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
    exportarGrillaAArchivo Grid, ArchivoTemporal, "Reporte de Tickets", 1
    
    
    
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
End Sub

Private Sub CmdInternetExplorer_Click()
  
Dim Fin As Boolean

    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.fileName <> "" Then
        ExportarHTML (CommonDialog1.fileName)
        Fin = Mdlshell.StartDoc(CommonDialog1.fileName, (App.path))             ' Aqui lo presentamos por un ????????????"SHELL EXCECUTE" de Windows
    End If
End Sub


Private Sub CmdPlanilla_Click()
On Error GoTo Salir
    CommonDialog1.DefaultExt = "xls"
    CommonDialog1.Filter = "*.xls"
    CommonDialog1.ShowSave
    If CommonDialog1.fileName <> "" Then
        exportar (CommonDialog1.fileName)
    End If
    Exit Sub
Salir:
    MsgBox "ReporteMovimientosGUI.Excel" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub cmdPendientes_Click()

    On Error Resume Next
    Combo1.ListIndex = 0
    
    de_historicos = False
    Listado = "ListadoPendientes"
    TipoListado = db_Listado
    lblListado.Caption = "Listado de Tickets Pendientes"
    cmdBuscar_Click
End Sub

Private Sub cmdHistoricos_Click()
    
    On Error Resume Next
    Combo1.ListIndex = 0
    
    de_historicos = True
    Listado = "ListadoHistoricos"
    TipoListado = db_Listado
    lblListado.Caption = "Listado Histórico de Tickets"
    cmdBuscar_Click
End Sub

'Public Sub UpdateWindow()
'    cmdBuscar_Click
'    cmdBuscar.SetFocus
'End Sub

Private Sub CmdCerrar_Click()
    On Error GoTo ERRORALCERRAR
    
    Grid.Clear
    If Not (ParentWindow Is Nothing) Then
        Me.Destroy
    End If
    Unload Me
    If fgPuesto = True Then
      PuestoControlManualMOD.Lectura_Doc_Cruda.SetFocus
    End If
    Exit Sub
    
ERRORALCERRAR:
    MsgBox " COMANDO INVALIDO 1 ", vbCritical
    Unload Me
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
Dim V() As String
Dim i As Long
On Error GoTo Salir

 Call Separar_en_Vector(txtBusqueda.Text, V)
    MainMOD.setStatusMessage "Procesando..."
    SplashScreenMOD.Show
    
        
    If TipodeLista = "ListadoPendientes" Then
        
        For i = 1 To MaximoNroPagina
        If AdminModulosService.getListaTicketsPendientes(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
            If i = 1 Then
                exportarQueryAArchivo AdminModulosService.ModuloQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Movimientos", 1, True
            Else
                exportarQueryAArchivo AdminModulosService.ModuloQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Movimientos", 1, False
            End If
        End If
     
        SplashScreenMOD.cambiarTexto " Exportando " & CStr(Round(i * 100 / MaximoNroPagina)) & "% ..."
        Next
    
    ElseIf TipodeLista = "ListadoHistoricos" Then
            
          For i = 1 To MaximoNroPagina
        If AdminModulosService.getListaTicketsHistoricos(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS, txtFechaDesde.Text, txtFechaHasta.Text) Then
            If i = 1 Then
                exportarQueryAArchivo AdminModulosService.ModuloQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Movimientos", 1, True
            Else
                exportarQueryAArchivo AdminModulosService.ModuloQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Movimientos", 1, False
            End If
        End If
     
        SplashScreenMOD.cambiarTexto " Exportando " & CStr(Round(i * 100 / MaximoNroPagina)) & "% ..."
        Next
    
    End If
    
    SplashScreenMOD.Hide
    MainMOD.setStatusMessage "Listo."
Exit Sub
Salir:
    MsgBox "ReporteMovimientosGUI.Exportar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

'Para exportar la información mostrada en el control de grilla a HTML a través de un botón "CmdInternetExplorer",
' vamos a realizar el codigo necesario para generar el contenido HTML basado en los datos de la grilla
' y guardarlo en un archivo.  "OK"

Public Sub ExportarHTML(ByVal fileName As String)
    On Error Resume Next

    Dim fileNum As Integer
    Dim i As Integer, J As Integer
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
            For J = 0 To Grid.Cols - 1
                Print #fileNum, "<td>" & Grid.TextMatrix(i, J) & "</td>"
            Next J
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


