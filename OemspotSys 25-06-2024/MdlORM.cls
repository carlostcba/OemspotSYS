VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "MdlORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public AsistenteDataObject As AsistenteDAO
Public MdlDataObject As MdlDAO
Public MdlCatValDataObject As MdlCatValDAO
Public MdlEstValDataObject As MdlEstValDAO
Public WksMdlDataObject As WksMdlDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set MdlDataObject = New MdlDAO
    Set MdlCatValDataObject = New MdlCatValDAO
    Set MdlEstValDataObject = New MdlEstValDAO
    Set WksMdlDataObject = New WksMdlDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set MdlDataObject = Nothing
    Set MdlCatValDataObject = Nothing
    Set MdlEstValDataObject = Nothing
    Set WksMdlDataObject = Nothing
End Sub

Function crearModulo(Nombre As String, Descripcion As String, Address As Integer, ModuloEntradaID As Long, ModuloSalidaID As Long, GrupoModulos As Integer, OrdenEncuesta As Integer, Duracion_pulso As Integer, validaBarras As Boolean) As Long
    MdlDataObject.Nombre = Nombre
    MdlDataObject.Descripcion = Descripcion
    MdlDataObject.Address = Address
    MdlDataObject.ModuloEntradaID = ModuloEntradaID
    MdlDataObject.ModuloSalidaID = ModuloSalidaID
    MdlDataObject.GrupoModulos = GrupoModulos
    MdlDataObject.OrdenEncuesta = OrdenEncuesta
    MdlDataObject.Duracion_pulso = Duracion_pulso
    MdlDataObject.ValidacionTicket = validaBarras
    crearModulo = AsistenteDataObject.create(MdlDataObject)
End Function

Function obtenerModulo(ModuloID As Long) As MdlDAO
    MdlDataObject.ModuloID = ModuloID
    If AsistenteDataObject.retrieve(MdlDataObject) Then
        Set obtenerModulo = MdlDataObject
    End If
End Function

Function actualizarModulo(ModuloID As Long, Nombre As String, Descripcion As String, Address As Integer, ModuloEntradaID As Long, ModuloSalidaID As Long, GrupoModulos As Integer, OrdenEncuesta As Integer, Duracion_pulso As Integer, validaBarras As Boolean) As Boolean
    MdlDataObject.ModuloID = ModuloID
    MdlDataObject.Nombre = Nombre
    MdlDataObject.Descripcion = Descripcion
    MdlDataObject.Address = Address
    MdlDataObject.ModuloEntradaID = ModuloEntradaID
    MdlDataObject.ModuloSalidaID = ModuloSalidaID
    MdlDataObject.GrupoModulos = GrupoModulos
    MdlDataObject.OrdenEncuesta = OrdenEncuesta
    MdlDataObject.Duracion_pulso = Duracion_pulso
    MdlDataObject.ValidacionTicket = validaBarras
    actualizarModulo = AsistenteDataObject.update(MdlDataObject)
End Function

Function eliminarModulo(ModuloID As Long) As Boolean
    MdlDataObject.ModuloID = ModuloID
    eliminarModulo = AsistenteDataObject.delete(MdlDataObject, True)
End Function

Public Function getDescription(ModuloID As Long) As String
    MdlDataObject.ModuloID = ModuloID
    If AsistenteDataObject.retrieve(MdlDataObject) Then
        getDescription = MdlDataObject.Nombre
    End If
End Function

Function crearMdlCatVal(ModuloID As Long, CategoriaID As Long, ValorID As Long) As Long
    MdlCatValDataObject.ModuloID = ModuloID
    MdlCatValDataObject.CategoriaID = CategoriaID
    MdlCatValDataObject.ValorID = ValorID
    crearMdlCatVal = AsistenteDataObject.create(MdlCatValDataObject)
End Function

Function eliminarMdlCatVal(ModuloID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    MdlCatValDataObject.ModuloID = ModuloID
    MdlCatValDataObject.CategoriaID = CategoriaID
    MdlCatValDataObject.ValorID = ValorID
    eliminarMdlCatVal = AsistenteDataObject.delete(MdlCatValDataObject)
End Function

Function crearMdlEstVal(ModuloID As Long, EstadoID As Long, ValorID As Long) As Long
    MdlEstValDataObject.ModuloID = ModuloID
    MdlEstValDataObject.EstadoID = EstadoID
    MdlEstValDataObject.ValorID = ValorID
    crearMdlEstVal = AsistenteDataObject.create(MdlEstValDataObject)
End Function

Function eliminarMdlEstVal(ModuloID As Long, EstadoID As Long, ValorID As Long) As Boolean
    MdlEstValDataObject.ModuloID = ModuloID
    MdlEstValDataObject.EstadoID = EstadoID
    MdlEstValDataObject.ValorID = ValorID
    eliminarMdlEstVal = AsistenteDataObject.delete(MdlEstValDataObject)
End Function

Function crearWksMdl(WorkstationID As Long, ModuloID As Long) As Long
    WksMdlDataObject.WorkstationID = WorkstationID
    WksMdlDataObject.ModuloID = ModuloID
    crearWksMdl = AsistenteDataObject.create(WksMdlDataObject)
End Function

Function eliminarWksMdl(WorkstationID As Long, ModuloID As Long) As Boolean
    WksMdlDataObject.WorkstationID = WorkstationID
    WksMdlDataObject.ModuloID = ModuloID
    eliminarWksMdl = AsistenteDataObject.delete(WksMdlDataObject)
End Function
