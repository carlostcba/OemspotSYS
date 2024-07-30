VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl AdminIdentificacionesGUI 
   ClientHeight    =   8670
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12225
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   8670
   ScaleMode       =   0  'User
   ScaleWidth      =   11245.34
   Begin VB.CommandButton btn_depuracion 
      Caption         =   "Depuracion Base de Datos  de Modulos"
      Height          =   735
      Left            =   10680
      TabIndex        =   17
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton btn_ConsultaIdn 
      Caption         =   "Consulta en Modulos"
      Height          =   495
      Left            =   10680
      TabIndex        =   16
      Top             =   4560
      Width           =   1335
   End
   Begin VB.CommandButton btn_BajaIdn 
      Caption         =   "Baja en los Modulos"
      Height          =   435
      Left            =   10680
      TabIndex        =   15
      Top             =   5280
      Width           =   1335
   End
   Begin VB.CommandButton btn_AltaIdn 
      Caption         =   "Alta en los Modulos"
      Height          =   435
      Left            =   10680
      TabIndex        =   14
      Top             =   3960
      Width           =   1335
   End
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
   Begin VB.CommandButton CmdMasOpciones 
      Caption         =   "Más Opciones >>"
      Height          =   255
      Left            =   8880
      TabIndex        =   2
      Top             =   120
      Width           =   1575
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
      Caption         =   "Actualizar Identificacion"
      Height          =   495
      Left            =   10680
      TabIndex        =   5
      Top             =   2040
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar Identificacion"
      Height          =   495
      Left            =   10680
      TabIndex        =   6
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear Identificacion"
      Height          =   495
      Left            =   10680
      TabIndex        =   4
      Top             =   1320
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
      Top             =   6720
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
   Begin VB.Label lblSeleccion 
      Caption         =   "Doble click para seleccionar un elemento"
      Height          =   255
      Left            =   5640
      TabIndex        =   9
      Top             =   120
      Width           =   3015
   End
   Begin VB.Image CmdPlanilla 
      Height          =   270
      Left            =   11520
      Picture         =   "AdminIdentificacionesGUI.ctx":0000
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   11160
      Picture         =   "AdminIdentificacionesGUI.ctx":0432
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Image CmdImprimir 
      Height          =   255
      Left            =   10800
      Picture         =   "AdminIdentificacionesGUI.ctx":08AC
      ToolTipText     =   "Imprimir Datos"
      Top             =   120
      Width           =   285
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   120
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   110.384
      X2              =   11038.37
      Y1              =   8160
      Y2              =   8160
   End
End
Attribute VB_Name = "AdminIdentificacionesGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private ReadOnlyMode As Boolean
Private AdminIdentificacionesService As AdminIdentificacionesSVR
Private SeleccionMode As Boolean
Private WindowIsExpanded As Boolean
Private NroPagina As Long
Private MaximoNroPagina As Long
Private Repaginar As Boolean
Private Const ASCII_STX = 2  ' Start of text
Private Const ASCII_ETX = 3  ' End of text
Private Const ASCII_EOF = 3   'End of file



Private Sub btn_AltaIdn_Click()

On Error GoTo MISTAKE
 
 
 Dim sql As String
 Dim nroTarj As String
 Dim idTarj As String
 Dim IdPersona As String
 Dim IdLote As String
 Dim IdGrupo As String
 Dim idModulo As String
 Dim address As String

 Dim DbCommand As ADODB.Command
 Dim DbRecordset As ADODB.RecordSet
 Dim DbRecordset2 As ADODB.RecordSet
 Dim DbRecordset3 As ADODB.RecordSet

 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 Set DbRecordset2 = New ADODB.RecordSet
 Set DbRecordset3 = New ADODB.RecordSet
 
 FrmProceso.Show
 
 btn_BajaIdn_Click                                ' Primero doy la baja de la tarjeta por si estaba en el Buffer
 
 Grid.col = 1                                     ' Extraigo el Numero de la tarjeta seleccionada
 Grid.row = Grid.RowSel
 nroTarj = Grid.Text
     
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       
 sql = "SELECT * FROM idn  WHERE Numero =" & nroTarj
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 idTarj = DbRecordset!IdentificacionID             ' Aqui obtengo el Identificador de Tarjeta
 
 
 sql = "SELECT * FROM peridn  WHERE IdentificacionID =" & idTarj
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
  If DbRecordset.EOF Then
     MsgBox "La tarjeta NO esta asignada a ninguna Persona...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Exit Sub
 End If                                            ' Aqui obtengo el Id de la Persona relacionada
 IdPersona = DbRecordset!PersonaID                 ' con la Tarjeta seleccionada.
   
   
 sql = "SELECT * FROM lotper WHERE PersonaID =" & IdPersona
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
  If DbRecordset.EOF Then
     MsgBox "La Persona NO esta asignada a ningun Lote...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Exit Sub
 End If                                            ' Aqui obtengo el Id del Lote de la Persona relacionada
 IdLote = DbRecordset!PersonaID                    ' con la Tarjeta seleccionada.
   
   
 sql = "SELECT * FROM pergru  WHERE PersonaID =" & IdPersona
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 If DbRecordset.EOF Then
     MsgBox "La Persona NO esta asignada a ninguna Grupo...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Exit Sub
 End If
 
 
 Do While Not DbRecordset.EOF                      ' Aqui obtengo el Id del Grupo de la Persona
   IdGrupo = DbRecordset!GrupoID                   ' relacionada con la Tarjeta seleccionada.
   sql = "SELECT * FROM grumdlprf  WHERE GrupoID =" & IdGrupo
   DbCommand.CommandText = sql
   Set DbRecordset2 = DbCommand.Execute            ' Realizamos el Do While porque un Grupo puede
   If DbRecordset2.EOF Then                        ' puede tener asociado varios Modulos
     MsgBox "El Grupo NO TIENE Modulos Asociados...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Set DbRecordset2 = Nothing
     Exit Sub
   End If
   Do While Not DbRecordset2.EOF
     idModulo = DbRecordset2!ModuloID              ' Aqui obtengo el Id del Modulo del Grupo
     sql = "SELECT * FROM mdl  WHERE ModuloID =" & idModulo
     DbCommand.CommandText = sql
     Set DbRecordset3 = DbCommand.Execute
     Do While Not DbRecordset3.EOF
    
       address = DbRecordset3!address                ' Aqui obtengo el "Address" del Modulo Asociado
                                                     ' a quien debemos enviar el comando de Alta
       identificador = identificador + 1             ' de la Tarjeta en la Placa mediante el comando
                                                     ' "STX+ADDR+O5+TTTTTTTT+CHK+EOT
       Call EnviarComandoModulo(DbConnectionSYS, identificador, idModulo, address, "O5" + Mid$(nroTarj, 3, 9))
       
       DbRecordset3.MoveNext
     Loop
     DbRecordset2.MoveNext
   Loop
   DbRecordset.MoveNext
 Loop

Exit Sub



MISTAKE:
'  DbConection.RollbackTrans                         ' Descartamos la transaccion en curso
  MsgBox ("ERROR CONEXION BASE DE DATOS") & Err.Description
  Set DbCommand = Nothing
  Set DbRecordset = Nothing

End Sub


Public Function EnviarComandoModulo(ByRef Adocnx As ADODB.Connection, _
                                     ByVal identificador_ As Long, _
                                     ByVal ModuloID_ As Long, _
                                     ByVal Addr_ As String, _
                                     ByVal Contenido As String)
                            

On Error GoTo Salir

Dim ComandoToSend As String
Dim sql As String

Dim DbCommand As ADODB.Command
Set DbCommand = New ADODB.Command

Dim DbRecordset As ADODB.RecordSet
Set DbRecordset = New ADODB.RecordSet

Dim Mi_Protocolo As ProtocoloSVR                        ' La funcion "CalculoCS" esta declarada en
Set Mi_Protocolo = New ProtocoloSVR                     ' la clase "ProtocoloSVR"....
  
ComandoToSend = Chr$(ASCII_STX) & Format(Addr_, "#00")
ComandoToSend = ComandoToSend & Contenido
  
ComandoToSend = ComandoToSend & Mi_Protocolo.CalculoCS(ComandoToSend) & Chr$(ASCII_EOF)

If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       

sql = "INSERT INTO pdtmdl VALUES (" & identificador_ & "," & ModuloID_ & ",'" & ComandoToSend & "'," & 1 & ",'" & 1 & "')"
DbCommand.CommandText = sql
Set DbRecordset = DbCommand.Execute

Exit Function

Salir:
    MsgBox "ERROR AL ENVIAR COMANDO A MODULO -- " & Err.Description
End Function



Private Sub btn_BajaIdn_Click()

On Error GoTo MISTAKE
 
 Dim sql As String
 Dim nroTarj As String
 Dim idTarj As String
 Dim IdPersona As String
 Dim IdLote As String
 Dim IdGrupo As String
 Dim idModulo As String
 Dim address As String

 Dim DbCommand As ADODB.Command
 Dim DbRecordset As ADODB.RecordSet
 Dim DbRecordset2 As ADODB.RecordSet
 Dim DbRecordset3 As ADODB.RecordSet

 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 Set DbRecordset2 = New ADODB.RecordSet
 Set DbRecordset3 = New ADODB.RecordSet
 
 FrmProceso.Show
 
 Grid.col = 1                                     ' Extraigo el Numero de la tarjeta seleccionada
 Grid.row = Grid.RowSel
 nroTarj = Grid.Text
     
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       
 sql = "SELECT * FROM idn  WHERE Numero =" & nroTarj
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 idTarj = DbRecordset!IdentificacionID             ' Aqui obtengo el Identificador de Tarjeta
 
 
 sql = "SELECT * FROM peridn  WHERE IdentificacionID =" & idTarj
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
  If DbRecordset.EOF Then
     MsgBox "La tarjeta NO esta asignada a ninguna Persona...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Exit Sub
 End If                                            ' Aqui obtengo el Id de la Persona relacionada
 IdPersona = DbRecordset!PersonaID                 ' con la Tarjeta seleccionada.
   
   
 sql = "SELECT * FROM lotper WHERE PersonaID =" & IdPersona
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
  If DbRecordset.EOF Then
     MsgBox "La Persona NO esta asignada a ningun Lote...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Exit Sub
 End If                                            ' Aqui obtengo el Id del Lote de la Persona relacionada
 IdLote = DbRecordset!PersonaID                    ' con la Tarjeta seleccionada.
   
   
 sql = "SELECT * FROM pergru  WHERE PersonaID =" & IdPersona
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 If DbRecordset.EOF Then
     MsgBox "La Persona NO esta asignada a ninguna Grupo...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Exit Sub
 End If
 
 Do While Not DbRecordset.EOF                       ' Aqui obtengo el Id del Grupo de la Persona
   IdGrupo = DbRecordset!GrupoID                      ' relacionada con la Tarjeta seleccionada.
   sql = "SELECT * FROM grumdlprf  WHERE GrupoID =" & IdGrupo
   DbCommand.CommandText = sql
   Set DbRecordset2 = DbCommand.Execute               ' Realizamos el Do While porque un Grupo puede
   If DbRecordset2.EOF Then                           ' puede tener asociado varios Modulos
       MsgBox "El Grupo NO TIENE Modulos Asociados...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
       Set DbCommand = Nothing
       Set DbRecordset = Nothing
       Set DbRecordset2 = Nothing
       Exit Sub
   End If
   Do While Not DbRecordset2.EOF
     idModulo = DbRecordset2!ModuloID              ' Aqui obtengo el Id del Modulo del Grupo
     sql = "SELECT * FROM mdl  WHERE ModuloID =" & idModulo
     DbCommand.CommandText = sql
     Set DbRecordset3 = DbCommand.Execute
     Do While Not DbRecordset3.EOF
       address = DbRecordset3!address                ' Aqui obtengo el "Address" del Modulo Asociado
                                                     ' a quien debemos enviar el comando de Alta
       identificador = identificador + 1             ' de la Tarjeta en la Placa mediante el comando
                                                     ' "STX+ADDR+O5+TTTTTTTT+CHK+EOT
       Call EnviarComandoModulo(DbConnectionSYS, identificador, idModulo, address, "O6" + Mid$(nroTarj, 3, 9))
       
       DbRecordset3.MoveNext
     Loop
     DbRecordset2.MoveNext
   Loop
   DbRecordset.MoveNext
 Loop

Exit Sub



MISTAKE:

  MsgBox ("ERROR CONEXION BASE DE DATOS") & Err.Description
  Set DbCommand = Nothing
  Set DbRecordset = Nothing

End Sub


Private Sub btn_ConsultaIdn_Click()

On Error GoTo MISTAKE
 
 Dim sql As String
 Dim nroTarj As String
 Dim idTarj As String
 Dim IdPersona As String
 Dim IdLote As String
 Dim IdGrupo As String
 Dim idModulo As String
 Dim address As String

 Dim DbCommand As ADODB.Command
 Dim DbRecordset As ADODB.RecordSet
 Dim DbRecordset2 As ADODB.RecordSet
 Dim DbRecordset3 As ADODB.RecordSet

 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 Set DbRecordset2 = New ADODB.RecordSet
 Set DbRecordset3 = New ADODB.RecordSet
 
 FrmProceso.Show
 
 Grid.col = 1                                     ' Extraigo el Numero de la tarjeta seleccionada
 Grid.row = Grid.RowSel
 nroTarj = Grid.Text
     
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       
 sql = "SELECT * FROM idn  WHERE Numero =" & nroTarj
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 idTarj = DbRecordset!IdentificacionID             ' Aqui obtengo el Identificador de Tarjeta
 
 
 sql = "SELECT * FROM peridn  WHERE IdentificacionID =" & idTarj
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
  If DbRecordset.EOF Then
     MsgBox "La tarjeta NO esta asignada a ninguna Persona...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Exit Sub
 End If                                            ' Aqui obtengo el Id de la Persona relacionada
 IdPersona = DbRecordset!PersonaID                 ' con la Tarjeta seleccionada.
   
   
 sql = "SELECT * FROM lotper WHERE PersonaID =" & IdPersona
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
  If DbRecordset.EOF Then
     MsgBox "La Persona NO esta asignada a ningun Lote...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Exit Sub
 End If                                            ' Aqui obtengo el Id del Lote de la Persona relacionada
 IdLote = DbRecordset!PersonaID                    ' con la Tarjeta seleccionada.
   
   
 sql = "SELECT * FROM pergru  WHERE PersonaID =" & IdPersona
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 If DbRecordset.EOF Then
     MsgBox "La Persona NO esta asignada a ninguna Grupo...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Exit Sub
 End If
                                                    ' Aqui obtengo el Id del Grupo de la Persona
 IdGrupo = DbRecordset!GrupoID                      ' relacionada con la Tarjeta seleccionada.
 sql = "SELECT * FROM grumdlprf  WHERE GrupoID =" & IdGrupo
 DbCommand.CommandText = sql
 Set DbRecordset2 = DbCommand.Execute               ' Realizamos el Do While porque un Grupo puede
 If DbRecordset2.EOF Then                           ' puede tener asociado varios Modulos
     MsgBox "El Grupo NO TIENE Modulos Asociados...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Set DbRecordset2 = Nothing
     Exit Sub
 End If

 idModulo = DbRecordset2!ModuloID                   ' Aqui obtengo el Id del Modulo del Grupo
 sql = "SELECT * FROM mdl  WHERE ModuloID =" & idModulo
 DbCommand.CommandText = sql
 Set DbRecordset3 = DbCommand.Execute

 address = DbRecordset3!address                     ' Aqui obtengo el "Address" del Modulo Asociado
                                                    ' a quien debemos enviar el comando de Alta
 identificador = identificador + 1                  ' de la Tarjeta en la Placa mediante el comando
                                                    ' "STX+ADDR+O8+TTTTTTTT+CHK+EOT
 Call EnviarComandoModulo(DbConnectionSYS, identificador, idModulo, address, "O8" + Mid$(nroTarj, 3, 9))

Exit Sub


MISTAKE:

  MsgBox ("ERROR CONEXION BASE DE DATOS") & Err.Description
  Set DbCommand = Nothing
  Set DbRecordset = Nothing

End Sub

Private Sub btn_depuracion_Click()
  
  On Error GoTo MISTAKE
 
 
 Dim sql As String
 Dim IdGrupo As String
 Dim idModulo As String
 Dim address As String

 Dim DbCommand As ADODB.Command
 Dim DbRecordset As ADODB.RecordSet
 Dim DbRecordset2 As ADODB.RecordSet
 Dim DbRecordset3 As ADODB.RecordSet

 Set DbCommand = New ADODB.Command
 Set DbRecordset = New ADODB.RecordSet
 Set DbRecordset2 = New ADODB.RecordSet
 Set DbRecordset3 = New ADODB.RecordSet
 
 FrmProceso.Show
      
 If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
     
 sql = "SELECT * FROM gru  "
 DbCommand.CommandText = sql
 Set DbRecordset = DbCommand.Execute
 If DbRecordset.EOF Then
     MsgBox "No hay Grupos Asignados......OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Exit Sub
 End If
 Do While Not DbRecordset.EOF                      ' Aqui obtengo el Id del Grupo de la Persona
   IdGrupo = DbRecordset!GrupoID                   ' relacionada con la Tarjeta seleccionada.
   sql = "SELECT * FROM grumdlprf  WHERE GrupoID =" & IdGrupo
   DbCommand.CommandText = sql
   Set DbRecordset2 = DbCommand.Execute            ' Realizamos el Do While porque un Grupo puede
   If DbRecordset2.EOF Then                        ' puede tener asociado varios Modulos
     MsgBox "El Grupo NO TIENE Modulos Asociados...OPERACION CANCELADA !!!", vbExclamation, "Aviso..!!!"
     Set DbCommand = Nothing
     Set DbRecordset = Nothing
     Set DbRecordset2 = Nothing
     Exit Sub
   End If
   Do While Not DbRecordset2.EOF
     idModulo = DbRecordset2!ModuloID              ' Aqui obtengo el Id del Modulo del Grupo
     sql = "SELECT * FROM mdl  WHERE ModuloID =" & idModulo
     DbCommand.CommandText = sql
     Set DbRecordset3 = DbCommand.Execute
     Do While Not DbRecordset3.EOF
    
       address = DbRecordset3!address                ' Aqui obtengo el "Address" del Modulo Asociado
                                                     ' a quien debemos enviar el comando de Alta
       identificador = identificador + 1             ' de la Tarjeta en la Placa mediante el comando
                                                     ' "STX+ADDR+O9+CHK+EOT
       Call EnviarComandoModulo(DbConnectionSYS, identificador, idModulo, address, "O9")
       
       DbRecordset3.MoveNext
     Loop
     DbRecordset2.MoveNext
   Loop
   DbRecordset.MoveNext
 Loop

Exit Sub



MISTAKE:
  MsgBox ("ERROR CONEXION BASE DE DATOS") & Err.Description
  Set DbCommand = Nothing
  Set DbRecordset = Nothing

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

Private Sub txtBusqueda_GotFocus()
On Error Resume Next
    txtBusqueda.SelStart = 0
    txtBusqueda.SelLength = Len(txtBusqueda)
    Repaginar = True

End Sub
Private Sub UserControl_Initialize()
    Set AdminIdentificacionesService = New AdminIdentificacionesSVR
    Repaginar = True
   ' cmdBuscar_Click
    'getNumeroPaginas

End Sub

Private Sub UserControl_Terminate()
    Set AdminIdentificacionesService = Nothing
End Sub

Sub init()
    Repaginar = True
    actualizarLocalizacion
    

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

Property Let ReadOnly(value As Boolean)
    ReadOnlyMode = value
End Property

Property Let Seleccion(value As Boolean)
    SeleccionMode = value
End Property

Sub getNumeroPaginas(ByRef V() As String)
    If AdminIdentificacionesService.getCantidadItems(V) Then
        MaximoNroPagina = AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(0).value
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
End Sub

Private Sub cmdAnterior_Click()
    NroPagina = NroPagina - 1
    If NroPagina < 1 Then NroPagina = 1
    Combo1.ListIndex = NroPagina - 1
    Repaginar = False
    cmdBuscar_Click
    'If AdminIdentificacionesService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
   '     fillGrid Grid, AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY, 1
   ' End If
End Sub

Private Sub cmdSiguiente_Click()
    If MaximoNroPagina = 0 Then Exit Sub
    NroPagina = NroPagina + 1
    If NroPagina > MaximoNroPagina Then NroPagina = MaximoNroPagina
    Combo1.ListIndex = NroPagina - 1
    Repaginar = False
    cmdBuscar_Click
    'If AdminIdentificacionesService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
   '     fillGrid Grid, AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY, 1
   ' End If
End Sub

Private Sub Combo1_Click()
    NroPagina = CInt(Combo1.List(Combo1.ListIndex))
   Repaginar = False
    cmdBuscar_Click
    'If AdminIdentificacionesService.getList(txtBusqueda.Text, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
    '    fillGrid Grid, AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY, 1
    ' End If
End Sub

Private Sub cmdBuscar_Click()
Dim V() As String
On Error GoTo Salir
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Call Separar_en_Vector(txtBusqueda.Text, V)
    Grid.Clear
    If Repaginar Then
        Call getNumeroPaginas(V)
    'End If
    Else
        If AdminIdentificacionesService.getList(V, (NroPagina - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
            fillGrid Grid, AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY, 1
        End If
    End If
    Descargar_Cartel
Exit Sub
Salir:
    Descargar_Cartel
    MsgBox "AdminIdentificacionesGUI.Buscar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub CmdAgregar_Click()
On Error GoTo Salir
    Set IdentificacionMOD.ParentWindow = Me
    IdentificacionMOD.IdentificacionID = 0
    IdentificacionMOD.Show vbModal
Exit Sub
Salir:
    MsgBox "AdminIdentificacionesGUI.Agregar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub cmdActualizar_Click()
On Error GoTo Salir
    Grid.col = 0
    Grid.row = Grid.RowSel
    If Grid.Text <> "" And Grid.row >= 1 Then
        Grid.col = 0
        Grid.row = Grid.RowSel
        Set IdentificacionMOD.ParentWindow = Me
        IdentificacionMOD.IdentificacionID = CLng(Grid.Text)
        IdentificacionMOD.Show vbModal
    End If
Exit Sub
Salir:
    MsgBox "AdminIdentificacionesGUI.Agregar" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub cmdBorrar_Click()
    Grid.col = 1
    Grid.row = Grid.RowSel
    If Grid.Text <> "" And Grid.row >= 1 Then
        If MsgBox("Está seguro que desea borrar " & Grid.Text & " ?", vbYesNo, "Atención") = vbYes Then
            Grid.col = 0
            Grid.row = Grid.RowSel
            If Not AdminIdentificacionesService.IdentificacionOrm.eliminarIdentificacionCascada(CLng(Grid.Text)) Then
                If MsgBox("La Identificación que intenta borrar tiene Registros y Movimientos Relacionados,  ¿Desea Borrar la Identificación y Todos los Registros y Movimientos Relacionados a éste? Esta Operación es irrecuperable", vbCritical + vbYesNo, "Atención") = vbYes Then
                    If AdminIdentificacionesService.IdentificacionOrm.eliminarIdentificacionCascada(CLng(Grid.Text)) Then
                       Call MsgBox("Todos los Registros Relacionados a la Identificación han sido Borrados", vbInformation, "Atención")
                    Else
                       Call MsgBox("No se Borraron los Registros ", vbInformation, "Error")
                       Exit Sub
                    End If
                End If
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
On Error GoTo Salir
    Dim NombreImpresion As String
    NombreImpresion = "Identificaciones"

    Dim ArchivoTemporal As String
    ArchivoTemporal = generarNombreArchivoAleatorio(App.path & "\Cache\Admin", "html")

    Dim NombreArchivo As String
    NombreArchivo = App.path & "\HtmlPrintingSYS.exe " & Chr(34) & NombreImpresion & Chr(34) & " " & Chr(34) & ArchivoTemporal & Chr(34) & " " & "-d"

    exportarGrillaAArchivo Grid, ArchivoTemporal, "Administración de Identificaciones", 1
    If Verificar_Existencia_Archivo(ArchivoTemporal) Then
        Shell NombreArchivo, vbNormalFocus
    End If
    Shell NombreArchivo, vbNormalFocus
Exit Sub
Salir:
    MsgBox "AdminIdentificacionesGUI.Imprimir" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub CmdInternetExplorer_Click()
On Error GoTo Salir
Dim fin As Boolean

    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
   ' If CommonDialog1.fileName <> "" Then
   '     exportarGrillaAArchivo Grid, CommonDialog1.fileName, "Administración de Identificaciones", 1
   ' End If
    If CommonDialog1.fileName <> "" Then
        ExportarHTML (CommonDialog1.fileName)
        fin = Mdlshell.StartDoc(CommonDialog1.fileName, (App.path))             ' Aqui lo presentamos por un "SHELL EXCECUTE" de Windows
    End If
Exit Sub
Salir:
    MsgBox "AdminIdentificacionesGUI.Explorer" & vbCrLf & _
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
    If CommonDialog1.fileName <> "" Then
        exportar (CommonDialog1.fileName)
    End If
    Exit Sub
Salir:
    MsgBox "AdminIdentificacionesGUI.Excel" & vbCrLf & _
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
    ParentWindow.Destroy
End Sub

Private Sub Grid_DblClick()
    If ParentWindow.ParentWindow Is Nothing Then
        cmdActualizar_Click
    Else
        If Grid.Text <> "" And Grid.row >= 1 Then
            Grid.col = 0
            Grid.row = Grid.RowSel
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

'*****************************************************
'AGREGO LA FUNCION EXPORTAR COPIADO DE ADMINPERSONAS
'*****************************************************

Sub exportar(NombreArchivo As String)
Dim V() As String
Dim i As Long
On Error GoTo Salir

 Call Separar_en_Vector(txtBusqueda.Text, V)
    MainMOD.setStatusMessage "Procesando..."
    SplashScreenMOD.Show
    For i = 1 To MaximoNroPagina
        If AdminIdentificacionesService.getList(V, (i - 1) * MAX_GRID_ROWS_SIZE_SYS) Then
            If i = 1 Then
                exportarQueryAArchivo AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Identificaciones", 1, True
            Else
                exportarQueryAArchivo AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY, NombreArchivo, "Reporte de Identificaciones", 1, False
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


