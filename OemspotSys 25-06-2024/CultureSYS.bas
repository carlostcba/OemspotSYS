Attribute VB_Name = "CultureSYS"
Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   PROCESOS PARA LOCALIZAR RECURSOS DEL SISTEMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Dim ResourceName(8192) As String
Dim ResourceString(8192) As String

' Esta función utiliza un cache en memoria que se utiliza
' para mostrar un token localizado sin necesidad de ir
' a la base de datos en cada llamada, solo lo hace la primera vez.
' Utiliza la LOCALIZACION_ACTIVA_SYS para determinar que
' cultura debe cargar en memoria.
Function localizar(NombreRecurso As String) As String
    If DbCommandSYS Is Nothing Then Exit Function

    Dim i As Integer
    Dim sql As String
    Dim TokenID As Long
    Dim RecursoTraducido As String

    ' Buscar en Array
    For i = 0 To 8192
        If ResourceName(i) = "" Then
            Exit For
        End If
        If ResourceName(i) = NombreRecurso Then
            localizar = ResourceString(i)
            Exit Function
        End If
    Next

    sql = "SELECT TknCul.Texto FROM (Tkn INNER JOIN TknCul ON(Tkn.TokenID=TknCul.TokenID) INNER JOIN Cul ON(TknCul.CulturaID=Cul.CulturaID)) WHERE Cul.Nombre = '" & LOCALIZACION_ACTIVA_SYS & "' AND Tkn.Nombre = '" & NombreRecurso & "'"

    DbCommandSYS.CommandText = sql
    Set DbRecordsetSYS = DbCommandSYS.Execute

    If Not DbRecordsetSYS.EOF Then
        RecursoTraducido = CStr(DbRecordsetSYS.Fields(0).value)
        ResourceName(i) = NombreRecurso
        ResourceString(i) = RecursoTraducido
        localizar = RecursoTraducido
        
        ' Ordenar Array
    Else
        localizar = ""
    End If
End Function

Sub limpiarCacheCultura()
    Dim i As Integer
    For i = 0 To 8192
        ResourceName(i) = ""
        ResourceString(i) = ""
    Next
End Sub
