VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AdminGruposSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public GruposOrm As GruORM
Public GruposQuery As GruQRY

Private Sub Class_Initialize()
    Set GruposOrm = New GruORM
    Set GruposQuery = New GruQRY
End Sub

Private Sub Class_Terminate()
    Set GruposOrm = Nothing
    Set GruposQuery = Nothing
End Sub

Function getList(busqueda As String, NroPagina As Long) As Boolean
    If GruposQuery.getAdminGruposList(busqueda, NroPagina) Then
        getList = True
    Else
        getList = False
    End If
End Function

Function getCantidadItems(busqueda As String) As Boolean
    If GruposQuery.getCantidadItems(busqueda) Then
        getCantidadItems = True
    Else
        getCantidadItems = False
    End If
End Function

Function getPerList(GrupoID As Long) As Boolean
    If GruposQuery.getAdminGruposPerList(GrupoID) Then
        getPerList = True
    Else
        getPerList = False
    End If
End Function

Function getIdnList(GrupoID As Long) As Boolean
    If GruposQuery.getAdminGruposIdnList(GrupoID) Then
        getIdnList = True
    Else
        getIdnList = False
    End If
End Function
