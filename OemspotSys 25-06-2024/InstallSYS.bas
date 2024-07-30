Attribute VB_Name = "InstallSYS"
Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   INSTALACION DEL SISTEMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Private Const ODBC_ADD_DSN = 1
Private Const ODBC_CONFIG_DSN = 2
Private Const ODBC_REMOVE_DSN = 3
Private Const vbAPINull As Long = 0&

Private Declare Function SQLConfigDataSource Lib "ODBCCP32.DLL" (ByVal hwndParent As Long, ByVal fRequest As Long, ByVal lpszDriver As String, ByVal lpszAttributes As String) As Long
Dim DbConnectionSetup As ADODB.Connection
Dim DbCommandSetup As ADODB.Command
Dim DbRecordsetSetup As ADODB.RecordSet
Dim DbConnectionStringSetup As String
Dim sql As String

Public Function instalarBaseDeDatos(UsuarioMySQL As String, PasswordMysql As String, ServidorMySQL As String, PortMySQL As String) As Integer
On Error GoTo errorhandler
    Dim intRet As Long
    Dim strDriver As String
    Dim strAttributes As String

' A) Temporalmente crear un acceso DSN al Entorno MySQL del Cliente para ejecutar los scripts de Setup

    strDriver = "MySQL ODBC 3.51 Driver"
    strAttributes = "DSN=videoman_setup" & Chr$(0) & _
        "Description=videoman_setup" & Chr$(0) & _
        "Database=mysql" & Chr$(0) & _
        "Uid=" & UsuarioMySQL & Chr$(0) & _
        "pwd=" & PasswordMysql & Chr(0) & _
        "SERVER=" & ServidorMySQL & Chr$(0) & _
        "Option=4147" & Chr$(0) & _
        "Port=" & PortMySQL & Chr$(0)

    intRet = SQLConfigDataSource(vbAPINull, ODBC_ADD_DSN, strDriver, strAttributes)

' B) Crear Base de Datos de la Plataforma OEMSPOT

    Set DbConnectionSetup = New ADODB.Connection
    Set DbCommandSetup = New ADODB.Command
    Set DbRecordsetSetup = New ADODB.RecordSet

    DbConnectionStringSetup = "Provider=MSDASQL.1;" _
        & "User ID=" & UsuarioMySQL & ";" _
        & "Password=" & PasswordMysql & ";" _
        & "Persist Security Info=False;" _
        & "Data Source=videoman_setup"

    DbConnectionSetup.ConnectionString = DbConnectionStringSetup
    DbConnectionSetup.Open
    DbCommandSetup.ActiveConnection = DbConnectionSetup

    ' Chequear si la base de datos ya esta creada

    If estaLaBaseDeDatosYaCreada Then

        ' Usar la base de datos en función del Producto Software

        Select Case CODIGO_PRODUCT0_SOFTWARE_SYS

            Case "OEMSPOT_DESARROLLO":

                sql = "USE videoman;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

            Case "OEMSPOT_VIDEOMAN":

                sql = "USE videoman;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

            Case "OEMSPOT_HIDROMET":

                sql = "USE videoman_hidromet;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

            Case "OEMSPOT_VILASCLUB":

                sql = "USE videoman_vilasclb;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute
    
        End Select
    
    Else

        ' Crear la base de datos en función del Producto Software
    
        Select Case CODIGO_PRODUCT0_SOFTWARE_SYS
    
            Case "OEMSPOT_DESARROLLO":
    
                sql = "CREATE DATABASE videoman;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute
    
                sql = "USE videoman;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute
    
            Case "OEMSPOT_VIDEOMAN":
    
                sql = "CREATE DATABASE videoman;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute
    
                sql = "USE videoman;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

            Case "OEMSPOT_HIDROMET":

                sql = "CREATE DATABASE videoman_hidromet;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

                sql = "USE videoman_hidromet;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

            Case "OEMSPOT_VILASCLUB":

                sql = "CREATE DATABASE videoman_vilasclb;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

                sql = "USE videoman_vilasclb;"
                DbCommandSetup.CommandText = sql
                Set DbRecordsetSetup = DbCommandSetup.Execute

        End Select

    End If

' C) Establecer Usuario y Password de la Base de Datos de Sistema de la Plataforma OEMSPOT

    ' Crear usuario de acceso a la base de datos en función del Producto Software

    Dim UserHost As String
    If LCase(ServidorMySQL) = "localhost" Then
        UserHost = "localhost"
    Else
        UserHost = UCase(getWindowsComputerName)
    End If
    
    Select Case CODIGO_PRODUCT0_SOFTWARE_SYS

        Case "OEMSPOT_DESARROLLO":

            sql = "GRANT ALL PRIVILEGES ON videoman.* TO 'videoman'@'" & UserHost & "' IDENTIFIED BY 'OEMSPOT2008wx' WITH GRANT OPTION;"

        Case "OEMSPOT_VIDEOMAN":

            sql = "GRANT ALL PRIVILEGES ON videoman.* TO 'videoman'@'" & UserHost & "' IDENTIFIED BY 'OEMSPOT2008wx' WITH GRANT OPTION;"

        Case "OEMSPOT_HIDROMET":

            sql = "GRANT ALL PRIVILEGES ON videoman_hidromet.* TO 'videoman_hidromet'@'" & UserHost & "' IDENTIFIED BY 'OEMSPOT2008wx' WITH GRANT OPTION;"

        Case "OEMSPOT_VILASCLUB":

            sql = "GRANT ALL PRIVILEGES ON videoman_vilasclb.* TO 'videoman_vilasclb'@'" & UserHost & "' IDENTIFIED BY 'OEMSPOT2008wx' WITH GRANT OPTION;"

    End Select

    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    ' Establecer privilegios de acceso al usuario de base de datos

    sql = "USE mysql;"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Select_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Insert_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Update_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Delete_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Create_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Drop_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Reload_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Shutdown_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Process_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET File_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Grant_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET References_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Index_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Alter_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Show_db_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Super_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Create_tmp_table_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Lock_tables_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Execute_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Repl_slave_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Repl_client_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Create_view_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Show_view_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Create_routine_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Alter_routine_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "UPDATE mysql.user SET Create_user_priv = 'Y' WHERE User = 'videoman';"
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute

' D) Crear DSN de la base de datos de la Plataforma OEMSPOT

    strDriver = "MySQL ODBC 3.51 Driver"
    strAttributes = "DSN=videoman" & Chr$(0) & _
        "Description=videoman" & Chr$(0) & _
        "Database=videoman" & Chr$(0) & _
        "Uid=videoman" & Chr$(0) & _
        "pwd=OEMSPOT2008wx" & Chr(0) & _
        "SERVER=" & ServidorMySQL & Chr$(0) & _
        "Option=4147" & Chr$(0) & _
        "Port=" & PortMySQL & Chr$(0)

    intRet = SQLConfigDataSource(vbAPINull, ODBC_ADD_DSN, strDriver, strAttributes)

' E) Conectarse a la base de datos de Sistema de la Plataforma de OEMSPOT

    Set DbConnectionSetup = Nothing
    Set DbCommandSetup = Nothing
    Set DbRecordsetSetup = Nothing

    Set DbConnectionSetup = New ADODB.Connection
    Set DbCommandSetup = New ADODB.Command
    Set DbRecordsetSetup = New ADODB.RecordSet

    DbConnectionStringSetup = "Provider=MSDASQL.1;" _
        & "User ID=videoman;" _
        & "Password=OEMSPOT2008wx;" _
        & "Persist Security Info=False;" _
        & "Data Source=videoman"

    DbConnectionSetup.ConnectionString = DbConnectionStringSetup
    DbConnectionSetup.Open
    DbCommandSetup.ActiveConnection = DbConnectionSetup

' F) Ejecutar los Scripts de la Plataforma

    If Not estaLaBaseDeDatosYaInstalada Then

        ejecutarScriptsDeSetup

    Else

        ' Mostrar la pantalla de finalización de la configuración

        instalarBaseDeDatos = 2

        ' Borrar el DSN de acceso temporal al Entorno MySQL

        strDriver = "MySQL ODBC 3.51 Driver"
        strAttributes = "DSN=videoman_setup" & Chr$(0) & _
            "Description=videoman_setup" & Chr$(0) & _
            "Database=mysql" & Chr$(0) & _
            "Uid=" & UsuarioMySQL & Chr$(0) & _
            "pwd=" & PasswordMysql & Chr(0) & _
            "SERVER=" & ServidorMySQL & Chr$(0) & _
            "Option=4147" & Chr$(0) & _
            "Port=" & PortMySQL & Chr$(0)
    
        intRet = SQLConfigDataSource(InstallSetupMOD.hWnd, ODBC_REMOVE_DSN, strDriver, strAttributes)

        Exit Function

    End If

' G) Borrar el DSN de acceso temporal al Entorno MySQL para ejecutar los scripts de Setup

    strDriver = "MySQL ODBC 3.51 Driver"
    strAttributes = "DSN=videoman_setup" & Chr$(0) & _
        "Description=videoman_setup" & Chr$(0) & _
        "Database=mysql" & Chr$(0) & _
        "Uid=" & UsuarioMySQL & Chr$(0) & _
        "pwd=" & PasswordMysql & Chr(0) & _
        "SERVER=" & ServidorMySQL & Chr$(0) & _
        "Option=4147" & Chr$(0) & _
        "Port=" & PortMySQL & Chr$(0)

    intRet = SQLConfigDataSource(InstallSetupMOD.hWnd, ODBC_REMOVE_DSN, strDriver, strAttributes)

' H) Finalizar la instalación de la Base de datos de la Plataforma de OEMSPOT

    instalarBaseDeDatos = 1

    connectDatabase
    updateSoftware

    Exit Function

errorhandler:

    instalarBaseDeDatos = 0

End Function

Sub ejecutarSql(sql As String)
    DbCommandSetup.CommandText = sql
    Set DbRecordsetSetup = DbCommandSetup.Execute
End Sub

Function estaLaBaseDeDatosYaCreada() As Boolean
On Error GoTo errorhandler
    DbCommandSetup.CommandText = "use videoman;"
    Set DbRecordsetSetup = DbCommandSetup.Execute

    sql = "SELECT UpdateID FROM Upd WHERE Nombre = 'SOFTWAREINSTALLED'"
    Set DbRecordsetSetup = DbCommandSetup.Execute

    estaLaBaseDeDatosYaCreada = True

    Exit Function

errorhandler:
    estaLaBaseDeDatosYaCreada = False
End Function

Function estaLaBaseDeDatosYaInstalada() As Boolean
On Error GoTo errorhandler
    DbCommandSetup.CommandText = "SELECT UpdateID FROM Upd WHERE Nombre = 'SOFTWAREINSTALLED'"
    Set DbRecordsetSetup = DbCommandSetup.Execute

    estaLaBaseDeDatosYaInstalada = True

    Exit Function

errorhandler:
    estaLaBaseDeDatosYaInstalada = False
End Function

Sub ejecutarScriptsDeSetup()

    SplashScreenMOD.Show

' A) Seleccionar Base de Datos recién creada:

    SplashScreenMOD.cambiarTexto "Configurando el Sistema [0%] ..."

    ejecutarSql ("use videoman;")

' B) Crear Tablas del Sistema:

    SplashScreenMOD.cambiarTexto "Configurando el Sistema [20%] ..."

    crearTablas

' C) Establecer Configuraciones:

    SplashScreenMOD.cambiarTexto "Configurando el Sistema [30%] ..."

    establecerParametrosDePlataforma

    establecerParametrosDeProductoSoftware

' D) Establecer Lenguajes del Sistema:

    SplashScreenMOD.cambiarTexto "Configurando el Sistema [40%] ..."

    establecerTokensDeProductoSoftware

' E) Establecer Licencias del Sistema:

    SplashScreenMOD.cambiarTexto "Configurando el Sistema [70%] ..."

    establecerLicenciasDeProductoSoftware

' F) El último splash es para Instalar Actualizaciones:

    SplashScreenMOD.cambiarTexto "Configurando el Sistema [90%] ..."

End Sub

Sub crearTablas()

' Crear Tablas del Sistema:

    ejecutarSql ("CREATE TABLE ArbItm ( " _
            & "ArbolID INTEGER NOT NULL, " _
            & "ItemID INTEGER NOT NULL, " _
            & "Nombre VARCHAR(32), " _
            & "ParentID INTEGER NOT NULL, " _
            & "Orden INTEGER, " _
            & "SystemParameter INTEGER, " _
            & "PRIMARY KEY(ArbolID, ItemID), " _
            & "UNIQUE(ArbolID, Nombre) " _
            & ");")

    ejecutarSql ("CREATE TABLE Arb ( " _
            & "ArbolID INTEGER NOT NULL, " _
            & "Nombre VARCHAR(32), " _
            & "SystemParameter INTEGER, " _
            & "PRIMARY KEY (ArbolID), " _
            & "UNIQUE(Nombre) " _
            & ");")
                
    ejecutarSql ("CREATE TABLE Cat ( " _
            & "CategoriaID INTEGER NOT NULL, " _
            & "Nombre VARCHAR(32), " _
            & "SystemParameter INTEGER, " _
            & "PRIMARY KEY (CategoriaID), " _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE CatVal ( " _
            & "CategoriaID INTEGER NOT NULL, " _
            & "ValorID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY(CategoriaID, ValorID)," _
            & "UNIQUE(CategoriaID, Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE CfgOpt (" _
            & "ConfiguracionID INTEGER NOT NULL," _
            & "OpcionID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Valor VARCHAR(8192)," _
            & "SystemParameter INTEGER, " _
            & "PRIMARY KEY(ConfiguracionID, OpcionID), " _
            & "UNIQUE(ConfiguracionID, Nombre) " _
            & "); ")

    ejecutarSql ("CREATE TABLE Cfg ( " _
            & "ConfiguracionID INTEGER NOT NULL, " _
            & "Nombre VARCHAR(32), " _
            & "SystemParameter INTEGER, " _
            & "PRIMARY KEY (ConfiguracionID), " _
            & "UNIQUE(Nombre) " _
            & "); ")

    ejecutarSql ("CREATE TABLE Cul (" _
            & "CulturaID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (CulturaID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Dim (" _
            & "DimensionID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Descripcion VARCHAR(8192)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (DimensionID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Est (" _
            & "EstadoID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (EstadoID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE EstVal (" _
            & "EstadoID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY(EstadoID,ValorID)," _
            & "UNIQUE(EstadoID,Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE LogEvt (" _
            & "LogID INTEGER NOT NULL," _
            & "EventoID INTEGER NOT NULL," _
            & "Descripcion VARCHAR(8192)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY(LogID,EventoID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Lge (" _
            & "LogID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (LogID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE MdlCatVal (" _
            & "ModuloID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(ModuloID,CategoriaID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE MdlEstVal (" _
            & "ModuloID INTEGER NOT NULL," _
            & "EstadoID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(ModuloID,EstadoID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Mdl (" _
            & "ModuloID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Descripcion VARCHAR(8192)," _
            & "Address INTEGER," _
            & "ModuloEntradaID INTEGER NOT NULL," _
            & "ModuloSalidaID INTEGER NOT NULL," _
            & "GrupoModulos INTEGER," _
            & "OrdenEncuesta INTEGER," _
            & "PRIMARY KEY (ModuloID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Nts (" _
            & "NotaID INTEGER NOT NULL," _
            & "Texto VARCHAR(8192)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (NotaID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerCatVal (" _
            & "PersonaID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(PersonaID,CategoriaID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerDirCatVal(" _
            & "PersonaID INTEGER NOT NULL," _
            & "DireccionID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "Pais VARCHAR(32)," _
            & "Provincia VARCHAR(32)," _
            & "Localidad VARCHAR(32)," _
            & "CodigoPostal VARCHAR(32)," _
            & "Calle VARCHAR(32)," _
            & "Numero VARCHAR(32)," _
            & "Piso VARCHAR(32)," _
            & "Oficina VARCHAR(32)," _
            & "PRIMARY KEY(PersonaID,DireccionID,CategoriaID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerDocCatVal(" _
            & "PersonaID INTEGER NOT NULL," _
            & "DocumentoID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "Documento VARCHAR(128)," _
            & "PRIMARY KEY(PersonaID,DocumentoID,CategoriaID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerEstVal (" _
            & "PersonaID INTEGER NOT NULL," _
            & "EstadoID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(PersonaID,EstadoID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerMaiCatVal(" _
            & "PersonaID INTEGER NOT NULL," _
            & "EmailID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "Email VARCHAR(128)," _
            & "PRIMARY KEY(PersonaID,EmailID,CategoriaID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Per (" _
            & "PersonaID INTEGER NOT NULL," _
            & "Apellido VARCHAR(64)," _
            & "Nombre VARCHAR(64)," _
            & "Sexo VARCHAR(1)," _
            & "FechaNacimiento DATETIME NULL," _
            & "Pais VARCHAR(32)," _
            & "CreationDate DATETIME," _
            & "CREATEdByID INTEGER NOT NULL," _
            & "LastUpdateDate DATETIME," _
            & "LastUpdateDateByID INTEGER NOT NULL," _
            & "PRIMARY KEY (PersonaID)," _
            & "UNIQUE(Apellido,Nombre)  " _
            & ");")

    ejecutarSql ("CREATE TABLE PerTelCatVal(" _
            & "PersonaID INTEGER NOT NULL," _
            & "TelefonoID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "Telefono VARCHAR(128)," _
            & "PRIMARY KEY(PersonaID,TelefonoID,CategoriaID,ValorID)  " _
            & ");")

    ejecutarSql ("CREATE TABLE Prc (" _
            & "ProcesoID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (ProcesoID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE RedNodLnk (" _
            & "RedID INTEGER NOT NULL," _
            & "NodoID INTEGER NOT NULL," _
            & "LinkID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY(RedID,NodoID,LinkID)," _
            & "UNIQUE(RedID,NodoID,Nombre)  " _
            & ");")

    ejecutarSql ("CREATE TABLE RedNod (" _
            & "RedID INTEGER NOT NULL," _
            & "NodoID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY(RedID,NodoID)," _
            & "UNIQUE(RedID,Nombre)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Red (" _
            & "RedID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (RedID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Upd (" _
            & "UpdateID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (UpdateID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE UsrCatVal (" _
            & "UsuarioID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(UsuarioID,CategoriaID,ValorID) " _
            & ");")

    ejecutarSql ("CREATE TABLE UsrEstVal (" _
            & "UsuarioID INTEGER NOT NULL," _
            & "EstadoID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(UsuarioID,EstadoID,ValorID)  " _
            & ");")

    ejecutarSql ("CREATE TABLE Usr (" _
            & "UsuarioID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Password VARCHAR(32)," _
            & "SystemParameter INTEGER," _
            & "PRIMARY KEY (UsuarioID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Gru (" _
            & "GrupoID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Descripcion VARCHAR(8192)," _
            & "PRIMARY KEY (GrupoID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Idn (" _
            & "IdentificacionID INTEGER NOT NULL," _
            & "Numero VARCHAR(32)," _
            & "PRIMARY KEY (IdentificacionID)" _
            & ");")

    ejecutarSql ("CREATE TABLE IdnCatVal (" _
            & "IdentificacionID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(IdentificacionID, CategoriaID, ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerGru (" _
            & "PersonaID INTEGER NOT NULL," _
            & "GrupoID INTEGER NOT NULL," _
            & "PRIMARY KEY(PersonaID, GrupoID)" _
            & ");")

    ejecutarSql ("CREATE TABLE GruIdn (" _
            & "GrupoID INTEGER NOT NULL," _
            & "IdentificacionID INTEGER NOT NULL," _
            & "PRIMARY KEY(GrupoID, IdentificacionID)" _
            & ");")

    ejecutarSql ("CREATE TABLE PerIdn (" _
            & "PersonaID INTEGER NOT NULL," _
            & "IdentificacionID INTEGER NOT NULL," _
            & "PRIMARY KEY(PersonaID, IdentificacionID)" _
            & ");")

    ejecutarSql ("CREATE TABLE GruMdlPrf (" _
            & "GrupoID INTEGER NOT NULL," _
            & "ModuloID INTEGER NOT NULL," _
            & "PerfilID INTEGER NOT NULL," _
            & "FechaInicio DATETIME," _
            & "FechaFin DATETIME," _
            & "PRIMARY KEY(GrupoID, ModuloID, PerfilID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Prf (" _
            & "PerfilID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "Descripcion VARCHAR(8192)," _
            & "PRIMARY KEY (PerfilID)," _
            & "UNIQUE(Nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE PrfVal (" _
            & "PerfilID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "Dia INTEGER NOT NULL," _
            & "HoraInicio INTEGER NOT NULL," _
            & "HoraFin INTEGER NOT NULL," _
            & "PRIMARY KEY(PerfilID, ValorID)," _
            & "UNIQUE(PerfilID, Dia, HoraInicio, HoraFin)" _
            & ");")

    ejecutarSql ("CREATE TABLE Tkn (" _
            & "TokenID INTEGER NOT NULL," _
            & "Nombre VarChar(512), " _
            & "Primary key(TokenID)" _
            & ");")

    ejecutarSql ("CREATE TABLE TknCul (" _
            & "TokenID INTEGER NOT NULL," _
            & "CulturaID INTEGER NOT NULL," _
            & "Texto VARCHAR(8192)," _
            & "Primary key(TokenID, CulturaID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Mvt (" _
            & "MovimientoID BIGINT(13)unsigned NOT NULL DEFAULT 0," _
            & "ModuloID INTEGER NOT NULL," _
            & "IdentificacionID INTEGER NOT NULL," _
            & "FechaHora DATETIME," _
            & "Primary key(MovimientoID)" _
            & ");")

    ejecutarSql ("CREATE TABLE MvtCatVal (" _
            & "MovimientoID INTEGER NOT NULL," _
            & "CategoriaID INTEGER NOT NULL," _
            & "ValorID INTEGER NOT NULL," _
            & "PRIMARY KEY(MovimientoID,CategoriaID,ValorID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Lic (" _
            & "LicenciaID INTEGER NOT NULL," _
            & "Nombre VARCHAR(32)," _
            & "SoftwareKey VARCHAR(32)," _
            & "Descripcion VARCHAR(8192)," _
            & "PRIMARY KEY (LicenciaID)," _
            & "Unique (nombre)" _
            & ");")

    ejecutarSql ("CREATE TABLE Clc (" _
            & "CompraID INTEGER NOT NULL," _
            & "LicenciaID INTEGER NOT NULL," _
            & "SoftwareKey VARCHAR(32)," _
            & "PRIMARY KEY (CompraID)" _
            & ");")

    ejecutarSql ("CREATE TABLE Nsl (" _
            & "UsuarioID INTEGER NOT NULL," _
            & "LicenciaID INTEGER NOT NULL," _
            & "Primary key(UsuarioID, LicenciaID)" _
            & ");")
            
    ejecutarSql ("CREATE TABLE Tck (" _
            & "TicketID BIGINT(13)unsigned NOT NULL DEFAULT 0 ," _
            & "Numero BIGINT(13)unsigned NOT NULL DEFAULT 0," _
            & "FechaHoraIngreso DATETIME NOT NULL DEFAULT '1899-12-31'," _
            & "ModuloIngresoID INTEGER unsigned NOT NULL DEFAULT 0," _
            & "DestinoVisita VARCHAR(128) NOT NULL DEFAULT ''," _
            & "PRIMARY KEY (TicketID)," _
            & "INDEX `Numero` (`Numero`)" _
            & ");")
            
    ejecutarSql ("CREATE TABLE TckHst (" _
            & "TicketID BIGINT(13)unsigned NOT NULL DEFAULT 0 ," _
            & "Numero BIGINT(13)unsigned NOT NULL DEFAULT 0," _
            & "FechaHoraIngreso DATETIME NOT NULL DEFAULT '1899-12-31'," _
            & "ModuloIngresoID INTEGER unsigned NOT NULL DEFAULT 0," _
            & "FechaHoraSalida DATETIME NOT NULL DEFAULT '1899-12-31'," _
            & "ModuloSalidaID INTEGER unsigned NOT NULL DEFAULT 0," _
            & "DestinoVisita VARCHAR(128) NOT NULL DEFAULT ''," _
            & "PRIMARY KEY (TicketID)," _
            & "INDEX `Numero` (`Numero`)" _
            & ");")
        
    ejecutarSql ("CREATE TABLE TckPer (" _
            & "TicketID BIGINT(13)unsigned NOT NULL DEFAULT 0 ," _
            & "PersonaID INTEGER unsigned NOT NULL DEFAULT 0 ," _
            & "Primary key(TicketID, PersonaID)" _
            & ");")
            
End Sub

Sub establecerParametrosDePlataforma()

    Dim EncryptionService As EncryptionSVR
    Set EncryptionService = New EncryptionSVR

' Crear Dimensiones:

    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(1, 'Dim', 'Dimensiones del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(2, 'Cat', 'Categorías del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(3, 'CatVal', 'Valores de Categorías del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(4, 'Est', 'Estados del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(5, 'EstVal', 'Valores de Estados del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(6, 'Arb', 'Arboles del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(7, 'ArbItm', 'Items de Arboles del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(8, 'Per', 'Personas del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(9, 'PerCatVal', 'Valores de Categorías de Personas del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(10, 'PerEstVal', 'Valores de Estados de Personas del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(11, 'Nts', 'Notas del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(12, 'Lge', 'Logs del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(13, 'LogEvt', 'Eventos de Logs del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(14, 'Cfg', 'Configuraciones del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(15, 'CfgOpt', 'Opciones de Configuraciones del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(16, 'Prc', 'Procesos del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(17, 'Upd', 'Actualizaciones del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(18, 'Cul', 'Culturas del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(19, 'Usr', 'Usuarios del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(20, 'UsrCatVal', 'Valores de Categorías de Usuarios del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(21, 'UsrEstVal', 'Valores de Estados de Usuarios del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(22, 'Red', 'Redes del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(23, 'RedNod', 'Nodos de Redes del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(24, 'RedNodLnk', 'Links de Nodos de Redes del Sistema', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(25, 'Mdl', 'Módulos Controladores de Dispositivos de la Plataforma de OEMSPOT', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(26, 'MdlCatVal', 'Valores de Categorías de Módulos Controladores de Dispositivos de la Plataforma de OEMSPOT', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(27, 'MdlEstVal', 'Valores de Estados de Módulos Controladores de Dispositivos de la Plataforma de OEMSPOT', 2)")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(28, 'Gru', 'Grupos de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(29, 'PerGru', 'Grupos de Personas de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(30, 'PerIdn', 'Identificaciones de Personas de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(31, 'GruIdn', 'Identificaciones de Grupos de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(32, 'Idn', 'Identificaciones de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(33, 'IdnCatVal', 'Valores de Categorías de Identificaciones de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(34, 'Prf', 'Perfiles de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(35, 'PrfVal', 'Valores de Perfiles de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(36, 'GruMdlPrf', 'Perfiles Asignados a los Grupos por Módulo de la Plataforma de OEMSPOT (Permisos)', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(37, 'Tkn', 'Palabras de Culturas del Sistema', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(38, 'Mvt', 'Movimientos Registrados en Módulos de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(39, 'MvtCatVal', 'Valores de Categorías de Movimientos Registrados en Módulos de la Plataforma de OEMSPOT', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(40, 'TknCul', 'Valores Traducidos de Palabras de Culturas del Sistema', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(41, 'Lic', 'Licencias del Sistema', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(42, 'Clc', 'Compras de Licencias para uso del Sistema', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(43, 'Nsl', 'Nuevas Solicitudes de Licencias para el Sistema', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(44, 'Tck', 'Tabla Dinámica de Ticket', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(45, 'TckHst', 'Tabla Histórica de Ticket', 2);")
    ejecutarSql ("INSERT INTO Dim(DimensionID, Nombre, Descripcion, SystemParameter) VALUES(46, 'TckPer', 'Tabla de Relación Ticket Personas Visitantes', 2);")

' Categorías:

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(1, 'Perfil de Usuario', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 1, 'Administración de Sistema', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 2, 'Administración de Usuarios', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 3, 'Administración de Personas', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 4, 'Administración de Módulos', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 5, 'Servicio Técnico', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 6, 'Administración de Arboles', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 7, 'Administración de Categorías', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 8, 'Administración de Culturas', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 9, 'Administración de Estados', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 10, 'Administración de Grupos', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 11, 'Administración de Identific.', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 12, 'Administración de Perfiles', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 13, 'Administración de Redes', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(1, 14, 'Administración de Permisos', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(2, 'Tipo de Módulo Controlador', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 1, 'ST1660', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 2, 'DDMM', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 3, 'Cash Park', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 4, 'Cash Tag', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(2, 5, 'ST1660 Park', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(3, 'Tipo de Identificación', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(3, 1, 'Proximidad', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(3, 2, 'Código de Barra', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(3, 3, 'Banda Magnética', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(3, 4, 'TAG', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(3, 5, 'PIN', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(4, 'Sentido de Módulo', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(4, 1, 'Ingreso', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(4, 2, 'Salida', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(4, 3, 'Módulo informa', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(4, 4, 'Lector único', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(5, 'Encuesta', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(5, 1, 'Si', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(5, 2, 'No', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(6, 'Responde', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(6, 1, 'Si', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(6, 2, 'No', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(7, 'AntiPassBack', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(7, 1, 'Si', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(7, 2, 'No', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(8, 'Protocolo de Módulo', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(8, 1, 'Propietario OEMSPOT', 2)")
 
    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(9, 'Tipo de Entorno Gráfico', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(9, 1, 'Supervisor', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(9, 2, 'Controlador de Módulo', 2)")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(9, 3, 'Gestión de Licencias', 2)")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(10, 'Tipo de Persona', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(10, 1, 'Director', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(10, 2, 'Empleado', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(11, 'Tipo de Documento de Persona', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 1, 'DNI', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 2, 'Cédula de Identidad', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(11, 3, 'Pasaporte', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(12, 'Tipo de Teléfono de Persona', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(12, 1, 'Particular', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(12, 2, 'Móvil', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(12, 3, 'Laboral', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(13, 'Tipo de E-mail de Persona', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(13, 1, 'Particular', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(13, 2, 'Laboral', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(14, 'Tipo de E-mail de Dirección', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(14, 1, 'Particular', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(14, 2, 'Laboral', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(15, 'Tipo de Acceso', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(15, 1, 'Puerta', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(15, 2, 'Molinete', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(15, 3, 'Barrera', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(16, 'Tipo de Unidad de Identif.', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(16, 1, 'Persona', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(16, 2, 'Grupo', 2);")

    ejecutarSql ("INSERT INTO Cat(CategoriaID, Nombre, SystemParameter) VALUES(17, 'Tipo de Evento', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(17, 1, 'Acceso', 2);")
        ejecutarSql ("INSERT INTO CatVal(CategoriaID, ValorID, Nombre, SystemParameter) VALUES(17, 2, 'Presentismo', 2);")

' Estados:

    ejecutarSql ("INSERT INTO Est(EstadoID, Nombre, SystemParameter) VALUES(1, 'Estado de Usuario', 2)")
        ejecutarSql ("INSERT INTO EstVal(EstadoID, ValorID, Nombre, SystemParameter) VALUES(1, 1, 'Habilitado', 2)")
        ejecutarSql ("INSERT INTO EstVal(EstadoID, ValorID, Nombre, SystemParameter) VALUES(1, 2, 'Deshabilitado', 2)")

    ejecutarSql ("INSERT INTO Est(EstadoID, Nombre, SystemParameter) VALUES(2, 'Funcionando', 2)")
        ejecutarSql ("INSERT INTO EstVal(EstadoID, ValorID, Nombre, SystemParameter) VALUES(2, 1, 'Si', 2)")
        ejecutarSql ("INSERT INTO EstVal(EstadoID, ValorID, Nombre, SystemParameter) VALUES(2, 2, 'No', 2)")

' Usuarios del Sistema:

    ejecutarSql ("INSERT INTO Usr(UsuarioID, Nombre, Password, SystemParameter) VALUES(1, 'AdminTool', '" & EncryptionService.Encriptar("AdminTool2008") & "', 2)")
        ejecutarSql ("INSERT INTO UsrEstVal(UsuarioID, EstadoID, ValorID) VALUES(1, 1, 1)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 1)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 2)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 3)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 4)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 5)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 6)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 7)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 8)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 9)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 10)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 11)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 12)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 13)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(1, 1, 14)")

' Módulo Básico de la Plataforma:

    ejecutarSql ("INSERT INTO Mdl(ModuloID, Nombre, Descripcion, Address, ModuloEntradaID, ModuloSalidaID, GrupoModulos, OrdenEncuesta) VALUES(1, 'Módulo Básico', 'Módulo Básico', 1, 1, 1, 1, 0)")
        ejecutarSql ("INSERT INTO MdlEstVal(ModuloID, EstadoID, ValorID) VALUES(1, 2, 2)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 2, 1)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 3, 1)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 4, 3)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 5, 1)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 6, 1)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 7, 2)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 8, 1)")
        ejecutarSql ("INSERT INTO MdlCatVal(ModuloID, CategoriaID, ValorID) VALUES(1, 15, 1)")

' Actualización del Sistema ( Primera Actualización = Software Instalado )

    ejecutarSql ("INSERT INTO Upd(UpdateID, Nombre, SystemParameter) VALUES(0, 'SOFTWAREINSTALLED', 2)")

    Set EncryptionService = Nothing

End Sub

Sub establecerParametrosDeProductoSoftware()

' ++ CONSTANTES ESPECIFICAS PARA CADA PRODUCTO SOFTWARE:

    Select Case CODIGO_PRODUCT0_SOFTWARE_SYS

        Case "OEMSPOT_DESARROLLO":

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(1, 'Setup', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 1, 'CODIGO_PRODUCTO_SOFTWARE', 'OEMSPOT_DESARROLLO', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 2, 'VERSION_PLATAFORMA', '" & VERSION_PLATAFORMA_SYS & "', 2);")

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(2, 'ProgramaSistemaGestion', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 1, 'NOMBRE_PROGRAMA_SYS', 'Prototipo de Sistema de Gestión', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 2, 'REQUIERE_AUTENTICACION_SYS', 'True', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 3, 'PUERTO_SERIE_LECTORQR_SYS', '1', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 4, 'LOCALIZACION_ACTIVA_SYS', 'es-ar', 2);")

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(3, 'ProgramaSistemaControlador', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 1, 'NOMBRE_PROGRAMA_SYS', 'Prototipo de Sistema Controlador', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 2, 'REQUIERE_AUTENTICACION_SYS', 'False', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 3, 'PUERTO_SERIE_LECTORQR_SYS', '2', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 4, 'LOCALIZACION_ACTIVA_SYS', 'es-ar', 2);")

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(4, 'ProgramaGestionLicencias', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 1, 'NOMBRE_PROGRAMA_SYS', 'Gestión de Licencias', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 2, 'REQUIERE_AUTENTICACION_SYS', 'True', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 3, 'PUERTO_SERIE_LECTORQR_SYS', '3', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 4, 'LOCALIZACION_ACTIVA_SYS', 'es-ar', 2);")

        Case "OEMSPOT_VIDEOMAN":

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(1, 'Setup', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 1, 'CODIGO_PRODUCTO_SOFTWARE', 'OEMSPOT_VIDEOMAN', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 2, 'VERSION_PLATAFORMA', '" & VERSION_PLATAFORMA_SYS & "', 2);")

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(2, 'ProgramaSistemaGestion', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 1, 'NOMBRE_PROGRAMA_SYS', 'Sistema de Gestión', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 2, 'REQUIERE_AUTENTICACION_SYS', 'True', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 3, 'PUERTO_SERIE_LECTOR QR_SYS', '1', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(2, 4, 'LOCALIZACION_ACTIVA_SYS', 'es-ar', 2);")
            
            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(3, 'ProgramaControladorModulo', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 1, 'NOMBRE_PROGRAMA_SYS', 'Controlador de Módulos', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 2, 'REQUIERE_AUTENTICACION_SYS', 'False', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 3, 'PUERTO_SERIE_LECTORQR_SYS', '2', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(3, 4, 'LOCALIZACION_ACTIVA_SYS', 'es-ar', 2);")

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(4, 'ProgramaGestionLicencias', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 1, 'NOMBRE_PROGRAMA_SYS', 'Gestión de Licencias', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 2, 'REQUIERE_AUTENTICACION_SYS', 'False', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 3, 'PUERTO_SERIE_LECTORQR_SYS', '3', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(4, 4, 'LOCALIZACION_ACTIVA_SYS', 'es-ar', 2);")

        Case "OEMSPOT_HIDROMET":

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(1, 'Setup', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 1, 'CODIGO_PRODUCTO_SOFTWARE', 'OEMSPOT_HIDROMET', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 2, 'VERSION_PLATAFORMA', '" & VERSION_PLATAFORMA_SYS & "', 2);")

        Case "OEMSPOT_VILASCLUB":

            ejecutarSql ("INSERT INTO Cfg(ConfiguracionID, Nombre, SystemParameter) VALUES(1, 'Setup', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 1, 'CODIGO_PRODUCTO_SOFTWARE', 'OEMSPOT_VILASCLUB', 2);")
                ejecutarSql ("INSERT INTO CfgOpt(ConfiguracionID, OpcionID, Nombre, Valor, SystemParameter) VALUES(1, 2, 'VERSION_PLATAFORMA', '" & VERSION_PLATAFORMA_SYS & "', 2);")

    End Select

End Sub

Sub establecerUsuarioDeSistema(Usuario As String, Password As String)

    ' Establecer el primer usuario administrador de Sistema cuando se instala el Producto Software

    Dim EncryptionService As EncryptionSVR
    Set EncryptionService = New EncryptionSVR

    ejecutarSql ("INSERT INTO Usr(UsuarioID, Nombre, Password, SystemParameter) VALUES(2, '" & Usuario & "', '" & EncryptionService.Encriptar(Password) & "', 1)")
        ejecutarSql ("INSERT INTO UsrEstVal(UsuarioID, EstadoID, ValorID) VALUES(2, 1, 1)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(2, 1, 1)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(2, 1, 4)")
        ejecutarSql ("INSERT INTO UsrCatVal(UsuarioID, CategoriaID, ValorID) VALUES(2, 1, 2)")

    Set EncryptionService = Nothing

End Sub

Sub establecerTokensDeProductoSoftware()

' Culturas

    ejecutarSql ("INSERT INTO Cul(CulturaID, Nombre, SystemParameter) VALUES(1, 'es-ar', 2);")
    ejecutarSql ("INSERT INTO Cul(CulturaID, Nombre, SystemParameter) VALUES(2, 'en-us', 2);")

' Tokens comunes a todos los Productos Software:

    ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (1, 'IndiceAyuda');")
    ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (2, 'lblUsuario');")
    ejecutarSql ("INSERT INTO Tkn(TokenID, Nombre) VALUES (3, 'lblClave');")

' Localización es-ar, en-us

    ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (1, 1, 'Indice de Contenido ...');")
    ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (1, 2, 'Help index ...');")

    ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (2, 1, 'Usuario:');")
    ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (2, 2, 'User:');")

    ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (3, 1, 'Clave:');")
    ejecutarSql ("INSERT INTO TknCul(TokenID, CulturaID, Texto) VALUES (3, 2, 'Password:');")

' ++ TOKENS ESPECIFICOS PARA CADA PRODUCTO SOFTWARE:

    Select Case CODIGO_PRODUCT0_SOFTWARE_SYS

        Case "OEMSPOT_DESARROLLO":
        
        Case "OEMSPOT_VIDEOMAN":

        Case "OEMSPOT_HIDROMET":

        Case "OEMSPOT_VILASCLUB":

    End Select

End Sub

Sub establecerLicenciasDeProductoSoftware()

' Licencias comunes a todos los Productos Software:

    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (1, 'LIC_2_MODULOS', '', 'Licencia para 2 Módulos Controladores');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (2, 'LIC_4_MODULOS', '', 'Licencia para 4 Módulos Controladores');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (3, 'LIC_8_MODULOS', '', 'Licencia para 8 Módulos Controladores');")
    'ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (5, 'LIC_6_MODULOS', '', 'Licencia para 6 Módulos Controladores');")
    'ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (6, 'LIC_10_MODULOS', '', 'Licencia para 10 Módulos Controladores');")
    'ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (7, 'LIC_12_MODULOS', '', 'Licencia para 12 Módulos Controladores');")
    'ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (8, 'LIC_14_MODULOS', '', 'Licencia para 14 Módulos Controladores');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (9, 'LIC_16_MODULOS', '', 'Licencia para 16 Módulos Controladores');")
    'ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (10, 'LIC_18_MODULOS', '', 'Licencia para 18 Módulos Controladores');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (11, 'LIC_MAS_DE_16_MODULOS', '', 'Licencia para más de 16 Módulos Controladores');")

    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (15, 'LIC_2_USUARIOS', '', 'Licencia para 2 Usuarios');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (16, 'LIC_4_USUARIOS', '', 'Licencia para 4 Usuarios');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (17, 'LIC_MAS_4_USUARIOS', '', 'Licencia para más de 4 Usuarios');")

    'ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (18, 'LIC_100_PERSONAS', '', 'Licencia para 100 Personas');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (19, 'LIC_500_PERSONAS', '', 'Licencia para 500 Personas');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (20, 'LIC_1000_PERSONAS', '', 'Licencia para 1000 Personas');")
    ejecutarSql ("INSERT INTO Lic(LicenciaID, Nombre, SoftwareKey, Descripcion) VALUES (21, 'LIC_MAS_1000_PERSONAS', '', 'Licencia para más de 1000 Personas');")
    
' ++ LICENCIAS ESPECIFICAS PARA CADA PRODUCTO SOFTWARE:

    Select Case CODIGO_PRODUCT0_SOFTWARE_SYS

        Case "OEMSPOT_DESARROLLO":

        Case "OEMSPOT_VIDEOMAN":

        Case "OEMSPOT_HIDROMET":

        Case "OEMSPOT_VILASCLUB":

    End Select

End Sub
