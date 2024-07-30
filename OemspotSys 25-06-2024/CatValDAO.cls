VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CatValDAO"
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
    EntityName = "@CatVal"
    KeysInfo(1) = "CategoriaID"
    KeysInfo(2) = "ValorID"
    AttributesInfo(1) = "$Nombre"
    AttributesInfo(2) = "#SystemParameter"
End Sub

Property Get CategoriaID() As Long
    CategoriaID = KeysValues(1)
End Property

Property Let CategoriaID(value As Long)
    KeysValues(1) = value
End Property

Property Get ValorID() As Long
    ValorID = KeysValues(2)
End Property

Property Let ValorID(value As Long)
    KeysValues(2) = value
End Property

Property Get Nombre() As String
    Nombre = AttributesValues(1)
End Property

Property Let Nombre(value As String)
    AttributesValues(1) = value
End Property

Property Get SystemParameter() As String
    SystemParameter = AttributesValues(2)
End Property

Property Let SystemParameter(value As String)
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
