VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LotPerDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public EntityName As String
Private KeysInfo(3) As String
Private KeysValues(3) As Long
Private AttributesInfo(8) As String
Private AttributesValues(8) As String
Private ReferencesInfo(0) As String
'Private ReferencesInfo(5) As String

Private Sub Class_Initialize()
    EntityName = "&LotPer"
    KeysInfo(1) = "LoteID"
    KeysInfo(2) = "PersonaID"
    KeysInfo(3) = "PerfilID"
    'KeysInfo(4) = "CategoriaID"
    'KeysInfo(5) = "ValorID"
    
    AttributesInfo(1) = "#CategoriaID"
    AttributesInfo(2) = "#ValorID"
    AttributesInfo(3) = "%FechaInicio"
    AttributesInfo(4) = "%FechaFin"
    AttributesInfo(5) = "%CreationDate"
    AttributesInfo(6) = "#CreatedByID"
    AttributesInfo(7) = "%LastUpdateDate"
    AttributesInfo(8) = "#LastUpdateDateByID"
        
'    ReferencesInfo(1) = "Lot"
'    ReferencesInfo(2) = "per"
'    ReferencesInfo(3) = "prf"
'    ReferencesInfo(4) = "catval"
'    ReferencesInfo(5) = "cat"
'

End Sub

Property Get LoteID() As Long
    LoteID = KeysValues(1)
End Property

Property Let LoteID(value As Long)
    KeysValues(1) = value
End Property

Property Get PersonaID() As Long
    PersonaID = KeysValues(2)
End Property

Property Let PersonaID(value As Long)
    KeysValues(2) = value
End Property

Property Get PerfilID() As Long
    PerfilID = KeysValues(3)
End Property

Property Let PerfilID(value As Long)
    KeysValues(3) = value
End Property

Property Get CategoriaID() As Long
    CategoriaID = AttributesValues(1)
End Property

Property Let CategoriaID(value As Long)
    AttributesValues(1) = value
End Property

Property Get ValorID() As Long
    ValorID = AttributesValues(2)
End Property

Property Let ValorID(value As Long)
    AttributesValues(2) = value
End Property


Property Get FechaInicio() As String
    FechaInicio = DBToDate(AttributesValues(3))
End Property

Property Let FechaInicio(value As String)
    AttributesValues(3) = DateToDB(value)
End Property

Property Get FechaFin() As String
    FechaFin = DBToDate(AttributesValues(4))
End Property

Property Let FechaFin(value As String)
    AttributesValues(4) = DateToDB(value)
End Property

Property Get CreationDate() As String
    CreationDate = AttributesValues(5)
End Property

Property Let CreationDate(value As String)
    AttributesValues(5) = DateToDB(value)
End Property

Property Get CreatedByID() As String
    CreatedByID = AttributesValues(6)
End Property

Property Let CreatedByID(value As String)
    AttributesValues(6) = value
End Property

Property Get LastUpdateDate() As String
    LastUpdateDate = AttributesValues(7)
End Property

Property Let LastUpdateDate(value As String)
    AttributesValues(7) = DateToDB(value)
End Property

Property Get LastUpdateDateByID() As String
    LastUpdateDateByID = AttributesValues(8)
End Property

Property Let LastUpdateDateByID(value As String)
    AttributesValues(8) = value
End Property

Property Get KeyInfo(i As Integer) As String
    KeyInfo = KeysInfo(i)
End Property

Property Get AttributeInfo(i As Integer) As String
    AttributeInfo = AttributesInfo(i)
End Property

Property Get KeyValue(i As Integer) As Long
    KeyValue = KeysValues(i)
End Property

Property Get AttributeValue(i As Integer) As String
    AttributeValue = AttributesValues(i)
End Property

Property Let AttributeValue(i As Integer, value As String)
    AttributesValues(i) = value
End Property

Property Get ReferenceInfo(i As Integer) As String
    ReferenceInfo = ReferencesInfo(i)
End Property

Property Get KeysInfoLength() As Integer
    KeysInfoLength = getArrayLength(KeysValues)
End Property

Property Get AttributesInfoLength() As Integer
    AttributesInfoLength = getArrayLength(AttributesValues)
End Property

Property Get ReferencesInfoLength() As Integer
    ReferencesInfoLength = getArrayLength(ReferencesInfo)
End Property


