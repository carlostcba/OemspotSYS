VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GeoDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(6) As String
Private AttributesValues(6) As String
Private ReferencesInfo(0) As String

Private Sub Class_Initialize()
    EntityName = "@Geo"
    KeysInfo(1) = "GeoID"
    AttributesInfo(1) = "$Nombre"
    AttributesInfo(2) = "$IpHost"
    AttributesInfo(3) = "#CmdPort"
    AttributesInfo(4) = "#DataPort"
    AttributesInfo(5) = "$[User]"
    AttributesInfo(6) = "$Psw"
End Sub

Property Get geoID() As Long
    geoID = KeysValues(1)
End Property

Property Let geoID(value As Long)
    KeysValues(1) = value
End Property

Property Get Nombre() As String
    Nombre = AttributesValues(1)
End Property

Property Let Nombre(value As String)
    AttributesValues(1) = value
End Property

Property Get IpHost() As String
    IpHost = AttributesValues(2)
End Property

Property Let IpHost(value As String)
    AttributesValues(2) = value
End Property

Property Get CmdPort() As String
    CmdPort = AttributesValues(3)
End Property

Property Let CmdPort(value As String)
    AttributesValues(3) = value
End Property

Property Get DataPort() As String
    DataPort = AttributesValues(4)
End Property

Property Let DataPort(value As String)
    AttributesValues(4) = value
End Property

Property Get User() As String
    User = AttributesValues(5)
End Property

Property Let User(value As String)
    AttributesValues(5) = value
End Property

Property Get Psw() As String
    Psw = AttributesValues(6)
End Property

Property Let Psw(value As String)
    AttributesValues(6) = value
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



