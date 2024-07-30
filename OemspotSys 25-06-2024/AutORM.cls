VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AutORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim AutDataObject As AutDAO
Dim AutCatValDataObject As AutCatValDAO
Dim AutPrxDataObject As AutPrxDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set AutDataObject = New AutDAO
    Set AutCatValDataObject = New AutCatValDAO
    Set AutPrxDataObject = New AutPrxDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set AutDataObject = Nothing
    Set AutCatValDataObject = Nothing
    Set AutPrxDataObject = Nothing
End Sub

Function crearAuto(Patente As String) As Long
    AutDataObject.Patente = Patente
    crearAuto = AsistenteDataObject.create(AutDataObject)
End Function

Function obtenerAuto(AutoID As Long) As AutDAO
    AutDataObject.AutoID = AutoID
    If AsistenteDataObject.retrieve(AutDataObject) Then
        Set obtenerAuto = AutDataObject
    End If
End Function

Function actualizarAuto(AutoID As Long, Patente As String) As Boolean
    AutDataObject.AutoID = AutoID
    AutDataObject.Patente = Patente
    actualizarAuto = AsistenteDataObject.update(AutDataObject)
End Function

Function eliminarAuto(AutoID As Long) As Boolean
    AutDataObject.AutoID = AutoID
    eliminarAuto = AsistenteDataObject.delete(AutDataObject, True)
End Function

Public Function getDescription(AutoID As Long) As String
    AutDataObject.AutoID = AutoID
    If AsistenteDataObject.retrieve(AutDataObject) Then
        getDescription = AutDataObject.Patente
    End If
End Function

Function crearAutCatVal(AutoID As Long, CategoriaID As Long, ValorID As Long) As Long
    AutCatValDataObject.AutoID = AutoID
    AutCatValDataObject.CategoriaID = CategoriaID
    AutCatValDataObject.ValorID = ValorID
    crearAutCatVal = AsistenteDataObject.create(AutCatValDataObject)
End Function

Function eliminarAutCatVal(AutoID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    AutCatValDataObject.AutoID = AutoID
    AutCatValDataObject.CategoriaID = CategoriaID
    AutCatValDataObject.ValorID = ValorID
    eliminarAutCatVal = AsistenteDataObject.delete(AutCatValDataObject)
End Function

Public Function crearAutPrx(AutoID As Long, PropiedadID As Long, valor As String) As Long
    AutPrxDataObject.AutoID = AutoID
    AutPrxDataObject.PropiedadID = PropiedadID
    AutPrxDataObject.valor = valor
    crearAutPrx = AsistenteDataObject.create(AutPrxDataObject)
End Function

Public Function obtenerAutPrx(AutoID As Long, PropiedadID As Long) As AutPrxDAO
    AutPrxDataObject.AutoID = AutoID
    AutPrxDataObject.PropiedadID = PropiedadID
    If AsistenteDataObject.retrieve(AutPrxDataObject) Then
        Set obtenerAutPrx = AutPrxDataObject
    End If
End Function

Public Function actualizarAutPrx(AutoID As Long, PropiedadID As Long, valor As String) As Boolean
    AutPrxDataObject.AutoID = AutoID
    AutPrxDataObject.PropiedadID = PropiedadID
    AutPrxDataObject.valor = valor
    actualizarAutPrx = AsistenteDataObject.update(AutPrxDataObject)
End Function

Public Function eliminarAutPrx(AutoID As Long, PropiedadID As Long) As Boolean
    AutPrxDataObject.AutoID = AutoID
    AutPrxDataObject.PropiedadID = PropiedadID
    eliminarAutPrx = AsistenteDataObject.delete(AutPrxDataObject)
End Function
