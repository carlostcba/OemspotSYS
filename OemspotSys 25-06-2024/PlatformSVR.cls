VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PlatformSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public PlatformQuery As PlatformQRY
Public WorkstationsQuery As WksQRY

Private Sub Class_Initialize()
    Set PlatformQuery = New PlatformQRY
    Set WorkstationsQuery = New WksQRY
End Sub

Private Sub Class_Terminate()
    Set PlatformQuery = Nothing
    Set WorkstationsQuery = Nothing
End Sub

Function getValoresCategoria(CategoriaID As Long) As Boolean
    If PlatformQuery.getValoresCategoria(CategoriaID) Then
        getValoresCategoria = True
    Else
        getValoresCategoria = False
    End If
End Function

Function getValoresEstado(EstadoID As Long) As Boolean
    If PlatformQuery.getValoresEstado(EstadoID) Then
        getValoresEstado = True
    Else
        getValoresEstado = False
    End If
End Function

Function getWorkstations() As Boolean
    If WorkstationsQuery.getWorkstations() Then
        getWorkstations = True
    Else
        getWorkstations = False
    End If
End Function
