VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PdtIdnDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(4) As String
Private AttributesValues(4) As String
Private ReferencesInfo(1) As String

Private Sub Class_Initialize()
    EntityName = "@PdtIdn"
    KeysInfo(1) = "PdtIdnID"
    AttributesInfo(1) = "#ModuloID"
    AttributesInfo(2) = "$Numero"
    AttributesInfo(3) = "$Descripcion"
    AttributesInfo(4) = "#Perfil"
    ReferencesInfo(1) = "Mdl"
End Sub

Property Get ModuloID() As Long
    ModuloID = AttributesValues(1)
End Property


Property Get PdtIdnID() As Long
    PdtIdnID = KeysValues(1)
End Property

Property Let PdtIdnID(value As Long)
    KeysValues(1) = value
End Property


Property Let ModuloID(value As Long)
   AttributesValues(1) = value
End Property


Property Get Numero() As String
    Numero = AttributesValues(2)
End Property

Property Let Numero(value As String)
    AttributesValues(2) = value
End Property

Property Get Descripcion() As String
    Descripcion = AttributesValues(3)
End Property

Property Let Descripcion(value As String)
     AttributesValues(3) = value
End Property


Property Get Perfil() As Integer
    Perfil = AttributesValues(4)
End Property

Property Let Perfil(value As Integer)
     AttributesValues(4) = value
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
