VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "EncryptionSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public Function Encriptar(texto As String) As String
    Dim i As Byte
    Dim Res As String

    If (Len(texto) < 32) Then
        texto = texto & Space(32 - Len(texto))
    End If

    Res = ""
    For i = 1 To 32
        Res = Res & Chr(Asc(Mid$(texto, i, 1)) + 100)
    Next

    Encriptar = Res
End Function

Public Function Desencriptar(texto As String) As String
    Dim i As Byte
    Dim Res As String

    Res = ""
    For i = 1 To Len(texto)
        Res = Res & Chr(Asc(Mid$(texto, i, 1)) - 100)
    Next

    If (Len(Res) < 32) Then
        Res = Res & Space(32 - Len(Res))
    End If

    Desencriptar = Res
End Function
