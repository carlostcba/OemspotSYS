VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminLotesSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public LoteOrm As LoteOrm
Public LoteQuery As LoteQRY
Public LotperOrm As LotperOrm
Public LotperQuery As LotPerQRY

Private Sub Class_Initialize()
    Set LoteOrm = New LoteOrm
    Set LoteQuery = New LoteQRY
    Set LotperOrm = New LotperOrm
    Set LotperQuery = New LotPerQRY
End Sub

Private Sub Class_Terminate()
    Set LoteOrm = Nothing
    Set LoteQuery = Nothing
    Set LotperOrm = Nothing
    Set LotperQuery = Nothing
End Sub
'******************** FUNCION PARA OBTENER LA LISTA DE LOTES COMPLETA *************************************
Function getList(busqueda() As String, NroPagina As Long, ByRef Ampliada As Boolean) As Boolean
    
   getList = LoteQuery.getAdminLotesList(busqueda(), NroPagina, Ampliada)

'NOTA: "Ampliada" SIRVE PARA OBTENER TODAS LAS PERSONAS DE TODOS LOS LOTES

End Function
'**************************************************************************************************


'******************** FUNCION PARA DEVOLVER RESULTADOS DE UNA BUSQUEDA ESPECIFICA ***********************
Function getCantidadItems(busqueda() As String, ByRef Ampliada As Boolean) As Boolean

    getCantidadItems = LoteQuery.getCantidadItems(busqueda(), Ampliada)
    
End Function
'**************************************************************************************************


'******************** FUNCION PARA *******************
Function getLotPerPrf(db_LoteID As Long, db_personaID As Long, db_perfilID As Long) As Boolean
                      
    getLotPerPrf = LotperQuery.Traer_LotPer(db_LoteID, db_personaID, db_perfilID)
        
End Function
'**************************************************************************************************

'******************** FUNCION PARA *******************
Function getListLotPerPrf_con_PersonaID(PersonaID_ As Long) As Boolean
    getListLotPerPrf_con_PersonaID = LoteQuery.getListLotPerPrf_con_PersonaID(PersonaID_)
End Function
'**************************************************************************************************

'******************** FUNCION PARA *******************
Function getLotPerPrf_con_PersonaID(PersonaID_ As Currency, ByRef Fecha_ As Date) As Boolean
    getLotPerPrf_con_PersonaID = LoteQuery.getLotPerPrf_con_PersonaID(PersonaID_, Fecha_)
End Function
'**************************************************************************************************

'******************** FUNCION PARA *******************
Function getPerPrf_con_PersonaID(PersonaID_ As Currency, ByRef LoteID_ As Long) As Boolean
    getPerPrf_con_PersonaID = LoteQuery.getPerPrf_con_PersonaID(PersonaID_, LoteID_)
End Function
'**************************************************************************************************


'******************** FUNCION PARA *******************
Function getListLotPerPrf(db_LoteID As Long) As Boolean
    
    getListLotPerPrf = LoteQuery.getLotPerPrfList(db_LoteID)

End Function
'**************************************************************************************************


'************************** FUNCION PARA CHEQUEAR SI YA EXISTE EL LOTE AL CREARLO ******************
Function LoteYaExiste(Lote As String) As Boolean    '*******
    
    LoteYaExiste = LoteQuery.LoteYaExiste(Lote)     '*******
        
End Function                                        '*******
'***************************************************************************************************


'************************* FUNCION PARA CHEQUEAR SI YA EXISTE LA UF AL CREARLA ********************
Function UFYaExiste(UF As String) As Boolean
    
    UFYaExiste = LoteQuery.UFYaExiste(UF)
    
End Function
'****************************************************************************************************

