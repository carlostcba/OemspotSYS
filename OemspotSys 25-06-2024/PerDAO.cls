VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(1) As String
Private KeysValues(1) As Long
Private AttributesInfo(11) As String
Private AttributesValues(11) As String
Private ReferencesInfo(7) As String

Private Sub Class_Initialize()
    EntityName = "@Per"
    KeysInfo(1) = "PersonaID"
    AttributesInfo(1) = "$Apellido"
    AttributesInfo(2) = "$Nombre"
    AttributesInfo(3) = "$Sexo"
    AttributesInfo(4) = "%FechaNacimiento"
    AttributesInfo(5) = "$Pais"
    AttributesInfo(6) = "%CreationDate"
    AttributesInfo(7) = "#CreatedByID"
    AttributesInfo(8) = "%LastUpdateDate"
    AttributesInfo(9) = "#LastUpdateDateByID"
    AttributesInfo(10) = "%FechaInicio"
    AttributesInfo(11) = "%FechaFin"
    ''AttributesInfo(12) = "$Hora_Salida"
    
    ReferencesInfo(1) = "PerCatVal"
    ReferencesInfo(2) = "PerEstVal"
    ReferencesInfo(3) = "PerDirCatVal"
    ReferencesInfo(4) = "PerDocCatVal"
    ReferencesInfo(5) = "PerMaiCatVal"
    ReferencesInfo(6) = "PerTelCatVal"
    ReferencesInfo(7) = "PerPrx"
End Sub

Property Get PersonaID() As Long
    PersonaID = KeysValues(1)
End Property

Property Let PersonaID(value As Long)
    KeysValues(1) = value
End Property

Property Get Apellido() As String
    Apellido = AttributesValues(1)
End Property

Property Let Apellido(value As String)
    AttributesValues(1) = value
End Property

Property Get Nombre() As String
    Nombre = AttributesValues(2)
End Property

Property Let Nombre(value As String)
    AttributesValues(2) = value
End Property

Property Get Sexo() As String
    Sexo = AttributesValues(3)
End Property

Property Let Sexo(value As String)
    AttributesValues(3) = value
End Property

Property Get FechaNacimiento() As String
    FechaNacimiento = DBToDate(AttributesValues(4))
End Property

Property Let FechaNacimiento(value As String)
    AttributesValues(4) = DateToDB(value)
End Property

Property Get Pais() As String
    Pais = AttributesValues(5)
End Property

Property Let Pais(value As String)
    AttributesValues(5) = value
End Property

Property Get CreationDate() As String
    CreationDate = AttributesValues(6)
End Property

Property Let CreationDate(value As String)
    AttributesValues(6) = DateToDB(value)
End Property

Property Get CreatedByID() As String
    CreatedByID = AttributesValues(7)
End Property

Property Let CreatedByID(value As String)
    AttributesValues(7) = value
End Property

Property Get LastUpdateDate() As String
    LastUpdateDate = AttributesValues(8)
End Property

Property Let LastUpdateDate(value As String)
    AttributesValues(8) = DateToDB(value)
End Property

Property Get LastUpdateDateByID() As String
    LastUpdateDateByID = AttributesValues(9)
End Property

Property Let LastUpdateDateByID(value As String)
    AttributesValues(9) = value
End Property

Property Get FechaInicio() As String
    FechaInicio = DBToDate(AttributesValues(10))
End Property

Property Let FechaInicio(value As String)
    AttributesValues(10) = DateToDB(value)
End Property

Property Get FechaFin() As String
    FechaFin = DBToDate(AttributesValues(11))
End Property

Property Let FechaFin(value As String)
    AttributesValues(11) = DateToDB(value)
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
