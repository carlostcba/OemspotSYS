VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frm_Rep_Gral 
   Caption         =   "Reportes de Peosnas Identificadas"
   ClientHeight    =   10485
   ClientLeft      =   1260
   ClientTop       =   2550
   ClientWidth     =   12165
   LinkTopic       =   "Form1"
   ScaleHeight     =   13350.47
   ScaleMode       =   0  'User
   ScaleWidth      =   12165
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   10920
      Top             =   5760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "frm_Rep_Gral.frx":0000
      Left            =   9120
      List            =   "frm_Rep_Gral.frx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   600
      Width           =   2895
   End
   Begin VB.ListBox List1 
      Height          =   840
      Left            =   6480
      TabIndex        =   15
      Top             =   120
      Width           =   2175
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   10800
      TabIndex        =   14
      Top             =   9120
      Width           =   1335
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   10920
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   3720
      Width           =   735
   End
   Begin VB.CommandButton btn_ReporteGeneral 
      Caption         =   "Seleccionar Persona Identificada"
      Height          =   495
      Left            =   4440
      TabIndex        =   11
      Top             =   120
      Width           =   1935
   End
   Begin VB.TextBox txtBusqueda 
      Height          =   285
      Left            =   1440
      TabIndex        =   10
      Top             =   120
      Width           =   2775
   End
   Begin VB.Frame Frame1 
      Caption         =   "Filtros"
      Height          =   1695
      Left            =   240
      TabIndex        =   1
      Top             =   1200
      Width           =   10455
      Begin VB.ComboBox Combo_Grupos 
         Height          =   315
         Left            =   8040
         TabIndex        =   24
         Text            =   "Combo3"
         Top             =   360
         Width           =   1575
      End
      Begin VB.CheckBox Chk_Grupos 
         Caption         =   "Check1"
         Height          =   255
         Left            =   6960
         TabIndex        =   22
         Top             =   360
         Width           =   255
      End
      Begin VB.TextBox Txt_Patente 
         Height          =   285
         Left            =   4560
         TabIndex        =   20
         Top             =   360
         Width           =   1215
      End
      Begin VB.CheckBox Chk_Patente 
         Caption         =   "Check1"
         Height          =   195
         Left            =   3360
         TabIndex        =   19
         Top             =   360
         Width           =   255
      End
      Begin VB.CommandButton btn_ConsultaSinPaginar 
         Caption         =   "CONSULTA SIN FILTROS"
         Height          =   615
         Left            =   7320
         TabIndex        =   18
         Top             =   840
         Width           =   1575
      End
      Begin VB.ComboBox cbGrupo 
         Height          =   315
         ItemData        =   "frm_Rep_Gral.frx":0004
         Left            =   120
         List            =   "frm_Rep_Gral.frx":0006
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   960
         Width           =   975
      End
      Begin VB.ComboBox cbModulo 
         Height          =   315
         ItemData        =   "frm_Rep_Gral.frx":0008
         Left            =   4680
         List            =   "frm_Rep_Gral.frx":000A
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Top             =   960
         Width           =   975
      End
      Begin VB.ComboBox cbTipoMovimiento 
         Height          =   315
         ItemData        =   "frm_Rep_Gral.frx":000C
         Left            =   5880
         List            =   "frm_Rep_Gral.frx":000E
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   960
         Width           =   975
      End
      Begin VB.CommandButton btn_Consultar 
         Caption         =   "CONSULTA CON FILTROS PAGINADA"
         Height          =   615
         Left            =   1320
         TabIndex        =   4
         Top             =   840
         Width           =   1695
      End
      Begin VB.CheckBox Chk_Lotes 
         Caption         =   "Check1"
         Height          =   195
         Left            =   360
         TabIndex        =   3
         Top             =   360
         Width           =   135
      End
      Begin VB.ComboBox combo_Lotes 
         Height          =   315
         Left            =   1320
         TabIndex        =   2
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label3 
         Caption         =   "Grupo :"
         Height          =   255
         Left            =   7320
         TabIndex        =   23
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "Patente :"
         Height          =   255
         Left            =   3720
         TabIndex        =   21
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "Lotes :"
         Height          =   255
         Left            =   720
         TabIndex        =   8
         Top             =   360
         Width           =   495
      End
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   6855
      Left            =   120
      TabIndex        =   0
      Top             =   3240
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   12091
      _Version        =   393216
      Rows            =   1024
      FixedCols       =   0
      AllowBigSelection=   -1  'True
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   3
   End
   Begin VB.Image CmdPlanillaExcel 
      Height          =   270
      Left            =   11160
      Picture         =   "frm_Rep_Gral.frx":0010
      ToolTipText     =   "Exportar Datos a Excel"
      Top             =   120
      Width           =   270
   End
   Begin VB.Label lblTipoMovimiento 
      Caption         =   "Tipo de Movimiento:"
      Height          =   255
      Left            =   9120
      TabIndex        =   17
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label lblPagina 
      Caption         =   "Página:"
      Height          =   255
      Left            =   11040
      TabIndex        =   12
      Top             =   3360
      Width           =   615
   End
   Begin VB.Image CmdInternetExplorer 
      Height          =   270
      Left            =   10680
      Picture         =   "frm_Rep_Gral.frx":0442
      ToolTipText     =   "Exportar Datos a Página WEB"
      Top             =   120
      Width           =   285
   End
   Begin VB.Label lblBusqueda 
      Caption         =   "Búsqueda:"
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "frm_Rep_Gral"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
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
Dim PersonaID As Long
Dim Opcion_SQL As Integer





Private Sub Chk_Grupos_Click()

Dim DbCommand As ADODB.Command                                            ' Si selecciona el CheckBox de Lotes , habilita el ComboBox lotes y muestra
Dim DbRecordset As ADODB.RecordSet                                        ' todos los lotes disponibles para que pueda seleccionar alguno en la consulta
Dim sql As String
 On Error GoTo Salir
 
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
      
    If Chk_Grupos.value = vbChecked Then                                    ' Verifica si el CheckBox está marcado
       Combo_Grupos.Visible = True                                          ' Si está marcado, muestra el ComboBox
       If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       sql = "SELECT Nombre FROM gru"                                       ' Consulta SQL para obtener los datos de la tabla lot
       DbCommand.CommandText = sql
       Set DbRecordset = DbCommand.Execute
       
       Combo_Grupos.Clear                                                  ' Limpiar el ComboBox antes de agregar nuevos elementos
         ' Agregar "--- TODOS ---" al principio sin espacio en blanco
       Combo_Grupos.AddItem "--- TODOS ---", 0
       Combo_Grupos.ItemData(0) = -1
       Combo_Grupos.ListIndex = 0
       
        Chk_Grupos.Visible = True                                          ' Cuando esta activado el ChkBox de Grupos
        Label2.Visible = False                                             ' inhibe el ChkBox de Patente y asociados
        Txt_Patente.Visible = False
        Chk_Patente.Visible = False
        Label1.Visible = False                                             ' inhibe el ComboBox Lotes y asociados
        combo_Lotes.Visible = False
        Chk_Lotes.Visible = False
            
       Do While Not DbRecordset.EOF
        Combo_Grupos.AddItem DbRecordset.Fields("Nombre").value           ' Recorrer el recordset y agregar cada valor al ComboBox
        DbRecordset.MoveNext
       Loop
       DbRecordset.Close                                                  ' Cerrar el recordset y la conexión
       Set DbRecordset = Nothing                                          ' Liberar memoria
       Set DbCommand = Nothing
    Else
        combo_Lotes.Visible = False                                       ' Si no está activado, oculta el ComboBox
        Chk_Patente.Visible = True                                        ' Cuando esta activado el ChkBox de Lotes
        Label2.Visible = True                                             ' y Visibiliza el ChkBox de Patente y asociados
        Combo_Grupos.Visible = False                                      ' Si no está activado, activa el ComboBox
        Chk_Lotes.Visible = True                                         ' Cuando esta activado el ChkBox de Lotes
        Label3.Visible = True                                             ' y Visibiliza el ChkBox de Grupo y asociados
        Label1.Visible = True
    End If
    Exit Sub
Salir:
  MsgBox " Error al cargar los Lotes ", vbCritical
End Sub

Private Sub Chk_Patente_Click()
   
   If Chk_Patente.value = 1 Then
     Txt_Patente.Text = ""
     Txt_Patente.Visible = True                                 ' Si el Chkbox "Patente" esta activo inhibe el ChkBox
     Chk_Lotes.Visible = False                                  ' "lotes" , sus asosciados y el Chkbox "Grupo" y asociados
     combo_Lotes.Visible = False
     Label1.Visible = False
     Chk_Grupos.Visible = False
     Label3.Visible = False
   Else
     Txt_Patente.Visible = False                                ' Si el Chkbox "Patente" esta desactivado habilita el ChkBox
     Chk_Lotes.Visible = True                                   ' "lotes" y sus asosciados y el Chkbox "Grupo" y asociados
     Label1.Visible = True
     Chk_Grupos.Visible = True
     Label3.Visible = True
   End If
   
End Sub



Private Sub btn_ReporteGeneral_Click()              ' Aqui seleccionamos la persona que deseamos analizar y dado
    On Error GoTo MISTAKE                           ' su nombre y apellido la buscamos en la tabla "Per" . Esto es
                                                    ' complicado dado que la tabla "per" tiene un campo "Nombre" y otro
    Dim sql As String                               ' "Apellido" de forma que el nombreapellido se puede escribir de varias
                                                    ' formmas por ej. Nombre= Jorge Luis Georgopulos" o Nombre= Jorge
    Dim DbCommand As ADODB.Command                  ' y  Apellido "Luis Georgopulos" etc...una gran cagada que exige una
    Dim DbRecordset As ADODB.RecordSet              ' descomposicion de nombreapellido por los espacios y una busqueda
    Dim i As Integer                                ' de cada parte.....En fin la Sub deja en el vector publico
                                                    ' "SelectedPersonIDs" los "PerdonaID" de todas las personas que cumplen
    ' Limpiar el vector SelectedPersonIDs           ' con el nombreApellido ingresado y carga el "listox" para que luego
    Erase SelectedPersonIDs                         ' el usuario selecte la persona indicada
    
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
    
    If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
    
    ' Obtener el valor del TextBox
    Dim nombreApellido As String
    nombreApellido = txtBusqueda.Text
    
    List1.Clear ' Limpiar la lista antes de agregar nuevos elementos
    
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
   
    ' Ahora debemos encontrar a la persona por su nombre, segundo nombre y apellido en la tabla "per"
    ' Split(nombreApellido, " "): Esta función divide la cadena nombreApellido en partes separadas
    ' cada vez que encuentra un espacio " ". El resultado es un array donde cada elemento es una parte
    ' de la cadena original.
    ' Dim partesNombre() As String: Esta línea declara una variable llamada partesNombre como un array
    ' de cadenas (strings). La dimensión del array se determinará automáticamente según la cantidad de
    ' partes resultantes de la división.
    ' partesNombre = Split(nombreApellido, " "): Esta línea asigna el resultado de la función Split
    ' al array partesNombre. Ahora, partesNombre contendrá todas las partes individuales de la
    ' cadena nombreApellido.
    'Este código es útil para dividir un nombre completo ingresado en el TextBox en partes individuales
    'para que puedan ser utilizadas en la construcción de la consulta SQL.
    
    Dim partesNombre() As String
    partesNombre = Split(nombreApellido, " ")

    ' Construir la instrucción SQL
    sql = "SELECT PersonaID, Apellido, Nombre FROM per WHERE (1=1)"

   ' Agregar condiciones para cada parte del nombre
    For i = LBound(partesNombre) To UBound(partesNombre)
     sql = sql & " AND (Nombre LIKE '%" & partesNombre(i) & "%' OR Apellido LIKE '%" & partesNombre(i) & "%')"
    Next i
    
    ' Ejecutar la consulta SQL
    DbCommand.CommandText = sql
    Set DbRecordset = DbCommand.Execute
    
    ' Comprobar si se encontraron resultados
    If Not DbRecordset.EOF Then
        ' Se encontraron resultados, recorrer el conjunto de registros y agregarlos al ListBox
        Dim Index As Long
        Index = 0 ' Inicializar el índice del vector
        
        Do Until DbRecordset.EOF
            List1.AddItem DbRecordset!Nombre & " " & DbRecordset!Apellido
            ' Aqui vamos a almacenar el identificador de persona en una matriz o colección paara que luego lo utilice
            ' la Sub que generara el reporte en la Grilla ( Botones de consulta con o sin Paginacion )
                        
            ' Obtenemos el PersonaID del registro actual
            Dim IdPersona As Long
            IdPersona = DbRecordset!PersonaID
            
            'ReDim Preserve SelectedPersonIDs(Index): Esta línea redimensiona dinámicamente el array SelectedPersonIDs
            'para que tenga una longitud igual a Index, que es el número actual de elementos en el array más uno
            'para el nuevo elemento. La palabra clave Preserve se utiliza para conservar los elementos existentes en el
            'array mientras se redimensiona.
            'SelectedPersonIDs(Index) = IdPersona: Esta línea asigna el valor de IdPersona al nuevo elemento del array
            'SelectedPersonIDs. El índice Index se utiliza para determinar la posición del nuevo elemento en el array.
            'En resumen, estas líneas de código están agregando dinámicamente el IdPersona al array SelectedPersonIDs
            'mientras se conservan los elementos existentes. Esto permite almacenar los identificadores de las personas
            'que cumplen con los criterios de búsqueda para su posterior uso.
            
            ReDim Preserve SelectedPersonIDs(Index)
            SelectedPersonIDs(Index) = IdPersona
            
            Index = Index + 1
            DbRecordset.MoveNext
        Loop
    Else
        ' No se encontraron resultados, manejar la situación en consecuencia (por ejemplo, mostrar un mensaje)
        MsgBox "No se encontraron personas con el nombre o apellido proporcionado."
    End If
    
    ' Mostrar el ListBox para que el usuario seleccione un elemento manualmente
    List1.Visible = True
    Descargar_Cartel
    
    Exit Sub

MISTAKE:
    MsgBox ("ERROR CONEXION BASE DE DATOS") & Err.Description
    Set DbCommand = Nothing
    Set DbRecordset = Nothing
    Descargar_Cartel
End Sub

Private Sub Chk_Lotes_Click()

Dim DbCommand As ADODB.Command                                            ' Si selecciona el CheckBox de Lotes , habilita el ComboBox lotes y muestra
Dim DbRecordset As ADODB.RecordSet                                        ' todos los lotes disponibles para que pueda seleccionar alguno en la consulta
Dim sql As String
 On Error GoTo Salir
 
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
      
    If Chk_Lotes.value = vbChecked Then                                   ' Verifica si el CheckBox está marcado
       combo_Lotes.Visible = True                                         ' Si está marcado, muestra el ComboBox
       If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
       
       ' sql = "SELECT Lote FROM lot"      'Consulta SQL para obtener los datos de la tabla lot"
       ' El problema es que el campo Lote es "varchar(50) y no se ordena correctamente en orden numerico
       ' En este caso, si el valor en la columna "Lote" es numérico, lo convertimos a un entero
       ' y lo usamos para ordenar. Si no es numérico, le asignamos un valor grande
       '(999999 en este caso) para asegurarnos de que se coloque al final de la lista ordenada.
       'Luego, ordenamos alfabéticamente por el valor de "Lote" original.
      
       sql = "SELECT Lote FROM lot ORDER BY " & _
       "CASE " & _
       "   WHEN ISNUMERIC(Lote) = 1 THEN CAST(Lote AS INT) " & _
       "   ELSE 999999 " & _
       "END, Lote"
       
       DbCommand.CommandText = sql
       Set DbRecordset = DbCommand.Execute
       
       combo_Lotes.Clear                                                  ' Limpiar el ComboBox antes de agregar nuevos elementos
         ' Agregar "--- TODOS ---" al principio sin espacio en blanco
       combo_Lotes.AddItem "--- TODOS ---", 0
       combo_Lotes.ItemData(0) = -1
       combo_Lotes.ListIndex = 0
       
       Chk_Patente.Visible = False                                        ' Cuando esta activado el ChkBox de Lotes
       Label2.Visible = False                                             ' inhibe el ChkBox de Patente y asociados
       Txt_Patente.Visible = False
       Chk_Grupos.Visible = False
       Label3.Visible = False
       Combo_Grupos.Visible = False
        
       
       'combo_Lotes.AddItem "--- TODOS ---"                                ' Agregar "--- TODOS ---" como el primer elemento
       'combo_Lotes.ItemData(0) = -1                                       ' Asignar el valor de ítem de datos para el primer elemento
       'combo_Lotes.ListIndex = -1                                         ' Desmarcar cualquier elemento seleccionado en el ComboBox
     
       Do While Not DbRecordset.EOF
        combo_Lotes.AddItem DbRecordset.Fields("Lote").value              ' Recorrer el recordset y agregar cada valor al ComboBox
        DbRecordset.MoveNext
       Loop
       DbRecordset.Close                                                  ' Cerrar el recordset y la conexión
       Set DbRecordset = Nothing                                          ' Liberar memoria
       Set DbCommand = Nothing
    Else
        combo_Lotes.Visible = False                                       ' Si no está activado, oculta el ComboBox
        Chk_Patente.Visible = True                                        ' Cuando esta activado el ChkBox de Lotes
        Label2.Visible = True                                             ' y Visibiliza el ChkBox de Patente y asociados
        Combo_Grupos.Visible = False                                      ' Si no está activado, activa el ComboBox
        Chk_Grupos.Visible = True                                         ' Cuando esta activado el ChkBox de Lotes
        Label3.Visible = True                                             ' y Visibiliza el ChkBox de Grupo y asociados
    End If
    Exit Sub
Salir:
  MsgBox " Error al cargar los Lotes " & Err.Description, vbCritical
End Sub

' Aqui enviamos los registros que se muestran en la Grilla a la Planilla Excel !!!!!!!!
' 1.- El código verifica si hay datos en la grilla antes de intentar exportarlos a Excel.
' 2.- Creamos instancias de Excel: Utiliza CreateObject("Excel.Application") para crear una instancia de Excel
' 3.- Escritura de datos: Recorre las filas de la grilla y escribe los datos en la hoja de trabajo de Excel.
' 4.- Es importante tener en cuenta que el bucle For row = 1 To Grid.Rows - 1 comienza desde 1,
'     asumiendo que la primera fila de la grilla contiene encabezados.
' 5.- Ajuste de columnas: Después de escribir los datos, el código ajusta automáticamente el ancho de las columnas en Excel
' 6.- Guardar y cerrar el archivo: Finalmente, guarda el archivo Excel en la ubicación especificada y cierra tanto el libro
'     como la instancia de Excel.

Private Sub CmdPlanillaExcel_Click()

    On Error GoTo MISTAKE

    ' Verificar si hay datos en la grilla
    If Grid.Rows <= 1 Then
        MsgBox "No hay datos para exportar a Excel.", vbInformation
        Exit Sub
    End If

    ' Crear una instancia de Excel
    Dim objExcel As Object
    Set objExcel = CreateObject("Excel.Application")

    ' Crear un nuevo libro de Excel
    Dim objWorkbook As Object
    Set objWorkbook = objExcel.Workbooks.Add

    ' Seleccionar la hoja de trabajo activa
    Dim objWorksheet As Object
    Set objWorksheet = objWorkbook.ActiveSheet

    ' Escribir los datos de la grilla en la hoja de trabajo
    Dim row As Integer
    For row = 1 To Grid.Rows - 1
        objWorksheet.Cells(row, 1).value = Grid.TextMatrix(row, 0)
        objWorksheet.Cells(row, 2).value = Grid.TextMatrix(row, 1)
        objWorksheet.Cells(row, 3).value = Grid.TextMatrix(row, 2)
    Next row

    ' Ajustar el ancho de las columnas
    objWorksheet.Columns.AutoFit

    ' Guardar el archivo Excel
    Dim fileName As String
    fileName = App.path & "\datos_exportados.xlsx"
    objWorkbook.SaveAs fileName

    ' Cerrar el libro de Excel
    objWorkbook.Close

    ' Cerrar la instancia de Excel
    objExcel.Quit

    MsgBox "Datos exportados correctamente a " & fileName, vbInformation

    Exit Sub

MISTAKE:
    MsgBox "Error al exportar los datos a Excel: " & Err.Description, vbCritical
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

Private Sub Form_Load()
  cbTipoMovimiento.Visible = False
  cbGrupo.Visible = False
  cbModulo.Visible = False
  Combo2.Visible = False
  lblTipoMovimiento.Visible = False
  Txt_Patente.Visible = False
  combo_Lotes.Visible = False
  Combo_Grupos.Visible = False
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

Private Sub lblFechaHasta_Click()

End Sub

Private Sub List1_Click()

    Dim selectedIndex As Long
    Dim PersonaID As Long
    
    ' Obtener el índice del elemento seleccionado en el ListBox
    selectedIndex = List1.ListIndex
    
    ' Verificar si se seleccionó un elemento válido
    If selectedIndex >= 0 Then
        ' Obtener el PersonaID correspondiente al índice seleccionado en el ListBox
        PersonaID = SelectedPersonIDs(selectedIndex)
        PersonaID_Seleccionada = PersonaID
    Else
        MsgBox "Por favor, seleccione un elemento de la lista.", vbExclamation, "Selección requerida"
    End If

    txtBusqueda = List1.Text
    List1.Clear
    'btn_ReporteGeneral.Visible = False
    'Frame1.Visible = True
 
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
    
    Repaginar = True
     
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
  Frame1.Visible = False                            ' invisiviliza el Frame de "Reportes Generales"
  combo_Lotes.Text = "----TODOS----"
  combo_Lotes.Visible = False
  Chk_Lotes.value = 0
  Chk_Patente = 0
  Txt_Patente.Visible = False
  
End Sub

Private Sub CmdInternetExplorer_Click()
Dim fin As Boolean

    CommonDialog1.DefaultExt = "html"
    CommonDialog1.Filter = "*.html,*.htm"
    CommonDialog1.ShowSave
    If CommonDialog1.fileName <> "" Then
        ExportarHTML (CommonDialog1.fileName)
        fin = Mdlshell.StartDoc(CommonDialog1.fileName, (App.path))             ' Aqui lo presentamos por un "SHELL EXCECUTE" de Windows
    End If
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


Public Sub UpdateWindow()
   ' Repaginar = True
   ' cmdBuscar_Click (0)
   ' cmdBuscar(0).SetFocus
End Sub

Private Sub CmdCerrar_Click()
    Grid.Clear
    If Not (ParentWindow Is Nothing) Then
        ParentWindow.Destroy
    End If
    Unload Me
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Private Sub btn_Consultar_Click()
    On Error GoTo MISTAKE
    
    Dim sql As String
    Dim DbCommand As ADODB.Command
    Dim DbRecordset As ADODB.RecordSet
    Dim totalRecords As Integer
    Dim pageSize As Integer
    Dim totalPages As Integer
    Dim i As Integer
      
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
    
    Combo1.Visible = True
    lblPagina.Visible = True
    
    ' Definir variables para filtros y opciones SQL
    Dim PersonaID As Integer
    PersonaID = PersonaID_Seleccionada
    
    ' Obtener el texto seleccionado del ComboBox de Lotes
    Dim selectedLote As String
    selectedLote = combo_Lotes.Text
    Dim selectedPatente As String
    selectedPatente = Txt_Patente.Text
    Dim selectedGrupo As String
    selectedGrupo = Combo_Grupos.Text
    
    ' Determinar la opción de SQL según los filtros seleccionados
    Dim Opcion_SQL As Integer
    If (PersonaID = 0 And Chk_Lotes.value = 0 And Chk_Patente.value = 0 And Chk_Grupos.value = 0) Then
        Opcion_SQL = 1
    ElseIf (PersonaID <> 0 And Chk_Lotes.value = 0 And Chk_Patente.value = 0 And Chk_Grupos.value = 0) Then
        Opcion_SQL = 2
    ElseIf (PersonaID = 0 And Chk_Lotes.value = 1 And Chk_Patente.value = 0 And Chk_Grupos.value = 0) Then
        Opcion_SQL = 3
    ElseIf (PersonaID <> 0 And Chk_Lotes.value = 1 And Chk_Patente.value = 0 And Chk_Grupos.value = 0) Then
        Opcion_SQL = 4
    ElseIf (PersonaID <> 0 And Chk_Lotes.value = 0 And Chk_Patente.value = 1 And Chk_Grupos.value = 0) Then
        Opcion_SQL = 5
    ElseIf (PersonaID = 0 And Chk_Lotes.value = 0 And Chk_Patente.value = 1 And Chk_Grupos.value = 0) Then
        Opcion_SQL = 6
    ElseIf (PersonaID = 0 And Chk_Lotes.value = 0 And Chk_Patente.value = 0 And Chk_Grupos.value = 1) Then
        Opcion_SQL = 7
    End If
    
    ' Establecer la conexión activa si no está definida
    If DbCommand.ActiveConnection Is Nothing Then
        DbCommand.ActiveConnection = DbConnectionSYS ' Asumiendo que DbConnectionSYS es tu conexión válida a SQL Server
    End If
    
    ' Construir la parte fija de la consulta SQL
    sql = "SELECT p.Nombre AS NombrePersona, p.Apellido, l.Lote, g.Nombre AS NombreGrupo, a.Patente, i.Numero AS Identificador, p.FechaFin " & _
          "FROM per AS p " & _
          "INNER JOIN lotper AS lp ON p.PersonaID = lp.PersonaID " & _
          "INNER JOIN lot AS l ON l.LoteID = lp.LoteID " & _
          "INNER JOIN pergru AS pg ON pg.PersonaID = p.PersonaID " & _
          "LEFT JOIN peraut AS pa ON pa.PersonaID = p.PersonaID " & _
          "LEFT JOIN aut AS a ON a.AutoID = pa.AutoID " & _
          "INNER JOIN gru AS g ON g.GrupoID = pg.GrupoID " & _
          "LEFT JOIN peridn AS pi ON pi.PersonaID = p.PersonaID " & _
          "LEFT JOIN Idn AS i ON i.IdentificacionID = pi.IdentificacionID " ' Unir las tablas Idn y peridn
      
    ' Aplicar el filtro según la opción seleccionada
    Select Case Opcion_SQL
        Case 2
            sql = sql & "WHERE p.PersonaID = " & PersonaID
        Case 3
            sql = sql & "WHERE l.Lote = '" & selectedLote & "'"
        Case 4
            sql = sql & " WHERE l.Lote = '" & selectedLote & "' AND p.PersonaID = " & PersonaID
        Case 6
            sql = sql & " WHERE a.Patente LIKE '%" & selectedPatente & "%'"
        Case 7
            sql = sql & "WHERE g.Nombre = '" & selectedGrupo & "'"
    End Select
    
    ' Agregar la cláusula ORDER BY
    sql = sql & " ORDER BY lp.LoteID"
    
    ' Ejecutar la consulta SQL completa
    DbCommand.CommandText = sql
    Set DbRecordset = DbCommand.Execute
    
    ' Verificar si se encontraron registros
    If DbRecordset.EOF Then
        Grid.Clear ' Limpiar la grilla si no hay registros encontrados
        PersonaID_Seleccionada = 0
        txtBusqueda = ""
        If Opcion_SQL = 4 Then
            MsgBox "La Persona Identificada No Pertenece al Lote Seleccionado...", vbInformation
        Else
            MsgBox "La Persona seleccionada es una Visita, NO pertenece a ningun Lote...", vbInformation
        End If
        Exit Sub
    End If
    
    ' Obtener el número total de registros
    DbRecordset.MoveLast
    totalRecords = DbRecordset.RecordCount
    DbRecordset.MoveFirst
    
    ' Configurar la paginación
    pageSize = 25 ' Número de registros por página
    totalPages = totalRecords \ pageSize
    If totalRecords Mod pageSize <> 0 Then
        totalPages = totalPages + 1
    End If
    
    ' Actualizar el ComboBox con el número total de páginas
    Combo1.Clear
    For i = 1 To totalPages
        Combo1.AddItem i
    Next i
    
    ' Seleccionar la página 1 en el ComboBox
    Combo1.ListIndex = 0
    
    ' Obtener la página actual
    Dim currentPage As Integer
    currentPage = Combo1.ListIndex + 1
    
    ' Calcular el índice de inicio y fin para la página actual
    Dim startIndex As Integer
    Dim endIndex As Integer
    startIndex = (currentPage - 1) * pageSize
    endIndex = startIndex + pageSize - 1
    
    ' Mover el cursor al índice de inicio
    DbRecordset.Move startIndex
    
    ' Llenar la grilla con los datos de la página actual
    Grid.Clear ' Limpiar la grilla antes de agregar nuevos datos
    Grid.Rows = pageSize + 1 ' Definir el número de filas en función del tamaño de la página
    Grid.Cols = 7 ' Número de columnas
    
    ' Establecer anchos de columna
    Grid.ColWidth(0) = 1800 ' Nombre Persona
    Grid.ColWidth(1) = 1500 ' Apellido
    Grid.ColWidth(2) = 1500 ' Lote
    Grid.ColWidth(3) = 1700 ' Nombre Grupo
    Grid.ColWidth(4) = 1500 ' Patente
    Grid.ColWidth(5) = 1400 ' Identificador
    Grid.ColWidth(6) = 1100 ' Estado
    
    ' Establecer nombres de las columnas
    Grid.TextMatrix(0, 0) = "Nombre Persona"
    Grid.TextMatrix(0, 1) = "Apellido"
    Grid.TextMatrix(0, 2) = "Lote"
    Grid.TextMatrix(0, 3) = "Nombre Grupo"
    Grid.TextMatrix(0, 4) = "Patente"
    Grid.TextMatrix(0, 5) = "Identificador"
    Grid.TextMatrix(0, 6) = "Estado"
    
    Dim rowIndex As Integer
    rowIndex = 1 ' Comenzar desde la segunda fila (la primera es para los encabezados)
    
      
    ' Obtener la fecha actual
    Dim fechaActual As Date
    fechaActual = Date
    
    ' Llenar la grilla con los datos de la página actual
    Do Until DbRecordset.EOF Or rowIndex > pageSize
        Grid.TextMatrix(rowIndex, 0) = DbRecordset("NombrePersona")
        Grid.TextMatrix(rowIndex, 1) = DbRecordset("Apellido")
        Grid.TextMatrix(rowIndex, 2) = DbRecordset("Lote")
        Grid.TextMatrix(rowIndex, 3) = DbRecordset("NombreGrupo")
        Grid.TextMatrix(rowIndex, 4) = IIf(IsNull(DbRecordset("Patente")), "", DbRecordset("Patente"))
        Grid.TextMatrix(rowIndex, 5) = IIf(IsNull(DbRecordset("Identificador")), "", DbRecordset("Identificador"))
        
        ' Determinar el estado según FechaFin
        If Not IsNull(DbRecordset("FechaFin")) Then
            If DbRecordset("FechaFin") < fechaActual Then
                Grid.TextMatrix(rowIndex, 6) = "Deshabilitado"
               ' Establecer color de fondo rojo para la celda
                Grid.row = rowIndex
                Grid.col = 6
                Grid.CellBackColor = vbRed
                Grid.CellForeColor = vbWhite
            Else
                Grid.TextMatrix(rowIndex, 6) = "Habilitado"
                Grid.row = rowIndex
                Grid.col = 6
                Grid.CellBackColor = vbWhite
                Grid.CellForeColor = vbBlack
            End If
        Else
            Grid.TextMatrix(rowIndex, 6) = "Habilitado"
            Grid.row = rowIndex
            Grid.col = 6
            Grid.CellBackColor = vbWhite
            Grid.CellForeColor = vbBlack
        End If
        
        rowIndex = rowIndex + 1
        DbRecordset.MoveNext
    Loop
    
    ' Manejar el caso cuando no se encuentran registros en la página actual
    If rowIndex = 1 Then
        MsgBox "No se encontraron registros en la página " & currentPage & ".", vbInformation
    End If
    
    ' Limpiar variables y objetos
    PersonaID_Seleccionada = 0
    txtBusqueda = ""
    
    Exit Sub
    
MISTAKE:
    MsgBox "Error al conectar con la base de datos: " & Err.Description, vbCritical
    Set DbCommand = Nothing
    Set DbRecordset = Nothing
End Sub

Private Sub Combo1_Click()
    On Error GoTo MISTAKE
    
    Dim sql As String
    Dim DbCommand As ADODB.Command
    Dim DbRecordset As ADODB.RecordSet
    Dim totalRecords As Integer
    Dim pageSize As Integer
    Dim totalPages As Integer
    Dim currentPage As Integer
    Dim startIndex As Integer
    Dim endIndex As Integer
   
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
    
    If DbCommand.ActiveConnection Is Nothing Then
        ' Asumiendo que DbConnectionSYS es tu conexión válida a SQL Server
        DbCommand.ActiveConnection = DbConnectionSYS
    End If
    
    ' Obtener el texto seleccionado del ComboBox de Lotes
    Dim selectedLote As String
    selectedLote = combo_Lotes.Text
    Dim selectedPatente As String
    selectedPatente = Txt_Patente.Text
    
    ' Construir la consulta SQL base
    sql = "SELECT p.Nombre AS NombrePersona, p.Apellido, lp.LoteID, l.lote, g.Nombre AS NombreGrupo, a.Patente, i.Numero AS Identificador, p.FechaFin " & _
          "FROM per AS p " & _
          "INNER JOIN lotper AS lp ON p.PersonaID = lp.PersonaID " & _
          "INNER JOIN lot AS l ON l.LoteID = lp.LoteID " & _
          "INNER JOIN pergru AS pg ON pg.PersonaID = p.PersonaID " & _
          "LEFT JOIN peraut AS pa ON pa.PersonaID = p.PersonaID " & _
          "LEFT JOIN aut AS a ON a.AutoID = pa.autoID " & _
          "INNER JOIN gru AS g ON g.GrupoID = pg.GrupoID " & _
          "LEFT JOIN peridn AS pi ON pi.PersonaID = p.PersonaID " & _
          "LEFT JOIN Idn AS i ON i.IdentificacionID = pi.IdentificacionID "
      
    ' Aplicar el filtro según el caso
    Select Case Opcion_SQL
        Case 2
            sql = sql & "WHERE p.PersonaID = " & PersonaID
        Case 3
            sql = sql & "WHERE l.lote = '" & selectedLote & "'"
        Case 4
            sql = sql & " WHERE l.lote = '" & selectedLote & "' AND p.PersonaID = " & PersonaID
        Case 6
            sql = sql & " WHERE a.Patente LIKE '%" & selectedPatente & "%'"
    End Select
      
    ' Agregar la cláusula ORDER BY
    sql = sql & " ORDER BY lp.LoteID"
    
    ' Ejecutar la consulta SQL completa
    DbCommand.CommandText = sql
    Set DbRecordset = DbCommand.Execute
    
    ' Obtener el número total de registros
    DbRecordset.MoveLast
    totalRecords = DbRecordset.RecordCount
    DbRecordset.MoveFirst
    
    ' Configurar la paginación
    pageSize = 25 ' Número de registros por página
    totalPages = totalRecords \ pageSize
    If totalRecords Mod pageSize <> 0 Then
        totalPages = totalPages + 1
    End If
    
    ' Obtener la página seleccionada en el ComboBox
    currentPage = Combo1.ListIndex + 1
    
    ' Calcular el índice de inicio y fin para la página actual
    startIndex = (currentPage - 1) * pageSize
    endIndex = startIndex + pageSize - 1
    
    ' Mover el cursor al índice de inicio
    DbRecordset.MoveFirst
    DbRecordset.Move startIndex
    
    ' Llenar la grilla con los datos de la página actual
    Grid.Clear ' Limpiar la grilla antes de agregar nuevos datos
    Grid.Rows = pageSize + 1 ' Definir el número de filas en función del tamaño de la página
    Grid.Cols = 7 ' Número de columnas
    
    ' Establecer anchos de columna
    Grid.ColWidth(0) = 1800 ' NombrePersona
    Grid.ColWidth(1) = 1500 ' Apellido
    Grid.ColWidth(2) = 1500 ' Lote
    Grid.ColWidth(3) = 1700 ' NombreGrupo
    Grid.ColWidth(4) = 1500 ' Patente
    Grid.ColWidth(5) = 1400 ' Identificador
    Grid.ColWidth(6) = 1100 ' Estado
    
    ' Establecer nombres de las columnas
    Grid.TextMatrix(0, 0) = "Nombre Persona"
    Grid.TextMatrix(0, 1) = "Apellido"
    Grid.TextMatrix(0, 2) = "Lote"
    Grid.TextMatrix(0, 3) = "Nombre Grupo"
    Grid.TextMatrix(0, 4) = "Patente"
    Grid.TextMatrix(0, 5) = "Identificador"
    Grid.TextMatrix(0, 6) = "Estado"
    
    Dim rowIndex As Integer
    rowIndex = 1 ' Empezar desde la segunda fila (la primera es para los encabezados)
    
    ' Obtener la fecha actual
    Dim fechaActual As Date
    fechaActual = Date
    
    ' Llenar la grilla con los datos de la página actual
    Do Until DbRecordset.EOF Or DbRecordset.AbsolutePosition > endIndex
        ' Mostrar NombrePersona en la primera columna
        Grid.TextMatrix(rowIndex, 0) = DbRecordset("NombrePersona")
        ' Mostrar Apellido en la segunda columna
        Grid.TextMatrix(rowIndex, 1) = DbRecordset!Apellido
        ' Mostrar Lote en la tercera columna
        Grid.TextMatrix(rowIndex, 2) = DbRecordset!Lote
        ' Mostrar NombreGrupo en la cuarta columna
        Grid.TextMatrix(rowIndex, 3) = DbRecordset("NombreGrupo")
        
        ' Verificar si el valor de Patente es NULL y asignar un espacio en blanco en ese caso
        If IsNull(DbRecordset("Patente")) Then
            Grid.TextMatrix(rowIndex, 4) = " "
        Else
            Grid.TextMatrix(rowIndex, 4) = DbRecordset("Patente")
        End If
        
        ' Verificar si el valor de Identificador es NULL y asignar un espacio en blanco en ese caso
        If IsNull(DbRecordset("Identificador")) Then
            Grid.TextMatrix(rowIndex, 5) = " "
        Else
            Grid.TextMatrix(rowIndex, 5) = DbRecordset("Identificador")
        End If
        
        ' Determinar el estado según FechaFin
        If Not IsNull(DbRecordset("FechaFin")) Then
            If DbRecordset("FechaFin") < fechaActual Then
                Grid.TextMatrix(rowIndex, 6) = "Deshabilitado"
                ' Establecer color de fondo rojo para la celda
                Grid.row = rowIndex
                Grid.col = 6
                Grid.CellBackColor = vbRed
                Grid.CellForeColor = vbWhite
            Else
                Grid.TextMatrix(rowIndex, 6) = "Habilitado"
                Grid.row = rowIndex
                Grid.col = 6
                Grid.CellBackColor = vbWhite
                Grid.CellForeColor = vbBlack
            End If
        Else
            Grid.TextMatrix(rowIndex, 6) = "Habilitado"
            Grid.row = rowIndex
            Grid.col = 6
            Grid.CellBackColor = vbWhite
            Grid.CellForeColor = vbBlack
        End If
        
        ' Incrementar el índice de fila para pasar a la siguiente fila en la grilla
        rowIndex = rowIndex + 1
        
        ' Mover al siguiente registro en el DbRecordset
        DbRecordset.MoveNext
    Loop
    
    ' Manejar el caso cuando no se encuentran registros en la página actual
    If rowIndex = 1 Then
        MsgBox "No se encontraron registros en la página " & currentPage & ".", vbInformation
    End If
    
    Exit Sub
    
MISTAKE:
    MsgBox "Error al conectar con la base de datos: " & Err.Description, vbCritical
    Set DbCommand = Nothing
    Set DbRecordset = Nothing
End Sub

Private Sub btn_ConsultaSinPaginar_Click()

    On Error GoTo MISTAKE
    
    Dim sql As String
    Dim DbCommand As ADODB.Command
    Dim DbRecordset As ADODB.RecordSet
    Dim i As Integer
   
    Set DbCommand = New ADODB.Command
    Set DbRecordset = New ADODB.RecordSet
    
    Combo1.Visible = False
    lblPagina.Visible = False
      
    If DbCommand.ActiveConnection Is Nothing Then DbCommand.ActiveConnection = DbConnectionSYS
    
    ' Construir la instrucción SQL original con las columnas adicionales
    sql = "SELECT p.Nombre AS NombrePersona, p.Apellido, l.Lote, g.Nombre AS NombreGrupo, a.Patente, i.Numero AS Identificador, p.FechaFin " & _
          "FROM per AS p " & _
          "INNER JOIN lotper AS lp ON p.PersonaID = lp.PersonaID " & _
          "INNER JOIN lot AS l ON l.LoteID = lp.LoteID " & _
          "INNER JOIN pergru AS pg ON pg.PersonaID = p.PersonaID " & _
          "LEFT JOIN peraut AS pa ON pa.PersonaID = p.PersonaID " & _
          "LEFT JOIN aut AS a ON a.AutoID = pa.AutoID " & _
          "INNER JOIN gru AS g ON g.GrupoID = pg.GrupoID " & _
          "LEFT JOIN peridn AS pi ON pi.PersonaID = p.PersonaID " & _
          "LEFT JOIN Idn AS i ON i.IdentificacionID = pi.IdentificacionID " & _
          "ORDER BY lp.LoteID"
        
    ' Ejecutar la consulta SQL original para obtener los datos
    DbCommand.CommandText = sql
    Set DbRecordset = DbCommand.Execute
    
    ' Llenar la grilla con los datos recuperados de la consulta
    Grid.Clear ' Limpiar la grilla antes de agregar nuevos datos
    Grid.Rows = DbRecordset.RecordCount + 1 ' Definir el número de filas en función del total de registros
    Grid.Cols = 7 ' Número de columnas
    
    ' Establecer anchos de columna
    Grid.ColWidth(0) = 1800 ' Nombre Persona
    Grid.ColWidth(1) = 1500 ' Apellido
    Grid.ColWidth(2) = 1500 ' Lote
    Grid.ColWidth(3) = 1700 ' Nombre Grupo
    Grid.ColWidth(4) = 1500 ' Patente
    Grid.ColWidth(5) = 1400 ' Identificador
    Grid.ColWidth(6) = 1100 ' Estado
    
    ' Establecer nombres de las columnas
    Grid.TextMatrix(0, 0) = "Nombre Persona"
    Grid.TextMatrix(0, 1) = "Apellido"
    Grid.TextMatrix(0, 2) = "Lote"
    Grid.TextMatrix(0, 3) = "Nombre Grupo"
    Grid.TextMatrix(0, 4) = "Patente"
    Grid.TextMatrix(0, 5) = "Identificador"
    Grid.TextMatrix(0, 6) = "Estado"
    
    Dim rowIndex As Integer
    rowIndex = 1 ' Empezar desde la segunda fila (la primera es para los encabezados)
    
    ' Obtener la fecha actual
    Dim fechaActual As Date
    fechaActual = Date
    
    ' Llenar la grilla con los datos de la consulta
    Do Until DbRecordset.EOF
        Grid.TextMatrix(rowIndex, 0) = DbRecordset("NombrePersona")
        Grid.TextMatrix(rowIndex, 1) = DbRecordset("Apellido")
        Grid.TextMatrix(rowIndex, 2) = DbRecordset("Lote")
        Grid.TextMatrix(rowIndex, 3) = DbRecordset("NombreGrupo")
        Grid.TextMatrix(rowIndex, 4) = IIf(IsNull(DbRecordset("Patente")), "", DbRecordset("Patente"))
        Grid.TextMatrix(rowIndex, 5) = IIf(IsNull(DbRecordset("Identificador")), "", DbRecordset("Identificador"))
        
        ' Determinar el estado según FechaFin
        If Not IsNull(DbRecordset("FechaFin")) Then
            If DbRecordset("FechaFin") < fechaActual Then
                Grid.TextMatrix(rowIndex, 6) = "Deshabilitado"
                ' Establecer color de fondo rojo para la celda
                Grid.row = rowIndex
                Grid.col = 6
                Grid.CellBackColor = vbRed
                Grid.CellForeColor = vbWhite
            Else
                Grid.TextMatrix(rowIndex, 6) = "Habilitado"
                Grid.row = rowIndex
                Grid.col = 6
                Grid.CellBackColor = vbWhite
                Grid.CellForeColor = vbBlack
            End If
        Else
            Grid.TextMatrix(rowIndex, 6) = "Habilitado"
            Grid.row = rowIndex
            Grid.col = 6
            Grid.CellBackColor = vbWhite
            Grid.CellForeColor = vbBlack
        End If
        
        rowIndex = rowIndex + 1
        DbRecordset.MoveNext
    Loop
    
    ' Manejar el caso cuando no se encuentran registros
    If rowIndex = 1 Then
        MsgBox "No se encontraron registros.", vbInformation
    End If
    
    Exit Sub
    
MISTAKE:
    MsgBox "Error al conectar con la base de datos: " & Err.Description, vbCritical
    Set DbCommand = Nothing
    Set DbRecordset = Nothing
End Sub


