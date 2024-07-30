VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GruQRY"
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

Public Function getAdminGruposList(busqueda As String, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Gru.GrupoID AS 'GrupoID', Gru.Nombre AS 'Nombre', (SELECT a.Nombre FROM GruCatVal INNER JOIN CatVal a ON(GruCatVal.CategoriaID=a.CategoriaID AND GruCatVal.ValorID=a.ValorID) WHERE GruCatVal.GrupoID = Gru.GrupoID AND a.CategoriaID = " & CAT_TIPO_ACCESO_GRUPO & ") AS 'Tipo de Acceso de Grupo' FROM Gru WHERE Gru.GrupoID LIKE '%" + busqueda + "%' OR Gru.Nombre LIKE '%" + busqueda + "%' ORDER BY Gru.Nombre "
    ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminGruposList = False
    Else
        getAdminGruposList = True
    End If
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Count(*) FROM Gru WHERE Gru.GrupoID LIKE '%" + busqueda + "%' OR Gru.Nombre LIKE '%" + busqueda + "%' group by Gru.Nombre ORDER BY Gru.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function

Public Function getAdminGruposPerList(GrupoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerGru.PersonaID AS 'PersonaID', (Per.Apellido + ', ' + Per.Nombre) AS 'Apellido y Nombre', CatVal.Nombre AS 'Tipo de Relación con Grupo' FROM (PerGru INNER JOIN Per ON(PerGru.PersonaID=Per.PersonaID)) INNER JOIN CatVal ON(PerGru.CategoriaID=CatVal.CategoriaID AND PerGru.ValorID=CatVal.ValorID) WHERE PerGru.GrupoID = " & GrupoID & " ORDER BY Per.Apellido, Per.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminGruposPerList = False
    Else
        getAdminGruposPerList = True
    End If
End Function

Public Function getAdminGruposIdnList(GrupoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT GruIdn.IdentificacionID AS 'IdentificacionID', Idn.Numero AS 'Número' FROM GruIdn INNER JOIN Idn ON(GruIdn.IdentificacionID=Idn.IdentificacionID) WHERE GruIdn.GrupoID = " & GrupoID & " ORDER BY Idn.Numero"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminGruposIdnList = False
    Else
        getAdminGruposIdnList = True
    End If
End Function

Public Function obtenerGruCatVal(GrupoID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT GruCatVal.ValorID FROM GruCatVal WHERE GruCatVal.GrupoID = " & GrupoID & " AND GruCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerGruCatVal = False
    Else
        obtenerGruCatVal = True
    End If
End Function

Public Function eliminarGruCat(GrupoID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM GruCatVal WHERE GruCatVal.GrupoID = " & GrupoID & " AND GruCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarGruCat = True
End Function
