VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerDirCatValDAO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public EntityName As String
Private KeysInfo(4) As String
Private KeysValues(4) As Long
Private AttributesInfo(8) As String
Private AttributesValues(8) As String
Private ReferencesInfo(0) As String

Private Sub Class_Initialize()
    EntityName = "@PerDirCatVal"
    KeysInfo(1) = "PersonaID"
    KeysInfo(2) = "CategoriaID"
    KeysInfo(3) = "ValorID"
    KeysInfo(4) = "DireccionID"
    AttributesInfo(1) = "$Pais"
    AttributesInfo(2) = "$Provincia"
    AttributesInfo(3) = "$Localidad"
    AttributesInfo(4) = "$CodigoPostal"
    AttributesInfo(5) = "$Calle"
    AttributesInfo(6) = "$Numero"
    AttributesInfo(7) = "$Piso"
    AttributesInfo(8) = "$Oficina"
End Sub

Property Get PersonaID() As Long
    PersonaID = KeysValues(1)
End Property

Property Let PersonaID(value As Long)
    KeysValues(1) = value
End Property

Property Get CategoriaID() As Long
    CategoriaID = KeysValues(2)
End Property

Property Let CategoriaID(value As Long)
    KeysValues(2) = value
End Property

Property Get ValorID() As Long
    ValorID = KeysValues(3)
End Property

Property Let ValorID(value As Long)
    KeysValues(3) = value
End Property

Property Get DireccionID() As Long
    DireccionID = KeysValues(4)
End Property

Property Let DireccionID(value As Long)
    KeysValues(4) = value
End Property

Property Get Pais() As String
    Pais = AttributesValues(1)
End Property

Property Let Pais(value As String)
    AttributesValues(1) = value
End Property

Property Get Provincia() As String
    Provincia = AttributesValues(2)
End Property

Property Let Provincia(value As String)
    AttributesValues(2) = value
End Property

Property Get Localidad() As String
    Localidad = AttributesValues(3)
End Property

Property Let Localidad(value As String)
    AttributesValues(3) = value
End Property

Property Get CodigoPostal() As String
    CodigoPostal = AttributesValues(4)
End Property

Property Let CodigoPostal(value As String)
    AttributesValues(4) = value
End Property

Property Get Calle() As String
    Calle = AttributesValues(5)
End Property

Property Let Calle(value As String)
    AttributesValues(5) = value
End Property

Property Get Numero() As String
    Numero = AttributesValues(6)
End Property

Property Let Numero(value As String)
    AttributesValues(6) = value
End Property

Property Get Piso() As String
    Piso = AttributesValues(7)
End Property

Property Let Piso(value As String)
    AttributesValues(7) = value
End Property

Property Get Oficina() As String
    Oficina = AttributesValues(8)
End Property

Property Let Oficina(value As String)
    AttributesValues(8) = value
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
