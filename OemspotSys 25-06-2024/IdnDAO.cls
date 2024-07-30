VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IdnDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(1) As String
Private AttributesValues(1) As String
Private ReferencesInfo(5) As String

Private Sub Class_Initialize()
    EntityName = "@Idn"
    KeysInfo(1) = "IdentificacionID"
    AttributesInfo(1) = "$Numero"
    ReferencesInfo(1) = "mvt"
    ReferencesInfo(2) = "GruIdn"
    ReferencesInfo(3) = "IdnCatVal"
    ReferencesInfo(4) = "PerIdn"
    ReferencesInfo(5) = "IdnPnc"
End Sub

Property Get IdentificacionID() As Long
    IdentificacionID = KeysValues(1)
End Property

Property Let IdentificacionID(value As Long)
    KeysValues(1) = value
End Property

Property Get Numero() As String
    Numero = AttributesValues(1)
End Property

Property Let Numero(value As String)
    AttributesValues(1) = value
End Property

Property Get KeyInfo(i As Integer) As String
    KeyInfo = KeysInfo(i)
End Property

Property Get KeyValue(i As Integer) As String
    KeyValue = KeysValues(i)
End Property

Property Get AttributeInfo(i As Integer) As String
    AttributeInfo = AttributesInfo(i)
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
