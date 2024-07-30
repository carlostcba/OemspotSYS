VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LotPerORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Dim AsistenteDataObject As AsistenteDAO
Dim LotperDataObject As LotPerDAO


Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set LotperDataObject = New LotPerDAO
    
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set LotperDataObject = Nothing
    
End Sub
Public Function modificarLotPerPrf(ByVal LoteID As Long, _
                               ByVal PersonaID As Long, _
                               ByVal PerfilID As Long, _
                               ByVal CategoriaID As Long, _
                               ByVal ValorID As Long, _
                               ByVal FechaInicio As String, _
                               ByVal FechaFin As String) As Long
                               
                               
    LotperDataObject.LoteID = LoteID
    LotperDataObject.PersonaID = PersonaID
    LotperDataObject.PerfilID = PerfilID
    LotperDataObject.CategoriaID = CategoriaID
    LotperDataObject.ValorID = ValorID
    LotperDataObject.FechaInicio = FechaInicio
    LotperDataObject.FechaFin = FechaFin
    modificarLotPerPrf = AsistenteDataObject.update(LotperDataObject)
End Function





Public Function crearLotPerPrf(ByVal LoteID As Long, _
                               ByVal PersonaID As Long, _
                               ByVal PerfilID As Long, _
                               ByVal CategoriaID As Long, _
                               ByVal ValorID As Long, _
                               ByVal FechaInicio As String, _
                               ByVal FechaFin As String) As Long
                               
                               
    LotperDataObject.LoteID = LoteID
    LotperDataObject.PersonaID = PersonaID
    LotperDataObject.PerfilID = PerfilID
    LotperDataObject.CategoriaID = CategoriaID
    LotperDataObject.ValorID = ValorID
    LotperDataObject.FechaInicio = FechaInicio
    LotperDataObject.FechaFin = FechaFin
    crearLotPerPrf = AsistenteDataObject.create(LotperDataObject)
End Function

Public Function eliminarLotPerPrf(ByVal LoteID As Long, _
                               ByVal PersonaID As Long, _
                               ByVal PerfilID As Long, _
                               ByVal CategoriaID As Long, _
                               ByVal ValorID As Long, _
                               ByVal FechaInicio As String, _
                               ByVal FechaFin As String) As Long
                               
                               
    LotperDataObject.LoteID = LoteID
    LotperDataObject.PersonaID = PersonaID
    LotperDataObject.PerfilID = PerfilID
    LotperDataObject.CategoriaID = CategoriaID
    LotperDataObject.ValorID = ValorID
    LotperDataObject.FechaInicio = FechaInicio
    LotperDataObject.FechaFin = FechaFin
    eliminarLotPerPrf = AsistenteDataObject.delete(LotperDataObject)
End Function

Public Function eliminargrillaLotPerPrf(ByVal LoteID As Long, _
                               ByVal PersonaID As Long, _
                               ByVal PerfilID As Long) As Long
                               
                               
    LotperDataObject.LoteID = LoteID
    LotperDataObject.PersonaID = PersonaID
    LotperDataObject.PerfilID = PerfilID
    eliminargrillaLotPerPrf = AsistenteDataObject.delete(LotperDataObject)
End Function

Public Function getDescription(LoteID As Long) As String
    LotperDataObject.LoteID = LoteID
    If AsistenteDataObject.retrieve(LotperDataObject) Then
        getDescription = LotperDataObject.LoteID
    End If
End Function

Public Function obtenerLotPerPrf(ByVal LoteID As Long, _
                                 ByVal PersonaID As Long, _
                                 ByVal PerfilID As Long, _
                                 ByVal CategoriaID As Long, _
                                 ByVal ValorID As Long) As LotPerDAO
    LotperDataObject.LoteID = LoteID
    LotperDataObject.PersonaID = PersonaID
    LotperDataObject.PerfilID = PerfilID
    LotperDataObject.CategoriaID = CategoriaID
    LotperDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(LotperDataObject) Then
        Set obtenerLotPerPrf = LotperDataObject
    End If
End Function

Public Function getCategoriaID(CategoriaID As Long) As String
    LotperDataObject.CategoriaID = CategoriaID
    If AsistenteDataObject.retrieve(LotperDataObject) Then
        getCategoriaID = LotperDataObject.CategoriaID
    End If
End Function

Public Function getValorID(ValorID As Long) As String
    LotperDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(LotperDataObject) Then
        getValorID = LotperDataObject.ValorID
    End If
End Function

Public Function getFechaInicio(FechaInicio As String) As String
    LotperDataObject.FechaInicio = FechaInicio
    If AsistenteDataObject.retrieve(LotperDataObject) Then
        getFechaInicio = LotperDataObject.FechaInicio
    End If
End Function
Public Function getFechaFin(FechaFin As String) As String
    LotperDataObject.FechaFin = FechaFin
    If AsistenteDataObject.retrieve(LotperDataObject) Then
        getFechaFin = LotperDataObject.FechaFin
    End If
End Function

'Public Function obtenerReferenteLote(LoteID As Long, PersonaID As Long) As LotPerDAO
'    LotperDataObject.LoteID = LoteID
'    LotperDataObject.PersonaID = PersonaID
'    If AsistenteDataObject.retrieve(LotperDataObject) Then
'        Set obtenerLotPerPrf = LotperDataObject
'    End If
'End Function

