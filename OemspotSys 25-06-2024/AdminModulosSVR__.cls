VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminModulosSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ModuloOrm As MdlORM
Public ModuloQuery As MdlQRY

Private Sub Class_Initialize()
    Set ModuloOrm = New MdlORM
    Set ModuloQuery = New MdlQRY
End Sub

Private Sub Class_Terminate()
    Set ModuloOrm = Nothing
    Set ModuloQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    getList = ModuloQuery.getAdminModulosList(busqueda, NroPagina)
End Function

Function getCantidadItems(busqueda As String) As Boolean
    getCantidadItems = ModuloQuery.getCantidadItems(busqueda)
End Function

Function getCantidadMovimientos(busqueda() As String, ByVal TipoMovimiento As Long, ByVal FechaDesde As String, ByVal FechaHasta As String) As Boolean
    getCantidadMovimientos = ModuloQuery.getCantidadMovimientos(busqueda(), TipoMovimiento, FechaDesde, FechaHasta)
End Function

Function buscarMovimientoPorID(busqueda As String) As Boolean
    If ModuloQuery.buscarMovimientoPorID(busqueda) Then
        buscarMovimientoPorID = True
    Else
        buscarMovimientoPorID = False
    End If
End Function

Function getCantidadTickets(busqueda As String) As Boolean
    getCantidadTickets = ModuloQuery.getCantidadTickets(busqueda)
End Function

Function getGrupoModulosList(busqueda As String, GrupoModulos As Long, NroPagina As Long) As Boolean
    getGrupoModulosList = ModuloQuery.getGrupoModulosList(busqueda, GrupoModulos, NroPagina)
End Function

Function getGrupoModulosCantidadItems(busqueda As String, GrupoModulos As Long) As Boolean
    getGrupoModulosCantidadItems = ModuloQuery.getGrupoModulosCantidadItems(busqueda, GrupoModulos)
End Function

Function getListaTicketsPendientes(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    getListaTicketsPendientes = ModuloQuery.getListaTicketsPendientes(busqueda(), NroPagina, FechaDesde, FechaHasta)
End Function

Function getListaTicketsPendientesCantidad(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    getListaTicketsPendientesCantidad = ModuloQuery.getListaTicketsPendientesCantidad(busqueda(), NroPagina, FechaDesde, FechaHasta)
End Function

Function getListaMovimientos(busqueda() As String, NroPagina As Long, TipoMovimiento As Long, FechaDesde As String, FechaHasta As String) As Boolean
    getListaMovimientos = ModuloQuery.getListaMovimientos(busqueda(), NroPagina, TipoMovimiento, FechaDesde, FechaHasta)
End Function

Function getListaTicketsHistoricos(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    getListaTicketsHistoricos = ModuloQuery.getListaTicketsHistoricos(busqueda(), NroPagina, FechaDesde, FechaHasta)
End Function

Function getListaTicketsHistoricosCantidad(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    getListaTicketsHistoricosCantidad = ModuloQuery.getListaTicketsHistoricosCantidad(busqueda(), NroPagina, FechaDesde, FechaHasta)
End Function

Function obtenerTicketPendienteDetallado(TicketID As Currency) As Boolean
    If ModuloQuery.obtenerTicketPendienteDetallado(TicketID) Then
        obtenerTicketPendienteDetallado = True
    Else
        obtenerTicketPendienteDetallado = False
    End If
End Function

Function obtenerTicketHistoricoDetallado(TicketID As Currency) As Boolean
    If ModuloQuery.obtenerTicketHistoricoDetallado(TicketID) Then
        obtenerTicketHistoricoDetallado = True
    Else
        obtenerTicketHistoricoDetallado = False
    End If
End Function

' Verifica si tiene Licencia para creación de más módulos
Function tieneLicencias() As Boolean

    Dim CantidadModulosActuales As Integer
    Dim CantidadModulos As Integer

    ' Obtener cantidad de Módulos actuales
    If ModuloQuery.obtenerCantidadModulos Then
        CantidadModulosActuales = ModuloQuery.DbRecordsetQRY.Fields(0).value
    End If

    ' Verificar si se tiene licencia para crear otro Módulo

    tieneLicencias = False

    CantidadModulos = CantidadModulosActuales + 1

    If CantidadModulos > 16 And validarLicencia(LIC_MAS_16_MODULOS) Then
        tieneLicencias = True
'   ElseIf CantidadModulos <= 18 And validarLicencia(LIC_18_MODULOS) Then
'        tieneLicencias = True
    ElseIf CantidadModulos <= 16 And validarLicencia(LIC_16_MODULOS) Then
        tieneLicencias = True
'    ElseIf CantidadModulos <= 14 And validarLicencia(LIC_14_MODULOS) Then
'        tieneLicencias = True
'    ElseIf CantidadModulos <= 12 And validarLicencia(LIC_12_MODULOS) Then
'        tieneLicencias = True
'    ElseIf CantidadModulos <= 10 And validarLicencia(LIC_10_MODULOS) Then
'        tieneLicencias = True
    ElseIf CantidadModulos <= 8 And validarLicencia(LIC_8_MODULOS) Then
        tieneLicencias = True
'    ElseIf CantidadModulos <= 6 And validarLicencia(LIC_6_MODULOS) Then
'        tieneLicencias = True
    ElseIf CantidadModulos <= 4 And validarLicencia(LIC_4_MODULOS) Then
        tieneLicencias = True
    ElseIf CantidadModulos <= 2 And validarLicencia(LIC_2_MODULOS) Then
        tieneLicencias = True
    Else ' EL SISTEMA BASICO PERMITE CARGAR HASTA 100 PERSONAS
        tieneLicencias = False
    End If

End Function

Function getDatosSubirModulo(ModuloID As Long) As Boolean

    Dim WpcService As WpcSvr
    Set WpcService = New WpcSvr

    Dim Identificacion As String
    Dim persona As String
    Dim PerfilID As String
    
    If ModuloQuery.getDatosSubirModulo(ModuloID) Then
        Do While Not ModuloQuery.DbRecordsetQRY.EOF
            Identificacion = ModuloQuery.DbRecordsetQRY.Fields(0).value
            persona = ModuloQuery.DbRecordsetQRY.Fields(1).value
            PerfilID = ModuloQuery.DbRecordsetQRY.Fields(2).value
            
            WpcService.SubirPermisoModulo DbConnectionSYS, ModuloID, Identificacion, persona, PerfilID

            ModuloQuery.DbRecordsetQRY.MoveNext
        Loop
    End If

    Set WpcService = Nothing

    MsgBox "Se ha encolado toda la información para enviar los Permisos al Módulo. Asegúrese de que el Módulo esté contectado para realizar la operación.", vbOK, "Comunicación con el Módulo"

End Function

Function existeTicketPendiente(ModuloID As Long) As Boolean
    existeTicketPendiente = ModuloQuery.existeTicketPendiente(ModuloID)
End Function

Function obtenerModuloVirtual(WindowsComputerName As String) As Long
    If ModuloQuery.obtenerModuloVirtual(WindowsComputerName) Then
        obtenerModuloVirtual = ModuloQuery.DbRecordsetQRY.Fields(0).value
    End If
End Function

Function obtenerModuloEntradaID(ByVal ModuloID_ As Long) As Long
    If ModuloQuery.obtenerModuloEntradaID(ModuloID_) Then
        obtenerModuloEntradaID = ModuloQuery.DbRecordsetQRY.Fields(0).value
    End If
End Function

Function obtenerListaModuloVirtual(wokstationID As Long) As Boolean
    obtenerListaModuloVirtual = ModuloQuery.getListModuloVirtual(wokstationID)
End Function

Function obtenerWorkStationID(WindowsComputerName As String) As Long
        obtenerWorkStationID = ModuloQuery.obtenerWorkStationID(WindowsComputerName)
End Function
