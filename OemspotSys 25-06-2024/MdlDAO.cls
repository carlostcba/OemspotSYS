VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "MdlDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(9) As String
Private AttributesValues(9) As String
Private ReferencesInfo(3) As String

Private Sub Class_Initialize()
    EntityName = "@Mdl"
    KeysInfo(1) = "ModuloID"
    AttributesInfo(1) = "$Nombre"
    AttributesInfo(2) = "$Descripcion"
    AttributesInfo(3) = "#Address"
    AttributesInfo(4) = "#ModuloEntradaID"
    AttributesInfo(5) = "#ModuloSalidaID"
    AttributesInfo(6) = "#GrupoModulos"
    AttributesInfo(7) = "#OrdenEncuesta"
    AttributesInfo(8) = "#Duracion_pulso"
    AttributesInfo(9) = "#ValidacionTicket"
    ReferencesInfo(1) = "MdlCatVal"
    ReferencesInfo(2) = "MdlEstVal"
    ReferencesInfo(3) = "GruMdlPrf"
End Sub

Property Get ModuloID() As Long
    ModuloID = KeysValues(1)
End Property

Property Let ModuloID(value As Long)
    KeysValues(1) = value
End Property

Property Get Nombre() As String
    Nombre = AttributesValues(1)
End Property

Property Let Nombre(value As String)
    AttributesValues(1) = value
End Property

Property Get Descripcion() As String
    Descripcion = AttributesValues(2)
End Property

Property Let Descripcion(value As String)
    AttributesValues(2) = value
End Property

Property Get Address() As String
    Address = AttributesValues(3)
End Property

Property Let Address(value As String)
    AttributesValues(3) = value
End Property

Property Get ModuloEntradaID() As String
    ModuloEntradaID = AttributesValues(4)
End Property

Property Let ModuloEntradaID(value As String)
    AttributesValues(4) = value
End Property

Property Get ModuloSalidaID() As String
    ModuloSalidaID = AttributesValues(5)
End Property

Property Let ModuloSalidaID(value As String)
    AttributesValues(5) = value
End Property

Property Get GrupoModulos() As String
    GrupoModulos = AttributesValues(6)
End Property

Property Let GrupoModulos(value As String)
    AttributesValues(6) = value
End Property

Property Get OrdenEncuesta() As String
    OrdenEncuesta = AttributesValues(7)
End Property

Property Let OrdenEncuesta(value As String)
    AttributesValues(7) = value
End Property


Property Let Duracion_pulso(value As Long)
    AttributesValues(8) = value
End Property

Property Get Duracion_pulso() As Long
    Duracion_pulso = IIf(IsNull(AttributesValues(8)) Or AttributesValues(8) = "", 1000, AttributesValues(8))
End Property

Property Let ValidacionTicket(value As Boolean)
    AttributesValues(9) = IIf(value, 1, 0)
End Property

Property Get ValidacionTicket() As Boolean
    ValidacionTicket = IIf(AttributesValues(9) = 1, True, False)
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

