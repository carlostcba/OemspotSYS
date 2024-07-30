Attribute VB_Name = "StartSYS"
'******************************************20080704b******************************************
'            Se agrega la captura de foto en el alta de una persona
'''          creando el TomarFotoMOD y TomarFotoGUI y agregando codigo
'''          en PersonaGUI para el control cmdTomarfoto.
'******************************************20080827******************************************
'       + No anda la exportacion de datos a excel o html
'       Puesto de control Manual:
'           + que los ticket pendientes no solo filtre los del dia, sino que traiga todos.
'           + que el combo de cantidad de menores comience de 0 y adultos de 1
'           + agregar Control Antipassback para los ingresos
'           + el borrado o cancelado de ingreso de ticket no andaba bien
'           - boton para ingreso sin impresion de ticket
'       Reporte de Movimientos:
'           - Reporte de Personas que estan dentro del recinto (filtrado por grupos)
'           - Reporte Resumido de movimientos (nombre apellido, sentido, fecha hora)
'
''' modificaciones del jueves 28 sobre la misma version (20080827)
'
'       + Debe crearse el acceso controlado en puerta, que no emite ticket
'       AdminModulos:
'           + agrego el valor "Controlado" en el tipo de Acceso
'           + agrego el valor "Controlada" en el tipo de Identificacion
'           + creo el fix nº 62 en la tabla catval, CategoriaID 15 = "Tipo de acceso" ValorID 4 = "Controlado"
'           + creo el fix nº 63 en la tabla catval, CategoriaID 3 = "Tipo de Identificacion" ValorID 6 = "Controlada"
'           + se modifica el codigo en PuestoControlManual en el bloque de emision de ticket, para que no emita nada
'''
'******************************************20080829******************************************
'       TomarFotoMOD/GUI:
'           * retoque por que la imagen tapaba los botones
'       PuestoControlManualGUI:
'           * acomode las camaras por que se superponian y se veian mal las camaras
'
''' Lunes 1 de Septiembre (version 20080829)
'           * agrego al codigo de puestocontrolmanual, los colores de fondo para los permisos de ingreso
'             rojo para el vencido, verde para el permitido.
'
'******************************************20080901******************************************
'
'   Lunes 1 de Septiembre
'           * agrego el boton "presentes" al GUI de Movimientos, para busqueda de presentes por Grupo
'             y ademas se agrega todo el codigo correspondiente.
'
'******************************************20080904******************************************
'  Jueves 4 de Septiembre
'
'           * Se agrega en el query de Preautorizados y Lote "abs" para que el orden sea numérico
'             y no por palabras.
'
'           * Se corrige en Identificaciones, el tipo de tarjeta por defecto nuevamente a "Proximidad"
'             ya que al agregar la opción "Controlada" habia sido desconfigurado.
'
'           * Se debe corregir en PuestoControlManual el tipo de documento por defecto a "DNI" ya que
'             actualmente carga "Cedula de Identidad".
'
'******************************************20080908*********************************************
'   Lunes 8 de Septiembre
'
'           * Se revisa la propiedad BackColor del control 'Observaciones', ya que se muestra en rojo y
'             no debería mostrar ningún color en la Salida, eso solo debería suceder en la entrada,
'             cuando se chequea la validez del permiso con verde o rojo de fondo.
'
'               |||||||||||||ESTO ESTA PENDIENTE TODAVIA||||||||||||||||||||||
'
'******************************************20080909*********************************************
''
'           * Se modifica el query de AdminLotes para que muestre en la grilla un referente del lote.
''
'           * Se modifica el query de busqueda de lotes, para poder buscar por Lote, Persona o Calle
''
'           * Creo la función getUltimaVisitaPersona para verificar en el ingreso de una persona, en caso
'             de haber entrado previamente, la patente y observaciones anteriores.
'
'           * Se modifica en PuestoControlManual, que al hacer clic en una foto solo la maximiza en caso que
'             se esté mostrando, si no se carga una foto, no debe maximizar nada.
'
'           * Se crea el fix para la nueva tabla 'cfgfrm' para poder configurar la posicion y tamaño de
'             los formularios del WPC y a futuro los del soft de gestión.
'
'*************************************************************************************************
'   20080922
'           * Se eliminó CargaRapidaPersona y se puso un msgbox en PuestoControlManual
'
'           * Se eliminó el control txtdatospermiso(2)y los datos que contenía se cargan directamente
'             en los controles de fecha que indican desde y hasta cuando tiene permiso la persona.'
'
'           * Se limitaron los controles de fecha para que el operario no pueda elegir desde y hasta
'             cuando la persona tiene permiso de ingresar.
'*************************************************************************************************
'   20080922
'           * Se incorporó nuevamente el control txtdatospermiso(2)y los datos
'             en los controles de fecha que indican desde y hasta cuando tiene permiso la persona
'
'           * Se terminó de modificar la revisión del permiso y perfil de una persona para entrar a un
'             lote.
'             Al  ingresar una persona se chequea si tiene algún permiso y se notifica con colores
'             Amarillo (vencido), Rojo (denegado) y verde (OK).
'*************************************************************************************************
'   20081001
'           * Se trabajo con la pantalla de Puesto de contro manual, optimizando el funcionamiento
'             según critias de Hacoaj con ayuda d Axel y Juan Marcelo:
'             a. se elimino el txt de visita, y se buscara con los datos de personas, nombre, apellido
'             y documento
'             b. se redistribuyeron los botones, y se juntaron los botones de
'             ticket ingreso y preautorizados, donde según el sentido funcionara como uno u otro
'             c. para la lista de preautorizados buscar se mete el texto que se lleno o en apellido
'             o nombre o entidad'
'           * Los preautorizados se incorporo la busqueda compleja segun vector
'           * para los admin se auto selecciona el texto escrito, mas facil para borrar y/o escribir nuevo
'           * Cuando se graba la preautorizacion, estaba invertido el nombre y el apellido
'
'           * Se crea el fix 67 que agrega el campo "Extra" a la tabla pdtmdl para grabar el ticketID
'
'           * Cuando se genera el comando pendiente, se guarda el TicketID en la base de datos para que
'             el WPC pueda relacionarlo.
'   20081112
'           * Acote un poco la fucion que llena los titulos de las grilla fillgrid
'           * En la conexion de prueba faltaba cerrarla antes de aniquilarla
'           * Encontre que en las preautorizaciones me roba un registro y no lo muestra
'           * Trabajare sobre el orden de los preatorizados
'           * En las preautorizadas segun como se navegaba la pantalla, mostraba mas o menos columnas
'           * permitia escribir en el text de preautorizacion, y no debia esto es los pre de talar, solo es para
'               visualizar
'           * Le saque un form y control de usuario para preautorizar que se llamaba desde el Adminpreautorizada
'              ahora solo se agregan preautorizados desde el puesto de control manual
'  20081113
'           * No anda bien el form detallado donde debe traer la información de los ticket pendientes e historicos
'           * Agregar mas informacion en los detalles de los ticket, tanto pendientes como historicos
' 20081114
'           * Depuracion de codigo, le saque algunos forms queno se usaban lo mismo que controles de usuarios
'              Dos form de wpc y el control tambien wpc
'           * Form reportes de movimientos de trj,
'           * en la pantalla de detalles, no andaba el boton de ver ficha de la persona
'           * andaba mal que cuando se salia de la pantalla de detalles refrescaba la lista de los movimientos
'           * la primera busqueda la hacia dos veces,la normal y una previa por evento al llenar el combo de paginas
'
'20081119
'           * Anda mal el ABM de autos, llamaron de German Boris
'20081120
'           * En el adminidentificaciones agregue que se pueda buscar trj por nombre y apellido segun el vector de parametros
'           * Optimizacion en las rutina de Update
'              Impresion de Trj:
'           *  a) Generacion de Update para dos nuevas opciones de configuracion "IMAGEN_FRENTE_TRJ" y  "IMAGEN_CONTRAFRENTE_TRJ"
'              aca se debera guardar la ruta completa + el nombre del archivo grafico para el fondo de la trj
'           *   b) Desde la pantalla de identificaciones se debera visualizar las trj y debe tener dos botones mas
'              imprimir frete, e imprimir contrafrente
'20081202
'           * Nuevo soft Importador para Hacoaj donde se deben agregar opciones de configuracion
'           * Arreglo del Administracion de Sistema, no mostraba todos los parametros y andaba mal la paginacion
'20081205
'             Esta mal en Admin de trj, no muetras las trj que no estan asignadas
'
'16-08-2019   Se incorporo el lector de documentos USB .
'             Se corrijio el problema de "//" cuando se configuraban los directorios de captura de imagen

'19-07-2021   Se incorporo la creacion y actualizacion de la tabla de Registro de conductor,Poliza de Seguro y ART
'             Se realizo la presentacion en Puesto de control de la infoemacion de vencimiento de las Polizas y Registro
'             Se incorpora la insercion  de registro de conducir,poliza de seguros y ART en la tabla "perpolreg"
'             en el Puesto de Control cuando al ingresar una Visita se Crea la Persona

'09-08-2021   Se incorporo la presentacion de las Observaciones de la persona en el Puesto de control por medio de un
'             objeto MsFlexGrid , tambien se muestra  la foto del documento tanto en el Puesto de control como en
'             el Movimiento de Tickets . Se corrijio error en el Preautorizado que no almacenaba el DNI usando el campo
'             "movimiento" en la tabla "pre"....Se presenta el logo OEMSPOT en el Puesto de Control

'17-08-2021   Se incorporo el icono de "BackUp/Respaldo" y se elimino la opcion "Validacion de Ticket" . Se reemplazaron
'             los mensajes "Simicro" por " Oemspot" , cambio del nombre del ejecutable a "Oemspot"

'06-03-2022   Se incorporaron las funciones de Alta ,baja y Actualizaciones de Identificaciones en los
'             Modulos de control de acceso en el formulario "Administracion de Identificaciones"...

'06-04-2022   Se incorporo la funcion de "Depuracion de Modulos" en el Formulario "Administracion de
'             Identificaciones" . Esta funcion tiene por objetivo informar la cantidad de espacios disponibles
'             en los buffers de Propietarios de cada modulo .

'10-10-2022   Se corrijio error en el " Borrado de una tarjeta en el modulo" dado que solo borraba en la Via 1
'             cuando debe borrar en las 4 vias ....Este problema se presenta cuando se utilizan 2 o mas placas
'             y las vias se comandan en placas diferentes, en este caso al igual que en el Alta o la Consulta debe
'             enviar el comando de borrado a todas las vias en uso por ende a todas las placas en uso...
'             Se diferenciaron los comandos de "Avance" enviados por el Puesto de control respectos a los
'             enviados por el Winpark. Los Comandos quedan de la siguiente forma
'             (V9:barrera de estado, V3:barrera de Pulso ,V5:molinete y V6: Puerta)

'26-05-2023   Se incorporo la lectura de lectores QR Seriales , en la solapa
'             "Sistema --> Administracion de Sistema --> PUERTO SERIE PARA LECTOR QR" se debe indicar el Puerto Serial
'             donde se conecta el Lector QR Serial. Si el Puerto seleccionado es "0" significa que no hay Lector serial
'             y que solo utiliza USB. ( Aplicacion inicial en La Clementina )
'             Para disponer del campo "PUERTO SERIE PARA LECTOR QR" , en sistemas ya existentes debe modificarse la base
'             de datos existente en la tabla "cfgopt" modificar el campo
'             "ENTORNO_GRAFICO_SYS" por "PUERTO SERIE PARA LECTOR QR"
'             en la columna "Valor" colocar el Puerto Serie activo y finalmente
'             en la columna "System Parameter" colocar "1" que indica que se puede modificar desde la solapa "Sistema"


'19-07-2023   Se incorporo en el Puesto de control el boton " Salida Atomatica" que permite almacena el movimiento de
'             salida de la visita y abrir la barrera correspondiente  simplemente con scannear el documento.
'             Esta implementacion se realizo para (El Casco - Zarate) que tiene unica via para las visitas y esto
'             aumenta la velocidad de salida ....


'26-09-2023   Se elimino la exigencia de ingreso de datos en algunos campos del registro de conducir,
'             y datos del seguro que demoran mucho el igreso de las visitas

'13-10-2023   Se modifico en la salida de visitas, cuando se lee el documento, no se utilizan los datos
'             del apellido que viene en el codigo micropdf dado que a veces no coincide con el impreso en el DNI
'             o si hay distintos lectores ,los mismo pueden leer caracteres diferentes, por ello solo tomamos el
'             numero de documento y buscamos en la base el nombre y apellido para realizar la busqueda de la persona
'             que quiere salir donde no se repetiran apellidos en caso que haya mas de uno porque ahora busca
'             con nombre y apellido. Finalmente se corrije error de foco en la seleccion de "Modo automatico de Salida"


'18-10-2023(C) Se incorpora lectura de nuevos documentos con distinto formato de lectura
'             Se permiten modificar manualmente las fechas "Desde" y "Hasta" para evitar el uso de los calendarios
'             que hacen lentos los mismo
'             Esta version BETA queda sin LOGIN para testeo en Barrio EL CASCO
'             Se exige el ingreso de LOTE para validar una operacion de ingreso de visitas en el Puesto de Control

'11-02-2024   Se incorpora en el Reporte de movimientos pedientes el boton de "Depuracion" para eliminar los
'             registros mal cargados de visitas que luego no pueden salir y no se pueden borrar...

'20-02-2024   Se incorpora el Reporte General donde se muestran las relaciones de las "Personas Identificadas"
'             con los "Lotes" y el "Grupo" al que pertenecen

'21-02-2024   Se incorpora en el Reporte General la posibilidad de presentar la Grilla en forma paginada
'             o sin paginar, se habilita la "Exportacion HTML" y la "Exportacion Excel"

'25-02-2024   Se incorpora en el Reporte General la presentacion de la "Patente" asociada a la "Persona Identificada"
'             y filtro por "Patente". Se Prsenta en forma automatica el Reporte Html del Reporte de Movimiento de
'             Visitas luego de guardarlo , al igual que el Reporte de Personas Identificadas y el
'             Reporte de Movimiento de Personas Identificadas

'27-02-2024   Se incorpora en el Reporte General la posibilidad de filtrar por "GRUPO" y se adaptan
'             los reportes para presentar las 4 colummnas tanto en la consulta con filtro como en la
'             Consulta sin filtro

'25-06-2024   Se incorpora en el "Reporte de Personas Identificadas" la columna donde informa si tiene tarjeta con numero y si la
'             persona esta habilitada o no para ingresar con dicha "Identificacion".
'             Se realiza la misma modificacion en el mismo reposrtepero en la presentacion "Consulta sin Filtros"
'             Se incorporo la presentacion automatica del Reporte HTML del "Reporte de Identificaciones"

'             Se incorporo el reporte de "Poblacion o Grupo de Personas" que se encuentran en el predio .
'             El reporte informa las personas que se encuentran en el predio y no se han retirado al
'             horario y fecha en que se solicita el mismo.Se incorpora el " Modulo Shell " de Windows para
'             para presentar en forma directa los reportes sin necesidad de guardarlos previamente y se pueden
'             visualizar en cualquier navegador que haya sido predeterminado



Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   INICIO DEL SISTEMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Public DbConnectionSYS As ADODB.Connection
Public DbCommandSYS As ADODB.Command
Public DbRecordsetSYS As ADODB.RecordSet

Public UsuarioActivoSYS As Long
Public NombreUsuarioActivoSYS As String
Public refresco_conexion_MySql_i As Integer
Public Const refresco_conexion_MySql_T As Integer = 6500

Public documento_Nombre As String
Public documento_Apellido As String
Public documento_Genero As String
Public documento_FechaNacimiento As String
Public documento_Numero As String
Public documento_ejemplar As String
Public documento_Codigo As String
Public fgPuesto As Boolean
Public fgTogleo As Boolean
Public identificador As Long

Public PersonaID_Seleccionada As Long               ' almacena el PersonaID seleccionado del vector "SelectPersonIDs"
Public SelectedPersonIDs() As Long                  ' Variable global para almacenar los PersonaID seleccionados



Sub Main()
    Dim InstallService As InstallSVR
    Set InstallService = New InstallSVR

    initSystem
    initSetup

    fgPuesto = False
    fgTogleo = False
    
    identificador = 200000
    
    If Not InstallService.isSoftwareInstalled Then
        InstallStartMOD.Show ' Instala y actualiza
    Else
        Set InstallService = Nothing

        SplashScreenMOD.Show
        SplashScreenMOD.cambiarTexto "Iniciando el Sistema ..."
        connectDatabase
        configurarProductoSoftware


        SplashScreenMOD.cambiarTexto "Actualizando Sistema ..."
        updateSoftware

        SplashScreenMOD.Hide
        initSession
        SplashScreenMOD.Show
        
        SplashScreenMOD.cambiarTexto "Verificando Sistema..."
        testSoftware

        SplashScreenMOD.cambiarTexto "Ejecutando Procesos ..."
        initProcesses

        SplashScreenMOD.cambiarTexto "Ejecución de Sistema..."
        startSystem

        SplashScreenMOD.Hide

    End If

    Set InstallService = Nothing
End Sub

Function connectDatabase() As Boolean
On Error GoTo errorhandler:
    Set DbConnectionSYS = New ADODB.Connection
    Set DbCommandSYS = New ADODB.Command
    Set DbRecordsetSYS = New ADODB.RecordSet
    
    DbConnectionSYS.CursorLocation = adUseClient
    DbConnectionSYS.ConnectionString = "File name=" & App.path & "\videoman.udl"
    DbConnectionSYS.Open '"File Name =" & App.Path & "\videoman.udl"
    
    DB_CONNECTION_STRING_SYS = DbConnectionSYS.ConnectionString
    DbCommandSYS.ActiveConnection = DbConnectionSYS
    connectDatabase = True
    Exit Function
errorhandler:
End Function

Sub DesconnectDatabase()
On Error Resume Next
    
    DbConnectionSYS.Close
    Set DbConnectionSYS = Nothing
    Set DbCommandSYS = Nothing
    Set DbRecordsetSYS = Nothing
    
End Sub

Sub initSystem()
    Beep
End Sub

Sub initSession()
    UsuarioActivoSYS = 0
    If REQUIERE_AUTENTICACION_USUARIO_SYS Then
      ' LoginMOD.Show vbModal                 ' Presenta formulario de Login
    End If
End Sub

Sub startSystem()

    ReconocerWorkstation getWindowsComputerName

   ' Select Case PUERTO_SERIE_LECTORQR_SYS
   '     Case CAT_VAL_SUPERVISOR
   '         MainMOD.Show
   '     Case CAT_VAL_CONTROLADOR_MODULO
   '         WpcMOD.Show
   '     Case CAT_VAL_GESTION_LICENCIAS
   '         GeneradorLicenciasMOD.Show
   ' End Select
   
    MainMOD.Show
End Sub

