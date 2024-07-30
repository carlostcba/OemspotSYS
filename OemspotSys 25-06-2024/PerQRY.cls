VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerQRY"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'Option Explicit
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
Public Function getAdminPersonasList(busqueda() As String, NroPagina As Long) As Boolean
Dim i As Integer
Dim t As Integer
Dim filtro As String
Dim pagina As String
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
     
    t = UtilitySYS.getArrayLength(busqueda)
    
    For i = 0 To t
      If filtro = "" Then
        filtro = " WHERE (" & _
          " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
          " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " CatVal.Nombre LIKE '%" & busqueda(i) & "%' OR " & _
          " perdoccatval.documento LIKE '%" & busqueda(i) & "%' )"
      Else
        filtro = filtro & " AND (" & _
          " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
          " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " CatVal.Nombre LIKE '%" & busqueda(i) & "%' OR " & _
          " perdoccatval.documento LIKE '%" & busqueda(i) & "%' )"
      End If
    Next

    'modificado el string del select
    sql = " SELECT q.PersonaID,q.Apellido + ', ' + q.Nombre AS 'Apellido y Nombre', q.documento FROM ("
    
    sql = sql + " SELECT DISTINCT per.PersonaID,per.Apellido , per.Nombre, catval.Nombre + '  ' + perdoccatval.documento as documento,row_number() over (order by per.Apellido) as rows  FROM Per " & _
          " LEFT JOIN (PerDocCatVal INNER JOIN CatVal  ON(PerDocCatVal.CategoriaID=CatVal.CategoriaID " & _
          " AND PerDocCatVal.ValorID=CatVal.ValorID )) On per.personaID = perdoccatval.personaID " & _
           filtro + " ) as q "
    sql = sql + " WHERE q.rows BETWEEN  " & NroPagina & " AND " & (MAX_GRID_ROWS_SIZE_SYS + NroPagina) & _
      " ORDER BY q.Apellido"
    
    

    
    
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasList = False
    Else
        getAdminPersonasList = True
    End If
End Function



Public Function getCantidadItems(busqueda() As String) As Boolean
Dim i As Integer
Dim t As Integer
Dim filtro As String
Dim sql As String

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
          " CatVal.Nombre LIKE '%" & busqueda(i) & "%' OR " & _
          " perdoccatval.documento LIKE '%" & busqueda(i) & "%' )"
      Else
        filtro = filtro & " AND (" & _
          " Per.Nombre  LIKE '%" & busqueda(i) & "%' OR " & _
          " Per.Apellido LIKE '%" & busqueda(i) & "%' OR  " & _
          " CatVal.Nombre LIKE '%" & busqueda(i) & "%' OR " & _
          " perdoccatval.documento LIKE '%" & busqueda(i) & "%' )"
      End If
    Next
'modificado el string del select
    sql = "SELECT DISTINCT Count(*)  FROM Per " & _
          " LEFT JOIN (PerDocCatVal INNER JOIN CatVal  ON(PerDocCatVal.CategoriaID=CatVal.CategoriaID " & _
          " AND PerDocCatVal.ValorID=CatVal.ValorID  AND CatVal.CategoriaID = 11)) On per.personaID = perdoccatval.personaID " & _
          filtro

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getCantidadItems = False
    Else
        getCantidadItems = True
    End If
End Function


Public Function getAdminPersonasCatList(PersonaID As Long, CategoriaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerCatVal.ValorID AS 'PersonaID', CatVal.Nombre AS 'Categoría' FROM PerCatVal INNER JOIN CatVal ON(PerCatVal.CategoriaID=CatVal.CategoriaID AND PerCatVal.ValorID=CatVal.ValorID) WHERE PerCatVal.PersonaID = " & PersonaID & " AND PerCatVal.CategoriaID = " & CategoriaID & " ORDER BY CatVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasCatList = False
    Else
        getAdminPersonasCatList = True
    End If
End Function

Public Function getAdminPersonasDocList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerDocCatVal.DocumentoID AS 'DocumentoID', PerDocCatVal.ValorID AS 'ValorID', CatVal.Nombre AS 'Tipo de Documento', PerDocCatVal.Documento AS 'Documento' FROM PerDocCatVal INNER JOIN CatVal ON(PerDocCatVal.CategoriaID=CatVal.CategoriaID AND PerDocCatVal.ValorID=CatVal.ValorID) WHERE PerDocCatVal.PersonaID = " & PersonaID & " AND PerDocCatVal.CategoriaID = " & CAT_TIPO_DOC_PERSONA & " ORDER BY CatVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasDocList = False
    Else
        getAdminPersonasDocList = True
    End If
End Function

Public Function getAdminPersonasTelList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerTelCatVal.TelefonoID AS 'TelefonoID', PerTelCatVal.ValorID AS 'ValorID', CatVal.Nombre AS 'Tipo de Teléfono', PerTelCatVal.Telefono AS 'Teléfono' FROM PerTelCatVal INNER JOIN CatVal ON(PerTelCatVal.CategoriaID=CatVal.CategoriaID AND PerTelCatVal.ValorID=CatVal.ValorID) WHERE PerTelCatVal.PersonaID = " & PersonaID & " AND PerTelCatVal.CategoriaID = " & CAT_TIPO_TEL_PERSONA & " ORDER BY CatVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasTelList = False
    Else
        getAdminPersonasTelList = True
    End If
End Function

Public Function getAdminPersonasMaiList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerMaiCatVal.EmailID AS 'EmailID', PerMaiCatVal.ValorID AS 'ValorID', CatVal.Nombre AS 'Tipo de E-mail', PerMaiCatVal.Email AS 'E-mail' FROM PerMaiCatVal INNER JOIN CatVal ON(PerMaiCatVal.CategoriaID=CatVal.CategoriaID AND PerMaiCatVal.ValorID=CatVal.ValorID) WHERE PerMaiCatVal.PersonaID = " & PersonaID & " AND PerMaiCatVal.CategoriaID = " & CAT_TIPO_EMAIL_PERSONA & " ORDER BY CatVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasMaiList = False
    Else
        getAdminPersonasMaiList = True
    End If
End Function

'Public Function getAdminPersonasDirList(PersonaID As Long) As Boolean
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    Dim sql As String
'
'    sql = "SELECT PerDirCatVal.DireccionID AS 'DireccionID', PerDirCatVal.ValorID AS 'ValorID', CatVal.Nombre AS 'Tipo de Dirección', CONCAT( PerDirCatVal.Calle, ' ', PerDirCatVal.Numero, ' ', PerDirCatVal.Piso, ' / ', PerDirCatVal.Oficina, ', ', PerDirCatVal.Localidad, ', ' , PerDirCatVal.Provincia, ' (', PerDirCatVal.CodigoPostal, '), ', PerDirCatVal.Pais, '.' ) AS 'Dirección' FROM PerDirCatVal INNER JOIN CatVal ON(PerDirCatVal.CategoriaID=CatVal.CategoriaID AND PerDirCatVal.ValorID=CatVal.ValorID) WHERE PerDirCatVal.PersonaID = " & PersonaID & " AND PerDirCatVal.CategoriaID = " & CAT_TIPO_DIR_PERSONA & " ORDER BY CatVal.Nombre"
'
'    DbCommandQRY.CommandText = sql
'    Set DbRecordsetQRY = DbCommandQRY.Execute
'
'    If DbRecordsetQRY.BOF Then
'        getAdminPersonasDirList = False
'    Else
'        getAdminPersonasDirList = True
'    End If
'End Function

Public Function getAdminPersonasDirList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerDirCatVal.DireccionID AS 'DireccionID', PerDirCatVal.ValorID AS 'ValorID', CatVal.Nombre AS 'Tipo de Dirección', PerDirCatVal.Numero AS 'Dirección' FROM PerDirCatVal INNER JOIN CatVal ON(PerDirCatVal.CategoriaID=CatVal.CategoriaID AND PerDirCatVal.ValorID=CatVal.ValorID) WHERE PerDirCatVal.PersonaID = " & PersonaID & " AND PerDirCatVal.CategoriaID = " & CAT_TIPO_DIR_PERSONA & " ORDER BY CatVal.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasDirList = False
    Else
        getAdminPersonasDirList = True
    End If
End Function

Public Function getAdminPersonasPrxList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerPrx.PropiedadID AS 'PropiedadID', Prx.Nombre AS 'Propiedad', PerPrx.Valor AS 'Valor' FROM PerPrx INNER JOIN Prx ON(PerPrx.PropiedadID=Prx.PropiedadID) WHERE PerPrx.PersonaID = " & PersonaID & " ORDER BY Prx.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasPrxList = False
    Else
        getAdminPersonasPrxList = True
    End If
End Function

Public Function getAdminPersonasGruList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerGru.GrupoID AS 'GrupoID', Gru.Nombre AS 'Grupo', CatVal.Nombre AS 'Tipo de Relación con Grupo' FROM (PerGru INNER JOIN Gru ON(PerGru.GrupoID=Gru.GrupoID)) INNER JOIN CatVal ON(PerGru.CategoriaID=CatVal.CategoriaID AND PerGru.ValorID=CatVal.ValorID) WHERE PerGru.PersonaID = " & PersonaID & " ORDER BY Gru.Nombre"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasGruList = False
    Else
        getAdminPersonasGruList = True
    End If
End Function

Public Function getAdminPersonasIdnList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerIdn.IdentificacionID AS 'IdentificacionID', Idn.Numero AS 'Número' FROM PerIdn INNER JOIN Idn ON(PerIdn.IdentificacionID=Idn.IdentificacionID) WHERE PerIdn.PersonaID = " & PersonaID & " ORDER BY Idn.Numero"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasIdnList = False
    Else
        getAdminPersonasIdnList = True
    End If
End Function

Public Function getAdminPersonasAutList(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT PerAut.AutoID AS 'AutoID', Aut.Patente AS 'Patente' FROM PerAut INNER JOIN Aut ON(PerAut.AutoID=Aut.AutoID) WHERE PerAut.PersonaID = " & PersonaID & " ORDER BY Aut.Patente"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getAdminPersonasAutList = False
    Else
        getAdminPersonasAutList = True
    End If
End Function

Public Function obtenerCantidadPersonas() As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT COUNT(*) FROM Per"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        obtenerCantidadPersonas = False
    Else
        obtenerCantidadPersonas = True
    End If
End Function

Public Function buscarPersonaPorDNI(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
    
    sql = "SELECT Per.Nombre, Per.Apellido, PerDocCatVal.Documento, Per.FechaNacimiento, Per.Sexo, Per.Pais, Per.PersonaID FROM PerDocCatVal INNER JOIN Per ON(PerDocCatVal.PersonaID=Per.PersonaID) WHERE PerDocCatVal.CategoriaID = " & CAT_TIPO_DOC_PERSONA & " AND PerDocCatVal.ValorID =  " & CAT_VAL_TIPO_DOC_DNI & " AND PerDocCatVal.Documento = '" & busqueda & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    
    If DbRecordsetQRY.BOF Then
        buscarPersonaPorDNI = False
    Else
        buscarPersonaPorDNI = True
    End If
End Function

Public Function buscarPersonaPorDocumento(ByRef tipo_documento_ As Long, _
                                          ByRef Numero_ As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
    
    sql = "SELECT Per.Nombre, Per.Apellido, PerDocCatVal.Documento, Per.FechaNacimiento, Per.Sexo, Per.Pais, Per.PersonaID " & _
         "FROM PerDocCatVal INNER JOIN Per ON(PerDocCatVal.PersonaID=Per.PersonaID) " & _
         "WHERE PerDocCatVal.CategoriaID = " & CAT_TIPO_DOC_PERSONA & _
         " AND PerDocCatVal.ValorID =  " & tipo_documento_ & _
         " AND PerDocCatVal.Documento = '" & Numero_ & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    
    If DbRecordsetQRY.BOF Then
        buscarPersonaPorDocumento = False
    Else
        buscarPersonaPorDocumento = True
    End If
End Function


'Public Function buscarPersonaPorPersonaID(busqueda As String) As Boolean
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function
'    Dim sql As String
'
'    sql = "SELECT Per.Nombre, Per.Apellido, PerDocCatVal.Documento, Per.FechaNacimiento, Per.Sexo, Per.Pais, Per.PersonaID FROM PerDocCatVal INNER JOIN Per ON(PerDocCatVal.PersonaID=Per.PersonaID) WHERE PerDocCatVal.CategoriaID = " & CAT_TIPO_DOC_PERSONA & " AND PerDocCatVal.ValorID =  " & CAT_VAL_TIPO_DOC_DNI & " AND Per.PersonaID = " & busqueda
'
'    DbCommandQRY.CommandText = sql
'    Set DbRecordsetQRY = DbCommandQRY.Execute
'
'
'    If DbRecordsetQRY.BOF Then
'        buscarPersonaPorPersonaID = False
'    Else
'        buscarPersonaPorPersonaID = True
'    End If
'End Function

''nuevo
Public Function buscarPersonaPorPersonaID(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
    
    sql = "SELECT Per.Nombre, Per.Apellido, " & _
          "(SELECT CONCAT(CatVal.Nombre, '  ', PerDocCatVal.Documento) FROM  " & _
          "(PerDocCatVal INNER JOIN CatVal ON(PerDocCatVal.CategoriaID=CatVal.CategoriaID  " & _
          "AND PerDocCatVal.ValorID=CatVal.ValorID))  " & _
          " WHERE CatVal.CategoriaID = 11  " & _
          " AND PerDocCatVal.PersonaID = Per.PersonaID) AS 'Documento', " & _
          "Per.FechaNacimiento, Per.Sexo, Per.Pais, Per.PersonaID FROM  Per WHERE Per.PersonaID = " & busqueda

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute
    
    
    If DbRecordsetQRY.BOF Then
        buscarPersonaPorPersonaID = False
    Else
        buscarPersonaPorPersonaID = True
    End If
End Function



Public Function buscarTicketIngresoPorPersonaID(busqueda As String) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT   tck.ticketid " & _
          "FROM    tck " & _
          "INNER JOIN  tckper on(tck.ticketid = tckper.ticketid) " & _
          "WHERE tckper.PersonaID = '" & busqueda & "'"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    buscarTicketIngresoPorPersonaID = Not DbRecordsetQRY.EOF
    
Salir:
End Function

Public Function buscarPersonaPreautorizada(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT Per.Nombre, Per.Apellido, " & _
          "(SELECT (CatVal.Nombre + '  ' + PerDocCatVal.Documento) FROM  " & _
          "(PerDocCatVal INNER JOIN CatVal ON(PerDocCatVal.CategoriaID=CatVal.CategoriaID  " & _
          "AND PerDocCatVal.ValorID=CatVal.ValorID))  " & _
          " WHERE CatVal.CategoriaID = 11  " & _
          " AND PerDocCatVal.PersonaID = Per.PersonaID ) AS 'Documento', " & _
          "Per.PersonaID FROM  Per WHERE Per.PersonaID = " & busqueda
          ''limit 1

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute


    If DbRecordsetQRY.BOF Then
        buscarPersonaPreautorizada = False
    Else
        buscarPersonaPreautorizada = True
    End If
End Function

Public Function buscarPersonaPreautorizadaEspecifica(busqueda As String) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String


    
    sql = "SELECT per.nombre, per.apellido, perdoccatval.documento, perdoccatval.valorid " & _
          "FROM per " & _
          "INNER JOIN perdoccatval " & _
          "ON (per.personaID = perdoccatval.personaID) " & _
          "WHERE perdoccatval.CategoriaID = 11 AND per.PersonaID = " & busqueda
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute


    If DbRecordsetQRY.BOF Then
        buscarPersonaPreautorizadaEspecifica = False
    Else
        buscarPersonaPreautorizadaEspecifica = True
    End If
End Function

Public Function getPersonasGrupoList(GrupoID As Long) As Boolean
On Error GoTo Salir
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String

    sql = "SELECT pergru.PersonaID, CONCAT(Per.Apellido, ', ', Per.Nombre) AS 'Persona' " & _
          " FROM Per " & _
          " INNER JOIN pergru ON(Per.PersonaID=pergru.PersonaID) " & _
          " WHERE Pergru.GrupoID = " & GrupoID & _
          " ORDER BY persona"

    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    getPersonasGrupoList = Not DbRecordsetQRY.BOF

Salir:

End Function


Public Function getUltimaVisitaPersona(PersonaID As Long) As Boolean
        'afa 07/2009 para control de conexion a la base
    If Not Chequear_conexion_Motor_MySQL Then Exit Function
    
    If DbCommandQRY.ActiveConnection Is Nothing Then DbCommandQRY.ActiveConnection = DbConnectionSYS
'    If DbCommandQRY.ActiveConnection Is Nothing Then Exit Function

    Dim sql As String
    Dim sMuestraPat As String
    Dim oRs As New ADODB.RecordSet
    
    sql = "SELECT valor FROM CfgOpt WHERE Nombre = 'MUESTRA_PATENTE_TCK'"
    
    oRs.Open sql, DbConnectionSYS
    
    If Not oRs.EOF Then
        sMuestraPat = IIf(oRs.Fields(0) = 1, "pat.valor", "''")
    Else
        sMuestraPat = "pat.valor"
    End If
    
    Set oRs = Nothing
    
    sql = "SELECT top 1 " & sMuestraPat & " patente, obs.valor observaciones " & _
          "FROM tckhst " & _
          "INNER JOIN tckper ON (tckhst.ticketid = tckper.ticketid) " & _
          "LEFT JOIN tckprx pat on (tckhst.ticketid = pat.ticketid and pat.propiedadid = 4)" & _
          "LEFT JOIN tckprx obs on (tckhst.ticketid = obs.ticketid and obs.propiedadid = 10) " & _
          "WHERE tckper.PersonaID = " & PersonaID & " " & _
          "ORDER BY tckhst.FechaHoraSalida DESC " ''LIMIT 1"
    
    DbCommandQRY.CommandText = sql
    Set DbRecordsetQRY = DbCommandQRY.Execute

    If DbRecordsetQRY.BOF Then
        getUltimaVisitaPersona = False
    Else
        getUltimaVisitaPersona = True
    End If
End Function
