VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "MainSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Private PerfilesActivos(512) As Integer
Private CantidadPerfiles As Integer
Private UsrQuery As UsrQRY

Private Sub Class_Initialize()
    Set UsrQuery = New UsrQRY
    obtenerPerfiles
End Sub

Private Sub Class_Terminate()
    Set UsrQuery = Nothing
End Sub

Public Function obtenerPerfiles()
    Dim i As Integer
    If UsrQuery.getPerfiles(UsuarioActivoSYS) Then
        i = 0
        Do While Not UsrQuery.DbRecordsetQRY.EOF
            i = i + 1
            PerfilesActivos(i) = UsrQuery.DbRecordsetQRY.Fields(0).value
            UsrQuery.DbRecordsetQRY.MoveNext
        Loop
        CantidadPerfiles = i
    Else
        CantidadPerfiles = 0
    End If
End Function

Public Function isPerfilActivo(ValorID As Long) As Boolean
    Dim i As Integer
    For i = 1 To CantidadPerfiles
        If PerfilesActivos(i) = ValorID Then
            isPerfilActivo = True
            Exit Function
        End If
    Next
    isPerfilActivo = False
End Function
