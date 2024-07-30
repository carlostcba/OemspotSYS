VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerGruDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(2) As String
Private KeysValues(2) As Long
Private AttributesInfo(2) As String
Private AttributesValues(2) As String
Private ReferencesInfo(0) As String

Private Sub Class_Initialize()
    EntityName = "&PerGru"
    KeysInfo(1) = "PersonaID"
    KeysInfo(2) = "GrupoID"
    AttributesInfo(1) = "#CategoriaID"
    AttributesInfo(2) = "#ValorID"
End Sub

Property Get PersonaID() As Long
    PersonaID = KeysValues(1)
End Property

Property Let PersonaID(value As Long)
    KeysValues(1) = value
End Property

Property Get GrupoID() As Long
    GrupoID = KeysValues(2)
End Property

Property Let GrupoID(value As Long)
    KeysValues(2) = value
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
