VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerMaiCatValDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(4) As String
Private KeysValues(4) As Long
Private AttributesInfo(1) As String
Private AttributesValues(1) As String
Private ReferencesInfo(0) As String

Private Sub Class_Initialize()
    EntityName = "@PerMaiCatVal"
    KeysInfo(1) = "PersonaID"
    KeysInfo(2) = "CategoriaID"
    KeysInfo(3) = "ValorID"
    KeysInfo(4) = "EmailID"
    AttributesInfo(1) = "$Email"
End Sub

Property Get PersonaID() As Long
    PersonaID = KeysValues(1)
End Property

Property Let PersonaID(value As Long)
    KeysValues(1) = value
End Property

Property Get CategoriaID() As Long
    CategoriaID = KeysValues(2)
End Property

Property Let CategoriaID(value As Long)
    KeysValues(2) = value
End Property

Property Get ValorID() As Long
    ValorID = KeysValues(3)
End Property

Property Let ValorID(value As Long)
    KeysValues(3) = value
End Property

Property Get EmailID() As Long
    EmailID = KeysValues(4)
End Property

Property Let EmailID(value As Long)
    KeysValues(4) = value
End Property

Property Get Email() As String
    Email = AttributesValues(1)
End Property

Property Let Email(value As String)
    AttributesValues(1) = value
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
