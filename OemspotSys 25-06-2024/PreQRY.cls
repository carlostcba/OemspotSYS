VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PreQRY"
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

Public Function getPreautorizadasList(busqueda() As String, NroPagina As Long) As Boolean
Dim i As Integer
Dim t As Integer
Dim filtro As String
    
    If NroPagina < 0 Then
        NroPagina = 0
    End If
    
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
     
    t = UtilitySYS.getArrayLength(busqueda)
    
    For i = 0 To t
      If filtro = "" Then
        filtro = " and (" & _
          " Pre.Nombre   LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " lot.lote LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Entidad LIKE '%" & busqueda(i) & "%' )"
      Else
        filtro = filtro & " AND (" & _
          " Pre.Nombre   LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " lot.lote LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Entidad LIKE '%" & busqueda(i) & "%' )"
      End If
    Next

    'sql = "SELECT Pre.LoteID AS 'LoteID', Pre.PersonaID AS 'PersonaID' CONCAT(Per.Apellido, ', ', Per.Nombre) AS 'Apellido y Nombre', CatVal.Nombre AS 'Tipo de Rol' FROM (Per LEFT JOIN PerCatVal ON(Per.PersonaID=PerCatVal.PersonaID)) LEFT JOIN CatVal ON(PerCatVal.CategoriaID=CatVal.CategoriaID AND PerCatVal.ValorID=CatVal.ValorID) WHERE Per.PersonaID LIKE '%" + busqueda + "%' OR Per.Nombre LIKE '%" + busqueda + "%' OR Per.Apellido LIKE '%" + busqueda + "%' OR CatVal.Nombre LIKE '%" + busqueda + "%' ORDER BY Per.Apellido, CatVal.Nombre LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    'sql = "select lot.lote, pre.entidad, per.nombre, per.apellido, lotper.fechainicio, lotper.fechafin from lot inner join pre on (lot.loteid = pre.loteid) inner join per on(per.personaid = pre.personaid) inner join lotper on(lotper.personaid = pre.personaid)WHERE Per.Nombre LIKE '%" + busqueda + "%' OR Per.Apellido LIKE '%" + busqueda + "%' OR Lot.Lote LIKE '%" + busqueda + "%' OR Pre.Entidad LIKE '%" + busqueda + "%' ORDER BY Lot.Lote"
    '''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    sql = "SELECT pre.preautorizadoID, pre.loteID ,lot.lote, pre.entidad, pre.Apellido, pre.nombre, pre.motivo, pre.fechainicio, pre.fechafin " & _
          " FROM pre LEFT JOIN lot ON (pre.loteid = lot.loteid) Inner Join (SELECT pre.PreautorizadoID , ROW_NUMBER() OVER(order by pre.PreautorizadoID) AS RowNumber1 From pre ) as RowNumber " & _
          " on RowNumber.PreautorizadoID = pre.PreautorizadoID " & _
          " Where RowNumber.RowNumber1 BETWEEN " & NroPagina & " and " & MAX_GRID_ROWS_SIZE_SYS & _
          filtro & _
          " ORDER BY Lot.Lote,pre.apellido,pre.nombre,pre.entidad  "
          ''''''''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getPreautorizadasList = Not DbRecordsetQRY.BOF
    
Salir:
End Function

Public Function getCantidadItems(busqueda() As String) As Boolean
Dim i As Integer
Dim t As Integer
Dim filtro As String
Dim sql As String

On Error GoTo Salir
    t = UtilitySYS.getArrayLength(busqueda)

    For i = 0 To t
      If filtro = "" Then
        filtro = " WHERE (" & _
          " Pre.Nombre   LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " lot.lote LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Entidad LIKE '%" & busqueda(i) & "%' )"
      Else
        filtro = filtro & " AND (" & _
          " Pre.Nombre   LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " lot.lote LIKE '%" & busqueda(i) & "%' OR " & _
          " Pre.Entidad LIKE '%" & busqueda(i) & "%' )"
      End If
    Next '    sql = "SELECT Count(*) FROM Pre LEFT JOIN lot ON (pre.loteid = lot.loteid) LEFT JOIN per ON (pre.PersonaID = per. PersonaID) WHERE lot.Lote LIKE '%" + busqueda + "%' OR Per.Nombre LIKE '%" + busqueda + "%' OR Per.Apellido LIKE '%" + busqueda + "%' OR pre.entidad LIKE '%" + busqueda + "%' ORDER BY lot.lote, Pre.entidad"
    
    sql = "SELECT Count(*) FROM Pre LEFT JOIN lot ON (pre.loteid = lot.loteid) " & _
    filtro
     
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getCantidadItems = Not DbRecordsetQRY.BOF
    
Salir:
End Function


Public Function EliminarPreautorizacionesVencidas(ByRef Fecha As Date) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "Delete  FROM pre " & _
          "WHERE fechafin < '" & FF(Fecha) & "'"
    
    DbCommandQRY.CommandText = sql
    DbCommandQRY.Execute
    EliminarPreautorizacionesVencidas = True
Salir:
End Function




Public Function obtenerPreautorizado(PreautorizadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT  lot.lote, pre.entidad, pre.apellido, pre.nombre, pre.motivo, pre.fechainicio, pre.fechafin " & _
          "FROM pre " & _
          "INNER JOIN lot " & _
          "ON (pre.loteid = lot.loteid) " & _
          "WHERE pre.PreautorizadoID = " & PreautorizadoID
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerPreautorizado = False
    Else
        obtenerPreautorizado = True
    End If
End Function

