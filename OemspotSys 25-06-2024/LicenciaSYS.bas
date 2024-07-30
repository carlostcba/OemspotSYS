Attribute VB_Name = "LicenciaSYS"
Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   PROCESOS PARA ADMINISTRAR LICENCIAS DEL SISTEMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


' A) EL CLIENTE GENERA Solicitud.LIC

' Guarda en el archivo especificado la identificación del Producto Software,
' la identificación del Cliente (MAC Address) y las Licencias Solicitadas
Function generarSolicitudLicencia(Archivo As String)

    Dim AdminLicenciasServices As AdminLicenciasSVR
    Dim EncryptionServices As EncryptionSVR

    Set AdminLicenciasServices = New AdminLicenciasSVR
    Set EncryptionServices = New EncryptionSVR

    Open Archivo For Output As #1

    Print #1, EncryptionServices.Encriptar("CodigoProducto")
    Print #1, EncryptionServices.Encriptar(CStr(CODIGO_PRODUCT0_SOFTWARE_SYS))

    Print #1, EncryptionServices.Encriptar("IdentificacionCliente")
    Print #1, EncryptionServices.Encriptar(getMacAddress())

    If AdminLicenciasServices.getLicenciasASolicitar Then
        Do While Not AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.EOF
            Print #1, EncryptionServices.Encriptar("LicenciaSolicitada")
            Print #1, EncryptionServices.Encriptar(CStr(AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.Fields(0).value))
            AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.MoveNext
        Loop
    End If

    Close #1

    Set AdminLicenciasServices = Nothing
    Set EncryptionServices = Nothing

End Function

' B) EL PROVEEDOR GENERA Compra.LIC

Function procesarSolicitudLicencia(ArchivoOrigen As String, ArchivoDestino As String) As Boolean
On Error GoTo errorhandler

    Dim MD5Service As MD5SVR
    Dim AdminLicenciasServices As AdminLicenciasSVR
    Dim EncryptionServices As EncryptionSVR
    Dim Linea As String
    Dim MacAddressCliente As String
    Dim LicenciaID As Long

    Set MD5Service = New MD5SVR
    Set AdminLicenciasServices = New AdminLicenciasSVR
    Set EncryptionServices = New EncryptionSVR

    Open ArchivoOrigen For Input As #1
    Open ArchivoDestino For Output As #2

    Do While Not EOF(1)
        Line Input #1, Linea
        Linea = Trim(EncryptionServices.Desencriptar(Linea))

        Select Case Linea

            Case "CodigoProducto":
                
                ' Obtener Código de Producto del cual el Cliente está realizando la Solicitud
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                Print #2, EncryptionServices.Encriptar("CodigoProducto")
                Print #2, EncryptionServices.Encriptar(Linea)

            Case "IdentificacionCliente":

                ' Obtener Mac Address del Cliente
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                MacAddressCliente = Linea

                ' Generar todos los posibles valores de la tabla Lic en el Cliente
                If AdminLicenciasServices.getLicencias Then
                    Do While Not AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.EOF
                        Print #2, EncryptionServices.Encriptar("LicenciaDisponible")
                        Print #2, EncryptionServices.Encriptar(AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.Fields(0).value)
                        Print #2, EncryptionServices.Encriptar(MD5Service.DigestStrToHexStr(CStr(AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.Fields(0).value & MacAddressCliente)))
                        AdminLicenciasServices.LicenciaQuery.DbRecordsetQRY.MoveNext
                    Loop
                End If

            Case "LicenciaSolicitada":

                ' Obtener Licencia que el Cliente está comprando
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                LicenciaID = Linea

                ' Guardar Licencia
                Print #2, EncryptionServices.Encriptar("LicenciaComprada")
                Print #2, EncryptionServices.Encriptar(CStr(LicenciaID))

                ' Generar SoftwareKey para que el Cliente instale lo que está comprando
                Print #2, EncryptionServices.Encriptar(MD5Service.DigestStrToHexStr(LicenciaID & MacAddressCliente))

        End Select
    Loop

    Close #1
    Close #2

    Set MD5Service = Nothing
    Set AdminLicenciasServices = Nothing
    Set EncryptionServices = Nothing

    procesarSolicitudLicencia = True
    Exit Function
errorhandler:
    procesarSolicitudLicencia = False
End Function

' C) EL CLIENTE INSTALA Compra.LIC

Function procesarRespuestaRecibidaASolicitudLicencia(Archivo As String) As Boolean

    Dim MD5Service As MD5SVR
    Dim AdminLicenciasServices As AdminLicenciasSVR
    Dim EncryptionServices As EncryptionSVR
    Dim AsistenteDataObject As AsistenteDAO
    Dim LicenciaDataObject As LicDAO
    Dim LicenciaCompradaDataObject As ClcDAO
    Dim Linea As String
    Dim MacAddressCliente As String
    Dim LicenciaID As Long
    Dim LicenciaQuery As LicQRY
    
    Set MD5Service = New MD5SVR
    Set AdminLicenciasServices = New AdminLicenciasSVR
    Set EncryptionServices = New EncryptionSVR
    Set AsistenteDataObject = New AsistenteDAO
    Set LicenciaDataObject = New LicDAO
    Set LicenciaCompradaDataObject = New ClcDAO
    Set LicenciaQuery = New LicQRY
On Error GoTo Salir
    
    Open Archivo For Input As #1

    Do While Not EOF(1)
        Line Input #1, Linea
        Linea = Trim(EncryptionServices.Desencriptar(Linea))

        Select Case Linea

            Case "CodigoProducto":

                ' Obtener Código de Producto para el cual el Cliente está realizando la instalanción de Licencias
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))

                If Linea <> CODIGO_PRODUCT0_SOFTWARE_SYS Then
                    MsgBox "El archivo de Licencia no se aplica a este Producto Software"
                    procesarRespuestaRecibidaASolicitudLicencia = False
                    Exit Function
                End If

            Case "LicenciaDisponible":

                ' Llenar Software Keys de la Tabla de Licencias Disponibles
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                LicenciaDataObject.LicenciaID = Linea

                If Not AsistenteDataObject.retrieve(LicenciaDataObject) Then
                    MsgBox "No se puede Actualizar Licencias Disponibles"
                    procesarRespuestaRecibidaASolicitudLicencia = False
                    Exit Function
                End If

                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                LicenciaDataObject.SoftwareKey = Linea

                If Not AsistenteDataObject.update(LicenciaDataObject) Then
                    MsgBox "No se puede Actualizar Licencias Disponibles"
                    procesarRespuestaRecibidaASolicitudLicencia = False
                    Exit Function
                End If

            Case "LicenciaComprada":

                ' Obtener Licencia que el Cliente está comprando
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                LicenciaCompradaDataObject.LicenciaID = Linea

                ' Obtener Software Key habilitante
                Line Input #1, Linea
                Linea = Trim(EncryptionServices.Desencriptar(Linea))
                ' Volver a encryptar fuerte esta llave que se va a utilizar
                ' en código para verificar si la licencia existe y si es válida
                LicenciaCompradaDataObject.SoftwareKey = MD5Service.DigestStrToHexStr("AdminTool" & getMacAddress & Linea)

                ' Ver si la licencia comprada ya está creada
                If Not LicenciaQuery.licenciaCompradaYaCreada(LicenciaCompradaDataObject.SoftwareKey) Then
                    ' Guardar Licencia Comprada con su Software Key habilitante
                    If AsistenteDataObject.create(LicenciaCompradaDataObject) = -1 Then
                        MsgBox "No se puede Actualizar Licencias Compradas"
                        procesarRespuestaRecibidaASolicitudLicencia = False
                        Exit Function
                    End If
                End If

        End Select
    Loop

    Close #1

    Set MD5Service = Nothing
    Set AdminLicenciasServices = Nothing
    Set EncryptionServices = Nothing
    Set AsistenteDataObject = Nothing
    Set LicenciaDataObject = Nothing
    Set LicenciaCompradaDataObject = Nothing
    Set LicenciaQuery = Nothing

    procesarRespuestaRecibidaASolicitudLicencia = True

Exit Function
Salir:
    MsgBox "No se registró la licencia", vbCritical, "Cancelación de Instalación"
End Function

' PARA LOS MOMENTOS REQUERIDOS, VERIFICAR LICENCIA INSTALADA AL USAR EL SISTEMA

Function validarLicencia(LicenciaID As Long) As Boolean
    Dim MD5Service As MD5SVR
    Dim LicenciaQuery As LicQRY
    Dim EncryptionServices As EncryptionSVR

    Set MD5Service = New MD5SVR
    Set LicenciaQuery = New LicQRY
    Set EncryptionServices = New EncryptionSVR

    ' Validar Licencia para el Servidor en ejecución (MacAddress del Servidor VIDEOMAN)
    If LicenciaQuery.validarLicencia(MD5Service.DigestStrToHexStr("AdminTool" & getMacAddress & (MD5Service.DigestStrToHexStr(LicenciaID & getMacAddress)))) Then
        validarLicencia = True
    ' En caso que de sea un workstation en ejecución (MacAddress distinta del Servidor VIDEOMAN) validarla con la Mac Address en tabla Ins (Instalación), que guarda la MacAddress del Servidor al Instalar
    Else
        Dim MacAddressServidor As String

        Dim sql As String
        sql = "SELECT Ins.Valor FROM Ins WHERE Ins.InsID = 1"
        DbCommandSYS.CommandText = sql
        Set DbRecordsetSYS = DbCommandSYS.Execute
        MacAddressServidor = Replace(EncryptionServices.Desencriptar(DbRecordsetSYS.Fields(0).value), "AdminTool", "")
        MacAddressServidor = Trim(MacAddressServidor)

        If LicenciaQuery.validarLicencia(MD5Service.DigestStrToHexStr("AdminTool" & MacAddressServidor & (MD5Service.DigestStrToHexStr(LicenciaID & MacAddressServidor)))) Then
            validarLicencia = True
        Else
            validarLicencia = False
        End If

    End If

    Set MD5Service = Nothing
    Set LicenciaQuery = Nothing
    Set EncryptionServices = Nothing
End Function
