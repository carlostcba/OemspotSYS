Attribute VB_Name = "WksMdlDAO"
Option Explicit
Public EntityName As String
Private KeysInfo(2) As String
Private KeysValues(2) As Long
Private AttributesInfo(0) As String
Private AttributesValues(0) As String
Private ReferencesInfo(0) As String

Private Sub Class_Initialize()
    EntityName = "&WksMdl"
    KeysInfo(1) = "WorkstationID"
    KeysInfo(2) = "ModuloID"
End Sub

Property Get WorkstationID() As Long
    WorkstationID = KeysValues(1)
End Property

Property Let WorkstationID(value As Long)
    KeysValues(1) = value
End Property

Property Get ModuloID() As Long
    ModuloID = KeysValues(2)
End Property

Property Let ModuloID(value As Long)
    KeysValues(2) = value
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
