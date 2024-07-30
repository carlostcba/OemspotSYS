Attribute VB_Name = "SetupSYS"
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   DECLARACIONES DE CONSTANTES PARA LA PLATAFORMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    Public VERSION_PLATAFORMA_SYS As String
    Public VERSION_PRODUCTO_SYS As String
    Public CODIGO_PRODUCT0_SOFTWARE_SYS As String
    Public CONFIGURACION_PROGRAMA_SYS As String
    Public DB_CONNECTION_STRING_SYS As String
    Public MODO_DEBUG_SYS As Boolean
    Public DIRECCION_REGISTROS_USUARIOS_SYS As Long
     
     
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   DECLARACIONES DE CONSTANTES PARA EL SOFT DE DEPURACION
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    Public PROGRAMA_DEPURADOR_BASES As Long
    Public PROGRAMA_DEPURADOR_BASES_BORRADO_TICKET_SIN_SALIDA As Long
    Public PROGRAMA_DEPURADOR_BASES_HORA_DEPURACION_AUTOMATICA As Long
    Public PROGRAMA_DEPURADOR_BASES_FECHA_ULTIMA_DEPURACION As Long
    
'    PROGRAMA_DEPURADOR_BASES
'    PROGRAMA_DEPURADOR_BASES_BORRADO_TICKET_SIN_SALIDA = 1
'    PROGRAMA_DEPURADOR_BASES_HORA_DEPURACION_AUTOMATICA = 2
'    PROGRAMA_DEPURADOR_BASES_FECHA_ULTIMA_DEPURACION = 3
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   DECLARACIONES DE CONSTANTES PARA LOS PRODUCTOS SOFTWARE
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

' ++ DECLARACIONES COMUNES A TODOS LOS PRODUCTOS SOFTWARE:

    Public NOMBRE_PROGRAMA_SYS As String
    Public REQUIERE_AUTENTICACION_USUARIO_SYS As String
    Public PUERTO_SERIE_LECTORQR_SYS As String

    Public LOCALIZACION_ACTIVA_SYS As String

    Public FECHA_NULA_SYS As String

    Public ID_DATOS_CONTACTO_SYS As Long

    Public MAX_GRID_ROWS_SIZE_SYS As Long

    Public CAT_PERFIL_USUARIO As Long
        Public CAT_VAL_PERFIL_ADMIN_SISTEMA As Long
        Public CAT_VAL_PERFIL_ADMIN_USUARIOS  As Long
        Public CAT_VAL_PERFIL_ADMIN_PERSONAS  As Long
        Public CAT_VAL_PERFIL_ADMIN_MODULOS As Long
        Public CAT_VAL_PERFIL_SERVICIO_TECNICO As Long
        Public CAT_VAL_PERFIL_ADMIN_ARBOLES As Long
        Public CAT_VAL_PERFIL_ADMIN_CATEGORIAS As Long
        Public CAT_VAL_PERFIL_ADMIN_CULTURAS As Long
        Public CAT_VAL_PERFIL_ADMIN_ESTADOS As Long
        Public CAT_VAL_PERFIL_ADMIN_GRUPOS As Long
        Public CAT_VAL_PERFIL_ADMIN_IDENTIFICACIONES As Long
        Public CAT_VAL_PERFIL_ADMIN_PERFILES As Long
        Public CAT_VAL_PERFIL_ADMIN_REDES As Long
        Public CAT_VAL_PERFIL_ADMIN_PERMISOS As Long
        Public CAT_VAL_PERFIL_PUESTO_CONTROL As Long
        Public CAT_VAL_PERFIL_ADMIN_WORKSTATION As Long
        Public CAT_VAL_PERFIL_ADMIN_AUTOS As Long
        Public CAT_VAL_PERFIL_ADMIN_LOTES As Long
        Public CAT_VAL_PERFIL_VALIDA_TICKETS As Long
    Public CAT_MODULO_CONTROLADOR As Long
        Public CAT_VAL_MODULO_ST1660 As Long
        Public CAT_VAL_MODULO_DDMM As Long
        Public CAT_VAL_MODULO_CASH_PARK As Long
        Public CAT_VAL_MODULO_CASH_TAG As Long
        Public CAT_VAL_MODULO_ST1660_PARK As Long
        Public CAT_VAL_MODULO_VIRTUAL As Long
        Public CAT_VAL_MODULO_VME_485 As Long
        Public CAT_VAL_MODULO_VME_100 As Long

    Public CAT_IDENTIFICACION As Long
        Public CAT_VAL_IDENTIFICACION_PROXIMIDAD As Long
        Public CAT_VAL_IDENTIFICACION_CODIGO_BARRA As Long
        Public CAT_VAL_IDENTIFICACION_BANDA_MAGNETICA As Long
        Public CAT_VAL_IDENTIFICACION_TAG As Long
        Public CAT_VAL_IDENTIFICACION_PIN As Long
        Public CAT_VAL_IDENTIFICACION_CONTROLADA As Long

    Public CAT_SENTIDO As Long
        Public CAT_VAL_SENTIDO_INGRESO As Long
        Public CAT_VAL_SENTIDO_SALIDA As Long
        Public CAT_VAL_SENTIDO_MODULO_INFORMA As Long
        Public CAT_VAL_SENTIDO_LECTOR_UNICO As Long
        Public CAT_VAL_SENTIDO_MODULO_INFORMA_INVERTIDO As Long
         
    Public CAT_ENCUESTA As Long
        Public CAT_VAL_ENCUESTA_SI As Long
        Public CAT_VAL_ENCUESTA_NO As Long

    Public CAT_RESPONDE As Long
        Public CAT_VAL_RESPONDE_SI As Long
        Public CAT_VAL_RESPONDE_NO As Long

    Public CAT_ANTIPASSBACK As Long
        Public CAT_VAL_ANTIPASSBACK_SI As Long
        Public CAT_VAL_ANTIPASSBACK_NO As Long

    Public CAT_PROTOCOLO As Long
        Public CAT_VAL_PROTOCOLO_OEMSPOT As Long

    Public CAT_ENTORNO_GRAFICO As Long
        Public CAT_VAL_SUPERVISOR As Long
        Public CAT_VAL_CONTROLADOR_MODULO As Long
        Public CAT_VAL_GESTION_LICENCIAS As Long

    Public CAT_TIPO_PERSONA As Long
        Public CAT_VAL_TIPO_PERSONA_DIRECTOR As Long
        Public CAT_VAL_TIPO_PERSONA_EMPLEADO As Long
     

    Public CAT_TIPO_DOC_PERSONA As Long
        Public CAT_VAL_TIPO_DOC_DNI As Long
        Public CAT_VAL_TIPO_DOC_CI As Long
        Public CAT_VAL_TIPO_DOC_PASAPORTE As Long
        Public CAT_VAL_TIPO_DOC_CUIT As Long
        Public CAT_VAL_TIPO_DOC_CUIL As Long
        Public CAT_VAL_TIPO_DOC_LIC_CONDUCIR As Long
        Public CAT_VAL_TIPO_DOC_LIB_ENROLAMIENTO As Long
        Public CAT_VAL_TIPO_DOC_LIB_CIVICA As Long

    Public CAT_TIPO_TEL_PERSONA As Long
        Public CAT_VAL_TIPO_TEL_PARTICULAR As Long
        Public CAT_VAL_TIPO_TEL_MOVIL As Long
        Public CAT_VAL_TIPO_TEL_LABORAL As Long

    Public CAT_TIPO_EMAIL_PERSONA As Long
        Public CAT_VAL_TIPO_EMAIL_PARTICULAR As Long
        Public CAT_VAL_TIPO_EMAIL_LABORAL As Long

    Public CAT_TIPO_DIR_PERSONA As Long
        Public CAT_VAL_TIPO_DIR_PARTICULAR As Long
        Public CAT_VAL_TIPO_DIR_LABORAL As Long
        Public CAT_VAL_TIPO_DIR_COUNTRY As Long

    Public CAT_TIPO_ACCESO As Long
        Public CAT_VAL_TIPO_ACCESO_PUERTA As Long
        Public CAT_VAL_TIPO_ACCESO_MOLINETE As Long
        Public CAT_VAL_TIPO_ACCESO_BARRERA As Long
        Public CAT_VAL_TIPO_ACCESO_CONTROLADO As Long
        Public CAT_VAL_TIPO_ACCESO_BARRERA_PULSO As Long
        Public CAT_VAL_TIPO_ACCESO_BARRERA_DOBLE_PULSO As Long


    Public CAT_UNIDAD_IDENTIFICACION As Long
        Public CAT_VAL_TIPO_UNIDAD_PERSONA As Long
        Public CAT_VAL_TIPO_UNIDAD_GRUPO As Long

    Public CAT_TIPO_RELACION_GRUPO As Long
        Public CAT_VAL_TIPO_RELACION_GRUPO_SIN_ESPECIFICAR As Long

    Public CAT_MARCA_AUTO As Long
    Public CAT_COLOR_AUTO As Long
    Public CAT_TIPO_AUTO As Long
    Public CAT_MODELO_AUTO As Long

    Public CAT_TIPO_MOVIMIENTO As Long
        Public CAT_VAL_TIPO_MOV_PEATONAL As Long
        Public CAT_VAL_TIPO_MOV_VEHICULAR As Long
        Public CAT_VAL_TIPO_MOV_PRESENTISMO As Long
        Public CAT_VAL_TIPO_MOV_PANICO As Long
        Public CAT_VAL_TIPO_MOV_RECHAZADO As Long
        Public CAT_VAL_TIPO_MOV_PERMANENCIA As Long

    Public CAT_TIPO_ACCESO_GRUPO As Long
        Public CAT_VAL_ACCESO_GRUPO_AUTOMATICO As Long
        Public CAT_VAL_ACCESO_GRUPO_CONTROLADO As Long

    Public CAT_TIPO_DOC_INT_PERSONA As Long
        Public CAT_VAL_TIPO_DOC_INT_NRO_SOCIO As Long
        Public CAT_VAL_TIPO_DOC_INT_NRO_LEGAJO As Long

    Public EST_USUARIO As Long
        Public EST_VAL_USUARIO_HABILITADO As Long
        Public EST_VAL_USUARIO_DESHABILITADO  As Long

    Public EST_FUNCIONANDO As Long
        Public EST_VAL_FUNCIONANDO_SI As Long
        Public EST_VAL_FUNCIONANDO_NO As Long

    Public CAT_ESTADO_LOTE As Long
        Public CAT_VAL_ESTADO_LOTE_BALDIO As Long
        Public CAT_VAL_ESTADO_LOTE_EN_OBRA As Long
        Public CAT_VAL_ESTADO_LOTE_RESIDENCIA_PERMANENTE As Long
        Public CAT_VAL_ESTADO_LOTE_RESIDENCIA_OCASIONAL As Long
        Public CAT_VAL_ESTADO_LOTE_OTRO As Long

    Public LIC_2_MODULOS As Long
    Public LIC_4_MODULOS As Long
    'Public LIC_6_MODULOS As Long
    Public LIC_8_MODULOS As Long
    'Public LIC_10_MODULOS As Long
    'Public LIC_12_MODULOS As Long
    'Public LIC_14_MODULOS As Long
    Public LIC_16_MODULOS As Long
   ' Public LIC_18_MODULOS As Long
    Public LIC_MAS_16_MODULOS As Long

    Public LIC_2_USUARIOS As Long
    Public LIC_4_USUARIOS As Long
    Public LIC_MAS_4_USUARIOS As Long

    Public LIC_100_PERSONAS As Long
    Public LIC_500_PERSONAS As Long
    Public LIC_1000_PERSONAS As Long
    Public LIC_MAS_1000_PERSONAS As Long
    
    Public LIC_100_LOTES As Long
    Public LIC_500_LOTES As Long
    Public LIC_1000_LOTES As Long
    Public LIC_MAS_1000_LOTES As Long

    Public USUARIO_ADMINISTRADOR_SYS As Long
    
    Public CONTROL_ACCESO_TODOS_LOS_GRUPOS As Long
    Public CONTROL_ACCESO_TODOS_LOS_PERFILES As Long

    Public IDIOMA_SPANISH As Long
    Public IDIOMA_ENGLISH As Long
    Public IDIOMA_PORTUGUES As Long

    Public PROPIEDAD_ALTURA As Long
    Public PROPIEDAD_ANCHO As Long
    Public PROPIEDAD_PESO As Long
    Public PROPIEDAD_PATENTE As Long
    Public PROPIEDAD_CANTIDAD_PERSONAS As Long
    Public PROPIEDAD_CACHEO As Long
    Public PROPIEDAD_DESTINO_VISITA As Long
    Public PROPIEDAD_MOTIVO_VISITA As Long
    Public PROPIEDAD_CANTIDAD_MENORES As Long
    Public PROPIEDAD_OBSERVACIONES As Long
    Public PROPIEDAD_ENTIDAD As String
    
    
        
' ++ DECLARACIONES PARA OEMSPOT DESARROLLO:

' ++ DECLARACIONES PARA OEMSPOT VIDEOMAN:

' ++ DECLARACIONES PARA OEMSPOT HIDROMET:

' ++ DECLARACIONES PARA OEMSPOT VILASCLUB:


' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   SETUP DE PLATAFORMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sub initSetup()

' ++ VERSION DE PLATAFORMA

    VERSION_PLATAFORMA_SYS = "25-06-2024"

' ++ UTILIZAR ESTE BUILD PARA PRODUCTO SOFTWARE: OEMSPOT DESARROLLO

'    CODIGO_PRODUCT0_SOFTWARE_SYS = "OEMSPOT_DESARROLLO"
'        CONFIGURACION_PROGRAMA_SYS = "ProgramaSistemaGestion"
'        'CONFIGURACION_PROGRAMA_SYS = "ProgramaSistemaControlador"
'        'CONFIGURACION_PROGRAMA_SYS = "ProgramaGestionLicencias"
'
'        DB_CONNECTION_STRING_SYS = "Provider=MSDASQL.1;" _
'            & "User ID=videoman;" _
'            & "Password=OEMSPOT2008wx;" _
'            & "Persist Security Info=False;" _
'            & "Data Source=videoman"
'
'        VERSION_PRODUCTO_SYS = "0.9"

' ++ UTILIZAR ESTE BUILD PARA PRODUCTO SOFTWARE: OEMSPOT VIDEOMAN

    'CODIGO_PRODUCT0_SOFTWARE_SYS = "OEMSPOT_VIDEOMAN"
     CODIGO_PRODUCT0_SOFTWARE_SYS = "OEMSPOT Ver. 3.0"
        CONFIGURACION_PROGRAMA_SYS = "ProgramaSistemaGestion"
        'CONFIGURACION_PROGRAMA_SYS = "ProgramaSistemaControlador"
        'CONFIGURACION_PROGRAMA_SYS = "ProgramaGestionLicencias"

'original maximo
'        DB_CONNECTION_STRING_SYS = "Provider=MSDASQL.1;" _
'            & "User ID=videoman;" _
'            & "Password=OEMSPOT2008wx;" _
'            & "Persist Security Info=False;" _
'            & "Data Source=videoman"
'cambiado por diego
        DB_CONNECTION_STRING_SYS = "videoman"
'fin cambiado por diego

        VERSION_PRODUCTO_SYS = "2.0 - SQLEXPRESS"

' ++ UTILIZAR ESTE BUILD PARA PRODUCTO SOFTWARE: OEMSPOT HIDROMET

'    CODIGO_PRODUCT0_SOFTWARE_SYS = "OEMSPOT_HIDROMET"
'        CONFIGURACION_PROGRAMA_SYS = ""
'
'        DB_CONNECTION_STRING_SYS = "Provider=MSDASQL.1;" _
'            & "User ID=videoman_hidromet;" _
'            & "Password=OEMSPOT2008wx;" _
'            & "Persist Security Info=False;" _
'            & "Data Source=videoman"
'
'        VERSION_PRODUCTO_SYS = "0.9"

' ++ UTILIZAR ESTE BUILD PARA PRODUCTO SOFTWARE: OEMSPOT VILASCLUB

'    CODIGO_PRODUCT0_SOFTWARE_SYS = "OEMSPOT_VILASCLUB"
'        CONFIGURACION_PROGRAMA_SYS = ""
'
'        DB_CONNECTION_STRING_SYS = "Provider=MSDASQL.1;" _
'            & "User ID=videoman_vilasclb;" _
'            & "Password=OEMSPOT2008wx;" _
'            & "Persist Security Info=False;" _
'            & "Data Source=videoman"
'
'        VERSION_PRODUCTO_SYS = "0.9"

    MODO_DEBUG_SYS = False

    DIRECCION_REGISTROS_USUARIOS_SYS = 100000

End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   SETUP DE PRODUCTO SOFTWARE
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sub configurarProductoSoftware()

' ++ CONSTANTES COMUNES A TODOS LOS PRODUCTOS SOFTWARE:

    NOMBRE_PROGRAMA_SYS = getConfiguracionParametroDB(CONFIGURACION_PROGRAMA_SYS, "NOMBRE_PROGRAMA_SYS")

    If getConfiguracionParametroDB(CONFIGURACION_PROGRAMA_SYS, "REQUIERE_AUTENTICACION_SYS") = "True" Then
        REQUIERE_AUTENTICACION_USUARIO_SYS = True
    Else
        REQUIERE_AUTENTICACION_USUARIO_SYS = False
    End If

    PUERTO_SERIE_LECTORQR_SYS = getConfiguracionParametroDB(CONFIGURACION_PROGRAMA_SYS, "PUERTO SERIE PARA LECTOR QR")

    LOCALIZACION_ACTIVA_SYS = getConfiguracionParametroDB(CONFIGURACION_PROGRAMA_SYS, "LOCALIZACION_ACTIVA_SYS")

    FECHA_NULA_SYS = "31/12/1899"

    ID_DATOS_CONTACTO_SYS = 1

    MAX_GRID_ROWS_SIZE_SYS = 100

    CAT_PERFIL_USUARIO = 1
        CAT_VAL_PERFIL_ADMIN_SISTEMA = 1
        CAT_VAL_PERFIL_ADMIN_USUARIOS = 2
        CAT_VAL_PERFIL_ADMIN_PERSONAS = 3
        CAT_VAL_PERFIL_ADMIN_MODULOS = 4
        CAT_VAL_PERFIL_SERVICIO_TECNICO = 5
        CAT_VAL_PERFIL_ADMIN_ARBOLES = 6
        CAT_VAL_PERFIL_ADMIN_CATEGORIAS = 7
        CAT_VAL_PERFIL_ADMIN_CULTURAS = 8
        CAT_VAL_PERFIL_ADMIN_ESTADOS = 9
        CAT_VAL_PERFIL_ADMIN_GRUPOS = 10
        CAT_VAL_PERFIL_ADMIN_IDENTIFICACIONES = 11
        CAT_VAL_PERFIL_ADMIN_PERFILES = 12
        CAT_VAL_PERFIL_ADMIN_REDES = 13
        CAT_VAL_PERFIL_ADMIN_PERMISOS = 14
        CAT_VAL_PERFIL_PUESTO_CONTROL = 15
        CAT_VAL_PERFIL_ADMIN_WORKSTATION = 16
        CAT_VAL_PERFIL_ADMIN_AUTOS = 17
        CAT_VAL_PERFIL_ADMIN_LOTES = 18
        CAT_VAL_PERFIL_VALIDA_TICKETS = 19
    CAT_MODULO_CONTROLADOR = 2
        CAT_VAL_MODULO_ST1660 = 1
        CAT_VAL_MODULO_DDMM = 2
        CAT_VAL_MODULO_CASH_PARK = 3
        CAT_VAL_MODULO_CASH_TAG = 4
        CAT_VAL_MODULO_ST1660_PARK = 5
        CAT_VAL_MODULO_VIRTUAL = 6
        CAT_VAL_MODULO_VME_485 = 7
        CAT_VAL_MODULO_VME_100 = 8

    CAT_IDENTIFICACION = 3
        CAT_VAL_IDENTIFICACION_PROXIMIDAD = 1
        CAT_VAL_IDENTIFICACION_CODIGO_BARRA = 2
        CAT_VAL_IDENTIFICACION_BANDA_MAGNETICA = 3
        CAT_VAL_IDENTIFICACION_TAG = 4
        CAT_VAL_IDENTIFICACION_PIN = 5
        CAT_VAL_IDENTIFICACION_CONTROLADA = 6

    CAT_SENTIDO = 4
        CAT_VAL_SENTIDO_INGRESO = 1
        CAT_VAL_SENTIDO_SALIDA = 2
        CAT_VAL_SENTIDO_MODULO_INFORMA = 3
        CAT_VAL_SENTIDO_LECTOR_UNICO = 4
        CAT_VAL_SENTIDO_MODULO_INFORMA_INVERTIDO = 5

    CAT_ENCUESTA = 5
        CAT_VAL_ENCUESTA_SI = 1
        CAT_VAL_ENCUESTA_NO = 2

    CAT_RESPONDE = 6
        CAT_VAL_RESPONDE_SI = 1
        CAT_VAL_RESPONDE_NO = 2

    CAT_ANTIPASSBACK = 7
        CAT_VAL_ANTIPASSBACK_SI = 1
        CAT_VAL_ANTIPASSBACK_NO = 2

    CAT_PROTOCOLO = 8
        CAT_VAL_PROTOCOLO_OEMSPOT = 1

    CAT_ENTORNO_GRAFICO = 9
        CAT_VAL_SUPERVISOR = 1
        CAT_VAL_CONTROLADOR_MODULO = 2
        CAT_VAL_GESTION_LICENCIAS = 3

    CAT_TIPO_PERSONA = 10
        CAT_VAL_TIPO_PERSONA_DIRECTOR = 1
        CAT_VAL_TIPO_PERSONA_EMPLEADO = 2

    CAT_TIPO_DOC_PERSONA = 11
        CAT_VAL_TIPO_DOC_DNI = 1
        CAT_VAL_TIPO_DOC_CI = 2
        CAT_VAL_TIPO_DOC_PASAPORTE = 3
        CAT_VAL_TIPO_DOC_CUIT = 4
        CAT_VAL_TIPO_DOC_CUIL = 5
        CAT_VAL_TIPO_DOC_LIC_CONDUCIR = 6
        CAT_VAL_TIPO_DOC_LIB_ENROLAMIENTO = 7
        CAT_VAL_TIPO_DOC_LIB_CIVICA = 8

    CAT_TIPO_TEL_PERSONA = 12
        CAT_VAL_TIPO_TEL_PARTICULAR = 1
        CAT_VAL_TIPO_TEL_MOVIL = 2
        CAT_VAL_TIPO_TEL_LABORAL = 3

    CAT_TIPO_EMAIL_PERSONA = 13
        CAT_VAL_TIPO_EMAIL_PARTICULAR = 1
        CAT_VAL_TIPO_EMAIL_LABORAL = 2

    CAT_TIPO_DIR_PERSONA = 14
        CAT_VAL_TIPO_DIR_PARTICULAR = 1
        CAT_VAL_TIPO_DIR_LABORAL = 2
        CAT_VAL_TIPO_DIR_COUNTRY = 3
        
    CAT_TIPO_ACCESO = 15
        CAT_VAL_TIPO_ACCESO_PUERTA = 1
        CAT_VAL_TIPO_ACCESO_MOLINETE = 2
        CAT_VAL_TIPO_ACCESO_BARRERA = 3
        CAT_VAL_TIPO_ACCESO_CONTROLADO = 4
        CAT_VAL_TIPO_ACCESO_BARRERA_PULSO = 5
        CAT_VAL_TIPO_ACCESO_BARRERA_DOBLE_PULSO = 6

    CAT_UNIDAD_IDENTIFICACION = 16
        CAT_VAL_TIPO_UNIDAD_PERSONA = 1
        CAT_VAL_TIPO_UNIDAD_GRUPO = 2

    CAT_TIPO_RELACION_GRUPO = 18
        CAT_VAL_TIPO_RELACION_GRUPO_SIN_ESPECIFICAR = 10
        
    CAT_MARCA_AUTO = 19
    CAT_COLOR_AUTO = 20
    CAT_TIPO_AUTO = 21
    CAT_MODELO_AUTO = 22

    CAT_TIPO_MOVIMIENTO = 23
        CAT_VAL_TIPO_MOV_RECHAZADO = 0
        CAT_VAL_TIPO_MOV_PEATONAL = 1
        CAT_VAL_TIPO_MOV_VEHICULAR = 2
        CAT_VAL_TIPO_MOV_PRESENTISMO = 3
        CAT_VAL_TIPO_MOV_PANICO = 4
        CAT_VAL_TIPO_MOV_PERMANENCIA = 5
        

    CAT_TIPO_ACCESO_GRUPO = 24
        CAT_VAL_ACCESO_GRUPO_AUTOMATICO = 1
        CAT_VAL_ACCESO_GRUPO_CONTROLADO = 2

    CAT_TIPO_DOC_INT_PERSONA = 25
        CAT_VAL_TIPO_DOC_INT_NRO_SOCIO = 1
        CAT_VAL_TIPO_DOC_INT_NRO_LEGAJO = 2

    CAT_ESTADO_LOTE = 26
        CAT_VAL_ESTADO_LOTE_BALDIO = 1
        CAT_VAL_ESTADO_LOTE_EN_OBRA = 2
        CAT_VAL_ESTADO_LOTE_RESIDENCIA_PERMANENTE = 3
        CAT_VAL_ESTADO_LOTE_RESIDENCIA_OCASIONAL = 4
        CAT_VAL_ESTADO_LOTE_OTRO = 5
    
    EST_USUARIO = 1
        EST_VAL_USUARIO_HABILITADO = 1
        EST_VAL_USUARIO_DESHABILITADO = 2

    EST_FUNCIONANDO = 2
        EST_VAL_FUNCIONANDO_SI = 1
        EST_VAL_FUNCIONANDO_NO = 2

    LIC_2_MODULOS = 1
    LIC_4_MODULOS = 2
    'LIC_6_MODULOS = 5
    LIC_8_MODULOS = 3
    'LIC_10_MODULOS = 6
    'LIC_12_MODULOS = 7
    'LIC_14_MODULOS = 8
    LIC_16_MODULOS = 9
    'LIC_18_MODULOS = 10
    LIC_MAS_16_MODULOS = 11

    LIC_2_USUARIOS = 15
    LIC_4_USUARIOS = 16
    LIC_MAS_4_USUARIOS = 17

    LIC_100_PERSONAS = 18
    LIC_500_PERSONAS = 19
    LIC_1000_PERSONAS = 20
    LIC_MAS_1000_PERSONAS = 21

    USUARIO_ADMINISTRADOR_SYS = 1
    
    CONTROL_ACCESO_TODOS_LOS_GRUPOS = 1
    CONTROL_ACCESO_TODOS_LOS_PERFILES = 1
    
    IDIOMA_SPANISH = 1
    IDIOMA_ENGLISH = 2
    IDIOMA_PORTUGUES = 3
    
    PROPIEDAD_ALTURA = 1
    PROPIEDAD_ANCHO = 2
    PROPIEDAD_PESO = 3
    PROPIEDAD_PATENTE = 4
    PROPIEDAD_CANTIDAD_PERSONAS = 5
    PROPIEDAD_CACHEO = 6
    PROPIEDAD_DESTINO_VISITA = 7
    PROPIEDAD_MOTIVO_VISITA = 8
    PROPIEDAD_CANTIDAD_MENORES = 9
    PROPIEDAD_OBSERVACIONES = 10
    PROPIEDAD_ENTIDAD = 11
    
' ++ CONSTANTES ESPECIFICAS PARA CADA PRODUCTO SOFTWARE:

    Select Case CODIGO_PRODUCT0_SOFTWARE_SYS

        Case "OEMSPOT_DESARROLLO":

        Case "OEMSPOT_VIDEOMAN":

        Case "OEMSPOT_HIDROMET":

        Case "OEMSPOT_VILASCLUB":

    End Select

End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES COMUNES DE SETUP
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function getConfiguracionParametroDB(NombreConfiguracion As String, NombreParametro As String, Optional bValida As Boolean) As String
    
    
    
    
    If Not Chequear_conexion_Motor_MySQL Then End
    
 
    
    If DbCommandSYS Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT CfgOpt.Valor FROM Cfg INNER JOIN CfgOpt ON(Cfg.ConfiguracionID=CfgOpt.ConfiguracionID) WHERE Cfg.Nombre = '" & NombreConfiguracion & "' AND CfgOpt.Nombre = '" & NombreParametro & "'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute
    
    If bValida = False Then
        If DbRecordsetSYS.EOF Then
          '  MsgBox "No se puede acceder a parámetros de configuración del Producto Software", vbCritical, "Atención"
          '   End
        End If
    End If

    getConfiguracionParametroDB = DbRecordsetSYS.Fields(0).value
End Function
