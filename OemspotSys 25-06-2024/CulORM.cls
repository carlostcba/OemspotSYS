VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CulORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim CulDataObject As CulDAO
Dim TknDataObject As TknDAO
Dim TknCulDataObject As TknCulDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set CulDataObject = New CulDAO
    Set TknDataObject = New TknDAO
    Set TknCulDataObject = New TknCulDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set CulDataObject = Nothing
    Set TknDataObject = Nothing
    Set TknCulDataObject = Nothing
End Sub

Function crearCultura(Nombre As String, SystemParameter As Integer) As Long
    CulDataObject.Nombre = Nombre
    CulDataObject.SystemParameter = SystemParameter
    crearCultura = AsistenteDataObject.create(CulDataObject)
End Function

Function obtenerCultura(CulturaID As Long) As CulDAO
    CulDataObject.CulturaID = CulturaID
    If AsistenteDataObject.retrieve(CulDataObject) Then
        Set obtenerCultura = CulDataObject
    End If
End Function

Function actualizarCultura(CulturaID As Long, Nombre As String) As Boolean
    CulDataObject.CulturaID = CulturaID
    CulDataObject.Nombre = Nombre
    actualizarCultura = AsistenteDataObject.update(CulDataObject)
End Function

Function eliminarCultura(CulturaID As Long) As Boolean
    CulDataObject.CulturaID = CulturaID
    eliminarCultura = AsistenteDataObject.delete(CulDataObject)
End Function

Function crearTkn(Nombre As String) As Long
    TknDataObject.Nombre = Nombre
    crearTkn = AsistenteDataObject.create(TknDataObject)
End Function

Function obtenerTkn(TokenID As Long) As TknDAO
    TknDataObject.TokenID = TokenID
    If AsistenteDataObject.retrieve(TknDataObject) Then
        Set obtenerTkn = TknDataObject
    End If
End Function

Function actualizarTkn(TokenID As Long, Nombre As String) As Long
    TknDataObject.TokenID = TokenID
    TknDataObject.Nombre = Nombre
    actualizarTkn = AsistenteDataObject.update(TknDataObject)
End Function

Function eliminarTkn(TokenID As Long) As Boolean
    TknDataObject.TokenID = TokenID
    eliminarTkn = AsistenteDataObject.delete(TknDataObject)
End Function

Function crearTknCul(TokenID As Long, CulturaID As Long, Texto As String) As Long
    TknCulDataObject.CulturaID = CulturaID
    TknCulDataObject.TokenID = TokenID
    TknCulDataObject.Texto = Texto
    crearTknCul = AsistenteDataObject.create(TknCulDataObject)
End Function

Function obtenerTknCul(TokenID As Long, CulturaID As Long) As TknCulDAO
    TknCulDataObject.CulturaID = CulturaID
    TknCulDataObject.TokenID = TokenID
    If AsistenteDataObject.retrieve(TknCulDataObject) Then
        Set obtenerTknCul = TknCulDataObject
    End If
End Function

Function actualizarTknCul(TokenID As Long, CulturaID As Long, Texto As String) As Long
    TknCulDataObject.CulturaID = CulturaID
    TknCulDataObject.TokenID = TokenID
    TknCulDataObject.Texto = Texto
    actualizarTknCul = AsistenteDataObject.update(TknCulDataObject)
End Function

Function eliminarTknCul(CulturaID As Long, TokenID As Long) As Boolean
    TknCulDataObject.CulturaID = CulturaID
    TknCulDataObject.TokenID = TokenID
    eliminarTknCul = AsistenteDataObject.delete(TknCulDataObject)
End Function
