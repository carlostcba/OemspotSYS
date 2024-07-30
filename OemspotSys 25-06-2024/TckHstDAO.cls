VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "TckDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Currency
Private AttributesInfo(4) As String
Private AttributesValues(4) As String
Private ReferencesInfo(2) As String

Private Sub Class_Initialize()
    EntityName = "@Tck"
    KeysInfo(1) = "TicketID"
    AttributesInfo(1) = "#Numero"
    AttributesInfo(2) = "%FechaHoraIngreso"
    AttributesInfo(3) = "#ModuloIngresoID"
    AttributesInfo(4) = "$DestinoVisita"
    ReferencesInfo(1) = "TckPer"
    ReferencesInfo(2) = "TckPrx"
End Sub

Property Get TicketID() As Currency
    TicketID = KeysValues(1)
End Property

Property Let TicketID(value As Currency)
    KeysValues(1) = value
End Property

Property Get Numero() As String
    Numero = AttributesValues(1)
End Property

Property Let Numero(value As String)
    AttributesValues(1) = value
End Property

Property Get FechaHoraIngreso() As String
    FechaHoraIngreso = DBToDate(AttributesValues(2))
End Property

Property Let FechaHoraIngreso(value As String)
    AttributesValues(2) = value
End Property

Property Get ModuloIngresoID() As String
    ModuloIngresoID = AttributesValues(3)
End Property

Property Let ModuloIngresoID(value As String)
    AttributesValues(3) = value
End Property

Property Get DestinoVisita() As String
    DestinoVisita = AttributesValues(4)
End Property

Property Let DestinoVisita(value As String)
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

