VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LoteDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(5) As String
Private AttributesValues(5) As String
'Private ReferencesInfo(1) As String
Private ReferencesInfo(0) As String
Private Sub Class_Initialize()
    EntityName = "@Lot"
    KeysInfo(1) = "LoteID"
    AttributesInfo(1) = "$Lote"
    AttributesInfo(2) = "$UF"
    AttributesInfo(3) = "$Calle"
    AttributesInfo(4) = "$Numero"
    AttributesInfo(5) = "$Interno"
'    AttributesInfo(5) = "$PalabraClave"
'    AttributesInfo(6) = "%CreationDate"
 '   AttributesInfo(7) = "#CreatedByID"
  '  AttributesInfo(8) = "%LastUpdateDate"
   ' AttributesInfo(9) = "#LastUpdateDateByID"
 '   ReferencesInfo(1) = "LotCatVal"
'    ReferencesInfo(2) = "PerEstVal"
'    ReferencesInfo(3) = "PerDirCatVal"
'    ReferencesInfo(4) = "PerDocCatVal"
'    ReferencesInfo(5) = "PerMaiCatVal"
'    ReferencesInfo(6) = "PerTelCatVal"
End Sub

Property Get LoteID() As Long
    LoteID = KeysValues(1)
End Property

Property Let LoteID(value As Long)
    KeysValues(1) = value
End Property

Property Get Lote() As String
    Lote = AttributesValues(1)
End Property

Property Let Lote(value As String)
    AttributesValues(1) = value
End Property

Property Get UF() As String
    UF = AttributesValues(2)
End Property

Property Let UF(value As String)
    AttributesValues(2) = value
End Property

Property Get Calle() As String
    Calle = AttributesValues(3)
End Property

Property Let Calle(value As String)
    AttributesValues(3) = value
End Property

Property Get Numero() As String
    Numero = AttributesValues(4)
End Property

Property Let Numero(value As String)
    AttributesValues(4) = value
End Property

Property Get Interno() As String
    Interno = AttributesValues(5)
End Property

Property Let Interno(value As String)
    AttributesValues(5) = value
End Property

'Property Get PalabraClave() As String
'    PalabraClave = AttributesValues(5)
'End Property
'
'Property Let PalabraClave(value As String)
'    AttributesValues(5) = value
'End Property



Property Get CreationDate() As String
    CreationDate = AttributesValues(6)
End Property

Property Let CreationDate(value As String)
    AttributesValues(6) = DateToDB(value)
End Property

Property Get CreatedByID() As String
    CreatedByID = AttributesValues(7)
End Property

Property Let CreatedByID(value As String)
    AttributesValues(7) = value
End Property

Property Get LastUpdateDate() As String
    LastUpdateDate = AttributesValues(8)
End Property

Property Let LastUpdateDate(value As String)
    AttributesValues(8) = DateToDB(value)
End Property

Property Get LastUpdateDateByID() As String
    LastUpdateDateByID = AttributesValues(9)
End Property

Property Let LastUpdateDateByID(value As String)
    AttributesValues(9) = value
End Property

Property Get KeyInfo(i As Integer) As String
    KeyInfo = KeysInfo(i)
End Property

Property Get AttributeInfo(i As Integer) As String
    AttributeInfo = AttributesInfo(i)
End Property

Property Get KeyValue(i As Integer) As String
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

