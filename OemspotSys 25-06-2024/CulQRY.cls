VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CulQRY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public DbCommandQRY As ADODB.Command
Public DbRecordsetQRY As ADODB.RecordSet

Private Sub Class_Initialize()
    Set DbCommandQRY = New ADODB.Command
    Set DbRecordsetQRY = New ADODB.RecordSet
        On Error Resume Next
    DbCommandQRY.ActiveConnection = DbConnectionSYS

End Sub

Private Sub Class_Terminate()
    Set DbCommandQRY = Nothing
    Set DbRecordsetQRY = Nothing
End Sub

Public Function getAdminCulturasList(busqueda As String) As Boolean
On Error GoTo noHayCulturasDefinidas
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Cul.CulturaID AS 'CulturaID', Cul.Descripcion FROM Cul WHERE Cul.CulturaID LIKE '%" + busqueda + "%' OR Cul.Nombre LIKE '%" + busqueda + "%' OR Cul.Descripcion LIKE '%" + busqueda + "%' ORDER BY Cul.Descripcion"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminCulturasList = False
    Else
        getAdminCulturasList = True
    End If
    
    Exit Function

'Esto instala los fix necesarios para la lista de culturas de ser necesario (fix0021)
noHayCulturasDefinidas:
    updateSoftware
    MsgBox "Actualización instalada. Vuelva a Ejecutar el Sistema", vbOKOnly, "Software Update"
    End
End Function

Public Function getTokensList(busqueda As String, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT DISTINCT Tkn.TokenID AS 'TokenID', Tkn.Nombre AS 'TOKEN',(SELECT TknCul.Texto FROM TknCul WHERE TknCul.TokenID = Tkn.TokenID AND TknCul.CulturaID = " & IDIOMA_SPANISH & " ) AS 'Español', (SELECT TknCul.Texto FROM TknCul WHERE TknCul.TokenID = Tkn.TokenID AND TknCul.CulturaID = " & IDIOMA_PORTUGUES & " ) AS 'Português', (SELECT TknCul.Texto FROM TknCul WHERE TknCul.TokenID = Tkn.TokenID AND TknCul.CulturaID = " & IDIOMA_ENGLISH & " ) AS 'English' FROM Tkn INNER JOIN TknCul ON(Tkn.TokenID = TknCul.TokenID) WHERE Tkn.Nombre LIKE '%" + busqueda + "%' ORDER BY Tkn.Nombre "
    '''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getTokensList = False
    Else
        getTokensList = True
    End If
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Count(*) FROM Tkn WHERE Tkn.Nombre LIKE '%" + busqueda + "%' group by Tkn.Nombre ORDER BY Tkn.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function

Public Function getDescripcionCultura(Nombre As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Cul.Descripcion AS 'Descripcion' FROM Cul WHERE Cul.Nombre = '" & Nombre & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getDescripcionCultura = False
    Else
        getDescripcionCultura = True
    End If
End Function

Public Function getNombreCultura(CulturaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Cul.Nombre AS 'Nombre' FROM Cul WHERE Cul.CulturaID = '" & CulturaID & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getNombreCultura = False
    Else
        getNombreCultura = True
    End If
End Function
