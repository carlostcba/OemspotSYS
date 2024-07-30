VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LoteORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim LoteDataObject As LoteDAO
Dim LotCatValDataObject As LotCatValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set LoteDataObject = New LoteDAO
    Set LotCatValDataObject = New LotCatValDAO

End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set LoteDataObject = Nothing
    Set LotCatValDataObject = Nothing
End Sub

' LOTE

Public Function crearLote(Lote As String, UF As String, Calle As String, Numero As String, Interno As String) As Long
    LoteDataObject.Lote = Lote
    LoteDataObject.UF = UF
    LoteDataObject.Calle = Calle
    LoteDataObject.Numero = Numero
    LoteDataObject.Interno = Interno
    crearLote = AsistenteDataObject.create(LoteDataObject)
End Function

Function crearLotCatVal(LoteID As Long, CategoriaID As Long, ValorID As Long) As Long
    LotCatValDataObject.LoteID = LoteID
    LotCatValDataObject.CategoriaID = CategoriaID
    LotCatValDataObject.ValorID = ValorID
    crearLotCatVal = AsistenteDataObject.create(LotCatValDataObject)
End Function

Public Function actualizarLote(LoteID As Long, Lote As String, UF As String, Calle As String, Numero As String, Interno As String) As Boolean ', PalabraClave As String
    LoteDataObject.LoteID = LoteID
    LoteDataObject.Lote = Lote
    LoteDataObject.UF = UF
    LoteDataObject.Calle = Calle
    LoteDataObject.Numero = Numero
    LoteDataObject.Interno = Interno
    'LoteDataObject.PalabraClave = PalabraClave
    actualizarLote = AsistenteDataObject.update(LoteDataObject)
End Function

Public Function eliminarLote(LoteID As Long) As Boolean
    LoteDataObject.LoteID = LoteID
    eliminarLote = AsistenteDataObject.delete(LoteDataObject)
End Function

'Public Function eliminarIntegrante(PersonaID As Long, PersonaID As Long) As Boolean
'    LoteDataObject.LoteID = LoteID
'    eliminarLote = AsistenteDataObject.delete(LoteDataObject)
'End Function


Public Function getDescription(LoteID As Long) As String
    LoteDataObject.LoteID = LoteID
    If AsistenteDataObject.retrieve(LoteDataObject) Then
        getDescription = LoteDataObject.LoteID & ", " & LoteDataObject.Lote & ", " & LoteDataObject.UF & ", " & LoteDataObject.Calle & ", " & LoteDataObject.Numero & ", " & LoteDataObject.Interno '& ", " & LoteDataObject.PalabraClave
    End If
End Function

Public Function obtenerLote(LoteID As Long) As LoteDAO
    LoteDataObject.LoteID = LoteID
    If AsistenteDataObject.retrieve(LoteDataObject) Then
        Set obtenerLote = LoteDataObject
    End If
End Function

Public Function getNumeroLote(LoteID As Long)
    LoteDataObject.LoteID = LoteID
    If AsistenteDataObject.retrieve(LoteDataObject) Then
        getNumeroLote = LoteDataObject.Lote
    End If
End Function



