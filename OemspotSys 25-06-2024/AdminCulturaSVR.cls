VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminCulturaSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public CulturaOrm As CulORM
Public CulturaQuery As CulQRY

Private Sub Class_Initialize()
    Set CulturaOrm = New CulORM
    Set CulturaQuery = New CulQRY
End Sub

Private Sub Class_Terminate()
    Set CulturaOrm = Nothing
    Set CulturaQuery = Nothing
End Sub

Function getList(busqueda As String) As Boolean
    If CulturaQuery.getAdminCulturasList(busqueda) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getTokensList(busqueda As String, NroPagina As Long) As Boolean
    If CulturaQuery.getTokensList(busqueda, NroPagina) Then
        getTokensList = True
    Else
        getTokensList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If CulturaQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function

Function obtenerDescripcionCultura(Nombre As String) As String
    If CulturaQuery.getDescripcionCultura(Nombre) Then
        obtenerDescripcionCultura = CulturaQuery.DbRecordsetQRY.Fields(0).value
    End If
End Function

Function obtenerNombreCultura(CulturaID As Long) As String
    If CulturaQuery.getNombreCultura(CulturaID) Then
        obtenerNombreCultura = CulturaQuery.DbRecordsetQRY.Fields(0).value
    End If
End Function


