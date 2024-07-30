Attribute VB_Name = "UpdateSYS"
Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   ACTUALIZACIONES A REALIZAR AL INICIO DEL SISTEMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'
' INSTRUCCIONES PARA CREAR ACTUALIZACIONES AL SOFTWARE:
'
'       Incrementar el número de ULTIMO_FIX_DISPONIBLE
'
'       Actualizar la función automatizarFix agregando un nuevo "case ULTIMO_FIX_DISPONIBLE:"
'
'       Crear una nueva función de actualización fixULTIMO_FIX_DISPONIBLE()
'

Const ULTIMO_FIX_DISPONIBLE = 76

Function updateSoftware()

    Dim Actualizacion_a_Realizar As Long

    connectDatabase

    Actualizacion_a_Realizar = obtenerUltimaActualizacionRealizada() + 1
    
    While Actualizacion_a_Realizar <= ULTIMO_FIX_DISPONIBLE
        Call automatizarFix(Actualizacion_a_Realizar)
        Actualizacion_a_Realizar = Actualizacion_a_Realizar + 1
    Wend

End Function

Function obtenerUltimaActualizacionRealizada() As Long
    If DbCommandSYS Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT MAX(UpdateID) FROM Upd"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    obtenerUltimaActualizacionRealizada = DbRecordsetSYS.Fields(0).value
End Function

Sub automatizarFix(i As Long)
    
    Select Case i
        Case 1:
            fix0001 ' Soporte para GEO VISION
        Case 2:
            fix0002 ' Soporte para Modelo de WorkStations
        Case 3:
            fix0003 ' Correcciones al Soporte para Comunicación desde el Sistema de Gestión al Módulo Controlador
        Case 4:
            fix0004 ' Soporte para Comunicación desde el Sistema de Gestión al Módulo Controlador
        Case 5:
            fix0005 ' Soporte para directorios para imágenes del Sistema (opciones de configuración)
        Case 6:
            fix0006 ' Soporte para perfil de usuario de "Puesto de Control"
        Case 7:
            fix0007 ' Soporte para directorios para imágenes del Sistema (creación de directorios)
        Case 8:
            fix0008 ' Soporte para Módulos Virtuales
        Case 9:
            fix0009 ' Crear valores por defecto de Grupos y de Perfil para el Control de Acceso
        Case 10:
            fix0010 ' Soporte para documentos únicos por persona
        Case 11:
            fix0011 ' Soporte para Tipo de Relación de Grupo
        Case 12:
            fix0012 ' Soporte para Autos
        Case 13:
            fix0013 ' Soporte para Propiedades Extendidas
        Case 14:
            fix0014 ' Soporte para nuevos Perfiles de Usuarios
        Case 15:
            fix0015 ' Soporte para directorio de imágenes de Autos (opciones de configuración)
        Case 16:
            fix0016 ' Dar de alta algunas propiedades extendidas
        Case 17:
            fix0017 ' Soporte para categoría de Tipo de Movimientos
        Case 18:
            fix0018 ' Corrección en MvtCatVal
        Case 19:
            fix0019 ' Soporte para idioma portugués
        Case 20:
            fix0020 ' Soporte para idioma portugués
        Case 21:
            fix0021 ' Soporte para culturas
        Case 22:
            fix0022 ' Soporte para culturas
        Case 23:
            fix0023 ' Soporte para culturas
        Case 24:
            fix0024 ' Soporte para culturas
        Case 25:
            fix0025 ' Soporte para culturas
        Case 26:
            fix0026 ' Soporte para culturas
        Case 27:
            fix0027 ' Corrección de valores de configuración para imágenes
        Case 28:
            fix0028 ' Soporte para Tipo de Acceso de Grupo
        Case 29:
            fix0029 ' Soporte para Tipo de Acceso de Grupo
        Case 30:
            fix0030 ' Soporte para Tipo de Acceso de Grupo
        Case 31:
            fix0031 ' Soporte para Tipo de Acceso de Grupo
        Case 32:
            fix0032 ' Soporte para Tipo de Acceso de Grupo
        Case 33:
            fix0033 ' Soporte para Reconocimiento de Licencias desde las Workstation
        Case 34:
            fix0034 ' Soporte para Reconocimiento de Licencias desde las Workstation
        Case 35:
            fix0035 ' Soporte para Datos adicionales de personas
        Case 36:
            fix0036 ' Soporte para Datos adicionales de documentos de personas
        Case 37:
            fix0037 ' Soporte para Tipo de Relación de Grupo
        Case 38:
            fix0038 ' Correcciones a las tablas de Personas
        Case 39:
            fix0039 ' Soporte para Módulo VME 100
        Case 40:
            fix0040 ' Se agrega indice para Numero de Indentificacion
        Case 41:
            fix0041 ' Soporte para el Control Calendario para todas las máquinas
        Case 42:
            fix0042 ' Soporte para Identificacion Unica
        Case 43:
            fix0043 ' Soporte para Vigencia de Personas
        Case 44:
            fix0044 ' Valor por defecto de Vigencia y Personas y actualización de TOKEN lblFechaNacimiento
        Case 45:
            fix0045 ' Soporte para propidades extendidas de los tickets para el puesto de control manual de visitas
        Case 46:
            fix0046 ' Soporte para módulos virtuales por workstations
        Case 47:
            fix0047 ' Corrección en la tabla tckprx, el tipo de dato bigint tenia largo 11 y se modifica a 13
        Case 48:
            fix0048 ' Se agrega una Categoria de Sentido, Modulo informa Invertido
        Case 49:
            fix0049 ' Se agrega una Propiedad Extendida, para los ticket, será Destino de la visita
        Case 50:
            fix0050 ' Se elimina el campo DestinoVista en Tck porque se usara en Tckprx cuando sea oportuno
        Case 51:
            fix0051 ' Se elimina el campo DestinoVista en Tckhst porque se usara en Tckprx cuando sea oportuno
        Case 52:
            fix0052 ' Creación de la tabla Lot referido a los Lotes
        Case 53:
            fix0053 'Creación de Tabla LotCatVal referida a los Valores de Categoria Lote
        Case 54:
            fix0054 ' Se agrega la Categoria 26 a la tabla Cat y los 4 valores de dicha categoria a CatVal
        Case 55:
            fix0055 ' Creación de Tabla LotPer referida a la relación entre lotes y personas
        Case 56:
            fix0056 ' Creación de Tabla Pre para los Preautorizados
        Case 57:
            fix0057 ' Adhesion del valor de categoria 5 para el Estado "Otro" del Lote.
        Case 58:
            fix0058 ' Creacion de la tabla IdnPnc referente a las tarjetas de panico.
        Case 59:
            fix0059 ' Se agregan los valores 0 (rechazado) y 5 (panico) a la categoria 23 (tipo movimiento).
        Case 60:
            fix0060 ' Se agregan las categorias 8, 9 y 10 (MOTIVO, CANTIDAD MENORES y OBSERVACIONES) en la tabla PRX (para el ticket).
        Case 61:
            fix0061 ' Configuraciones y valores por defecto para el soft de mantenimiento y depuracion de la base de datos
        Case 62:
            fix0062 ' Se agrega el ValorID 4 a la Categoria 15 de CATVAL, para el ingreso Controlado pero sin ticket
        Case 63:
            fix0063 ' Se agrega el ValorID 6 a la Categoria 3 de CATVAL, para el tipo de Identificacion "Controlada"
        Case 64:
            fix0064 ' Se agrega la Categoria 6 de CFG, para configurar las fotos de eventos entrada/salida
        Case 65:
            fix0065 ' Se agrega la Categoria 7 de CFG, para configurar el sonido de la alarma
        Case 66:
            fix0066 ' Se crea la tabla 'cfgfrm' para configurar las medidas y posiciones de los formularios.
        Case 67:
            fix0067 ' Se agrega un campo a la tabla "pdtmdl" llamado Extra para colocar el TicketID.
        Case 68:
            fix0068 'Opciones de configuracion para los fondos de trj para la impresion de TRJS.
        Case 69:
            fix0069 'Opciones de configuracion para Aplicacion de Importacion.
        
        Case 70:    'agregado de valor de duracion de pulso para los modulos "barrera"
            fix0070
        Case 71:
            fix0071  'afa agregado de insdices para la consulta de autos
        Case 72:
            fix0072     ' afa agregado de registro de fecha hora de logueo de usuarios
                        ' control de tiempo minimo de permanencia
                        ' indice en consulta de movimientos
                        ' indice a consulta de personas
        Case 73:
            fix0073     ' afa de validacion de tickets de codigo de barras a la salida segun configuracion del modulo
        
        Case 74:
            fix0074     ' afa ampliacion del campo numero de la tabla lotes que se usa como observaciones
        
        Case 75:
            fix0075     ' afa registro separado de movimiento rechazado por limite de permanencia
        Case 76:
            fix0076     ' afa creacion de parametros para validar tickets (tabla valida_config)
        End Select
        
End Sub

Private Sub ejecutarSql(sql As String)
'On Error Resume Next
    
    On Error GoTo ERRORSQL
    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute
    Exit Sub

ERRORSQL:
    MsgBox "Error al correr Script en la base de datos, contacte al proveedor del sistema" + vbCrLf + " comando:" + sql

End Sub

Sub fix0001()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0001'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE geo (" _
                & "  GeoID int(10) unsigned NOT NULL DEFAULT 0," _
                & "  Nombre varchar(32) NOT NULL DEFAULT ''," _
                & "  IpHost varchar(32) NOT NULL DEFAULT '127.0.0.1'," _
                & "  CmdPort int(10) unsigned NOT NULL DEFAULT 4550," _
                & "  DataPort int(10) unsigned NOT NULL DEFAULT 5550," _
                & "  User varchar(32) NOT NULL DEFAULT 'Admin'," _
                & "  Psw varchar(32) NOT NULL DEFAULT ''," _
                & "  Primary key(GeoID)" _
                & ");")

        ejecutarSql ("CREATE TABLE geogrpmdl (" _
                & "  GrupoModulos int(10) unsigned NOT NULL DEFAULT 0," _
                & "  GeoID int(10) unsigned NOT NULL DEFAULT 0," _
                & "  INDEX GeoID (GeoID)," _
                & "  Primary key(GrupoModulos)" _
                & ");")

        ejecutarSql ("CREATE TABLE mdlcam (" _
                & "  ModuloID int(10) unsigned NOT NULL DEFAULT 0," _
                & "  Camara varchar(2) NOT NULL DEFAULT 'N'," _
                & "  Primary key(ModuloID)" _
                & ");")

        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(49, 'Geo', 'Tabla de GeoVision en el Sistema con los parametros de conexión', 2);")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(50, 'GeoGrpmdl', 'Tabla de vinculación de WPC (GrupoModulos) y GeoVision ', 2);")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(51, 'MdlCam', 'Tabla de vinculación de Modulos y Camara GeoVision ', 2);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0001"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0002()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0002'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE Wks ( " _
                & "WorkstationID INTEGER NOT NULL, " _
                & "Nombre VARCHAR(32), " _
                & "SystemParameter INTEGER, " _
                & "PRIMARY KEY (WorkstationID), " _
                & "UNIQUE(Nombre) " _
                & "); ")

        ejecutarSql ("CREATE TABLE WksOpt (" _
                & "WorkstationID INTEGER NOT NULL," _
                & "OpcionID INTEGER NOT NULL," _
                & "Nombre VARCHAR(32)," _
                & "Valor VARCHAR(8192)," _
                & "SystemParameter INTEGER, " _
                & "PRIMARY KEY(WorkstationID, OpcionID), " _
                & "UNIQUE(WorkstationID, Nombre) " _
                & "); ")

        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(52, 'Wks', 'Estaciones de Trabajo (Workstation)', 2);")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(53, 'WksOpt', 'Opciones de Estaciones de Trabajo (Workstation)', 2);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0002"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0003()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0003'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("DELETE FROM Dim WHERE DimensionID = 47;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0003"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub
        
Sub fix0004()
On Error Resume Next

    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0004'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE PdtMdl (" _
                & "PdtMdlID INTEGER unsigned NOT NULL DEFAULT 0," _
                & "ModuloID INTEGER unsigned NOT NULL DEFAULT 0," _
                & "Comando VARCHAR(50) NOT NULL DEFAULT ''," _
                & "Inmediato INTEGER unsigned NOT NULL DEFAULT 0," _
                & "PRIMARY KEY (PdtMdlID)," _
                & "INDEX `ModuloID` (`ModuloID`)," _
                & "INDEX `Inmediato` (`Inmediato`)" _
                & ");")

        ejecutarSql ("CREATE TABLE PdtIdn (" _
                & "PdtIdnID INTEGER unsigned NOT NULL DEFAULT 0," _
                & "ModuloID INTEGER unsigned NOT NULL DEFAULT 0," _
                & "Numero VARCHAR(32) NOT NULL DEFAULT ''," _
                & "Descripcion VARCHAR(32) NOT NULL DEFAULT ''," _
                & "Perfil INTEGER unsigned NOT NULL DEFAULT 0," _
                & "PRIMARY KEY (PdtIdnID)," _
                & "INDEX `ModuloID` (`ModuloID`)," _
                & "INDEX `Numero` (`Numero`)" _
                & ");")

        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(47, 'PdtMdl', 'Lista de ABM Pendientes de Trj y perfiles generados desde el Sistema de Gestión para subir a la Memoria los Módulos para el trabajo Off-Line', 2);")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(48, 'PdtIdn', 'Lista de Trj y perfiles cargados en los Módulos para el trabajo Off-Line', 2);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0004"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0005()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0005'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 5, 'PATH_IMAGENES_PERSONAS', '" & "\\\\" & getWindowsComputerName & "\\ImagenesServidorVideoman\\" & "AdminPersonas" & "', 0);")
        ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 6, 'PATH_IMAGENES_VISITA_INGRESOS', '" & "\\\\" & getWindowsComputerName & "\\ImagenesServidorVideoman\\" & "VisitaIngresos" & "',0);")
        ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 7, 'PATH_IMAGENES_VISITA_SALIDAS', '" & "\\\\" & getWindowsComputerName & "\\ImagenesServidorVideoman\\" & "VisitaSalidas" & "',0);")
        ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 8, 'PATH_IMAGENES_MOVIMIENTOS', '" & "\\\\" & getWindowsComputerName & "\\ImagenesServidorVideoman\\" & "Movimientos" & "',0);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0005"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0006()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0006'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 15, 'Puesto Control Manual', 2);")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 15)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0006"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0007()
On Error Resume Next
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0007'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        MkDir App.Path & "\Imagenes\" & "AdminPersonas"
        MkDir App.Path & "\Imagenes\" & "Movimientos"
        MkDir App.Path & "\Imagenes\" & "VisitaIngresos"
        MkDir App.Path & "\Imagenes\" & "VisitaSalidas"

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0007"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0008()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0008'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 6, 'Módulo Virtual', 2)")
    
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0008"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0009()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0009'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(1, 'TODOS', 'Todas las Personas')")
        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(2, 'Propietarios', 'Propietarios')")
        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(3, 'Empleados', 'Empleados')")
        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(4, 'Visitas', 'Visitas')")

        ejecutarSql ("INSERT INTO Prf(PerfilID, Nombre, Descripcion) VALUES(1, 'TODOS', 'Todos los horarios de la semana')")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 7, 0, 0, 2359)")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 1, 1, 0, 2359)")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 2, 2, 0, 2359)")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 3, 3, 0, 2359)")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 4, 4, 0, 2359)")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 5, 5, 0, 2359)")
        ejecutarSql ("INSERT INTO PrfVal(PerfilID, ValorID, Dia, HoraInicio, HoraFin ) VALUES(1, 6, 6, 0, 2359)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0009"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0010()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0010'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`perdoccatval` ADD UNIQUE INDEX `Unico`(`PersonaID`, `CategoriaID`, `ValorID`);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0010"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0011()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0011'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(18, 'Tipo Relación de Grupo', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 1, 'Referente', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 2, 'Esposa', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 3, 'Esposo', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 4, 'Hijo', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 5, 'Hija', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 6, 'Madre', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 7, 'Padre', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 8, 'Socio', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 9, 'Empleado', 2)")

       ejecutarSql ("ALTER TABLE `videoman`.`pergru` ADD COLUMN `CategoriaID` INTEGER NOT NULL AFTER `GrupoID`, ADD COLUMN `ValorID` INTEGER NOT NULL AFTER `CategoriaID`;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0011"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If
End Sub

Sub fix0012()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0012'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

    ejecutarSql ("CREATE TABLE Aut (" _
            & "AutoID INTEGER NOT NULL," _
            & "Patente VARCHAR(32)," _
            & "PRIMARY KEY (AutoID)," _
            & "UNIQUE(Patente)" _
            & ");")
        
        ejecutarSql ("CREATE TABLE AutCatVal (" _
            & "AutoID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(AutoID, CategoriaID, ValorID)" _
            & ");")

        ejecutarSql ("CREATE TABLE PerAut (" _
            & "PersonaID INTEGER NOT NULL," _
            & "AutoID INTEGER NOT NULL," _
            & "PRIMARY KEY(PersonaID, AutoID)" _
            & ");")

        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(54, 'Aut', 'Autos', 2)")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(55, 'AutCatVal', 'Valores de Categorías de Autos', 2)")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(56, 'PerAut', 'Autos de Personas', 2)")

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(19, 'Marca de Auto', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 1, 'Ford', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 2, 'Fiat', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 3, 'Honda', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 4, 'Renault', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 5, 'Audi', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 6, 'Alfa Romeo', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 7, 'Peugeot', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 8, 'GMC', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 9, 'BMW', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(19, 10, 'Volkswagen', 2)")

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(20, 'Color de Auto', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(20, 1, 'Negro', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(20, 2, 'Rojo', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(20, 3, 'Blanco', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(20, 4, 'Verde', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(20, 5, 'Azul', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(20, 6, 'Gris', 2)")

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(21, 'Tipo de Auto', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(21, 1, '4x4', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(21, 2, 'Cupe', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(21, 3, 'Sedán', 2)")

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(22, 'Modelo de Auto', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(22, 1, 'Ford Fiesta', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(22, 2, 'Peugeot 206', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(22, 3, 'Fiat Palio', 2)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0012"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If
End Sub

Sub fix0013()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0013'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE Prx (" _
            & "PropiedadID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Descripcion VARCHAR(8192)," _
            & "PRIMARY KEY (PropiedadID)," _
            & "UNIQUE(Nombre)" _
            & ");")

        ejecutarSql ("CREATE TABLE PerPrx (" _
            & "PersonaID INTEGER NOT NULL," _
            & "PropiedadID INTEGER NOT NULL," _
            & "Valor VARCHAR(8192)," _
            & "PRIMARY KEY(PersonaID, PropiedadID)" _
            & ");")

        ejecutarSql ("CREATE TABLE AutPrx (" _
            & "AutoID INTEGER NOT NULL," _
            & "PropiedadID INTEGER NOT NULL," _
            & "Valor VARCHAR(8192)," _
            & "PRIMARY KEY(AutoID, PropiedadID)" _
            & ");")

        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(57, 'Prx', 'Propiedades Extendidas del Sistema', 2)")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(58, 'PerPrx', 'Propiedades Extendidas de Personas', 2)")
        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(59, 'AutPrx', 'Propiedades Extendidas de Autos', 2)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0013"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If
End Sub

Sub fix0014()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0014'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 16, 'Estación de Trabajo', 2);")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 16)")

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 17, 'Administración de Autos', 2);")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 17)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0014"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0015()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0015'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 9, 'PATH_IMAGENES_AUTOS', '" & "\\\\" & getWindowsComputerName & "\\ImagenesServidorVideoman\\" & "AdminAutos" & "', 0);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0015"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0016()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0016'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Prx(PropiedadID, Nombre, Descripcion) VALUES(1, 'Altura', 'Altura');")
        ejecutarSql ("INSERT INTO Prx(PropiedadID, Nombre, Descripcion) VALUES(2, 'Ancho', 'Ancho');")
        ejecutarSql ("INSERT INTO Prx(PropiedadID, Nombre, Descripcion) VALUES(3, 'Peso', 'Peso');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0016"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0017()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0017'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(23, 'Tipo de Movimiento', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(23, 1, 'Peatonal', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(23, 2, 'Vehicular', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(23, 3, 'Presentismo', 2);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0017"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0018()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0018'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE mvtcatval  CHANGE COLUMN MovimientoID MovimientoID bigint(13) unsigned NOT NULL DEFAULT 0;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0018"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0019()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0019'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Cul(CulturaID, Nombre, SystemParameter) VALUES(3, 'pt-br', 2);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0019"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0020()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0020'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (1, 3, '*Indice de Contenido ...');")
        ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (2, 3, '*Usuario');")
        ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (3, 3, '*Clave:');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0020"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0021()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0021'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE Cul ADD COLUMN Descripcion VARCHAR(64);")

        ejecutarSql ("UPDATE Cul SET Descripcion = 'Español' WHERE CulturaID = 1;")
        ejecutarSql ("UPDATE Cul SET Descripcion = 'English' WHERE CulturaID = 2;")
        ejecutarSql ("UPDATE Cul SET Descripcion = 'Português' WHERE CulturaID = 3;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0021"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0022()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0022'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (4, 'cmdIngresar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (4, 1, 'Ingresar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (4, 2, 'Log in');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (4, 3, '*Ingresar');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (5, 'lblVersion');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (5, 1, 'Versión');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (5, 2, 'Version');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (5, 3, '*Versión');")
            
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (6, 'tituloLogin');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (6, 1, 'Inicio de Sistema VIDEOMAN');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (6, 2, 'VIDEOMAN Software');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (6, 3, '*Inicio de Sistema VIDEOMAN');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (7, 'ConfigEstacionTrabajo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (7, 1, 'Estación de Trabajo...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (7, 2, 'Workstation...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (7, 3, '*Estación de Trabajo...');")
       
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (8, 'ExtenderSistema');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (8, 1, 'Extender Sistema ...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (8, 2, 'Upgrade Software...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (8, 3, '*Extender Sistema ...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (9, 'AdminSistema');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (9, 1, 'Administración de Sistema...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (9, 2, 'System Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (9, 3, '*Administración de Sistema...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (10, 'AdminUsuarios');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (10, 1, 'Administración de Usuarios...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (10, 2, 'User Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (10, 3, '*Administración de Usuarios...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (11, 'AdminPersonas');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (11, 1, 'Administración de Personas...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (11, 2, 'Person Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (11, 3, '*Administración de Personas...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (12, 'AdminModulos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (12, 1, 'Administración de Módulos...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (12, 2, 'Device Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (12, 3, '*Administración de Módulos...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (13, 'AdminGrupos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (13, 1, 'Administración de Grupos...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (13, 2, 'Group Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (13, 3, '*Administración de Grupos...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (14, 'AdminPerfiles');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (14, 1, 'Administración de Perfiles...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (14, 2, 'Profile Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (14, 3, '*Administración de Perfiles...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (15, 'AdminIdentificaciones');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (15, 1, 'Administración de Identificaciones...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (15, 2, 'Identification Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (15, 3, '*Administración de Identificaciones...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (16, 'AdminAutos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (16, 1, 'Administración de Autos...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (16, 2, 'Car Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (16, 3, '*Administración de Autos...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (17, 'InstalarActualizacion');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (17, 1, 'Instalar Actualización...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (17, 2, 'Install Update...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (17, 3, '*Instalar Actualización...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (18, 'Permisos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (18, 1, 'Administración de Permisos...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (18, 2, 'Permission Manager...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (18, 3, '*Administración de Permisos...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (19, 'PuestoControl');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (19, 1, 'Puesto de Control...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (19, 2, 'Check Point...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (19, 3, '*Puesto de Control...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (20, 'ReporteDeMovimientos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (20, 1, 'Reporte de Movimientos...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (20, 2, 'Events Report...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (20, 3, '*Reporte de Movimientos...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (21, 'ReporteMovimientos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (21, 1, 'Reporte de Tickets...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (21, 2, 'Tickets Report...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (21, 3, '*Reporte de Tickets...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (22, 'mnuPrincipal');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (22, 1, 'Principal');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (22, 2, 'Main');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (22, 3, '*Principal');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (23, 'Sistema');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (23, 1, 'Sistema');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (23, 2, 'System');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (23, 3, '*Sistema');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (24, 'Modulos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (24, 1, 'Módulos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (24, 2, 'Devices');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (24, 3, '*Módulos');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (25, 'ControlAcceso');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (25, 1, 'Control de Acceso');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (25, 2, 'Access Control');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (25, 3, '*Control de Acceso');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (26, 'General');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (26, 1, 'General');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (26, 2, 'General');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (26, 3, '*General');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (27, 'Ayuda');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (27, 1, 'Ayuda');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (27, 2, 'Help');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (27, 3, '*Ayuda');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (28, 'CambiarClaveAcceso');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (28, 1, 'Cambiar Clave de Acceso...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (28, 2, 'Change Password...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (28, 3, '*Cambiar Clave de Acceso...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (29, 'AcercaDe');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (29, 1, 'Acerca de...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (29, 2, 'About...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (29, 3, '*Acerca de...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (30, 'Salir');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (30, 1, 'Salir');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (30, 2, 'Exit');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (30, 3, '*Salir');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (31, 'AdminSistemaToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (31, 1, 'Sistema');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (31, 2, 'System');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (31, 3, '*Sistema');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (32, 'AdminUsuariosToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (32, 1, 'Usuarios');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (32, 2, 'User');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (32, 3, '*Usuarios');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (33, 'AdminPersonasToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (33, 1, 'Personas');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (33, 2, 'Person');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (33, 3, '*Personas');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (34, 'AdminModulosToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (34, 1, 'Módulos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (34, 2, 'Device');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (34, 3, '*Módulos');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (35, 'AdminGruposToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (35, 1, 'Grupos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (35, 2, 'Group');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (35, 3, '*Grupos');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (36, 'AdminPerfilesToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (36, 1, 'Perfiles');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (36, 2, 'Profile');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (36, 3, '*Perfiles');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (37, 'AdminIdentificacionesToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (37, 1, 'Identificaciones');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (37, 2, 'Identification');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (37, 3, '*Identificaciones');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (38, 'PermisosToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (38, 1, 'Permisos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (38, 2, 'Permission');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (38, 3, '*Permisos');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (39, 'ReporteMovimientosToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (39, 1, 'Tickets');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (39, 2, 'Tickets');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (39, 3, '*Tickets');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (40, 'PuestoControlManualToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (40, 1, 'Puesto Control');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (40, 2, 'Check Point');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (40, 3, '*Puesto Control');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (41, 'AdminAutosToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (41, 1, 'Autos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (41, 2, 'Car');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (41, 3, '*Autos');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (42, 'MovimientosToolbar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (42, 1, 'Movimientos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (42, 2, 'Events');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (42, 3, '*Movimientos');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0022"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0023()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0023'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (43, 'lblBusqueda');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (43, 1, 'Búsqueda:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (43, 2, 'Search:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (43, 3, '*Búsqueda:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (44, 'cmdBuscar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (44, 1, 'Buscar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (44, 2, 'Search');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (44, 3, '*Buscar');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (45, 'CmdMasOpciones');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (45, 1, 'Más Opciones >>');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (45, 2, 'More Options >>');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (45, 3, '*Más Opciones >>');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (46, 'CmdImprimir');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (46, 1, 'Imprimir Datos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (46, 2, 'Print Data');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (46, 3, '*Imprimir Datos');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (47, 'CmdInternetExplorer');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (47, 1, 'Exportar Datos a HTML');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (47, 2, 'Export Data to HTML');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (47, 3, '*Exportar Datos a HTML');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (48, 'CmdPlanilla');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (48, 1, 'Exportar Datos a Excel');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (48, 2, 'Export Data to Excel');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (48, 3, '*Exportar Datos a Excel');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (49, 'CmdAgregar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (49, 1, 'Agregar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (49, 2, 'Create...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (49, 3, '*Agregar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (50, 'cmdActualizar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (50, 1, 'Actualizar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (50, 2, 'Udpdate...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (50, 3, '*Actualizar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (51, 'CmdBorrar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (51, 1, 'Borrar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (51, 2, 'Delete');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (51, 3, '*Borrar');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (52, 'cmdCerrar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (52, 1, 'Cerrar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (52, 2, 'Close');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (52, 3, '*Cerrar');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0023"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0024()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0024'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (53, 'cmdModuloSalida');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (53, 1, 'Módulo Salida...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (53, 2, 'Output Device...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (53, 3, '*Módulo Salida...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (54, 'lblNombre');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (54, 1, 'Nombre:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (54, 2, 'Name:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (54, 3, '*Nombre:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (55, 'lblTipoModulo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (55, 1, 'Tipo Módulo:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (55, 2, 'Device Type:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (55, 3, '*Tipo Módulo:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (56, 'lblTipoAcceso');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (56, 1, 'Tipo Acceso:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (56, 2, 'Access Type:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (56, 3, '*Tipo Acceso:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (57, 'lblDescripcion');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (57, 1, 'Descripción:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (57, 2, 'Description:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (57, 3, '*Descripción:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (58, 'lblTipoIdentificacion');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (58, 1, 'Tipo Identificación:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (58, 2, 'Identification Type:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (58, 3, '*Tipo Identificación:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (59, 'lblSentido');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (59, 1, 'Sentido:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (59, 2, 'Direction:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (59, 3, '*Sentido:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (60, 'lblEncuesta');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (60, 1, 'Encuesta:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (60, 2, 'Scans:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (60, 3, '*Encuesta:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (61, 'lblResponde');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (61, 1, 'Responde:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (61, 2, 'Responses:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (61, 3, '*Responde:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (62, 'lblRequiereAntipassBack');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (62, 1, 'AntipassBack:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (62, 2, 'AntipassBack:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (62, 3, '*AntipassBack:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (63, 'lblAddress');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (63, 1, 'Address:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (63, 2, 'Address:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (63, 3, '*Address:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (64, 'lblGrupoModulos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (64, 1, 'Grupo Módulos:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (64, 2, 'Devices Group:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (64, 3, '*Grupo Módulos:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (65, 'lblOrdenEncuesta');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (65, 1, 'Orden Encuesta:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (65, 2, 'Scan Order:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (65, 3, '*Orden Encuesta:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (66, 'lblModuloEntrada');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (66, 1, 'Módulo Entrada:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (66, 2, 'Input Device:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (66, 3, '*Módulo Entrada:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (67, 'lblModuloSalida');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (67, 1, 'Módulo Salida:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (67, 2, 'Output Device:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (67, 3, '*Módulo Salida:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (69, 'lblFuncionando');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (69, 1, 'Funcionando:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (69, 2, 'Working:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (69, 3, '*Funcionando:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (70, 'lblProtocolo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (70, 1, 'Protocolo:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (70, 2, 'Protocol:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (70, 3, '*Protocolo:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (71, 'CmdBajarPermisosModulo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (71, 1, 'Bajar Permisos Módulo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (71, 2, 'Device Profiles Download');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (71, 3, '*Bajar Permisos Módulo');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (72, 'CmdSubirPermisosModulo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (72, 1, 'Subir Permisos Módulo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (72, 2, 'Device Profiles Upload');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (72, 3, '*Subir Permisos Módulo');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (73, 'cmdGuardar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (73, 1, 'Guardar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (73, 2, 'Save');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (73, 3, '*Guardar');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (74, 'cmdModuloEntrada');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (74, 1, 'Módulo Entrada...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (74, 2, 'Input Device...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (74, 3, '*Módulo Entrada...');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0024"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0025()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0025'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (75, 'lblApellido');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (75, 1, 'Apellido:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (75, 2, 'Last Name:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (75, 3, '*Apellido:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (76, 'lblNombre');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (76, 1, 'Nombre:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (76, 2, 'First Name:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (76, 3, '*Nombre:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (77, 'lblSexo');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (77, 1, 'Sexo:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (77, 2, 'Gender:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (77, 3, '*Sexo:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (78, 'lblNacionalidad');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (78, 1, 'Nacionalidad:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (78, 2, 'Nacionality:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (78, 3, '*Nacionalidad:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (79, 'lblRoles');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (79, 1, 'Roles:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (79, 2, 'Roles:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (79, 3, '*Roles:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (80, 'lblDocumentos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (80, 1, 'Documentos:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (80, 2, 'Identifications:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (80, 3, '*Documentos:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (81, 'lblTelefonos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (81, 1, 'Teléfonos:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (81, 2, 'Phone Numbers:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (81, 3, '*Teléfonos:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (82, 'lblEmails');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (82, 1, 'Emails:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (82, 2, 'Emails:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (82, 3, '*Emails:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (83, 'lblDirecciones');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (83, 1, 'Direcciones:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (83, 2, 'Addresses:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (83, 3, '*Direcciones:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (84, 'lblOtrosDatos');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (84, 1, 'Otros Datos:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (84, 2, 'Aditional Information:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (84, 3, '*Otros Datos:');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (85, 'CmdImportarFoto');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (85, 1, 'Importar Foto');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (85, 2, 'Import Picture');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (85, 3, '*Importar Foto');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (86, 'cmdCapturarFoto');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (86, 1, 'Capturar Foto');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (86, 2, 'Capture Picture...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (86, 3, '*Capturar Foto');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (87, 'cmdAgregarRol');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (87, 1, 'Agregrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (87, 2, 'Add...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (87, 3, '*Agregrar...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (88, 'cmdBorrarRol');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (88, 1, 'Borrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (88, 2, 'Delete...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (88, 3, '*Borrar...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (89, 'cmdAgregarDoc');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (89, 1, 'Agregar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (89, 2, 'Add...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (89, 3, '*Agregar...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (90, 'cmdActualizarDoc');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (90, 1, 'Actualizar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (90, 2, 'Update...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (90, 3, '*Actualizar...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (91, 'cmdBorrarDoc');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (91, 1, 'Borrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (91, 2, 'Delete...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (91, 3, '*Borrar...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (92, 'cmdAgregarTel');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (92, 1, 'Agregar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (92, 2, 'Add...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (92, 3, '*Agregar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (93, 'cmdActualizarTel');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (93, 1, 'Actualizar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (93, 2, 'Update...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (93, 3, '*Actualizar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (94, 'cmdBorrarTel');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (94, 1, 'Borrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (94, 2, 'Delete...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (94, 3, '*Borrar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (95, 'cmdAgregarMai');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (95, 1, 'Agregar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (95, 2, 'Add...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (95, 3, '*Agregar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (96, 'cmdActualizarMai');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (96, 1, 'Actualizar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (96, 2, 'Update...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (96, 3, '*Actualizar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (97, 'cmdBorrarMai');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (97, 1, 'Borrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (97, 2, 'Delete...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (97, 3, '*Borrar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (98, 'cmdAgregarDir');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (98, 1, 'Agregar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (98, 2, 'Add...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (98, 3, '*Agregar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (99, 'cmdActualizarDir');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (99, 1, 'Actualizar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (99, 2, 'Update...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (99, 3, '*Actualizar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (100, 'cmdBorrarDir');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (100, 1, 'Borrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (100, 2, 'Delete...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (100, 3, '*Borrar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (101, 'cmdAgregarPrx');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (101, 1, 'Agregar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (101, 2, 'Add...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (101, 3, '*Agregar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (102, 'cmdActualizarPrx');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (102, 1, 'Actualizar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (102, 2, 'Update...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (102, 3, '*Actualizar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (103, 'cmdBorrarPrx');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (103, 1, 'Borrar...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (103, 2, 'Delete...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (103, 3, '*Borrar...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (104, 'cmdSiguiente');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (104, 1, 'Siguiente >>');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (104, 2, 'Next >>');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (104, 3, '*Siguiente >>');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (105, 'lblFechaNacimiento');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (105, 1, 'Fecha Nacimiento:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (105, 2, 'Birthday:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (105, 3, '*Fecha Nacimiento:');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0025"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0026()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0026'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (106, 'CmdArboles');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (106, 1, 'Arboles...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (106, 2, 'Trees...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (106, 3, '*Arboles...');")
        
        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (107, 'CmdCategorias');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (107, 1, 'Categorías...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (107, 2, 'Categories...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (107, 3, '*Categorías...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (108, 'CmdCulturas');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (108, 1, 'Culturas...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (108, 2, 'Cultures...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (108, 3, '*Culturas...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (109, 'CmdEstados');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (109, 1, 'Estados...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (109, 2, 'States...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (109, 3, '*Estados...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (110, 'CmdRedes');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (110, 1, 'Redes...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (110, 2, 'Networks...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (110, 3, '*Redes...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (111, 'CmdPropiedadesExtendidas');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (111, 1, 'Props. Extendidas...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (111, 2, 'Extended Props...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (111, 3, '*Props. Extendidas...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (112, 'lblSeleccion');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (112, 1, 'Doble click para seleccionar un elemento');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (112, 2, 'Double click to select an item');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (112, 3, '*Doble click para seleccionar un elemento');")


        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (113, 'LblDescripcionLicencia1');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (113, 1, 'Para extender el Sistema, puede realizar la solicitud de Licencias. Con este Asistente, puede seleccionar de la lista de Licencias disponibles cuales desee y agregarlas a una Nueva Solicitud. Al ejecutar la solicitud, se generará un archivo el cual deberá enviar para poder procesar su Solicitud. ');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (113, 2, 'To extend the system, you must order new Licenses. Use this wizard to order the licenses you need selecting them from the list below. Then generate the License Order File and send it to the provider.');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (113, 3, '*Para extender el Sistema, puede realizar la solicitud de Licencias. Con este Asistente, puede seleccionar de la lista de Licencias disponibles cuales desee y agregarlas a una Nueva Solicitud. Al ejecutar la solicitud, se generará un archivo el cual deberá enviar para poder procesar su Solicitud. ');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (114, 'LblDescripcionLicencia2');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (114, 1, 'Una vez procesada la Solicitud, recibirá una Actualización de Software con las Licencias Correspondientes.');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (114, 2, 'After We process your order file, You''ll recieve a Purchase File and must be installed.');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (114, 3, '*Una vez procesada la Solicitud, recibirá una Actualización de Software con las Licencias Correspondientes.');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (115, 'lblLicenciasDisponibles');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (115, 1, 'Licencias disponibles para Solicitud:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (115, 2, 'New available licenses:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (115, 3, '*Licencias disponibles para Solicitud:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (116, 'lblLicenciasASolicitar');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (116, 1, 'Nueva Solicitud:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (116, 2, 'New Order:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (116, 3, '*Nueva Solicitud:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (117, 'lblLicenciasYaInstaladas');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (117, 1, 'Licencias ya Instaladas:');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (117, 2, 'Already installed licenses');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (117, 3, '*Licencias ya Instaladas:');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (118, 'CmdAgregarNuevaSolicitud');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (118, 1, 'Agregar a Nueva Solicitud');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (118, 2, 'Add to Order');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (118, 3, '*Agregar a Nueva Solicitud');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (119, 'cmdSolicitarLicencias');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (119, 1, 'SOLICITAR ESTAS LICENCIAS...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (119, 2, 'CREATE ORDER...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (119, 3, '*SOLICITAR ESTAS LICENCIAS...');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (120, 'CmdBorrarLicencia');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (120, 1, 'Quitar Licencia de esta Solicitud');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (120, 2, 'Delete Item');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (120, 3, '*Quitar Licencia de esta Solicitud');")

        ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (121, 'cmdInstalarActualizacion');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (121, 1, 'Instalar Archivo de Actualización ...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (121, 2, 'Purchase File Install...');")
            ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (121, 3, '*Instalar Archivo de Actualización ...');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0026"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0027()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0027'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("UPDATE CfgOpt SET SystemParameter = 1 WHERE ConfiguracionID = 2 AND (OpcionID = 5 OR OpcionID = 6 OR OpcionID = 7 OR OpcionID = 8 OR OpcionID = 9); ")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0027"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0028()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0028'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(24, 'Tipo de Acceso Grupo', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(24, 1, 'Automático', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(24, 2, 'Controlado', 2);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0028"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0029()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0029'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE GruCatVal (" _
                & "GrupoID INTEGER NOT NULL," _
                & "CategoriaID INTEGER NOT NULL," _
                & "ValorID INTEGER NOT NULL," _
                & "PRIMARY KEY(GrupoID,CategoriaID,ValorID)" _
                & ");")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0029"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0030()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0030'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(60, 'GruCatVal', 'Valores de Categorías de Grupos', 2)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0030"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0031()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0031'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(1, 24, 1)")
        ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(2, 24, 1)")
        ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(3, 24, 1)")
        ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(4, 24, 2)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0031"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0032()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0032'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(5, 'Socios', 'Socios')")
            ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(5, 24, 1)")
        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(6, 'Visitas Eventuales', 'Visitas Eventuales')")
            ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(6, 24, 2)")
        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(7, 'Contratistas', 'Contratistas')")
            ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(7, 24, 2)")
        ejecutarSql ("INSERT INTO Gru(GrupoID, Nombre, Descripcion) VALUES(8, 'Empleados Domésticos', 'Empleados Domésticos')")
            ejecutarSql ("INSERT INTO GruCatVal(GrupoID, CategoriaID, ValorID) VALUES(8, 24, 2)")

        ejecutarSql ("UPDATE Gru SET Gru.Nombre = 'Visitas Recurrentes', Gru.Descripcion = 'Visitas Recurrentes' WHERE Gru.GrupoID = 4")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0032"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0033()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0033'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE Ins ( " _
                & "InsID INTEGER NOT NULL, " _
                & "Nombre VARCHAR(32), " _
                & "Valor VARCHAR(8192), " _
                & "SystemParameter INTEGER, " _
                & "PRIMARY KEY (InsID), " _
                & "UNIQUE(Nombre) " _
                & "); ")

        Dim EncryptionServices As EncryptionSVR
        Set EncryptionServices = New EncryptionSVR

        ejecutarSql ("INSERT INTO Ins(InsID, Nombre, Valor, SystemParameter) VALUES(1, 'sa', '" & EncryptionServices.Encriptar("AdminTool" & getMacAddress) & "', 3);")

        Set EncryptionServices = Nothing

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0033"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0034()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0034'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 7, 'VME 485', 2)")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0034"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0035()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0035'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(25, 'Tipo de Documento Interno', 2);")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(25, 1, 'Nro de Socio', 2)")
            ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(25, 2, 'Nro de Legajo', 2)")

        ejecutarSql ("UPDATE Cat SET Nombre = 'Tipo de Dirección de Persona' WHERE Cat.CategoriaID = 14")

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(14, 3, 'Country', 2)")
            
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0035"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0036()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0036'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 4, 'CUIT', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 5, 'CUIL', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 6, 'Licencia de Conducir', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 7, 'Libreta de Enrolamiento', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 8, 'Libreta Cívica', 2)")
            
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0036"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0037()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0037'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(18, 10, 'Sin especificar', 2)")
            
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0037"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0038()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0038'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`per` DROP INDEX `Apellido`;")
        ejecutarSql ("ALTER TABLE `videoman`.`perdoccatval` ADD UNIQUE INDEX `UnicoDoc` USING BTREE(`CategoriaID`, `ValorID`, `Documento`);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0038"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0039()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0039'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 8, 'VME 100', 2)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0039"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0040()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0040'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`idn` ADD INDEX `IndiceNumero`(`Numero`);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0040"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0041()
On Error GoTo errorhandler
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0041'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        On Error Resume Next
        Name App.Path & "\MSCAL.OC_" As App.Path & "\MSCAL.OCX"

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0041"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing

        'MsgBox "Esta es una nueva versión del Servidor Videoman y contiene una actualización que se ha instalado con éxito. Por favor, reinicie el Sistema Operativo e ingrese nuevamente al Servidor VIDEOMAN.", vbOKOnly, "Instalación de Actualización"
        'End
    End If
errorhandler:
End Sub

Sub fix0042()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0042'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`idn` ADD UNIQUE INDEX `IndiceUnico`(`Numero`);")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0042"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0043()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0043'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`per` ADD COLUMN `FechaInicio` DATETIME NOT NULL AFTER `LastUpdateDateByID`, ADD COLUMN `FechaFin` DATETIME NOT NULL AFTER `FechaInicio`;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0043"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0044()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0044'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("UPDATE Per SET FechaInicio = '2000-01-01', FechaFin = '2010-01-01';")

        ejecutarSql ("UPDATE TknCul SET Texto = 'Fecha Nac.:' WHERE TokenID = 105 AND CulturaID = 1;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0044"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0045()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0045'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE TckPrx (" _
            & "TicketID INTEGER NOT NULL," _
            & "PropiedadID INTEGER NOT NULL," _
            & "Valor VARCHAR(8192)," _
            & "PRIMARY KEY(TicketID, PropiedadID)" _
            & ");")

        ejecutarSql ("INSERT INTO Prx(PropiedadID, Nombre, Descripcion) VALUES(4, 'Patente', 'Patente');")
        ejecutarSql ("INSERT INTO Prx(PropiedadID, Nombre, Descripcion) VALUES(5, 'Cantidad de Personas', 'Cantidad de Personas');")
        ejecutarSql ("INSERT INTO Prx(PropiedadID, Nombre, Descripcion) VALUES(6, 'Cacheo', 'Cacheo');")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0045"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0046()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0046'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE WksMdl (" _
            & "WorkstationID INTEGER NOT NULL," _
            & "ModuloID INTEGER NOT NULL," _
            & "PRIMARY KEY(WorkstationID, ModuloID)" _
            & ");")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0046"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0047()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0047'"
    

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE tckprx CHANGE COLUMN TicketID TicketID bigint(13) unsigned NOT NULL DEFAULT 0;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0047"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0048()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0048'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(4, 5, 'Módulo informa Invertido', 2)")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0048"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0049()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0049'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO `videoman`.`prx` SET `PropiedadID`=7, `Nombre`='Destino visita', `Descripcion`='Destino de la visita para los ticket de codigo de barra';")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0049"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0050()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0050'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`tck`  DROP COLUMN `DestinoVisita`;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0050"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0051()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0051'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`tckhst`  DROP COLUMN `DestinoVisita`;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0051"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0052()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0052'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE `videoman`.`lot` (`LoteID` bigint(11) unsigned NOT NULL DEFAULT 0, `Lote` varchar(50) NOT NULL DEFAULT '0', `UF` varchar(50) NOT NULL DEFAULT '0', `Calle` varchar(50) NOT NULL DEFAULT '0', `Numero` Varchar(50) NOT NULL DEFAULT '0', `Interno` varchar(50) NOT NULL DEFAULT '0', PRIMARY KEY (`LoteID`)) ENGINE=InnoDB;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0052"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0053()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0053'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE lotcatval (LoteID bigint(11) unsigned NOT NULL DEFAULT 0, CategoriaID int(11) unsigned NOT NULL DEFAULT 0, `ValorID` int(11) unsigned NOT NULL DEFAULT 0, PRIMARY KEY (`LoteID`));")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0053"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub



Sub fix0054()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0054'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO `videoman`.`cat` SET `CategoriaID`=26, `Nombre`='Estado del Lote', `SystemParameter`=2;")
        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=26, `ValorID`=1, `Nombre`='Baldío', `SystemParameter`=2;")
        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=26, `ValorID`=2, `Nombre`='En Obra', `SystemParameter`=2;")
        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=26, `ValorID`=3, `Nombre`='Residencia Permanente', `SystemParameter`=2;")
        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=26, `ValorID`=4, `Nombre`='Residencia Ocasional', `SystemParameter`=2;")
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0054"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0055()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0055'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE `videoman`.`lotper` (`LoteID` int(11) unsigned NOT NULL DEFAULT 0, `PersonaID` int(11) unsigned NOT NULL DEFAULT 0, `PerfilID` int(11) unsigned NOT NULL DEFAULT 0, `CategoriaID` int(11) unsigned NOT NULL DEFAULT 0, `ValorID` int(11) unsigned NOT NULL DEFAULT 0, `FechaInicio` datetime NULL DEFAULT NULL, `FechaFin` datetime NULL DEFAULT NULL, `CreationDate` datetime NULL DEFAULT NULL, `CREATEDByID` int(11) NULL DEFAULT NULL, `LastUpdateDate` datetime NULL DEFAULT NULL, `LastUpdateDateByID` int(11) NULL DEFAULT NULL, PRIMARY KEY (`LoteID`, `PersonaID`, `PerfilID`, `CategoriaID`, `ValorID`)) ENGINE=InnoDB;")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
            Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0055"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub


Sub fix0056()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0056'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE `videoman`.`pre` (`PreautorizadoID` int(11) unsigned NOT NULL DEFAULT 0, `LoteID` int(11) unsigned NOT NULL DEFAULT 0, `Entidad` varchar(50) NULL DEFAULT NULL, `Apellido` varchar(50) NULL DEFAULT NULL, `Nombre` varchar(50) NULL DEFAULT NULL, `Motivo` varchar(8192) NULL DEFAULT NULL, `FechaInicio` datetime NULL DEFAULT NULL, `FechaFin` datetime NULL DEFAULT NULL, PRIMARY KEY (`PreautorizadoID`)) ENGINE=InnoDB;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
            Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0056"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0057()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0057'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=26, `ValorID`=5, `Nombre`='Otro', `SystemParameter`=2;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
            Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0057"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0058()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0058'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE `videoman`.`idnpnc` (`identificacionID` int(11) unsigned NOT NULL DEFAULT 0,  PRIMARY KEY (`identificacionID`)) ENGINE=InnoDB;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
            Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0058"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0059()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0059'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=23, `ValorID`=0, `Nombre`='Rechazado', `SystemParameter`=2;")
        ejecutarSql ("INSERT INTO `videoman`.`catval` SET `CategoriaID`=23, `ValorID`=4, `Nombre`='Panico', `SystemParameter`=2;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
            Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0059"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub


Sub fix0060()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0060'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO `videoman`.`prx` SET `PropiedadID`=8, `Nombre`='Motivo visita', `Descripcion`='Motivo de la visita para los ticket de codigo de barra';")
        ejecutarSql ("INSERT INTO `videoman`.`prx` SET `PropiedadID`=9, `Nombre`='Cantidad Menores', `Descripcion`='Cantidad de Menores para los ticket de codigo de barra';")
        ejecutarSql ("INSERT INTO `videoman`.`prx` SET `PropiedadID`=10, `Nombre`='Observaciones', `Descripcion`='Observaciones para los ticket de codigo de barra';")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0060"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub


Sub fix0061()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0061'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO cfg SET ConfiguracionID=5, Nombre='ProgramaDepuradorBases', SystemParameter=2;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=5, OpcionID=3, Nombre='FECHA_ULTIMA_DEPURACION', " & _
                    "Valor='2008/08/01', SystemParameter=1;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=5, OpcionID=2,Nombre='HORA_DEPURACION_AUTOMATICA'," & _
                    " Valor='00:00:00', SystemParameter=1;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=5, OpcionID=1,Nombre='BORRADO_TICKET_SIN_SALIDA', " & _
                    "Valor='0', SystemParameter=1;")

        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0061"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub


Sub fix0062()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0062'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(15, 4, 'Controlado', 2)")
                  
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0062"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub


Sub fix0063()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0063'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(3, 6, 'Controlada', 2)")
                  
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0063"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0064()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0064'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO cfg SET ConfiguracionID=7, Nombre='MostrarFotoEventos ', SystemParameter=2;")
        'afa ojo agregue el id 3 porque sino no funciona el wpc
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=3, OpcionID=5, Nombre='MOSTRAR_FOTO_EVENTOS', " & _
                    "Valor='0', SystemParameter=1;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=7, OpcionID=5, Nombre='MOSTRAR_FOTO_EVENTOS', " & _
                    "Valor='0', SystemParameter=1;")
                
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0064"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0065()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0065'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO cfg SET ConfiguracionID=8, Nombre='EmitirSonidoAlarma', SystemParameter=2;")
        'afa ojo agregue el id 3 porque sino no funciona el wpc
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=3, OpcionID=6, Nombre='SONIDO_ALARMA', " & _
                    "Valor='0', SystemParameter=1;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=8, OpcionID=6, Nombre='SONIDO_ALARMA', " & _
                    "Valor='0', SystemParameter=1;")
        
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0065"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0066()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0066'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("CREATE TABLE `videoman`.`cfgfrm` (`ConfiguracionID` int(11) unsigned NOT NULL DEFAULT 0, `GrupoModulos` int(11) unsigned NOT NULL DEFAULT 0, `Formulario` int(3) unsigned NOT NULL DEFAULT 0, `f_editable` char(1) NULL DEFAULT 'S', `f_height` int(8) unsigned NOT NULL DEFAULT 0, `f_left` int(8) unsigned NOT NULL DEFAULT 0, `f_top` int(8) unsigned NOT NULL DEFAULT 0, `f_width` int(8) unsigned NOT NULL DEFAULT 0, `SystemParameter` int(11) unsigned NOT NULL DEFAULT 1, PRIMARY KEY (`ConfiguracionID`, `GrupoModulos`, `formulario` )) ENGINE=InnoDB;")
        
               
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0066"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0067()
    Dim sql As String

    sql = "SELECT * FROM Upd WHERE Nombre = 'fix0067'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    If DbRecordsetSYS.BOF Then

        ejecutarSql ("ALTER TABLE `videoman`.`pdtmdl` ADD COLUMN `Extra` varchar(20) NOT NULL DEFAULT 'vacio';")
        
               
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0067"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    End If

End Sub

Sub fix0068() ' Creacion de opcion de configuracion para la hubicacion de la imagen de fondo para la impresion de Trj
Dim sql As String
On Error GoTo Salir

   ' sql = "SELECT * FROM Upd WHERE Nombre = 'fix0068'"

  '  DbCommandSYS.CommandText = sql
  '  Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
  '  If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=2, OpcionID=10, Nombre='IMAGEN_FRENTE_TRJ', " & _
                    "Valor='', SystemParameter=1;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=2, OpcionID=11, Nombre='IMAGEN_CONTRAFRENTE_TRJ', " & _
                    "Valor='', SystemParameter=1;")
               
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0068"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
  '  End If

Salir:
End Sub

Sub fix0069()
    Dim sql As String
On Error GoTo Salir

    'sql = "SELECT * FROM Upd WHERE Nombre = 'fix0069'"

    'DbCommandSYS.CommandText = sql
    'Set DbRecordsetSYS = DbCommandSYS.Execute

    ' Realizar la actualización una única vez
    'If DbRecordsetSYS.BOF Then

        ejecutarSql ("INSERT INTO cfg SET ConfiguracionID=6, Nombre='ProgramaImportadorDatos', SystemParameter=2;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=6, OpcionID=2, Nombre='FECHA_ULTIMA_IMPORTACION', " & _
                    "Valor='2008/08/01', SystemParameter=1;")
        ejecutarSql ("INSERT INTO cfgopt SET ConfiguracionID=6, OpcionID=1,Nombre='HORA_IMPORTACION_AUTOMATICA'," & _
                    " Valor='00:00:00', SystemParameter=1;")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0069"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub

Sub fix0070()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("ALTER TABLE `videoman`.`mdl` ADD COLUMN `duracion_pulso` INTEGER UNSIGNED COMMENT 'duracion de pulso usado para barrera';")
        ejecutarSql ("insert into catval (CategoriaID,ValorID,Nombre,SystemParameter) values (15,5,'Barrera Pulso',2);")
        ejecutarSql ("insert into catval (CategoriaID,ValorID,Nombre,SystemParameter) values (15,6,'Barrera Doble Pulso',2);")
        ejecutarSql ("update catval set Nombre='Barrera de Estado' where CategoriaId=15 and ValorID=3;")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0070"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub

Sub fix0071()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("ALTER TABLE `videoman`.`lotper` ADD INDEX `Index_2` USING BTREE(`PersonaID`);")
        ejecutarSql ("ALTER TABLE `videoman`.`peraut` ADD INDEX `Index_2` USING BTREE(`AutoID`);")
        
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0071"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub

Sub fix0072()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("CREATE TABLE  `videoman`.`usrlogin` ( `usuarioID` int(10) unsigned NOT NULL default '0',`Fecha` datetime NOT NULL,  PRIMARY KEY  USING BTREE (`usuarioID`,`Fecha`));")
        ejecutarSql ("ALTER TABLE `videoman`.`mvt` ADD INDEX `Index_2`(`FechaHora`);")
        ejecutarSql ("ALTER TABLE `videoman`.`per` ADD INDEX `Index_2`(`Apellido`, `Nombre`);")
        ejecutarSql ("ALTER TABLE `videoman`.`prfval` ADD COLUMN `Permanencia` INTEGER UNSIGNED NOT NULL DEFAULT 0 COMMENT 'tiempo minimo de permanencia entre ingreso y egreso' AFTER `HoraFin`;")
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0072"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub

Sub fix0073()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("ALTER TABLE `videoman`.`mdl` ADD COLUMN `ValidacionTicket` BOOLEAN DEFAULT 0 COMMENT 'par los casos de salida con ticket configuro si chequea que este validado';")
        ejecutarSql ("ALTER TABLE `videoman`.`tck` ADD COLUMN `Validado` BOOLEAN DEFAULT 0 COMMENT 'indica si el ticket ya fue validado en caso que la configuracion lo requiera';")
        ejecutarSql ("insert into catval (categoriaid,valorid,nombre,systemparameter) values (1,19,'Respaldo/BackUP',2);")
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0073"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub

Sub fix0074()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("ALTER TABLE `videoman`.`lot` MODIFY COLUMN `Numero` VARCHAR(200);")
        ' Registrar actualización realizada
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0074"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub

Sub fix0075()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(23, 5, 'Control Permanencia', 2);")
        ejecutarSql ("ALTER TABLE `videoman`.`mvt` ADD INDEX `Index_3`(`IdentificacionID`, `FechaHora`);")
        ejecutarSql ("ALTER TABLE `videoman`.`peridn` ADD INDEX `Index_2` USING BTREE(`IdentificacionID`);")
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0075"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub


Sub fix0076()
    Dim sql As String
On Error GoTo Salir


        ejecutarSql ("CREATE TABLE `videoman`.`valida_config` (`id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,`tiempo_max` INTEGER UNSIGNED NOT NULL,`valor` DECIMAL(10,2) NOT NULL,PRIMARY KEY (`id`))")
        ejecutarSql ("insert into valida_config (id,tiempo_max,valor) values(1,1,1);")
        
        Dim AsistenteDataObject As AsistenteDAO
        Set AsistenteDataObject = New AsistenteDAO
        Dim UpdateDataObject As UpdDAO
        Set UpdateDataObject = New UpdDAO
        Dim l As Long

        UpdateDataObject.Nombre = "fix0076"
        UpdateDataObject.SystemParameter = "3"
        l = AsistenteDataObject.create(UpdateDataObject, True)

        Set UpdateDataObject = Nothing
        Set AsistenteDataObject = Nothing
    'End If
    
Salir:
End Sub


