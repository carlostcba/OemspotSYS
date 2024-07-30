VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "LoteQRY"
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

Public Function getAdminLotesList(busqueda() As String, _
                                  NroPagina As Long, _
                                  ByRef Ampliada As Boolean) As Boolean
Dim sql As String
Dim order As String
Dim group As String
Dim query As String
Dim i As Integer
Dim t As Integer
Dim filtro As String
   
   On Error GoTo Salir


       'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

   
    
   t = UtilitySYS.getArrayLength(busqueda)
   
   For i = 0 To t
     If filtro = "" Then
       filtro = " where (" & _
         " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
         " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
         " Lot.Lote LIKE '%" & busqueda(i) & "%' OR " & _
         " Lot.UF LIKE '%" & busqueda(i) & "%' OR " & _
         " Lot.Calle LIKE '%" & busqueda(i) & "%' ) "
     Else
       filtro = filtro & " AND (" & _
         " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
         " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
         " Lot.Lote LIKE '%" & busqueda(i) & "%' OR " & _
         " Lot.UF LIKE '%" & busqueda(i) & "%' OR " & _
         " Lot.Calle LIKE '%" & busqueda(i) & "%' ) "
     End If
   Next
             
   If Ampliada And (t > 0) Then ' si es ampliada va a repetir los lotes por la cantidad de personas que lo integren, y todas las relaciones no solo referentes
                                'exigimos que para la busqueda ampliada tenga algun filtro
         
         'Consulta de lotes abreviada (WITH)
         sql = "; WITH consulta (LoteID,Lote,UnidadFuncional,calle,referente,rows) AS ( "
         sql = sql + " SELECT Lot.LoteID AS 'LoteID',"
         sql = sql + " Lot.Lote AS 'Lote', Lot.UF AS 'Unidad Funcional',"
         sql = sql + " lot.calle, (per.Apellido + ', ' + per.nombre) AS referente,"
         sql = sql + " row_number() over(order by Lot.LoteID) as rows"
         sql = sql + " From lot"
         sql = sql + " LEFT JOIN (lotper INNER JOIN per ON lotper.personaid = per.PersonaID AND lotper.categoriaid= 18 AND lotper.valorid=1) ON lot.loteid = lotper.loteid "
         
         'Ordenacion de la consulta (ORDER BY)
         order = " ORDER BY"
         order = order + "  CASE  "
         order = order + "   WHEN ISNUMERIC(Lote) = 1 THEN CONVERT(INT, Lote)  "
         order = order + "    ELSE 9999999  "
         order = order + "  END, "
         order = order + "  Lote "
         
         'Grupo de la consulta (GROUP BY)
         group = " GROUP BY lot.loteid , lot.Lote , lot.UF , lot.calle , per.Apellido , per.nombre )"
         
         
         'Consulta final del query
         query = " SELECT LoteID,Lote,UnidadFuncional as 'Unidad Funcional',calle,referente From consulta"
         query = query & " WHERE rows BETWEEN " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
         
         
         
         'Armar consulta
         If filtro = "" Then
            sql = sql & group & query & order
         Else
            sql = sql & filtro & group & query & order
         End If
          
   Else
         
         
         'Consulta de lotes abreviada (WITH)
         sql = "; WITH consulta (LoteID,Lote,UnidadFuncional,calle,referente,rows) AS ( "
         sql = sql + " SELECT Lot.LoteID AS 'LoteID',"
         sql = sql + " Lot.Lote AS 'Lote', Lot.UF AS 'Unidad Funcional',"
         sql = sql + " lot.calle, (per.Apellido + ', ' + per.nombre) AS referente,"
         sql = sql + " row_number() over(order by Lot.LoteID) as rows"
         sql = sql + " From lot"
         sql = sql + " LEFT JOIN (lotper INNER JOIN per ON lotper.personaid = per.PersonaID AND lotper.categoriaid= 18 AND lotper.valorid=1) ON lot.loteid = lotper.loteid "
         
         'Ordenacion de la consulta (ORDER BY)
         order = " ORDER BY"
         order = order + "  CASE  "
         order = order + "   WHEN ISNUMERIC(Lote) = 1 THEN CONVERT(INT, Lote)  "
         order = order + "    ELSE 9999999  "
         order = order + "  END, "
         order = order + "  Lote "
         
         'Grupo de la consulta (GROUP BY)
         group = " GROUP BY lot.loteid , lot.Lote , lot.UF , lot.calle , per.Apellido , per.nombre )"
         
         
         'Consulta final del query
         query = " SELECT LoteID,Lote,UnidadFuncional as 'Unidad Funcional',calle,referente From consulta"
         query = query & " WHERE rows BETWEEN " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina)
         
         
         
         'Armar consulta
         If filtro = "" Then
            sql = sql & group & query & order
         Else
            sql = sql & filtro & group & query & order
         End If
         
         
         

   End If

   DbCommandQRY.CommandText = sql
   Set DbRecordsetQRY = DbCommandQRY.Execute
   'DbRecordsetQRY.MoveFirst
   getAdminLotesList = Not DbRecordsetQRY.BOF
   'MsgBox DbRecordsetQRY.Fields(0).value
    
Salir:
End Function

Public Function getCantidadItems(busqueda() As String, _
                                 ByRef Ampliada As Boolean) As Boolean
Dim sql As String
Dim i As Integer
Dim t As Integer
Dim filtro As String

On Error GoTo Salir
    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function


 
t = UtilitySYS.getArrayLength(busqueda)

For i = 0 To t
  If filtro = "" Then
    filtro = " WHERE (" & _
      " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
      " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
      " Lot.Lote LIKE '%" & busqueda(i) & "%' OR " & _
      " Lot.UF LIKE '%" & busqueda(i) & "%' OR " & _
      " Lot.Calle LIKE '%" & busqueda(i) & "%' ) "
  Else
    filtro = filtro & " AND (" & _
      " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
      " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
      " Lot.Lote LIKE '%" & busqueda(i) & "%' OR " & _
      " Lot.UF LIKE '%" & busqueda(i) & "%' OR " & _
      " Lot.Calle LIKE '%" & busqueda(i) & "%' ) "
  End If
Next
    
If Ampliada And (t > 0) Then ' si es ampliada va a repetir los lotes por la cantidad de personas que lo integren, y todas las relaciones no solo referentes
                             ' exigimos que para la busqueda ampliada tenga algun filtro
        sql = "SELECT Count(*) " & _
           "FROM lot " & _
           "LEFT JOIN (lotper " & _
           "INNER JOIN per ON lotper.personaid = per.PersonaID AND lotper.categoriaid= 18) " & _
           "ON lot.loteid = lotper.loteid " & _
        filtro

Else
    sql = "SELECT Count(*) " & _
           "FROM lot " & _
           "LEFT JOIN (lotper " & _
           "INNER JOIN per ON lotper.personaid = per.PersonaID AND lotper.categoriaid= 18 AND lotper.valorid=1) " & _
           "ON lot.loteid = lotper.loteid " & _
        filtro
End If

DbCommandQRY.CommandText = sql
Set DbRecordsetQRY = DbCommandQRY.Execute
getCantidadItems = Not DbRecordsetQRY.BOF
    
Salir:
End Function

Public Function obtenerLotCat(LoteID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT LotCatVal.CategoriaID FROM LotCatVal WHERE LotCatVal.LoteID = " & LoteID & " AND LotCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerLotCat = False
    Else
        obtenerLotCat = True
    End If
End Function

Public Function obtenerLotCatVal(LoteID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT LotCatVal.ValorID FROM LotCatVal WHERE LotCatVal.LoteID = " & LoteID & " AND LotCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerLotCatVal = False
    Else
        obtenerLotCatVal = True
    End If
End Function



Public Function getListLotPerPrf_con_PersonaID(PersonaID_ As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

'    sql = "SELECT prf.perfilID AS 'PerfilID', per.personaID as 'PersonaID', lotper.CategoriaID as 'CategoriaID', lotper.ValorID as 'ValorID', lotper.FechaInicio as 'FechaInicio', lotper.FechaFin as 'FechaFin', Per.Apellido AS 'Apellido', per.nombre AS 'Nombre', catval.nombre AS 'Relación', prf.nombre AS 'Perfil' " & _
'            " FROM lotper " & _
'            "INNER JOIN per  ON lotper.personaID=per.PersonaID " & _
'            "INNER JOIN catval on (lotper.categoriaID =catval.categoriaID and lotper.valorID = catval.valorID) " & _
'            "INNER JOIN Prf on lotper.perfilID = prf.perfilID " & _
'            "WHERE lotper.LoteID = " & LoteID
    
    sql = "SELECT lotper.loteID, prf.perfilID AS 'PerfilID', lotper.FechaInicio as 'FechaInicio', lotper.FechaFin as 'FechaFin', catval.nombre AS 'Relación', prf.nombre AS 'Perfil' " & _
          " FROM lotper  " & _
          " INNER JOIN catval on (lotper.categoriaID =catval.categoriaID and lotper.valorID = catval.valorID) " & _
          " INNER JOIN Prf on (lotper.perfilID = prf.perfilID) WHERE lotper.PersonaID = " & PersonaID_
 

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

  getListLotPerPrf_con_PersonaID = Not DbRecordsetQRY.BOF
Salir:
  
End Function

Public Function getLotPerPrf_con_PersonaID(ByRef PersonaID_ As Currency, _
                                           ByRef Fecha_Hora As Date) As Boolean
Dim hora_ As Long
Dim Fecha_ As String
Dim dia_ As Long
Dim sql As String

On Error GoTo Salir

    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function


  
  
  hora_ = Format(Fecha_Hora, "HHMM")
  Fecha_ = FF(Fecha_Hora)
  dia_ = (Weekday(Fecha_Hora, vbSunday) - 1) 'domingo es el primer dia de la semana
  'esta funcion entrega dias de 1 - 7 y en el sistema tengo dias de 0 - 6
  
sql = "SELECT top 1 lotper.loteID, prf.perfilID, lotper.FechaInicio, lotper.FechaFin, catval.nombre, prf.nombre " & _
    " FROM ((lotper " & _
    "   INNER JOIN Prf     ON  lotper.perfilID  = Prf.PerfilID)" & _
    "   INNER JOIN PrfVal  ON  lotper.PerfilID  = PrfVal.PerfilID)" & _
    "   INNER JOIN catval  ON (lotper.valorID   = catval.valorID   and catval.categoriaid = 18)" & _
    " WHERE lotper.personaID = " & PersonaID_ & _
      " AND  lotper.FechaInicio <='" & Fecha_ & _
     "' AND  lotper.FechaFin >='" & Fecha_ & _
     "' AND  PrfVal.Dia = " & dia_ & _
      " AND  PrfVal.HoraInicio <=" & hora_ & _
      " AND  PrfVal.HoraFin >= " & hora_
    ''" LIMIT 1 "
  
' Order by acceso limit 1, si una clave pertence a varios grupos, me trae uno solo, el que tenga acceso automatico

 

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

  getLotPerPrf_con_PersonaID = Not DbRecordsetQRY.BOF
Salir:
  
End Function

Public Function getPerPrf_con_PersonaID(ByRef PersonaID_ As Currency, _
                                        ByRef LoteID_ As Long) As Boolean
Dim sql As String

On Error GoTo Salir

    'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

  
sql = "SELECT lotper.loteID, prf.perfilID, lotper.FechaInicio, lotper.FechaFin, catval.nombre, prf.nombre " & _
    " FROM ((lotper " & _
    "   INNER JOIN Prf     ON  lotper.perfilID  = Prf.PerfilID)" & _
    "   INNER JOIN PrfVal  ON  lotper.PerfilID  = PrfVal.PerfilID)" & _
    "   INNER JOIN catval  ON (lotper.valorID   = catval.valorID   and catval.categoriaid = 18)" & _
    " WHERE lotper.personaID = " & PersonaID_ & _
    " AND lotper.loteid = " & LoteID_ '& _
    '" LIMIT 1 "
  
' Order by acceso limit 1, si una clave pertence a varios grupos, me trae uno solo, el que tenga acceso automatico

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    getPerPrf_con_PersonaID = Not DbRecordsetQRY.BOF
    
Salir:
  
End Function







Public Function getLotPerPrfList(LoteID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

'    sql = "SELECT prf.perfilID AS 'PerfilID', per.personaID as 'PersonaID', lotper.CategoriaID as 'CategoriaID', lotper.ValorID as 'ValorID', lotper.FechaInicio as 'FechaInicio', lotper.FechaFin as 'FechaFin', Per.Apellido AS 'Apellido', per.nombre AS 'Nombre', catval.nombre AS 'Relación', prf.nombre AS 'Perfil' " & _
'            " FROM lotper " & _
'            "INNER JOIN per  ON lotper.personaID=per.PersonaID " & _
'            "INNER JOIN catval on (lotper.categoriaID =catval.categoriaID and lotper.valorID = catval.valorID) " & _
'            "INNER JOIN Prf on lotper.perfilID = prf.perfilID " & _
'            "WHERE lotper.LoteID = " & LoteID
    
    sql = "SELECT prf.perfilID AS 'PerfilID', per.personaID as 'PersonaID', lotper.CategoriaID as 'CategoriaID', lotper.ValorID as 'ValorID', lotper.FechaInicio as 'FechaInicio', lotper.FechaFin as 'FechaFin', Per.Apellido AS 'Apellido', per.nombre AS 'Nombre', catval.nombre AS 'Relación', prf.nombre AS 'Perfil' FROM lotper INNER JOIN per  ON (lotper.personaID = per.PersonaID) INNER JOIN catval on (lotper.categoriaID =catval.categoriaID and lotper.valorID = catval.valorID) INNER JOIN Prf on (lotper.perfilID = prf.perfilID) WHERE lotper.LoteID = " & LoteID
 

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getLotPerPrfList = False
    Else
        getLotPerPrfList = True
    End If
End Function

Public Function obtenerCantidadLotes() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT COUNT(*) FROM Lot"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerCantidadLotes = False
    Else
        obtenerCantidadLotes = True
    End If
End Function

Public Function LoteYaExiste(Lote As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Lot.Lote FROM lot WHERE Lot.Lote = '" & Lote & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        LoteYaExiste = False
    Else
        LoteYaExiste = True
    End If
End Function

Public Function UFYaExiste(UF As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Lot.UF FROM lot WHERE Lot.UF = '" & UF & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        UFYaExiste = False
    Else
        UFYaExiste = True
    End If
End Function

Public Function eliminarLotCat(LoteID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "DELETE FROM LotCatVal WHERE LotCatVal.LoteID = " & LoteID & " AND LotCatVal.CategoriaID = " & CategoriaID

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    eliminarLotCat = True
End Function

