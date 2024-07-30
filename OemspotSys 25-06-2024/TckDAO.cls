VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "TckHstDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(2) As String
Private KeysValues(2) As Currency
Private AttributesInfo(4) As String
Private AttributesValues(4) As String
Private ReferencesInfo(0) As String

Private Sub Class_Initialize()
    EntityName = "@TckHst"
    KeysInfo(1) = "TicketID"
    KeysInfo(2) = "Numero"
    AttributesInfo(1) = "FechaHoraIngreso"
    AttributesInfo(2) = "ModuloIngresoID"
    AttributesInfo(3) = "FechaHoraSalida"
    AttributesInfo(4) = "ModuloSalidaID"
End Sub

Property Get TicketID() As Long
    TicketID = KeysValues(1)
End Property

Property Let TicketID(value As Long)
    KeysValues(1) = value
End Property

Property Get Numero() As Currency
    Numero = KeysValues(2)
End Property

Property Let Numero(value As Currency)
    KeysValues(2) = value
End Property

Property Get FechaHoraIngreso() As String
    FechaHoraIngreso = DBToDate(AttributesValues(1))
End Property

Property Let FechaHoraIngreso(value As String)
    AttributesValues(1) = value
End Property

Property Get ModuloIngresoID() As String
    ModuloIngresoID = AttributesValues(2)
End Property

Property Let ModuloIngresoID(value As String)
    AttributesValues(2) = value
End Property

Property Get FechaHoraSalida() As String
    FechaHoraSalida = DBToDate(AttributesValues(3))
End Property

Property Let FechaHoraSalida(value As String)
    AttributesValues(3) = value
End Property

Property Get ModuloSalidaID() As String
    ModuloSalidaID = AttributesValues(4)
End Property

Property Let ModuloSalidaID(value As String)
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
