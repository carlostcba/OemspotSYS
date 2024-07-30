VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminPersonasSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public PersonaOrm As PerORM
'Public PerAutOrm As PerAutOrm
'Public PerGruOrm As PerGruOrm
Public PersonaQuery As PerQRY
Public PergruQuery As PerGruQRY
Public PerautQuery As PerAutQRY

Private Sub Class_Initialize()
    Set PersonaOrm = New PerORM
    Set PersonaQuery = New PerQRY
    'Set PerGruOrm = New PerGruDAO
'    Set PerAutOrm = New PerAutDAO
    Set PergruQuery = New PerGruQRY
    Set PerautQuery = New PerAutQRY
End Sub

Private Sub Class_Terminate()
    Set PersonaOrm = Nothing
    Set PersonaQuery = Nothing
 '   Set PerAutOrm = Nothing
 '   Set PerGruOrm = Nothing
    Set PergruQuery = Nothing
    Set PerautQuery = Nothing
End Sub

Function getList(busqueda() As String, NroPagina As Long) As Boolean
    getList = PersonaQuery.getAdminPersonasList(busqueda(), NroPagina)
End Function

Function getCantidadItems(busqueda() As String) As Boolean
    getCantidadItems = PersonaQuery.getCantidadItems(busqueda())
End Function

Function getCatList(PersonaID As Long, CategoriaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasCatList(PersonaID, CategoriaID) Then
        getCatList = True
    Else
        getCatList = False
    End If
End Function

Function getDocList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasDocList(PersonaID) Then
        getDocList = True
    Else
        getDocList = False
    End If
End Function

Function getTelList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasTelList(PersonaID) Then
        getTelList = True
    Else
        getTelList = False
    End If
End Function

Function getMaiList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasMaiList(PersonaID) Then
        getMaiList = True
    Else
        getMaiList = False
    End If
End Function

Function getDirList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasDirList(PersonaID) Then
        getDirList = True
    Else
        getDirList = False
    End If
End Function

Function getPrxList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasPrxList(PersonaID) Then
        getPrxList = True
    Else
        getPrxList = False
    End If
End Function

Function getGruList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasGruList(PersonaID) Then
        getGruList = True
    Else
        getGruList = False
    End If
End Function

Function getIdnList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasIdnList(PersonaID) Then
        getIdnList = True
    Else
        getIdnList = False
    End If
End Function

Function getAutList(PersonaID As Long) As Boolean
    If PersonaQuery.getAdminPersonasAutList(PersonaID) Then
        getAutList = True
    Else
        getAutList = False
    End If
End Function

' Verifica si tiene Licencia para creación de más personas
Function tieneLicencias() As Boolean

    Dim CantidadPersonasActuales As Long
    Dim CantidadPersonas As Long

    ' Obtener cantidad de Personas actuales
    If PersonaQuery.obtenerCantidadPersonas Then
        CantidadPersonasActuales = PersonaQuery.DbRecordsetQRY.Fields(0).value
    End If

    ' Verificar si se tiene licencia para crear otra Persona

    tieneLicencias = False

    CantidadPersonas = CantidadPersonasActuales + 1

    If CantidadPersonas > 1000 And validarLicencia(LIC_MAS_1000_PERSONAS) Then
        tieneLicencias = True
    ElseIf CantidadPersonas <= 1000 And validarLicencia(LIC_1000_PERSONAS) Then
        tieneLicencias = True
    ElseIf CantidadPersonas <= 500 And validarLicencia(LIC_500_PERSONAS) Then
        tieneLicencias = True
    ElseIf CantidadPersonas <= 100 Then
        tieneLicencias = True  ' EL SISTEMA BASICO PERMITE CARGAR HASTA 100 PERSONAS
    Else
        tieneLicencias = False
    End If

End Function

Function buscarPersonaPorDocumento(ByRef tipo_documento_ As Long, _
                                   ByRef Numero_ As String) As Boolean
    buscarPersonaPorDocumento = PersonaQuery.buscarPersonaPorDocumento(tipo_documento_, Numero_)
    
End Function


Function buscarPersonaPorDNI(busqueda As String) As Boolean
    If PersonaQuery.buscarPersonaPorDNI(busqueda) Then
        buscarPersonaPorDNI = True
    Else
        buscarPersonaPorDNI = False
    End If
End Function
Function buscarPersonaPorPersonaID(busqueda As String) As Boolean
    If PersonaQuery.buscarPersonaPorPersonaID(busqueda) Then
        buscarPersonaPorPersonaID = True
    Else
        buscarPersonaPorPersonaID = False
    End If
End Function

Function buscarPersonaPreautorizada(busqueda As String) As Boolean
    If PersonaQuery.buscarPersonaPreautorizada(busqueda) Then
        buscarPersonaPreautorizada = True
    Else
        buscarPersonaPreautorizada = False
    End If
End Function


Function buscarTicketIngresoPorPersonaID(busqueda As String) As Boolean
    buscarTicketIngresoPorPersonaID = PersonaQuery.buscarTicketIngresoPorPersonaID(busqueda)
End Function

Function getUltimaVisitaPersona(PersonaID As Long) As Boolean
    If PersonaQuery.getUltimaVisitaPersona(PersonaID) Then
        getUltimaVisitaPersona = True
    Else
        getUltimaVisitaPersona = False
    End If
End Function

