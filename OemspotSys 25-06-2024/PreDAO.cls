VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PreDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(7) As String
Private AttributesValues(7) As String
Private ReferencesInfo(0) As String
'Private ReferencesInfo(5) As String

Private Sub Class_Initialize()
    EntityName = "@Pre"
    KeysInfo(1) = "PreautorizadoID"
    
    AttributesInfo(1) = "$LoteID"
    AttributesInfo(2) = "$Entidad"
    AttributesInfo(3) = "$Apellido"
    AttributesInfo(4) = "$Nombre"
    AttributesInfo(5) = "$Motivo"
    AttributesInfo(6) = "%FechaInicio"
    AttributesInfo(7) = "%FechaFin"
'    AttributesInfo(10) = "%CreationDate"
'    AttributesInfo(11) = "#CreatedByID"
'    AttributesInfo(12) = "%LastUpdateDate"
'    AttributesInfo(13) = "#LastUpdateDateByID"
        
'    ReferencesInfo(1) = "Lot"
'    ReferencesInfo(2) = "per"
'    ReferencesInfo(3) = "prf"
'    ReferencesInfo(4) = "catval"
'    ReferencesInfo(5) = "cat"
'

End Sub

Property Get PreautorizadoID() As Long
    PreautorizadoID = KeysValues(1)
End Property

Property Let PreautorizadoID(value As Long)
    KeysValues(1) = value
End Property


Property Get LoteID() As Long
    LoteID = AttributesValues(1)
End Property

Property Let LoteID(value As Long)
    AttributesValues(1) = value
End Property

Property Get Entidad() As String
    Entidad = AttributesValues(2)
End Property

Property Let Entidad(value As String)
    AttributesValues(2) = value
End Property

Property Get Apellido() As String
    Apellido = AttributesValues(3)
End Property

Property Let Apellido(value As String)
    AttributesValues(3) = value
End Property

Property Get Nombre() As String
    Nombre = AttributesValues(4)
End Property

Property Let Nombre(value As String)
    AttributesValues(4) = value
End Property

Property Get Motivo() As String
    Motivo = AttributesValues(5)
End Property

Property Let Motivo(value As String)
    AttributesValues(5) = value
End Property

Property Get FechaInicio() As String
    FechaInicio = DBToDate(AttributesValues(6))
End Property

Property Let FechaInicio(value As String)
    AttributesValues(6) = DateToDB(value)
End Property

Property Get FechaFin() As String
    FechaFin = DBToDate(AttributesValues(7))
End Property

Property Let FechaFin(value As String)
    AttributesValues(7) = DateToDB(value)
End Property

'Property Get CreationDate() As String
'    CreationDate = AttributesValues(10)
'End Property
'
'Property Let CreationDate(value As String)
'    AttributesValues(10) = DateToDB(value)
'End Property
'
'Property Get CreatedByID() As String
'    CreatedByID = AttributesValues(11)
'End Property
'
'Property Let CreatedByID(value As String)
'    AttributesValues(11) = value
'End Property
'
'Property Get LastUpdateDate() As String
'    LastUpdateDate = AttributesValues(12)
'End Property
'
'Property Let LastUpdateDate(value As String)
'    AttributesValues(12) = DateToDB(value)
'End Property
'
'Property Get LastUpdateDateByID() As String
'    LastUpdateDateByID = AttributesValues(13)
'End Property
'
'Property Let LastUpdateDateByID(value As String)
'    AttributesValues(13) = value
'End Property

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



