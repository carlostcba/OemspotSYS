VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "AutQRY"
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

Public Function getAdminAutosList(busqueda As String, NroPagina As Long) As Boolean
 
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String



   ' sql = " select DISTINCT aut.AutoID as 'AutoID', peraut.PersonaID as 'PersonaID', lotper.loteid as 'LoteID', pergru.GrupoID as 'GrupoID', aut.Patente as 'Patente', CONCAT(Per.Apellido, ', ', Per.Nombre) AS 'Apellido y Nombre' , lot.lote as 'Lote', gru.nombre as 'Grupo' from (((((aut INNER JOIN peraut ON aut.autoid=peraut.autoid) INNER JOIN per ON peraut.personaID=per.PersonaID) INNER JOIN lotper ON lotper.personaID=per.personaID) INNER JOIN lot ON lotper.loteID=lot.loteID) INNER JOIN pergru ON per.PersonaID=pergru.personaid) INNER JOIN gru ON pergru.grupoid=gru.grupoid "

    'sql = sql + " WHERE Aut.Patente LIKE '%" + busqueda + "%' ORDER BY Aut.Patente LIMIT " & NroPagina & " , " & MAX_GRID_ROWS_SIZE_SYS
    
    
                   sql = "SELECT q.AutoID,q.PersonaID,q.LoteID,q.GrupoID,q.Patente,q.ApellidoyNombre,q.Lote,q.grupo FROM "
            sql = sql + "(SELECT a.AutoID,"
            sql = sql + "        pe.PersonaID, "
            sql = sql + "        lp.LoteID, "
            sql = sql + "        pg.GrupoID, "
            sql = sql + "        a.Patente, "
            sql = sql + "        ISNULL(pe.Apellido,'') + ',' + ISNULL(pe.Nombre,'') AS ApellidoyNombre, "
            sql = sql + "        gru.Nombre AS grupo, "
            sql = sql + "        lot.Lote, "
            sql = sql + "        row_number() over (order by a.patente) as rows "
            sql = sql + " FROM   aut a "
            sql = sql + "        left join peraut pa on a.AutoID=pa.AutoID "
            sql = sql + "        left join per pe on pa.PersonaID=pe.PersonaID  "
            sql = sql + "        left join pergru pg on pg.personaID=pe.personaID "
            sql = sql + "        left join lotper lp on lp.personaID=pe.personaID "
            sql = sql + "        left join lot on lp.loteID=lot.loteID "
            sql = sql + "        left join gru on pg.grupoid=gru.grupoid "
            sql = sql + " WHERE  a.Patente LIKE '%" + busqueda + "%'"
            sql = sql + " ) as q "
            sql = sql + " WHERE q.rows BETWEEN " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
            sql = sql + " ORDER BY q.patente"

   
   'Consulta que no trae la suficiente cantidad de autos
   ' sql = "SELECT a.AutoID,p.PersonaID,l.LoteID,pg.GrupoID, a.Patente,"
   ' sql = sql + " (Per.Apellido + ', ' + Per.Nombre) AS 'Apellido y Nombre',lot.lote, gru.nombre as 'Grupo'"
   ' sql = sql + " from aut a"
   ' sql = sql + " left join peraut p on a.AutoID=p.AutoID"
   ' sql = sql + " left join lotper l on l.personaID=p.personaID"
   ' sql = sql + " left join pergru pg on pg.personaID=p.personaID"
   ' sql = sql + " left join per on per.personaID=p.personaID"
   ' sql = sql + " left join gru on pg.grupoid=gru.grupoid"
   ' sql = sql + " left join lot on l.loteID=lot.loteID"
   ' sql = sql & " Inner join (SELECT aut.AutoID, ROW_NUMBER() OVER(order by aut.Patente) AS RowNumber1 From aut ) as RowNumber On RowNumber.AutoID = a.AutoID"
   ' sql = sql + " WHERE a.Patente LIKE '%" + busqueda + "%' and RowNumber.RowNumber1 BETWEEN " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
   ' sql = sql + " order by a.patente"
    ''"LIMIT " & NroPagina & " , " & MAX_GRID_ROWS_SIZE_SYS
    
    
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminAutosList = False
    Else
        getAdminAutosList = True
    End If
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

'    sql = "SELECT DISTINCT Count(*) FROM Aut WHERE Aut.Patente LIKE '%" + busqueda + "%' group by Aut.Patente ORDER BY Aut.Patente "
 
 ' esta es la consulta es la que supuestamente funciona 01-08-2012
 '   sql = "SELECT DISTINCT Count(*) FROM Aut WHERE Aut.Patente LIKE '%" + busqueda + "%' group by Aut.Patente"
    
    
            sql = "select count(*) FROM "
            sql = sql + "(select a.AutoID,"
            sql = sql + "      pe.PersonaID, "
            sql = sql + "      lp.LoteID, "
            sql = sql + "      pg.GrupoID, "
            sql = sql + "      a.Patente, "
            sql = sql + "      ISNULL(pe.Apellido,'') + ',' + ISNULL(pe.Nombre,'') AS ApellidoyNombre, "
            sql = sql + "      gru.Nombre AS grupo, "
            sql = sql + "      lot.Lote "
            sql = sql + " from aut a "
            sql = sql + "     left join peraut pa on a.AutoID=pa.AutoID "
            sql = sql + "     left join per pe on pa.PersonaID=pe.PersonaID  "
            sql = sql + "     left join pergru pg on pg.personaID=pe.personaID "
            sql = sql + "     left join lotper lp on lp.personaID=pe.personaID "
            sql = sql + "     left join lot on lp.loteID=lot.loteID "
            sql = sql + "     left join gru on pg.grupoid=gru.grupoid "
            sql = sql + " ) as q "
            sql = sql + " WHERE q.Patente LIKE '%" + busqueda + "'"
            

    
    

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function

Public Function obtenerAutCatVal(AutoID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT AutCatVal.ValorID FROM AutCatVal WHERE AutCatVal.AutoID = " & AutoID & " AND AutCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerAutCatVal = False
    Else
        obtenerAutCatVal = True
    End If
End Function

Public Function getAdminAutosPrxList(AutoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT AutPrx.PropiedadID AS 'PropiedadID', Prx.Nombre AS 'Propiedad', AutPrx.Valor AS 'Valor' FROM AutPrx INNER JOIN Prx ON(AutPrx.PropiedadID=Prx.PropiedadID) WHERE AutPrx.AutoID = " & AutoID & " ORDER BY Prx.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminAutosPrxList = False
    Else
        getAdminAutosPrxList = True
    End If
End Function

Public Function eliminarAutCat(AutoID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM AutCatVal WHERE AutCatVal.AutoID = " & AutoID & " AND AutCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarAutCat = True
End Function
