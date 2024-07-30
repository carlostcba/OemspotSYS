Attribute VB_Name = "MdlCamping"
Option Explicit
''Modulo Relacionado con Camping se tiene que sacar crear OCX
Dim sSql As String
Dim oRs As New ADODB.RecordSet
Dim i As Long
Sub CargarLote(ByRef aLote)

    i = 0
    sSql = "select LoteID , lote from lot"
    oRs.CursorType = 3
    oRs.CursorLocation = 3
    oRs.Open sSql, DbConnectionSYS.ConnectionString
    
    ReDim aLote(oRs.RecordCount, 0 To 1)
    
    While Not oRs.EOF
        aLote(i, 0) = oRs.Fields(0)
        aLote(i, 1) = oRs.Fields(1)
        i = i + 1
        oRs.MoveNext
    Wend
    
    Set oRs = Nothing
End Sub
Sub CargarTipoDoc(ByRef aTipoDoc)

    i = 0
    sSql = "Select CategoriaID , nombre , ValorId from catval where catval.CategoriaID = 11"
    oRs.CursorType = 3
    oRs.CursorLocation = 3
    oRs.Open sSql, DbConnectionSYS.ConnectionString
    
    ReDim aTipoDoc(oRs.RecordCount, 0 To 2)
    
    While Not oRs.EOF
        aTipoDoc(i, 0) = oRs.Fields(0)
        aTipoDoc(i, 1) = oRs.Fields(1)
        aTipoDoc(i, 2) = oRs.Fields(2)
        i = i + 1
        oRs.MoveNext
    Wend
    
    Set oRs = Nothing
End Sub
Sub CargarRelacion(ByRef aRelacion)

    i = 0
    sSql = "Select CategoriaID , nombre , ValorId from catval where catval.CategoriaID = 18"
    oRs.CursorType = 3
    oRs.CursorLocation = 3
    oRs.Open sSql, DbConnectionSYS.ConnectionString
    
    ReDim aRelacion(oRs.RecordCount, 0 To 2)
    
    While Not oRs.EOF
        aRelacion(i, 0) = oRs.Fields(0)
        aRelacion(i, 1) = oRs.Fields(1)
        aRelacion(i, 2) = oRs.Fields(2)
        i = i + 1
        oRs.MoveNext
    Wend
    
    Set oRs = Nothing
End Sub

Sub CargarCombos(ByVal oCombo As ComboBox, ByVal aArray, ByVal iValor)
Dim i As Long
    oCombo.Clear
    For i = 0 To UBound(aArray) - 1
        oCombo.AddItem aArray(i, iValor)
    Next
    DoEvents
    If UBound(aArray) <> 0 Then
        oCombo.ListIndex = 0
    End If
End Sub

Function CampingHabilitado() As Boolean
Dim oRs As New ADODB.RecordSet

    sSql = "Select Valor From cfgopt "
    sSql = sSql & "Where Nombre = 'CAMPING' "
    
    oRs.Open sSql, DbConnectionSYS.ConnectionString
    
    If Not oRs.EOF Then
        CampingHabilitado = IIf(oRs.Fields(0) = "SI", True, False)
    End If

End Function
Function IndexBuscar(ByVal vArray As Variant, ByVal sBusqueda As String) As Long
Dim i As Integer
    
    For i = 0 To UBound(vArray) - 1
        If vArray(i, 0) = sBusqueda Then
            IndexBuscar = i
        ElseIf vArray(i, 1) = sBusqueda Then
            IndexBuscar = i
        End If
    Next
    
End Function
