VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "MdlQRY"
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

Public Function getAdminModulosList(busqueda As String, NroPagina As Long) As Boolean
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String

    sql = "SELECT Mdl.ModuloID AS 'ID', Mdl.Nombre AS 'Nombre', (SELECT a.Nombre FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE MdlCatVal.ModuloID = Mdl.ModuloID AND a.CategoriaID = " & CAT_MODULO_CONTROLADOR & ") AS 'Tipo de Módulo', (SELECT b.Nombre FROM MdlCatVal INNER JOIN CatVal b ON(MdlCatVal.CategoriaID=b.CategoriaID AND MdlCatVal.ValorID=b.ValorID) WHERE MdlCatVal.ModuloID = Mdl.ModuloID AND b.CategoriaID = " & CAT_IDENTIFICACION & ") AS 'Tipo de Identificación', Mdl.Address AS 'Address', Mdl.GrupoModulos AS 'GrupoModulos', Mdl.OrdenEncuesta AS 'OrdenEncuesta', Mdl.Duracion_pulso AS 'Duracion pulso' FROM Mdl WHERE Mdl.ModuloID LIKE '%" + busqueda + "%' OR Mdl.Nombre LIKE '%" + busqueda + "%' ORDER BY Mdl.Nombre "
    '''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminModulosList = False
    Else
        getAdminModulosList = True
    End If
End Function

Public Function buscarMovimientoPorID(MovimientoID As String) As Boolean
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String
'''''''''''''''Antes FMV'''''''''''''''''''''''
''    sql = "SELECT DISTINCTROW mvt.fechahora, CONCAT(per.apellido, ',' ,per.nombre), " & _
''                             "mdl.nombre as 'modulo', a.nombre as 'tipo movimiento', " & _
''                             "b.nombre as 'sentido', per.personaid " & _
''          "FROM mvt " & _
''          "INNER JOIN peridn ON (mvt.identificacionID = peridn.identificacionID) " & _
''          "INNER JOIN per ON (peridn.personaid = per.personaid) " & _
''          "INNER JOIN mdl ON (mvt.moduloid = mdl.moduloid) " & _
''          "INNER JOIN mvtcatval  ON(mvt.movimientoID = mvtcatval.movimientoID) " & _
''          "INNER JOIN catval a ON(mvtcatval.valorID = a.valorID AND  a.categoriaid = 23) " & _
''          "INNER JOIN catval b ON(mvtcatval.valorID = b.valorID AND  b.categoriaid = 4) " & _
''          "WHERE mvt.movimientoid = " & MovimientoID
'''''''''''''''Ahora FMV'''''''''''''''''''''''
     sql = "SELECT DISTINCT mvt.fechahora, (per.apellido + ',' + per.nombre), mdl.nombre as 'modulo', "
     sql = sql & "a.nombre as 'tipo movimiento', b.nombre as 'sentido', per.personaid "
     sql = sql & "FROM Mvt  INNER JOIN PerIdn "
     sql = sql & "ON PerIdn.IdentificacionID=Mvt.IdentificacionID "
     sql = sql & "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID "
     sql = sql & "INNER JOIN mdl ON (mvt.moduloid = mdl.moduloid) "
     sql = sql & "INNER JOIN MvtCatVal am ON (Mvt.MovimientoID = am.MovimientoID AND am.categoriaid =23) "
     sql = sql & "INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID) "
     sql = sql & "INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID = bm.MovimientoID AND bm.categoriaid =4) "
     sql = sql & "INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID ) "
     sql = sql & "WHERE mvt.movimientoid =" & MovimientoID
          
          
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        buscarMovimientoPorID = False
    Else
        buscarMovimientoPorID = True
    End If
    
End Function

Public Function getCantidadItems(busqueda As String) As Boolean
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String

    sql = "SELECT Count(*) FROM Mdl WHERE Mdl.ModuloID LIKE '%" + busqueda + "%' OR Mdl.Nombre LIKE '%" + busqueda + "%' group by Mdl.Nombre ORDER BY Mdl.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
    
End Function

Public Function getCantidadMovimientos(busqueda() As String, TipoMovimiento As Long, FechaDesde As String, FechaHasta As String) As Boolean
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    Dim sql As String
    Dim t As Long
    Dim i As Long
    Dim filtro As String
'cantidad de movimientos con trj
    FechaDesde = FF(FechaDesde)
    FechaHasta = FF(CDate(FechaHasta) + 1)
    
   t = UtilitySYS.getArrayLength(busqueda)
  
  filtro = " WHERE (Mvt.FechaHora >= '" & FechaDesde & "' AND Mvt.FechaHora <= '" & FechaHasta & "')"
  
  For i = 0 To t
        filtro = filtro & " AND (Per.Nombre LIKE '%" & busqueda(i) & "%' OR Per.Apellido LIKE '%" & busqueda(i) & _
        "%' )"
  Next
  
   If TipoMovimiento > -1 Then
      filtro = filtro & " AND (am.ValorID = " & TipoMovimiento & " )"
   End If
    
    sql = "SELECT Count(*) " & _
    "FROM Mvt " & _
    " INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
    " INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
    " INNER JOIN MvtCatVal am ON (Mvt.MovimientoID = am.MovimientoID AND am.categoriaid =" & CAT_TIPO_MOVIMIENTO & ")" & _
    " INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID)  " & _
    " INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID = bm.MovimientoID AND bm.categoriaid =" & CAT_SENTIDO & ")" & _
    " INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID ) " & _
    filtro
    
    
'    If TipoMovimiento = -1 Then
'      sql = "SELECT Count(*) FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID" & _
'        " WHERE (Mvt.FechaHora >= '" & FechaDesde & "' AND Mvt.FechaHora <= '" & FechaHasta & _
'        "') AND (Per.Nombre LIKE '%" & busqueda & "%' OR Per.Apellido LIKE '%" & busqueda & _
'        "%' )"
'    Else
'      sql = "SELECT Count(*) FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN MvtCatVal ON(Mvt.MovimientoID=MvtCatVal.MovimientoID " & _
'            " AND MvtCatVal.CategoriaID = " & CAT_TIPO_MOVIMIENTO & _
'            " AND MvtCatVal.ValorID = " & TipoMovimiento & " ) " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID" & _
'        " WHERE (Mvt.FechaHora >= '" & FechaDesde & "' AND Mvt.FechaHora <= '" & FechaHasta & _
'        "') AND (Per.Nombre LIKE '%" & busqueda & "%' OR Per.Apellido LIKE '%" & busqueda & _
'        "%' )"
'    End If
    
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadMovimientos = False
    Else
        getCantidadMovimientos = True
    End If
End Function

Public Function getCantidadTickets(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Count(*) FROM Tck"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadTickets = False
    Else
        getCantidadTickets = True
    End If
End Function

Public Function getGrupoModulosList(busqueda As String, GrupoModulos As Long, NroPagina As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Mdl.ModuloID AS 'ID', Mdl.Nombre AS 'Nombre', (SELECT a.Nombre FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE MdlCatVal.ModuloID = Mdl.ModuloID AND a.CategoriaID = " & CAT_MODULO_CONTROLADOR & ") AS 'Tipo de Módulo', (SELECT b.Nombre FROM MdlCatVal INNER JOIN CatVal b ON(MdlCatVal.CategoriaID=b.CategoriaID AND MdlCatVal.ValorID=b.ValorID) WHERE MdlCatVal.ModuloID = Mdl.ModuloID AND b.CategoriaID = " & CAT_IDENTIFICACION & ") AS 'Tipo de Identificación' FROM Mdl WHERE ( Mdl.ModuloID LIKE '%" + busqueda + "%' OR Mdl.Nombre LIKE '%" + busqueda + "%') AND Mdl.GrupoModulos = " & GrupoModulos & " ORDER BY Mdl.Nombre "
    ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getGrupoModulosList = False
    Else
        getGrupoModulosList = True
    End If
End Function

Public Function getGrupoModulosCantidadItems(busqueda As String, GrupoModulos As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Count(*) FROM Mdl WHERE ( Mdl.ModuloID LIKE '%" + busqueda + "%' OR Mdl.Nombre LIKE '%" + busqueda + "%') AND Mdl.GrupoModulos = " & GrupoModulos & " ORDER BY Mdl.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getGrupoModulosCantidadItems = False
    Else
        getGrupoModulosCantidadItems = True
    End If
End Function

Public Function obtenerMdlCatVal(ModuloID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT MdlCatVal.ValorID FROM MdlCatVal WHERE MdlCatVal.ModuloID = " & ModuloID & " AND MdlCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerMdlCatVal = False
    Else
        obtenerMdlCatVal = True
    End If
End Function

Public Function obtenerMdlEstVal(ModuloID As Long, EstadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT MdlEstVal.ValorID FROM MdlEstVal WHERE MdlEstVal.ModuloID = " & ModuloID & " AND MdlEstVal.EstadoID = " & EstadoID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerMdlEstVal = False
    Else
        obtenerMdlEstVal = True
    End If
End Function

Public Function eliminarMdlCat(ModuloID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM MdlCatVal WHERE MdlCatVal.ModuloID = " & ModuloID & " AND MdlCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarMdlCat = True
End Function

Public Function eliminarMdlEst(ModuloID As Long, EstadoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM MdlEstVal WHERE MdlEstVal.ModuloID = " & ModuloID & " AND MdlEstVal.EstadoID = " & EstadoID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarMdlEst = True
End Function

Public Function eliminarWks(ModuloID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM WksMdl WHERE WksMdl.ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarWks = True
End Function

Public Function getListaModulosPorGrupo(GrupoModulos As Integer) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT *, (SELECT a.ValorID FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE a.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido', " _
        & "(SELECT a.ValorID FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE a.CategoriaID = " & CAT_MODULO_CONTROLADOR & ") AS 'TipoModulo', " _
        & "(SELECT a.ValorID FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE a.CategoriaID = " & CAT_RESPONDE & ") AS 'Responde', " _
        & "(SELECT a.ValorID FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE a.CategoriaID = " & CAT_IDENTIFICACION & ") AS 'TipoIdentificacion', " _
        & "(SELECT a.ValorID FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE a.CategoriaID = " & CAT_ANTIPASSBACK & ") AS 'AntiPassBack', " _
        & "(SELECT a.ValorID FROM MdlCatVal INNER JOIN CatVal a ON(MdlCatVal.CategoriaID=a.CategoriaID AND MdlCatVal.ValorID=a.ValorID) WHERE a.CategoriaID = " & CAT_ENCUESTA & ") AS 'Encuesta' " _
        & "FROM Mdl WHERE Mdl.GrupoModulos = " & GrupoModulos & " ORDER BY Mdl.OrdenEncuesta"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getListaModulosPorGrupo = False
    Else
        getListaModulosPorGrupo = True
    End If
End Function

Public Function obtenerOrdenDeEncuesta(ModuloID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT OrdenEncuesta FROM Mdl WHERE Mdl.ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerOrdenDeEncuesta = False
    Else
        obtenerOrdenDeEncuesta = True
    End If
End Function

Public Function obtenerModuloEntradaID(ModuloID As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT ModuloEntradaID FROM Mdl WHERE ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerModuloEntradaID = False
    Else
        obtenerModuloEntradaID = True
    End If
Salir:
End Function

Public Function obtenerModuloSalidaID(ModuloID As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT ModuloEntradaID FROM Mdl WHERE Mdl.ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    
    If DbRecordsetQRY.BOF Then
        obtenerModuloSalidaID = False
    Else
        obtenerModuloSalidaID = True
    End If
Salir:
End Function





Public Function obtenerCantidadModulos() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT COUNT(*) FROM Mdl"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerCantidadModulos = False
    Else
        obtenerCantidadModulos = True
    End If
End Function

'Public Function getListaTicketsPendientes(busqueda As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    Dim sql As String
'
'    Dim Numero As String
'    If busqueda = "" Then
'        Numero = "0"
'    Else
'        If esEntero(busqueda) Then
'            Numero = CStr(CCur(busqueda))
'        Else
'            Numero = 0
'        End If
'    End If
'
'    FechaDesde = FormatearFechaMySQL(FechaDesde) + " 00:00"
'    FechaHasta = FormatearFechaMySQL(FechaHasta) + " 23:59"
'
'    If FechaDesde = "" Or FechaHasta = "" Then
'
''
'
'        sql = "SELECT   Tck.TicketID AS 'TicketID', " & _
'                       "Tck.Numero AS 'Número de Ticket', " & _
'                       "Tck.FechaHoraIngreso AS 'Fecha y Hora de Ingreso', " & _
'             "(SELECT   Mdl.Nombre " & _
'             "FROM      Mdl " & _
'             "WHERE     Mdl.ModuloID = Tck.ModuloIngresoID) AS 'Módulo de Ingreso', " & _
'             "(SELECT   tckprx.Valor " & _
'             "FROM      tckprx " & _
'             "WHERE     tckprx.TicketID = Tck.TicketID AND tckprx.PropiedadID = 7) AS 'Destino Visita (Lote)' " & _
'             "(SELECT   tckprx.Valor " & _
'             "FROM      tckprx " & _
'             "WHERE     tckprx.TicketID = Tck.TicketID AND tckprx.PropiedadID = 8) AS 'Motivo Visita' " & _
'             "FROM      Tck " & _
'             "WHERE     Tck.Numero LIKE '%" + Numero + "%' " & _
'             "ORDER BY  Tck.FechaHoraIngreso DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'    Else
'
'
'
'        sql = "SELECT   Tck.TicketID AS 'TicketID', " & _
'                       "Tck.Numero AS 'Número de Ticket', " & _
'                       "Tck.FechaHoraIngreso AS 'Fecha y Hora de Ingreso', " & _
'             "(SELECT   Mdl.Nombre " & _
'             "FROM      Mdl " & _
'             "WHERE     Mdl.ModuloID = Tck.ModuloIngresoID) AS 'Módulo de Ingreso', " & _
'             "(SELECT   tckprx.Valor " & _
'             "FROM      tckprx " & _
'             "WHERE     tckprx.TicketID = Tck.TicketID AND tckprx.PropiedadID = 7) AS 'Destino Visita' " & _
'             "FROM      Tck " & _
'             "WHERE     (Tck.FechaHoraIngreso >= '" & FechaDesde & "' AND Tck.FechaHoraIngreso <= '" & FechaHasta & "') AND (Tck.Numero LIKE '%" + Numero + "%' ) " & _
'             "ORDER BY  Tck.FechaHoraIngreso DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'    End If
'
'    DbCommandQRY.CommandText = sql
'    Set DbRecordsetQRY = DbCommandQRY.Execute
'
'    If DbRecordsetQRY.BOF Then
'        getListaTicketsPendientes = False
'    Else
'        getListaTicketsPendientes = True
'    End If
'End Function
Public Function getListaTicketsPendientesCantidad(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
    
Dim sql As String
Dim t As Integer
Dim i As Integer
Dim filtro As String

On Error GoTo Salir
    
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    
    
    t = UtilitySYS.getArrayLength(busqueda)
    
    If FechaDesde = "" Or FechaHasta = "" Then
    
    Else
        FechaDesde = Format(FechaDesde, "DD/MM/YYYY") + " 00:00:00"
        FechaHasta = Format(FechaHasta, "DD/MM/YYYY") + " 23:59:59"
        filtro = " WHERE Tck.FechaHoraIngreso >= '" & FechaDesde & "' AND Tck.FechaHoraIngreso <= '" & FechaHasta & "'"
    End If
    
    For i = 0 To t
        If filtro = "" Then
            filtro = " WHERE "
        Else
            filtro = filtro & " AND "
        End If
        filtro = filtro & " (Tck.Numero LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.apellido LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.nombre LIKE '%" + busqueda(i) + "%' OR " & _
                             "lot.lote LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckent.valor LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckpat.valor LIKE '%" + busqueda(i) + "%' )  "
    Next
    
    sql = "SELECT COUNT(*) FROM tck " & _
            "LEFT JOIN " & _
                "(tckper INNER JOIN per ON tckper.personaid = per.personaid) " & _
            "ON tck.ticketID = tckper.ticketid " & _
            "LEFT JOIN tckprx tckpat ON (tck.ticketid = tckpat.ticketid AND tckpat.PropiedadID = 4 ) " & _
            "LEFT JOIN tckprx tckent ON (tck.ticketid = tckent.ticketid AND tckent.PropiedadID = 11 ) " & _
            "LEFT JOIN " & _
                "(tckprx tcklot INNER JOIN lot  ON tcklot.valor = lot.loteid AND tcklot.propiedadID = 7) " & _
            "ON tck.ticketID = tcklot.ticketid Inner join (SELECT tck.TicketID , ROW_NUMBER() OVER(order by TCK.FechaHoraIngreso ) AS RowNumber1 From TCK ) as RowNumber ON RowNumber.TicketID = tck.TicketID " & _
               filtro
    If filtro <> "" Then
        'sql = sql & " ORDER BY Tck.FechaHoraIngreso DESC "
    End If
          ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS

'cuando ingreso desde puestodecontrol, esta sql me da null
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getListaTicketsPendientesCantidad = Not DbRecordsetQRY.BOF

Salir:


End Function

Public Function getListaTicketsPendientes(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
Dim sql As String
Dim t As Integer
Dim i As Integer
Dim filtro As String

On Error GoTo Salir
    
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
    
   t = UtilitySYS.getArrayLength(busqueda)
   
   If FechaDesde = "" Or FechaHasta = "" Then

    Else
        FechaDesde = Format(FechaDesde, "DD/MM/YYYY") + " 00:00:00"
        FechaHasta = Format(FechaHasta, "DD/MM/YYYY") + " 23:59:59"
        filtro = " WHERE Tck.FechaHoraIngreso >= '" & FechaDesde & "' AND Tck.FechaHoraIngreso <= '" & FechaHasta & "'"
    End If

    For i = 0 To t
        If filtro = "" Then
            filtro = " WHERE "
        Else
            filtro = filtro & " AND "
        End If
        filtro = filtro & " (Tck.Numero LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.apellido LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.nombre LIKE '%" + busqueda(i) + "%' OR " & _
                             "lot.lote LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckent.valor LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckpat.valor LIKE '%" + busqueda(i) + "%' )  "
    Next

      sql = " ;WITH query (TicketID,Ticket,Ingreso,Persona,Lote,Patente,Entidad,Contador)" & _
      " AS " & _
      " ( SELECT Tck.TicketID, " & _
      " Tck.Numero AS Ticket, " & _
      " Tck.FechaHoraIngreso as Ingreso,  " & _
      " per.Apellido + ', ' + per.Nombre as Persona, " & _
      " lot.Lote, " & _
      " tckpat.valor as Patente, " & _
      " tckent.valor as Entidad, " & _
      " ROW_NUMBER() OVER (order by tck.FechaHoraIngreso DESC) AS Contador " & _
      " FROM tck  LEFT JOIN  (tckper INNER JOIN per ON tckper.personaid = per.personaid)  ON tck.ticketID = tckper.ticketid  " & _
      " LEFT JOIN tckprx tckpat ON (tck.ticketid = tckpat.ticketid AND tckpat.PropiedadID = 4 )  " & _
      " LEFT JOIN tckprx tckent ON (tck.ticketid = tckent.ticketid AND tckent.PropiedadID = 11 )  " & _
      " LEFT JOIN  (tckprx tcklot INNER JOIN lot  ON tcklot.valor = lot.loteid AND tcklot.propiedadID = 7)  ON tck.ticketID = tcklot.ticketid " & _
       filtro & ") " & _
      " SELECT TicketID,Ticket,Ingreso,Persona,Lote,Patente,Entidad" & _
      " FROM Query " & _
      " WHERE Contador BETWEEN  " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina) & _
      " ORDER BY Ingreso DESC"
      

    
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getListaTicketsPendientes = Not DbRecordsetQRY.BOF
    
Salir:
'MsgBox Err.Description
End Function
Public Function getListaMovimientos(busqueda() As String, NroPagina As Long, TipoMovimiento As Long, FechaDesde As String, FechaHasta As String) As Boolean
Dim sql As String
Dim i As Integer
Dim t As Integer
Dim filtro As String

'movientos de tarjetas
      'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function


  FechaDesde = FF(FechaDesde)
  FechaHasta = FF(CDate(FechaHasta) + 1)
  
  
  t = UtilitySYS.getArrayLength(busqueda)
  
    'Tipo de filtro anterior con bug de movimientos
    'filtro = " WHERE (Mvt.FechaHora >= '" & FechaDesde & "' AND Mvt.FechaHora <= '" & FechaHasta & "') and RowNumber.RowNumber1 BETWEEN " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
    
    
    filtro = " WHERE (Mvt.FechaHora >= '" & FechaDesde & "' AND Mvt.FechaHora <= '" & FechaHasta & "') "
      
      
  For i = 0 To t
        filtro = filtro & " AND (Per.Nombre LIKE '%" & busqueda(i) & "%' OR Per.Apellido LIKE '%" & busqueda(i) & _
        "%' )"
  Next
  
   If TipoMovimiento > -1 Then
      filtro = filtro & " AND (am.ValorID = " & TipoMovimiento & " )"
   End If
    
    
    
    
    
    
    
    '---------------------------------------------------------------------------------------------
    'Autor: Manuel Leone
    'Fecha: 10/07/12 16:42
    'Motivo: Consulta mejorar que corrige el bug de traer menos movimientos
    '---------------------------------------------------------------------------------------------
    
    sql = "; WITH consulta (a,b,c,d,e,f) AS" & _
          "( " & _
     " SELECT DISTINCT mvt.MovimientoID," & _
                " Mvt.FechaHora AS 'Fecha Hora'," & _
                "(Per.Apellido + ', ' + Per.Nombre)  AS 'Persona'," & _
                " a.Nombre  AS 'Tipo de Movimiento'," & _
                " b.Nombre  AS 'Sentido'," & _
                " row_number() OVER (ORDER BY mvt.FechaHora DESC) AS 'Cont'" & _
                " From Mvt" & _
     " INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
     " INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
     " INNER JOIN MvtCatVal am ON (Mvt.MovimientoID = am.MovimientoID AND am.categoriaid =" & CAT_TIPO_MOVIMIENTO & ")" & _
     " INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID)  " & _
     " INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID = bm.MovimientoID AND bm.categoriaid =" & CAT_SENTIDO & ")" & _
     " INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID ) " & _
      filtro & _
     " )" & _
     " SELECT a AS 'MovimientoID'," & _
     " b AS 'Fecha Hora'," & _
     " c AS 'Persona'," & _
     " d AS 'Tipo de Movimiento'," & _
     " e AS 'Sentido'" & _
     " From consulta " & _
     "  WHERE CAST(f AS INT) >= " & NroPagina & " AND CAST(f AS INT) <= " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina) & _
     " Order By b DESC"

    
    
    
    
    
    
    
    
    '---------------------------------------------------------------------------------------------
    'Autor: Manuel Leone
    'Fecha: 10/07/12 16:37
    'Motivo: Consulta anterior de movimientos con error en movimientos.
    '---------------------------------------------------------------------------------------------
    ' sql = "SELECT DISTINCT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
    ' " (Per.Apellido + ', ' + Per.Nombre)  AS 'Persona', " & _
    ' " a.Nombre  AS 'Tipo de Movimiento', " & _
    ' " b.Nombre  AS 'Sentido' " & _
    ' "FROM Mvt " & _
    ' " INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
    ' " INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
    ' " INNER JOIN MvtCatVal am ON (Mvt.MovimientoID = am.MovimientoID AND am.categoriaid =" & CAT_TIPO_MOVIMIENTO & ")" & _
    ' " INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID)  " & _
    ' " INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID = bm.MovimientoID AND bm.categoriaid =" & CAT_SENTIDO & ")" & _
    ' " INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID ) " & _
    ' "inner join   (SELECT mvt.MovimientoID,ROW_NUMBER() OVER(order by Mvt.FechaHora desc) AS RowNumber1 From Mvt ) as RowNumber ON RowNumber.MovimientoID = mvt.MovimientoID " & _
    ' filtro & _
    ' " ORDER BY Mvt.FechaHora DESC "
    
    
    
    ''' "LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
    
    
    
    
    
    
    
  
'If TipoMovimiento = -1 Then
'        sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
'        " CONCAT(Per.Apellido, ', ', Per.Nombre)  AS 'Persona', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
'              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento', " & _
'        "(SELECT b.Nombre FROM MvtCatVal INNER JOIN CatVal b " & _
'              "ON (MvtCatVal.CategoriaID=b.CategoriaID AND MvtCatVal.ValorID=b.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND b.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
'        "FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
'        filtro & _
'        " ORDER BY Mvt.FechaHora DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'  Else
'      sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
'        " CONCAT(Per.Apellido, ', ', Per.Nombre) AS 'Persona', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
'              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento', " & _
'        "(SELECT b.Nombre FROM MvtCatVal INNER JOIN CatVal b " & _
'              "ON (MvtCatVal.CategoriaID=b.CategoriaID AND MvtCatVal.ValorID=b.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND b.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
'        "FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN MvtCatVal ON(Mvt.MovimientoID=MvtCatVal.MovimientoID " & _
'            " AND MvtCatVal.CategoriaID = " & CAT_TIPO_MOVIMIENTO & _
'            " AND MvtCatVal.ValorID = " & TipoMovimiento & " ) " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID  " & _
'        filtro & _
'        " ORDER BY Mvt.FechaHora DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'  End If
'
  
  
'version original muy lenta, con select anidados pero NO muestra el modulo
'If TipoMovimiento = -1 Then
'        sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
'        "(SELECT CONCAT(Per.Apellido, ', ', Per.Nombre) " & _
'             "FROM PerIdn INNER JOIN Per ON(PerIdn.PersonaID = Per.PersonaID) " & _
'             "WHERE PerIdn.IdentificacionID = Mvt.IdentificacionID) AS 'Persona', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
'              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON (MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND a.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
'        "FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
'        filtro & _
'        " ORDER BY Mvt.FechaHora DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'  Else
'      sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
'        "(SELECT CONCAT(Per.Apellido, ', ', Per.Nombre) " & _
'             "FROM PerIdn INNER JOIN Per ON(PerIdn.PersonaID = Per.PersonaID) " & _
'             "WHERE PerIdn.IdentificacionID = Mvt.IdentificacionID) AS 'Persona', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
'              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON (MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND a.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
'        "FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN MvtCatVal ON(Mvt.MovimientoID=MvtCatVal.MovimientoID " & _
'            " AND MvtCatVal.CategoriaID = " & CAT_TIPO_MOVIMIENTO & _
'            " AND MvtCatVal.ValorID = " & TipoMovimiento & " ) " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID  " & _
'        filtro & _
'        " ORDER BY Mvt.FechaHora DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'  End If
  
  
'version original muy lenta, con select anidados y muestra el modulo
'  If TipoMovimiento = -1 Then
'        sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
'        "(SELECT CONCAT(Per.Apellido, ', ', Per.Nombre) " & _
'             "FROM PerIdn INNER JOIN Per ON(PerIdn.PersonaID = Per.PersonaID) " & _
'             "WHERE PerIdn.IdentificacionID = Mvt.IdentificacionID) AS 'Persona', " & _
'        "(SELECT Mdl.Nombre FROM Mdl WHERE Mdl.ModuloID = Mvt.ModuloID) AS 'Módulo', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
'              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON (MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND a.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
'        "FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
'        filtro & _
'        " ORDER BY Mvt.FechaHora DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'  Else
'      sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
'        "(SELECT CONCAT(Per.Apellido, ', ', Per.Nombre) " & _
'             "FROM PerIdn INNER JOIN Per ON(PerIdn.PersonaID = Per.PersonaID) " & _
'             "WHERE PerIdn.IdentificacionID = Mvt.IdentificacionID) AS 'Persona', " & _
'        "(SELECT Mdl.Nombre FROM Mdl WHERE Mdl.ModuloID = Mvt.ModuloID) AS 'Módulo', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
'              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento', " & _
'        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
'              "ON (MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
'              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND a.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
'        "FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
'        "INNER JOIN MvtCatVal ON(Mvt.MovimientoID=MvtCatVal.MovimientoID " & _
'            " AND MvtCatVal.CategoriaID = " & CAT_TIPO_MOVIMIENTO & _
'            " AND MvtCatVal.ValorID = " & TipoMovimiento & " ) " & _
'        "INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
'        "INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID  " & _
'        filtro & _
'        " ORDER BY Mvt.FechaHora DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'  End If

  DbCommandQRY.CommandText = sql
  Set DbRecordsetQRY = DbCommandQRY.Execute

  If DbRecordsetQRY.BOF Then
      getListaMovimientos = False
  Else
      getListaMovimientos = True
  End If

End Function

Public Function getListaPresentes(GrupoID As Long, NroPagina As Long) As Boolean
' trabajandolo, falta terminar
Dim sql As String
On Error GoTo Salir
      'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

        
        
        sql = "SELECT mvt.MovimientoID, Mvt.FechaHora AS 'Fecha Hora', " & _
        "(SELECT CONCAT(Per.Apellido, ', ', Per.Nombre) " & _
             "FROM PerIdn INNER JOIN Per ON(PerIdn.PersonaID = Per.PersonaID) " & _
             "WHERE PerIdn.IdentificacionID = Mvt.IdentificacionID) AS 'Persona', " & _
        "(SELECT Mdl.Nombre FROM Mdl WHERE Mdl.ModuloID = Mvt.ModuloID) AS 'Módulo', " & _
        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
              "ON(MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID " & _
              "AND a.CategoriaID = " & CAT_TIPO_MOVIMIENTO & ") AS 'Tipo de Movimiento' " & _
        "(SELECT a.Nombre FROM MvtCatVal INNER JOIN CatVal a " & _
              "ON (MvtCatVal.CategoriaID=a.CategoriaID AND MvtCatVal.ValorID=a.ValorID) " & _
              "WHERE MvtCatVal.MovimientoID = Mvt.MovimientoID AND a.CategoriaID = " & CAT_SENTIDO & ") AS 'Sentido' " & _
        " FROM Mvt INNER JOIN Idn ON Mvt.IdentificacionID=Idn.IdentificacionID  " & _
        " INNER JOIN Mvtcatval on Mvt.MovimientoID = MvtCatVal.MovimientoID AND mvtcaltval.categoriaID = 4 and mvtcatval.valorID = 1 " & _
        " INNER JOIN PerIdn ON PerIdn.IdentificacionID=Mvt.IdentificacionID  " & _
        " INNER JOIN Per ON Per.PersonaID=PerIdn.PersonaID " & _
        " INNER JOIN PerGru ON Per.PersonaID=PerGru.PersonaID " & _
        " WHERE PerGru.GrupoID = " & GrupoID & _
        " ORDER BY persona DESC LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
      '------------------------------------------------------------------------------------------------------
      'AUTOR: Manuel
      'FECHA: 18/07/12
      'MOTIVO: Descomentar esta parte para pasar la consulta a SQL SERVER
      '------------------------------------------------------------------------------------------------------
      'sql = "; WITH consulta(MovimientoID,FechaHora,Persona,Modulo,TipoMovimiento,Sentido,Rows) AS("
      'sql=sql+" ROW_NUMBER() OVER (ORDER BY mvt.MovimientoID) as rows"
      'sql = sql + ")"
      'sql= sql + " SELECT MovimientoID,FechaHora,Persona,Modulo,TipoMovimiento,Sentido"
      'sql= sql + " WHERE Rows BETWEEN " & NroPagina & " AND" & MAX_GRID_ROWS_SIZE_SYS
      'sql = sql + "ORDER BY persona DESC "
 
  DbCommandQRY.CommandText = sql
  Set DbRecordsetQRY = DbCommandQRY.Execute

  getListaPresentes = Not DbRecordsetQRY.BOF

Salir:
End Function


Public Function getListaTicketsHistoricosCantidad(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
   Dim sql As String
Dim t As Integer
Dim i As Integer
Dim filtro As String

On Error GoTo Salir
    
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    
    
    t = UtilitySYS.getArrayLength(busqueda)
    
    If FechaDesde = "" Or FechaHasta = "" Then
    
    Else
'        FechaDesde = FormatearFechaMySQL(FechaDesde) + " 00:00:00"
'        FechaHasta = FormatearFechaMySQL(FechaHasta) + " 23:59:59"
        FechaDesde = FechaDesde + " 00:00:00"
        FechaHasta = FechaHasta + " 23:59:59"
        filtro = " WHERE Tckhst.FechaHoraIngreso >= '" & FechaDesde & "' AND Tckhst.FechaHoraIngreso <= '" & FechaHasta & "'"
    End If
    
    For i = 0 To t
        If filtro = "" Then
            filtro = " WHERE "
        Else
            filtro = filtro & " AND "
        End If
        filtro = filtro & " (TckHst.Numero LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.apellido LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.nombre LIKE '%" + busqueda(i) + "%' OR " & _
                             "lot.lote LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckent.valor LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckpat.valor LIKE '%" + busqueda(i) + "%' )  "
    Next
    
    sql = "SELECT COUNT(*) FROM tckhst " & _
            "LEFT JOIN " & _
                "(tckper INNER JOIN per ON tckper.personaid = per.personaid) " & _
            "ON tckhst.ticketID = tckper.ticketid " & _
            "LEFT JOIN tckprx tckpat ON (tckhst.ticketid = tckpat.ticketid AND tckpat.PropiedadID = 4 ) " & _
            "LEFT JOIN tckprx tckent ON (tckhst.ticketid = tckent.ticketid AND tckent.PropiedadID = 11 ) " & _
            "LEFT JOIN " & _
                "(tckprx tcklot INNER JOIN lot  ON tcklot.valor = lot.loteid AND tcklot.propiedadID = 7) " & _
            "ON tckhst.ticketID = tcklot.ticketid  Inner Join (SELECT tckhst.TicketID , ROW_NUMBER() OVER(order by Tckhst.FechaHoraIngreso DESC) AS RowNumber1 From tckhst) as RowNumber on RowNumber.TicketID = tckhst.TicketID " & _
               filtro
               ''& " AND RowNumber.RowNumber1 BETWEEN  " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
          ''" group by Tckhst.FechaHoraIngreso ORDER BY Tckhst.FechaHoraIngreso DESC"
          ''LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS"
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getListaTicketsHistoricosCantidad = Not DbRecordsetQRY.BOF
Salir:
End Function
Public Function getListaTicketsHistoricos(busqueda() As String, NroPagina As Long, FechaDesde As String, FechaHasta As String) As Boolean
Dim sql As String
Dim t As Integer
Dim i As Integer
Dim filtro As String

On Error GoTo Salir
    
       'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    
   t = UtilitySYS.getArrayLength(busqueda)
    If FechaDesde = "" Or FechaHasta = "" Then
    
    Else
'       FechaDesde = FormatearFechaMySQL(FechaDesde) + " 00:00:00"
'       FechaHasta = FormatearFechaMySQL(FechaHasta) + " 23:59:59"
        FechaDesde = FechaDesde + " 00:00:00"
        FechaHasta = FechaHasta + " 23:59:59"
        
        filtro = " WHERE Tckhst.FechaHoraIngreso >= '" & FechaDesde & "' AND Tckhst.FechaHoraIngreso <= '" & FechaHasta & "'"
    
    End If
    
    For i = 0 To t
        If filtro = "" Then
            filtro = " WHERE "
        Else
            filtro = filtro & " AND "
        End If
        filtro = filtro & " (TckHst.Numero LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.apellido LIKE '%" + busqueda(i) + "%' OR " & _
                             "per.nombre LIKE '%" + busqueda(i) + "%' OR " & _
                             "lot.lote LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckent.valor LIKE '%" + busqueda(i) + "%' OR " & _
                             "tckpat.valor LIKE '%" + busqueda(i) + "%' )  "
    Next
    
    sql = "SELECT TicketID,Ticket,Ingreso,Persona,Lote,Patente,Entidad,Salida FROM ( "
    sql = sql + " SELECT " & _
          " Tckhst.TicketID, " & _
          " Tckhst.Numero AS Ticket, " & _
          " Tckhst.FechaHoraIngreso AS Ingreso,  " & _
          " (per.apellido + ', ' + per.nombre) AS Persona, " & _
          " lot.lote AS Lote ," & _
          " tckpat.valor AS Patente, " & _
          " tckent.valor AS Entidad, " & _
          " Tckhst.FechaHoraSalida AS Salida,  " & _
          " ROW_NUMBER() OVER (ORDER BY tckhst.fechahoraingreso DESC) as Rows" & _
          " FROM tckhst " & _
          " LEFT JOIN (tckper INNER JOIN per ON tckper.personaid = per.personaid) ON tckhst.ticketID = tckper.ticketid " & _
          " LEFT JOIN tckprx tckpat ON (tckhst.ticketid = tckpat.ticketid AND tckpat.PropiedadID = 4 ) " & _
          " LEFT JOIN tckprx tckent ON (tckhst.ticketid = tckent.ticketid AND tckent.PropiedadID = 11 ) " & _
          " LEFT JOIN (tckprx tcklot INNER JOIN lot  ON tcklot.valor = lot.loteid AND tcklot.propiedadID = 7) ON tckhst.ticketID = tcklot.ticketid  " & _
          filtro & " ) AS q " & _
          " WHERE Rows BETWEEN  " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina) & _
          " ORDER BY Ingreso DESC"


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getListaTicketsHistoricos = Not DbRecordsetQRY.BOF
    
Salir:
End Function
Public Function getDatosSubirModulo(ModuloID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    ' Manda Todos los Perfiles de Todos los Grupos Del Módulo Seleccionado
    
    
    '------------------------------------------------------------------------------------------------------
    'AUTOR: Manuel
    'FECHA: 18/07/12
    'MOTIVO: nueva consulta para SQL SERVER
    '------------------------------------------------------------------------------------------------------
    sql = "SELECT Idn.Numero, Per.Nombre + ' ' + Per.Apellido as 'Persona', GruMdlPrf.PerfilID FROM ((((GruMdlPrf INNER JOIN PerGru ON(GruMdlPrf.GrupoID=PerGru.GrupoID)) INNER JOIN Per ON(PerGru.PersonaID=Per.PersonaID)) INNER JOIN PerIdn ON(Per.PersonaID = PerIdn.PersonaID)) INNER JOIN Idn ON(Idn.IdentificacionID = PerIdn.IdentificacionID)) WHERE GruMdlPrf.ModuloID = " & ModuloID
    '------------------------------------------------------------------------------------------------------
    'consulta para mysql
    '------------------------------------------------------------------------------------------------------
    'sql = "SELECT Idn.Numero, CONCAT(Per.Nombre,' ', Per.Apellido), GruMdlPrf.PerfilID FROM ((((GruMdlPrf INNER JOIN PerGru ON(GruMdlPrf.GrupoID=PerGru.GrupoID)) INNER JOIN Per ON(PerGru.PersonaID=Per.PersonaID)) INNER JOIN PerIdn ON(Per.PersonaID = PerIdn.PersonaID)) INNER JOIN Idn ON(Idn.IdentificacionID = PerIdn.IdentificacionID)) WHERE GruMdlPrf.ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getDatosSubirModulo = False
    Else
        getDatosSubirModulo = True
    End If
End Function

Public Function getListModulosPerfiles(GrupoID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT GruMdlPrf.ModuloID, GruMdlPrf.PerfilID, Mdl.Nombre AS 'Módulo', Prf.Nombre AS 'Perfil', GruMdlPrf.FechaInicio AS 'Inicio', GruMdlPrf.FechaFin AS 'Fin' FROM (GruMdlPrf INNER JOIN Mdl ON(GruMdlPrf.ModuloID=Mdl.ModuloID)) INNER JOIN Prf ON(GruMdlPrf.PerfilID=Prf.PerfilID) WHERE GruMdlPrf.GrupoID = " & GrupoID & " ORDER BY Mdl.Nombre, Prf.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getListModulosPerfiles = False
    Else
        getListModulosPerfiles = True
    End If
End Function

Public Function EstablecerModulosInterrelacionados(ModuloID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "UPDATE Mdl SET ModuloEntradaID = " & ModuloID & ", ModuloSalidaID = " & ModuloID & " WHERE Mdl.ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    EstablecerModulosInterrelacionados = True
End Function

Public Function existeTicketPendiente(ModuloID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT * FROM PdtMdl WHERE ModuloID = " & ModuloID & ";"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        existeTicketPendiente = False
    Else
        existeTicketPendiente = True
    End If
End Function

Public Function obtenerModuloVirtual(WindowsComputerName As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Mdl.ModuloID FROM (Wks INNER JOIN WksMdl ON(Wks.WorkstationID=WksMdl.WorkstationID)) INNER JOIN Mdl ON(WksMdl.ModuloID=Mdl.ModuloID) WHERE Wks.Nombre = '" & WindowsComputerName & "';"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerModuloVirtual = False
    Else
        obtenerModuloVirtual = True
    End If
End Function

Public Function obtenerWks(ModuloID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT WksMdl.WorkstationID FROM WksMdl WHERE WksMdl.ModuloID = " & ModuloID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerWks = False
    Else
        obtenerWks = True
    End If
End Function


'Public Function obtenerTicketPendienteDetallado(TicketID As Currency) As Boolean
'On Error GoTo Salir
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    Dim sql As String
'
'    sql = "SELECT      tck.ticketid, " & _
'                      "tckper.personaid, " & _
'                      "tck.numero, " & _
'                      "tck.FechaHoraIngreso, " & _
'                      "CONCAT(per.apellido, ',' , per.nombre) AS 'Apellido y Nombre', " & _
'                      "a.valor as 'DestinoLoteID', " & _
'          "(SELECT      Tckprx.valor " & _
'          "FROM        tckprx " & _
'          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 8) AS 'Motivo', " & _
'          "mdl.nombre " & _
'          "FROM        tck " & _
'          "INNER JOIN  tckper on(tck.ticketid = tckper.ticketid) " & _
'          "INNER JOIN per on (tckper.personaid = per.personaid) " & _
'          "INNER JOIN tckprx a on(tck.ticketid = a.ticketid And a.propiedadID = 7)" & _
'          "INNER JOIN mdl on (tck.moduloingresoID = mdl.ModuloID) " & _
'          "WHERE tck.TicketID = " & TicketID
'
'    DbCommandQRY.CommandText = sql
'    Set DbRecordsetQRY = DbCommandQRY.Execute
'
'
'    If DbRecordsetQRY.BOF Then
'        obtenerTicketPendienteDetallado = False
'    Else
'        obtenerTicketPendienteDetallado = True
'    End If
'Salir:
'End Function
Public Function obtenerTicketPendienteDetallado(TicketID As Currency) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT      tck.ticketid,  tckper.personaid, tck.numero,  tck.FechaHoraIngreso,  " & _
          "(per.apellido + ',' + per.nombre) AS 'Apellido y Nombre', a.valor as 'DestinoLoteID', " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 8) AS 'Motivo', " & _
          "mdl.nombre, " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 10) AS 'Obs', " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 9) AS 'Menores', " & _
          "(SELECT     Tckprx.valor FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 5) AS 'Adultos', " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 11) AS 'Entidad', " & _
          "(SELECT     Tckprx.valor FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 4) AS 'Patente', " & _
          "(SELECT     Tckprx.valor FROM        tckprx " & _
          "WHERE       Tck.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 6) AS 'Cacheo' " & _
          "FROM        tck " & _
          "LEFT JOIN  tckper on(tck.ticketid = tckper.ticketid) " & _
          "LEFT JOIN per on (tckper.personaid = per.personaid) " & _
          "LEFT JOIN tckprx a on(tck.ticketid = a.ticketid And a.propiedadID = 7)" & _
          "LEFT JOIN mdl on (tck.moduloingresoID = mdl.ModuloID) " & _
          "WHERE tck.TicketID = " & TicketID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    
    If DbRecordsetQRY.BOF Then
        obtenerTicketPendienteDetallado = False
    Else
        obtenerTicketPendienteDetallado = True
    End If
Salir:
End Function


Public Function obtenerTicketHistoricoDetallado(TicketID As Currency) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT      tckhst.ticketid,  tckper.personaid, tckhst.numero,  tckhst.FechaHoraIngreso,  " & _
          "per.apellido + ',' + per.nombre AS 'Apellido y Nombre', a.valor as 'DestinoLoteID', " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 8) AS 'Motivo', " & _
          "mdling.nombre, " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 10) AS 'Obs', " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 9) AS 'Menores', " & _
          "(SELECT     Tckprx.valor FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 5) AS 'Adultos', " & _
          "(SELECT     Tckprx.valor  FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 11) AS 'Entidad', " & _
          "(SELECT     Tckprx.valor FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 4) AS 'Patente', " & _
          "(SELECT     Tckprx.valor FROM        tckprx " & _
          "WHERE       Tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 6) AS 'Cacheo',  " & _
          " tckhst.FechaHoraSalida, mdlsal.nombre " & _
          "FROM        tckhst " & _
          "LEFT JOIN  tckper on(tckhst.ticketid = tckper.ticketid) " & _
          "LEFT JOIN per on (tckper.personaid = per.personaid) " & _
          "LEFT JOIN tckprx a on(tckhst.ticketid = a.ticketid And a.propiedadID = 7)" & _
          "LEFT JOIN mdl  mdling on (tckhst.moduloingresoID = mdling.ModuloID) " & _
          "LEFT JOIN mdl mdlsal on (tckhst.modulosalidaID = mdlsal.ModuloID) " & _
          "WHERE tckhst.TicketID = " & TicketID




'    sql = "SELECT tckhst.ticketid, " & _
'                      "tckper.personaid, " & _
'                      "tckhst.numero, " & _
'                      "tckhst.FechaHoraIngreso, " & _
'                      "tckhst.FechaHoraSalida, " & _
'                      "CONCAT(per.apellido, ',' , per.nombre) AS 'Apellido y Nombre', " & _
'                      "a.valor as 'DestinoLoteID', " & _
'                      "mdlingreso.nombre as 'ingreso', " & _
'                      "mdlsalida.nombre as 'salida', " & _
'                "(SELECT   Tckprx.valor " & _
'                "FROM        tckprx " & _
'          "WHERE      tckhst.Ticketid = Tckprx.Ticketid AND Tckprx.PropiedadID = 8) AS 'Motivo' " & _
'          "FROM        tckhst " & _
'          "INNER JOIN  mdl mdlingreso on tckhst.moduloingresoid = mdlingreso.moduloid " & _
'          "INNER JOIN  mdl mdlsalida on tckhst.modulosalidaid = mdlsalida.moduloid " & _
'          "INNER JOIN  tckper on(tckhst.ticketid = tckper.ticketid) " & _
'          "INNER JOIN  per on (tckper.personaid = per.personaid) " & _
'          "INNER JOIN  tckprx a on(tckhst.ticketid = a.ticketid And a.propiedadID = 7)" & _
'          "WHERE       tckhst.TicketID = " & TicketID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    
    If DbRecordsetQRY.BOF Then
        obtenerTicketHistoricoDetallado = False
    Else
        obtenerTicketHistoricoDetallado = True
    End If
Salir:
End Function


Public Function getListModuloVirtual(WksID As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
''distinctrow
    sql = "select  mdl.moduloID, b.ValorID sentidos_validos, a.valorID tipo_identificador, " & _
        "mdling.moduloID i_moduloID, " & _
        "mdling.nombre ingreso, mdling.ordenencuesta i_ordenencuesta,  " & _
        "mdling.address i_address, " & _
        "mdlsal.moduloID s_moduloID, " & _
        "mdlsal.nombre salida, mdlsal.ordenencuesta s_ordenencuesta, " & _
        "mdlsal.Address s_address " & _
        "from  wksmdl  inner join mdl on wksmdl.moduloid = mdl.moduloid " & _
        "inner join mdl mdling on mdl.moduloEntradaID = mdling.moduloid " & _
        "inner join mdl mdlsal on mdl.modulosalidaid = mdlsal.moduloid " & _
        "inner join mdlcatval a on (mdl.moduloid = a.moduloid AND a.categoriaID = 3) " & _
        "inner join mdlcatval b on (mdl.moduloid = b.moduloid AND b.categoriaID = 4) " & _
        "where wksmdl.workstationID =  " & WksID & " ORDER BY  mdl.OrdenEncuesta "

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    getListModuloVirtual = Not DbRecordsetQRY.BOF 'si hay retorna TRUE
    
Salir:
End Function


Public Function obtenerWorkStationID(WindowsComputerName As String) As Long
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT workstationID FROM Wks WHERE Nombre = '" & WindowsComputerName & "';"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    obtenerWorkStationID = DbRecordsetQRY.Fields(0)
    
Salir:
End Function

Public Function UltimoMovimintoEsEntrada(PersonaID As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT mvtcatval.valorid   FROM mvt " & _
          " INNER JOIN mvtcatval on (mvt.movimientoid = mvtcatval.movimientoid and mvtcatval.categoriaid = 4)" & _
          " INNER JOIN peridn ON (mvt.identificacionid = peridn.identificacionID)" & _
          " WHERE peridn.PersonaID = " & PersonaID & _
          " ORDER BY mvt.fechahora DESC LIMIT 1"


    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    UltimoMovimintoEsEntrada = (DbRecordsetQRY.Fields(0) = 1) ' EL 1 ES INGRESO
    
    
Salir:
End Function


Public Function MovimintoPresentes(busqueda As String, NroPagina As Long) As ADODB.RecordSet
' busca en movimientos todas las tarjetas que estan adentro
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    If busqueda <> "" Then
        busqueda = " and " & busqueda
    End If


    Dim sql As String
    
    
    


    sql = "select t.movimientoid,t.Ingreso as Ingreso," & _
            " Concat(p.apellido, ', ', p.nombre) Persona," & _
            " i.numero as Tarjeta," & _
            " md.nombre as modulo,g.nombre as grupo,ca.nombre as Movimiento" & _
            " from ( " & _
            " select " & _
            " identificacionid, " & _
            " movimientoid,max(fechahora) as Ingreso,md.moduloid,mc.categoriaid,mc.valorid" & _
            " from (select * from mvt order by fechahora desc) as mv" & _
            " inner join mdl md on mv.moduloid=md.moduloid" & _
            " inner join mdlcatval mc on mc.moduloid=md.moduloid and mc.categoriaid=4" & _
            " group by identificacionid) as t" & _
            " inner join peridn pi on pi.identificacionid=t.identificacionid" & _
            " inner join per p on pi.personaid=p.personaid" & _
            " inner join idn i on i.identificacionid=t.identificacionid" & _
            " inner join pergru pg on p.personaid=pg.personaid" & _
            " inner join gru g on g.grupoid=pg.grupoid" & _
            " inner join mdl md on md.moduloid=t.moduloid" & _
            " inner join mvtcatval am on am.movimientoid=t.movimientoid and am.categoriaid=23 " & _
            " inner join catval ca on ca.categoriaid=am.categoriaid and ca.valorid=am.valorid " & _
            " Where t.ValorID = 1 " & busqueda
            If NroPagina >= 0 Then
              sql = sql + " LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
            End If







'    sql = "select t.movimientoid,t.Ingreso as Ingreso," & _
'            " Concat(p.apellido, ', ', p.nombre) Persona," & _
'            " i.numero as Tarjeta" & _
'            " from ( " & _
'            " select " & _
'            " identificacionid, " & _
'            " movimientoid,max(fechahora) as Ingreso,mc.categoriaid,mc.valorid" & _
'            " from mvt mv" & _
'            " inner join mdl md on mv.moduloid=md.moduloid" & _
'            " inner join mdlcatval mc on mc.moduloid=md.moduloid and mc.categoriaid=4" & _
'            " group by identificacionid) as t" & _
'            " inner join peridn pi on pi.identificacionid=t.identificacionid" & _
'            " inner join per p on pi.personaid=p.personaid" & _
'            " inner join idn i on i.identificacionid=t.identificacionid" & _
'            " Where t.ValorID = 1"
'            If NroPagina >= 0 Then
'              sql = sql + " LIMIT " & NroPagina & ", " & MAX_GRID_ROWS_SIZE_SYS
'            End If
'


'afa
'saque esto de la busqueda porque hay personas que tienen asignados mas de 1 auto y mas de un lote

'            " l.lote Lote," & _
'            " a.Patente Patente" & _
'            " inner join lotper lp on lp.personaid=p.personaid" & _
'            " inner join lot l on lp.loteid=l.loteid" & _
'            " inner join peraut pa on pa.personaid=p.personaid" & _
'            " inner join aut a on pa.autoid=a.autoid" & _
'            " inner join aut a on pa.autoid=a.autoid" & _

'''''''''''''''''''''''


    DbCommandQRY.CommandText = sql
    Set MovimintoPresentes = DbCommandQRY.Execute
    
    Exit Function
Salir:

End Function

Public Function MovimintoPresentesCantidad(busqueda As String) As Long
Dim Res As ADODB.RecordSet

' busca en movimientos todas las tarjetas que estan adentro
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    
    If busqueda <> "" Then
        busqueda = " and " & busqueda
    End If
    
    
    Dim sql As String

    sql = ";WITH t (IdentificacionID,Ingreso,MovimientoID,ModuloID,CategoriaID,ValorID)  "
    sql = sql + " AS  "
    sql = sql + " (SELECT  mv.identificacionid,  "
    sql = sql + "          MAX(mv.fechahora) as ingreso,  "
    sql = sql + "          mv.movimientoid,  "
    sql = sql + "          md.ModuloID,  "
    sql = sql + "          mc.categoriaid,  "
    sql = sql + "          mc.valorid  "
    sql = sql + "     FROM mvt AS mv  "
    sql = sql + " INNER JOIN  mdl md on mv.ModuloID=md.ModuloID  "
    sql = sql + " INNER JOIN  mdlcatval mc on mc.ModuloID=md.ModuloID and mc.CategoriaID=4  "
     sql = sql + " GROUP BY mv.identificacionid,mv.MovimientoID,md.ModuloID,mc.CategoriaID,mc.ValorID)  "
     sql = sql + " SELECT COUNT(DISTINCT (t.ingreso)) AS Cantidad "
     sql = sql + "    FROM t "
     sql = sql + " INNER JOIN mvt  mv      ON t.IdentificacionID=mv.IdentificacionID "
     sql = sql + " INNER JOIN peridn pi    ON pi.identificacionid=t.identificacionid "
     sql = sql + " INNER JOIN per p        ON pi.personaid=p.personaid  "
     sql = sql + " INNER JOIN idn i        ON i.identificacionid=t.identificacionid  "
     sql = sql + " INNER JOIN pergru pg    ON p.personaid=pg.personaid  "
     sql = sql + " INNER JOIN gru g        ON g.grupoid=pg.grupoid  "
     sql = sql + " INNER JOIN mdl md       ON md.moduloid=t.moduloid "
     sql = sql + " INNER JOIN mvtcatval am ON am.movimientoid=t.movimientoid AND am.categoriaid=23 "
     sql = sql + " INNER JOIN catval ca    ON ca.categoriaid=am.categoriaid  AND ca.valorid=am.valorid "
     sql = sql + " WHERE t.ValorID = 1   AND  (t.ingreso >= '23/12/2011 00:00:00' AND t.ingreso <= '27/12/2011 00:00:00') "
    
    'Consulta anterior no funciona bien
    'sql = "select count(*) as cantidad from ( " & _
            " select " & _
            " identificacionid, " & _
            " movimientoid,max(fechahora) as Ingreso,md.moduloid,mc.categoriaid,mc.valorid" & _
            " from (select * from mvt order by fechahora desc) as mv" & _
            " inner join mdl md on mv.moduloid=md.moduloid" & _
            " inner join mdlcatval mc on mc.moduloid=md.moduloid and mc.categoriaid=4" & _
            " group by identificacionid) as t" & _
            " inner join peridn pi on pi.identificacionid=t.identificacionid" & _
            " inner join per p on pi.personaid=p.personaid" & _
            " inner join idn i on i.identificacionid=t.identificacionid" & _
            " inner join pergru pg on p.personaid=pg.personaid" & _
            " inner join gru g on g.grupoid=pg.grupoid" & _
            " inner join mdl md on md.moduloid=t.moduloid" & _
            " inner join mvtcatval am on am.movimientoid=t.movimientoid and am.categoriaid=23 " & _
            " inner join catval ca on ca.categoriaid=am.categoriaid and ca.valorid=am.valorid " & _
            " Where t.ValorID = 1 " & busqueda

            
    DbCommandQRY.CommandText = sql
    Set Res = DbCommandQRY.Execute
    
    If Res.EOF Then
        MovimintoPresentesCantidad = 0
    Else
        MovimintoPresentesCantidad = Res!Cantidad
    End If
    Exit Function
Salir:
    MovimintoPresentesCantidad = 0
End Function
