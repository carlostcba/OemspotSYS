VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ClsCamping"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'''Propiedades
Public Nombre As String
Public Apellido As String
Public TipoDoc As String
Public NroDoc As String

Public NroDocEdit As String
Private IDNroDocEdit As Long

Public NroTarjeta As String
Public NroTarjetaEdit As String
Public grupo As String

Public Marca As String
Public MarcaEdit As String

Public Color As String
Public ColorEdit As String

Public Patente As String
Public PatenteEdit As String


Public Relacion As String
Public FechaEntrada As Date
Public HoraEntrada As Date
Public FechaSalida As Date
Public HoraSalida As Date
Public IdPersona As Long
Public IdPersonaNext As Long
Public Lote As String
Public Perfil As String

Public PerfilID As Long
Public PerfilIDEdit As Long

Public GrupoID As Long
Public GrupoIDEdit As Long

Public RelacionId As Long
Public RelacionValor As Long
Public PersonaID As Long

Public IdValorTipoDoc As Long
Public IdCategoriaDoc As Long

''Propiedades de Grupo para realizar Inser
Public IdGrupo As Long
Public IdLote As Long
Public IdLoteEdit As Long

Public IdCategoriaGrup As Long
Public IdValorGrup As Long

Public aLote As Variant
Public aRelacion As Variant
'''''''''''''''''''''''''''''
Private oRs As New ADODB.RecordSet
Private IdTarjeta As Long
Private IdTarjetaEdit As Long

Private IdAuto As Long
Private IdAutoEdit As Long
Private idValorIdMarca As Long
Private idValorIdColor As Long

Dim AdminPerfilesService As New AdminPerfilesSVR
Dim AdminGruposService As New AdminGruposSVR
Dim AdminIdentificacionesService As New AdminIdentificacionesSVR
Dim AdminAutosService As New AdminAutosSVR
Dim sSql As String


Sub GetDataCamping(ByVal IdPersona As Long)

On Error GoTo Error:

    
    Exit Sub
Error:
End Sub

Sub LoadCampingData()
On Error GoTo Error:
    
    Set oRs = Nothing
    ''En principio se pone en el codigo ,pero esto tendria que estar en un SP
    sSql = "SELECT Per.PersonaID,  Per.Nombre ,"
    sSql = sSql & "per.Apellido , PerDocCatVal.Documento , CatVal.Nombre as TipoDoc , Idn.Numero as Tarjeta,"
    sSql = sSql & "gru.Nombre as Grupo , AUTO.Patente, AUTO.Color2, AUTO.Nombre as Marca, per.FechaInicio, per.FechaFin "
    sSql = sSql & ", ((Select max(Per.PersonaID) from Per) + 1) as Next "
    sSql = sSql & ", lot.Lote , CatRel.Nombre as Referencia, Prf.Nombre as Perfil "
    sSql = sSql & "FROM Per Left join Peraut on PerAut.PersonaID = per.PersonaID "
    sSql = sSql & "Left Join "
    sSql = sSql & "( select Aut.AutoID , aut.Patente , catval.Nombre , color.nombre as Color2 from Aut "
    sSql = sSql & "   inner join autcatval on autcatval.AutoID = Aut.AutoID "
    sSql = sSql & "Inner Join catval on autcatval.CategoriaID = catval.CategoriaID and autcatval.ValorID = catval.ValorID and catval.CategoriaID = 19 "
    sSql = sSql & "Inner Join "
    sSql = sSql & "(select Aut.AutoID , aut.Patente , catval.Nombre "
    sSql = sSql & "from Aut inner join autcatval on autcatval.AutoID = Aut.AutoID "
    sSql = sSql & "Inner Join catval on autcatval.CategoriaID = catval.CategoriaID and autcatval.ValorID = catval.ValorID "
    sSql = sSql & "and catval.CategoriaID = 20 ) as Color "
    sSql = sSql & "On    color.autoid =   Aut.AutoID  ) as Auto "
    sSql = sSql & "on  Auto.autoid =   PerAut.AutoID "
    sSql = sSql & "Inner Join perIdn on PerIdn.PersonaID = per.PersonaID "
    sSql = sSql & "Inner Join Idn ON PerIdn.IdentificacionID=Idn.IdentificacionID "
'    sSql = sSql & "left Join perIdn on PerIdn.PersonaID = per.PersonaID "
'    sSql = sSql & "left Join Idn ON PerIdn.IdentificacionID=Idn.IdentificacionID "
    sSql = sSql & "Inner Join PerGru On PerGru.PersonaID  = per.PersonaID "
    sSql = sSql & "Inner Join Gru on PerGru.GrupoID =Gru.GrupoID "
    '''''
    sSql = sSql & "Inner Join lotper on Per.PersonaID = lotper.PersonaID "
    sSql = sSql & "Inner Join lot on lotper.LoteID = lot.LoteID "
    sSql = sSql & "Inner Join (Select CategoriaID , nombre , ValorId from catval where catval.CategoriaID = 18) as CatRel on lotper.ValorID  = CatRel.ValorId "
    sSql = sSql & "Inner Join Prf on Prf.PerfilID = lotper.PerfilID "
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    sSql = sSql & "Inner Join PerDocCatVal on PerDocCatVal.PersonaID = per.PersonaID "
    sSql = sSql & "inner Join CatVal on catval.ValorID = PerDocCatVal.ValorID and PerDocCatVal.CategoriaID = CatVal.CategoriaID "
    sSql = sSql & "Where PerDocCatVal.CategoriaID = 11 "
    'If PersonaID <> 0 Then sSql = sSql & " and Per.PersonaID = " & PersonaID
    sSql = sSql & " Group by Per.PersonaID, "
    sSql = sSql & "Per.Nombre , "
    sSql = sSql & "per.Apellido , PerDocCatVal.Documento , "
    sSql = sSql & "CatVal.Nombre , Idn.Numero , gru.Nombre, "
    sSql = sSql & "AUTO.Patente , AUTO.Color2, AUTO.Nombre, "
    sSql = sSql & "per.FechaInicio , per.FechaFin , lot.Lote , CatRel.Nombre , Prf.Nombre"
    
    sSql = sSql & " order by per.PersonaID "
    
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        CargarProperties oRs
    End If
    
    Exit Sub
Error:
    MsgBox Err.Description, vbCritical

End Sub

Sub InsertCamping()
Dim AdminPersonasService As New AdminPersonasSVR
Dim AdminLotesService As New AdminLotesSVR

On Error GoTo Error:
     DbConnectionSYS.BeginTrans
     
     Me.IdPersonaNext = AdminPersonasService.PersonaOrm.crearPersona(Me.Apellido, Me.Nombre, "", "", "", Me.FechaEntrada, Me.FechaSalida, Me.HoraSalida, Me.HoraEntrada)
     AdminPersonasService.PersonaOrm.crearPerDocCatVal Me.IdPersonaNext, Me.IdCategoriaDoc, Me.IdValorTipoDoc, Me.NroDoc
     
     AdminPersonasService.PersonaOrm.crearPerGru Me.IdPersonaNext, Me.GrupoID, CAT_TIPO_RELACION_GRUPO, Me.RelacionValor ''RelacionId    'Me.IdValorGrup
     AdminLotesService.LotperOrm.crearLotPerPrf Me.IdLote, Me.IdPersonaNext, Me.PerfilID, CAT_TIPO_RELACION_GRUPO, Me.RelacionValor, Me.FechaEntrada, Me.FechaSalida
     
     ''Creamos Tarjeta En caso que no exista
     If IdTarjeta = 0 Then
        IdTarjeta = AdminIdentificacionesService.IdentificacionOrm.crearIdentificacion(Me.NroTarjeta)
        AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal IdTarjeta, CAT_UNIDAD_IDENTIFICACION, 1
        AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal IdTarjeta, CAT_IDENTIFICACION, 1
     End If
     
     AdminPersonasService.PersonaOrm.crearPerIdn Me.IdPersonaNext, IdTarjeta
     
     ''Creamos Auto
     If Me.Patente <> "" Then
         If IdAuto = 0 Then
            IdAuto = AdminAutosService.AutosOrm.crearAuto(Me.Patente)
            'AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_TIPO_AUTO, Combo1.ItemData(Combo1.ListIndex)
            
            If Not ExisteMarca Then
                CreateMarcaAuto
            End If
            AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_MARCA_AUTO, idValorIdMarca
            
            'AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_MODELO_AUTO, Combo3.ItemData(Combo3.ListIndex)
            
            If Not ExisteColor Then
                CreateColorAuto
            End If
            AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_COLOR_AUTO, idValorIdColor
         End If
         
         ''Asignamos Persona al Auto
        AdminPersonasService.PersonaOrm.crearPerAut Me.IdPersonaNext, IdAuto
    End If
    
    DbConnectionSYS.CommitTrans
    
    Exit Sub
Error:
    MsgBox Err.Description, vbCritical
    DbConnectionSYS.RollbackTrans
    'Resume 0
    
End Sub

Sub UpdateCamping(ByVal IdPersona As Long)
On Error GoTo Error:

    
    
    Exit Sub
Error:
End Sub

Private Sub CargarProperties(ByVal oRs As ADODB.RecordSet)
    Me.Nombre = oRs.Fields("Nombre")
    Me.Apellido = oRs.Fields("Apellido")
    Me.TipoDoc = IIf(IsNull(oRs.Fields("TipoDoc")), "", oRs.Fields("TipoDoc"))
    Me.NroDoc = IIf(IsNull(oRs.Fields("Documento")), "", oRs.Fields("Documento"))
    Me.NroTarjeta = IIf(IsNull(oRs.Fields("Tarjeta")), "", oRs.Fields("Tarjeta"))
    Me.grupo = IIf(IsNull(oRs.Fields("Grupo")), "", oRs.Fields("gRUPO"))
    Me.Lote = IIf(IsNull(oRs.Fields("Lote")), "", oRs.Fields("Lote"))
    Me.Relacion = IIf(IsNull(oRs.Fields("Referencia")), "", oRs.Fields("Referencia"))
    Me.Perfil = IIf(IsNull(oRs.Fields("Perfil")), "", oRs.Fields("Perfil"))
    Me.Marca = IIf(IsNull(oRs.Fields("Marca")), "", oRs.Fields("Marca"))
    Me.Color = IIf(IsNull(oRs.Fields("Color2")), "", oRs.Fields("Color2"))
    Me.Patente = IIf(IsNull(oRs.Fields("Patente")), "", oRs.Fields("Patente"))
    Me.FechaEntrada = oRs.Fields("FechaInicio")
    Me.HoraEntrada = Format(oRs.Fields("FechaInicio"), "HH:mm:ss")
    Me.FechaSalida = oRs.Fields("FechaFin")
    Me.HoraSalida = Format(oRs.Fields("FechaFin"), "HH:mm:ss")
    Me.IdPersona = oRs.Fields("PersonaID")
    Me.IdPersonaNext = oRs.Fields("Next")
End Sub
Sub Siguiente()
    If Not oRs.EOF Then oRs.MoveNext
    If Not oRs.EOF Then CargarProperties oRs
End Sub
Sub Posterior()
    If Not oRs.BOF Then oRs.MovePrevious
    If Not oRs.BOF Then CargarProperties oRs
End Sub
Sub Ultimo()
    If Not oRs.EOF Then oRs.MoveLast
    If Not oRs.EOF Then CargarProperties oRs
End Sub
Sub Primiero()
    If Not oRs.BOF Then oRs.MoveFirst
    If Not oRs.BOF Then CargarProperties oRs
End Sub
''Esto esta mal tendria que separarlo en una dll
''o ocx pero estan mal echo los metodos de AdminPerfiles
Function getPerfiles() As String
    Unload AdminPerfilesMOD
    Set AdminPerfilesMOD.ParentWindow = Me
    AdminPerfilesMOD.ReadOnly = True
    AdminPerfilesMOD.Seleccion = True
    AdminPerfilesMOD.Show vbModal
    getPerfiles = ValidatePerfil
End Function
Function ValidatePerfil(Optional sText As String) As String
On Error Resume Next
    If sText = "" Then
        ValidatePerfil = AdminPerfilesService.PerfilOrm.getDescription(PerfilID)
    Else
        ValidatePerfil = ValidatePerfilText(sText)
    End If
End Function
Private Function ValidatePerfilText(ByVal sText As String) As String
Dim oRs As New ADODB.RecordSet
    sSql = "SELECT *  FROM Prf WHERE Nombre = '" & sText & "'"
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        ValidatePerfilText = oRs.Fields("Nombre")
        Me.PerfilID = oRs.Fields("PerfilID")
    End If
    
    Set oRs = Nothing
    
End Function
Function getGrupos() As String
    Unload AdminGruposMOD
    Set AdminGruposMOD.ParentWindow = Me
    AdminGruposMOD.Seleccion = True
    Unload AdminGruposMOD
    AdminGruposMOD.Show vbModal
    getGrupos = ValidateGrupo
End Function
Function ValidateGrupo(Optional sText As String) As String
On Error Resume Next
    If sText = "" Then
        ValidateGrupo = AdminGruposService.GruposOrm.obtenerGrupo(GrupoID).Nombre
    Else
        ValidateGrupo = ValidateGrupoText(sText)
    End If
End Function
Private Function ValidateGrupoText(ByVal sText As String) As String
Dim oRs As New ADODB.RecordSet

    sSql = "SELECT Gru.GrupoID AS 'GrupoID', Gru.Nombre AS 'Nombre', (SELECT a.Nombre FROM GruCatVal INNER JOIN CatVal a ON(GruCatVal.CategoriaID=a.CategoriaID AND GruCatVal.ValorID=a.ValorID) WHERE GruCatVal.GrupoID = Gru.GrupoID AND a.CategoriaID = " & CAT_TIPO_ACCESO_GRUPO & ") AS 'Tipo de Acceso de Grupo' FROM Gru WHERE Gru.Nombre = '" & sText & "' ORDER BY Gru.Nombre "
        oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        ValidateGrupoText = oRs.Fields("Nombre")
        Me.GrupoID = oRs.Fields("GrupoID")
    End If
    
    Set oRs = Nothing
End Function
''Procedimiento Inutil''''
Sub UpdateWindow()

End Sub
''''''''''''''''''''''''''''

Function ValidateTarjeta(ByVal sTarjeta As String) As Boolean

    If ValidarTarjetaAsignada(sTarjeta) Then
        ValidateTarjeta = True
        MsgBox "La Tarjeta que Ingreso ya esta Asignada", vbInformation, "Atención"
        Exit Function
    End If

    ''1 = "Proximidad"
    IdTarjeta = 0
    If AdminIdentificacionesService.ExisteIdentificacion_Numero_Tipo(sTarjeta, 1) Then
        IdTarjeta = GetIdTarjeta(sTarjeta)
    End If
    
    
End Function

Private Function ValidarTarjetaAsignada(ByVal sTarjeta As String) As Boolean
Dim oRs As New ADODB.RecordSet

    sSql = "SELECT PerIdn.PersonaID FROM PerIdn "
    sSql = sSql & " Inner Join Per on per.PersonaID = peridn.PersonaID"
    sSql = sSql & " Inner Join  idn on peridn.IdentificacionID = idn.IdentificacionID "
    sSql = sSql & " WHERE idn.Numero = '" & sTarjeta & "'"
    
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        ValidarTarjetaAsignada = True
    End If
    
    Set oRs = Nothing
End Function

Private Function GetIdTarjeta(sTarjeta) As Long
Dim oRs As New ADODB.RecordSet

    sSql = "SELECT IdentificacionID FROM idn "
    sSql = sSql & " WHERE idn.Numero = '" & sTarjeta & "'"
    
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        GetIdTarjeta = oRs.Fields(0)
    End If
    
    Set oRs = Nothing
End Function
Function ValidateAuto(ByVal sPatente As String) As Boolean

    If ValidateAutoAsignado(sPatente) Then
        ValidateAuto = True
        MsgBox "El auto que esta Intentando Ingresar Ya fue Asignado ", vbInformation, "Atención"
        Exit Function
    End If
    
    IdAuto = GetIdAuto(sPatente)
    
End Function
Private Function ValidateAutoAsignado(sPatente) As Boolean
Dim oRs As New ADODB.RecordSet
    
    sSql = "select peraut.autoid from peraut Inner Join per on peraut.personaId = per.PersonaID "
    sSql = sSql & "Inner Join Aut on peraut.autoid = aut.autoid "
    sSql = sSql & " where aut.patente = '" & sPatente & "'"
    
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        ValidateAutoAsignado = True
    End If
    
    Set oRs = Nothing
End Function
Private Function GetIdAuto(sPatente) As Long
Dim oRs As New RecordSet

    sSql = "Select autoid From Aut "
    sSql = sSql & " Where patente = '" & sPatente & "'"
    
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        GetIdAuto = oRs.Fields(0)
    End If
    
End Function

Private Function ExisteMarca() As Boolean
Dim oRs As New ADODB.RecordSet
    
    sSql = "SELECT ValorID FROM CatVal WHERE CatVal.CategoriaID = 19 and Nombre = '" & Me.Marca & "' "
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        idValorIdMarca = oRs.Fields("ValorID")
        ExisteMarca = True
    End If
    
    Set oRs = Nothing
End Function
Private Function ExisteColor() As Boolean
Dim oRs As New ADODB.RecordSet

    sSql = "SELECT ValorID FROM CatVal WHERE CatVal.CategoriaID = 20 and Nombre = '" & Me.Color & "' "
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        idValorIdColor = oRs.Fields("ValorID")
        ExisteColor = True
    End If
    
    Set oRs = Nothing
End Function

Private Sub CreateMarcaAuto()
Dim oRs As New ADODB.RecordSet

On Error GoTo Error

    sSql = "Select Max(Valorid) from Catval Where CategoriaID = " & CAT_MARCA_AUTO
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        idValorIdMarca = (oRs.Fields(0) + 1)
    End If
    
    Set oRs = Nothing
    
    sSql = "Insert Into CatVal (CategoriaID , ValorID , Nombre , SystemParameter) "
    sSql = sSql & " Values(" & CAT_MARCA_AUTO & "," & idValorIdMarca & ",'" & Me.Marca & "' , '2')"
    
    DbConnectionSYS.Execute sSql
    
    Exit Sub
    
Error:
    MsgBox Err.Description, vbCritical
    
End Sub
Private Sub CreateColorAuto()
Dim oRs As New ADODB.RecordSet

On Error GoTo Error

    sSql = "Select Max(Valorid) from Catval Where CategoriaID = " & CAT_COLOR_AUTO
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        idValorIdColor = (oRs.Fields(0) + 1)
    End If
    
    Set oRs = Nothing
    
    sSql = "Insert Into CatVal (CategoriaID , ValorID , Nombre , SystemParameter) "
    sSql = sSql & " Values(" & CAT_COLOR_AUTO & "," & idValorIdColor & ",'" & Me.Color & "' , '2')"
    
    DbConnectionSYS.Execute sSql
    
    Exit Sub
    
Error:
    MsgBox Err.Description, vbCritical
End Sub

Sub GetPersonas()
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Unload AdminPersonasMOD
    Set AdminPersonasMOD.ParentWindow = Me
    AdminPersonasMOD.ReadOnly = False
    AdminPersonasMOD.Seleccion = False
    Unload AdminPersonasMOD
    AdminPersonasMOD.Show vbModal
    
    SelectPersona PersonaID
'    oRs.MoveFirst
'    oRs.Find "PersonaID = " & PersonaID
'    If Not oRs.EOF Then
'        CargarProperties
'    End If
    'LoadCampingData
End Sub
Sub SelectPersona(IdPersona, Optional bPost As Boolean)
Dim oRsa As New ADODB.RecordSet

    If Not bPost Then
        sSql = "SELECT Per.PersonaID,  Per.Nombre ,"
        sSql = sSql & "per.Apellido , PerDocCatVal.Documento , CatVal.Nombre as TipoDoc , Idn.Numero as Tarjeta,"
        sSql = sSql & "gru.Nombre as Grupo , AUTO.Patente, AUTO.Color2, AUTO.Nombre as Marca, per.FechaInicio, per.FechaFin "
        sSql = sSql & ", ((Select max(Per.PersonaID) from Per) + 1) as Next "
        sSql = sSql & ", lot.Lote , CatRel.Nombre as Referencia, Prf.Nombre as Perfil "
        sSql = sSql & "FROM Per Left join Peraut on PerAut.PersonaID = per.PersonaID "
        sSql = sSql & "Left Join "
        sSql = sSql & "( select Aut.AutoID , aut.Patente , catval.Nombre , color.nombre as Color2 from Aut "
        sSql = sSql & "   inner join autcatval on autcatval.AutoID = Aut.AutoID "
        sSql = sSql & "Inner Join catval on autcatval.CategoriaID = catval.CategoriaID and autcatval.ValorID = catval.ValorID and catval.CategoriaID = 19 "
        sSql = sSql & "Inner Join "
        sSql = sSql & "(select Aut.AutoID , aut.Patente , catval.Nombre "
        sSql = sSql & "from Aut inner join autcatval on autcatval.AutoID = Aut.AutoID "
        sSql = sSql & "Inner Join catval on autcatval.CategoriaID = catval.CategoriaID and autcatval.ValorID = catval.ValorID "
        sSql = sSql & "and catval.CategoriaID = 20 ) as Color "
        sSql = sSql & "On    color.autoid =   Aut.AutoID  ) as Auto "
        sSql = sSql & "on  Auto.autoid =   PerAut.AutoID "
    '    sSql = sSql & "Inner Join perIdn on PerIdn.PersonaID = per.PersonaID "
    '    sSql = sSql & "Inner Join Idn ON PerIdn.IdentificacionID=Idn.IdentificacionID "
        sSql = sSql & "left Join perIdn on PerIdn.PersonaID = per.PersonaID "
        sSql = sSql & "left Join Idn ON PerIdn.IdentificacionID=Idn.IdentificacionID "
        sSql = sSql & "Left Join PerGru On PerGru.PersonaID  = per.PersonaID "
        sSql = sSql & "Left Join Gru on PerGru.GrupoID =Gru.GrupoID "
        '''''
        sSql = sSql & "Left Join lotper on Per.PersonaID = lotper.PersonaID "
        sSql = sSql & "Left Join lot on lotper.LoteID = lot.LoteID "
        sSql = sSql & "Left Join (Select CategoriaID , nombre , ValorId from catval where catval.CategoriaID = 18) as CatRel on lotper.ValorID  = CatRel.ValorId "
        sSql = sSql & "Left Join Prf on Prf.PerfilID = lotper.PerfilID "
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        sSql = sSql & "Left Join PerDocCatVal on PerDocCatVal.PersonaID = per.PersonaID "
        sSql = sSql & "left Join CatVal on catval.ValorID = PerDocCatVal.ValorID and PerDocCatVal.CategoriaID = CatVal.CategoriaID "
        sSql = sSql & "Where "
        '''PerDocCatVal.CategoriaID = 11 and"
        sSql = sSql & "  Per.PersonaID = " & IdPersona
        sSql = sSql & " Group by Per.PersonaID, "
        sSql = sSql & "Per.Nombre , "
        sSql = sSql & "per.Apellido , PerDocCatVal.Documento , "
        sSql = sSql & "CatVal.Nombre , Idn.Numero , gru.Nombre, "
        sSql = sSql & "AUTO.Patente , AUTO.Color2, AUTO.Nombre, "
        sSql = sSql & "per.FechaInicio , per.FechaFin , lot.Lote , CatRel.Nombre , Prf.Nombre"
        
        sSql = sSql & " order by per.PersonaID "
        
        oRsa.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
        If Not oRsa.EOF Then
            CargarProperties oRsa
        End If
        
        Set oRsa = Nothing
    Else
        oRs.MoveFirst
        oRs.Find "PersonaID = " & IdPersona
        If Not oRs.EOF Then
            CargarProperties oRs
        End If
    End If
End Sub
Sub update()
Dim AdminPersonasService As New AdminPersonasSVR
Dim AdminLotesService As New AdminLotesSVR

On Error GoTo Error:
    DbConnectionSYS.BeginTrans
    ''Actualizamos Personas
    AdminPersonasService.PersonaOrm.actualizarPersona Me.IdPersona, Me.Apellido, Me.Nombre, "", "", "", Format(Me.FechaEntrada, "dd/mm/yyyy"), Format(Me.FechaSalida, "dd/mm/yyyy"), Me.HoraSalida, Me.HoraEntrada
    
    ''Borramos Doc Viejo
    IDNroDocEdit = GetIdDoc(Me.NroDocEdit)
    AdminPersonasService.PersonaOrm.eliminarPerDocCatVal Me.IdPersona, IDNroDocEdit, Me.IdCategoriaDoc, Me.IdValorTipoDoc
    ''Ponemos Doc Nuevo
    AdminPersonasService.PersonaOrm.crearPerDocCatVal Me.IdPersona, Me.IdCategoriaDoc, Me.IdValorTipoDoc, Me.NroDoc
    
    ''Borramos la relacion Grupo
    AdminPersonasService.PersonaOrm.eliminarPerGru Me.IdPersona, Me.GrupoIDEdit
    ''Creamos relacion Grupo
    AdminPersonasService.PersonaOrm.crearPerGru Me.IdPersona, Me.GrupoID, CAT_TIPO_RELACION_GRUPO, Me.RelacionValor ''RelacionId    'Me.IdValorGrup
    
    ''Borramos relacion Lote
    AdminLotesService.LotperOrm.eliminarLotPerPrf Me.IdLoteEdit, Me.IdPersona, Me.PerfilIDEdit, CAT_TIPO_RELACION_GRUPO, Me.RelacionValor, Me.FechaEntrada, Me.FechaSalida
    ''Creamos Relacion Lote
    AdminLotesService.LotperOrm.crearLotPerPrf Me.IdLote, Me.IdPersona, Me.PerfilID, CAT_TIPO_RELACION_GRUPO, Me.RelacionValor, Me.FechaEntrada, Me.FechaSalida
    
    ''Verificamso si Edito Tarjeta
    If Me.NroTarjetaEdit <> Me.NroTarjeta Then
        ''Borramos Relacion Tarjeta
        If Me.NroTarjetaEdit <> "" Then
            IdTarjetaEdit = GetIdTarjeta(Me.NroTarjetaEdit)
            AdminPersonasService.PersonaOrm.eliminarPerIdn Me.IdPersona, IdTarjetaEdit
        End If
        ''Creamos Tarjeta En caso que no exista
        If IdTarjeta = 0 Then
            IdTarjeta = AdminIdentificacionesService.IdentificacionOrm.crearIdentificacion(Me.NroTarjeta)
            AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal IdTarjeta, CAT_UNIDAD_IDENTIFICACION, 1
            AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal IdTarjeta, CAT_IDENTIFICACION, 1
        End If
        AdminPersonasService.PersonaOrm.crearPerIdn Me.IdPersona, IdTarjeta
    End If
    
'            IdAutoEdit = GetIdAuto(Me.PatenteEdit)
'            AdminPersonasService.PersonaOrm.eliminarPerAut Me.IdPersona, IdAutoEdit
    
    
    If Me.PatenteEdit = "" Then
        If GetIdAuto(Me.Patente) = 0 And Me.Patente <> "" Then
            IdAuto = AdminAutosService.AutosOrm.crearAuto(Me.Patente)
            'AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_TIPO_AUTO, Combo1.ItemData(Combo1.ListIndex)
            If Not ExisteMarca Then
                CreateMarcaAuto
            End If
            AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_MARCA_AUTO, idValorIdMarca
            'AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_MODELO_AUTO, Combo3.ItemData(Combo3.ListIndex)
            If Not ExisteColor Then
                CreateColorAuto
            End If
            AdminAutosService.AutosOrm.crearAutCatVal IdAuto, CAT_COLOR_AUTO, idValorIdColor
            
            AdminPersonasService.PersonaOrm.crearPerAut Me.IdPersona, IdAuto
        End If
    ElseIf Me.Patente <> "" Then
        IdAutoEdit = GetIdAuto(Me.PatenteEdit)
        AdminAutosService.AutosOrm.actualizarAuto IdAutoEdit, Me.Patente
        
        AdminAutosService.AutosQuery.eliminarAutCat IdAutoEdit, CAT_MARCA_AUTO  ''CAT_TIPO_AUTO
        If Not ExisteMarca Then
            CreateMarcaAuto
        End If
        AdminAutosService.AutosOrm.crearAutCatVal IdAutoEdit, CAT_MARCA_AUTO, idValorIdMarca
        
        AdminAutosService.AutosQuery.eliminarAutCat IdAutoEdit, CAT_COLOR_AUTO
        If Not ExisteColor Then
            CreateColorAuto
        End If
        AdminAutosService.AutosOrm.crearAutCatVal IdAutoEdit, CAT_COLOR_AUTO, idValorIdColor
        
        AdminPersonasService.PersonaOrm.crearPerAut Me.IdPersona, IdAutoEdit
    ElseIf Me.Patente = "" Then
        IdAutoEdit = GetIdAuto(Me.PatenteEdit)
        AdminPersonasService.PersonaOrm.eliminarPerAut Me.IdPersona, IdAutoEdit
    End If
    
'    ''Asignamos Persona al Auto
'    If IdAuto <> 0 Then
'        AdminPersonasService.PersonaOrm.crearPerAut Me.IdPersona, IdAuto
'    End If
    
    DbConnectionSYS.CommitTrans
    
    Exit Sub
Error:
    MsgBox Err.Description, vbCritical
    DbConnectionSYS.RollbackTrans
    'Resume 0
    
End Sub

Function GetIdDoc(ByVal NroDoc As String) As Long
Dim oRs As New ADODB.RecordSet

    sSql = "select DocumentoId from PerDocCatVal "
    sSql = sSql & "where Documento = '" & NroDoc & "'"
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        GetIdDoc = oRs.Fields(0)
    End If
    
End Function

Sub delete()
Dim AdminPersonasService As New AdminPersonasSVR

    IdTarjeta = GetIdTarjeta(Me.NroTarjeta)
    AdminPersonasService.PersonaOrm.eliminarPerIdn Me.IdPersona, IdTarjeta
    IdTarjeta = 0
    LoadCampingData
End Sub
Function ValidateDocumento(ByVal NroDoc As String, ByVal ValorID As Long) As Boolean
Dim oRs As New ADODB.RecordSet
    
    sSql = "select * from PerDoccatVal Where Documento = '" & NroDoc & "' "
    sSql = sSql & "and ValorID = " & ValorID
    oRs.Open sSql, DbConnectionSYS.ConnectionString, adOpenDynamic, adLockOptimistic
    
    If Not oRs.EOF Then
        MsgBox "El Documento que esta Ingresando Pertenece a Otra Persona", vbInformation
        ValidateDocumento = True
    End If
    
    Set oRs = Nothing
    
End Function
