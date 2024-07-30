VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GruORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim GrupoDataObject As GruDAO
Dim GrupoIdnDataObject As GruIdnDAO
Dim GrupoMdlPrfDataObject As GruMdlPrfDAO
Dim GruCatValDataObject As GruCatValDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set GrupoDataObject = New GruDAO
    Set GrupoIdnDataObject = New GruIdnDAO
    Set GrupoMdlPrfDataObject = New GruMdlPrfDAO
    Set GruCatValDataObject = New GruCatValDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set GrupoDataObject = Nothing
    Set GrupoIdnDataObject = Nothing
    Set GrupoMdlPrfDataObject = Nothing
    Set GruCatValDataObject = Nothing
End Sub

Public Function crearGrupo(Nombre As String, Descripcion As String) As Long
    GrupoDataObject.Nombre = Nombre
    GrupoDataObject.Descripcion = Descripcion
    crearGrupo = AsistenteDataObject.create(GrupoDataObject)
End Function

Public Function obtenerGrupo(GrupoID As Long) As GruDAO
    GrupoDataObject.GrupoID = GrupoID
    If AsistenteDataObject.retrieve(GrupoDataObject) Then
        Set obtenerGrupo = GrupoDataObject
    End If
End Function

Public Function actualizarGrupo(GrupoID As Long, Nombre As String, Descripcion As String) As Boolean
    GrupoDataObject.GrupoID = GrupoID
    GrupoDataObject.Nombre = Nombre
    GrupoDataObject.Descripcion = Descripcion
    actualizarGrupo = AsistenteDataObject.update(GrupoDataObject)
End Function

Public Function eliminarGrupo(GrupoID As Long) As Boolean
    GrupoDataObject.GrupoID = GrupoID
    eliminarGrupo = AsistenteDataObject.delete(GrupoDataObject, True)
End Function

Public Function getDescription(GrupoID As Long) As String
    GrupoDataObject.GrupoID = GrupoID
    If AsistenteDataObject.retrieve(GrupoDataObject) Then
        getDescription = GrupoDataObject.Descripcion
    End If
End Function

Public Function crearGruIdn(GrupoID As Long, IdentificacionID As Long) As Long
    GrupoIdnDataObject.GrupoID = GrupoID
    GrupoIdnDataObject.IdentificacionID = IdentificacionID
    crearGruIdn = AsistenteDataObject.create(GrupoIdnDataObject)
End Function

Public Function eliminarGruIdn(GrupoID As Long, IdentificacionID As Long) As Boolean
    GrupoIdnDataObject.GrupoID = GrupoID
    GrupoIdnDataObject.IdentificacionID = IdentificacionID
    eliminarGruIdn = AsistenteDataObject.delete(GrupoIdnDataObject)
End Function

Public Function crearGruMdlPrf(GrupoID As Long, ModuloID As Long, PerfilID As Long, FechaInicio As String, FechaFin As String) As Long
    GrupoMdlPrfDataObject.GrupoID = GrupoID
    GrupoMdlPrfDataObject.ModuloID = ModuloID
    GrupoMdlPrfDataObject.PerfilID = PerfilID
    GrupoMdlPrfDataObject.FechaInicio = FechaInicio
    GrupoMdlPrfDataObject.FechaFin = FechaFin
    crearGruMdlPrf = AsistenteDataObject.create(GrupoMdlPrfDataObject)
End Function

Public Function eliminarGruMdlPrf(GrupoID As Long, ModuloID As Long, PerfilID As Long) As Boolean
    GrupoMdlPrfDataObject.GrupoID = GrupoID
    GrupoMdlPrfDataObject.ModuloID = ModuloID
    GrupoMdlPrfDataObject.PerfilID = PerfilID
    eliminarGruMdlPrf = AsistenteDataObject.delete(GrupoMdlPrfDataObject)
End Function

Function crearGruCatVal(GrupoID As Long, CategoriaID As Long, ValorID As Long) As Long
    GruCatValDataObject.GrupoID = GrupoID
    GruCatValDataObject.CategoriaID = CategoriaID
    GruCatValDataObject.ValorID = ValorID
    crearGruCatVal = AsistenteDataObject.create(GruCatValDataObject)
End Function

Function eliminarGruCatVal(GrupoID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    GruCatValDataObject.GrupoID = GrupoID
    GruCatValDataObject.CategoriaID = CategoriaID
    GruCatValDataObject.ValorID = ValorID
    eliminarGruCatVal = AsistenteDataObject.delete(GruCatValDataObject)
End Function
