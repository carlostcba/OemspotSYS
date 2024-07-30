VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "TckPerDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(2) As String
Private KeysValues(2) As Currency
Private AttributesInfo(0) As String
Private AttributesValues(0) As String
Private ReferencesInfo(1) As String

Private Sub Class_Initialize()
    EntityName = "&TckPer"
    KeysInfo(1) = "TicketID"
    KeysInfo(2) = "PersonaID"
    
    ReferencesInfo(1) = "TckPrx"
End Sub

Property Get TicketID() As Currency
    TicketID = KeysValues(1)
End Property

Property Let TicketID(value As Currency)
    KeysValues(1) = value
End Property

Property Get PersonaID() As Long
    PersonaID = KeysValues(2)
End Property

Property Let PersonaID(value As Long)
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
