VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public AsistenteDataObject As AsistenteDAO
Dim PerDataObject As PerDAO
Dim PerCatValDataObject As PerCatValDAO
Dim PerEstValDataObject As PerEstValDAO
Dim PerDocCatValDataObject As PerDocCatValDAO
Dim PerTelCatValDataObject As PerTelCatValDAO
Dim PerMaiCatValDataObject As PerMaiCatValDAO
Dim PerDirCatValDataObject As PerDirCatValDAO
Dim PerIdnDataObject As PerIdnDAO
Dim PerGruDataObject As PerGruDAO
Dim PerPrxDataObject As PerPrxDAO
Dim PerAutDataObject As PerAutDAO

Private Sub Class_Initialize()                            'Aqui crea los atributos de una "Persona"
    Set AsistenteDataObject = New AsistenteDAO
    Set PerDataObject = New PerDAO
    Set PerCatValDataObject = New PerCatValDAO
    Set PerEstValDataObject = New PerEstValDAO
    Set PerDocCatValDataObject = New PerDocCatValDAO
    Set PerTelCatValDataObject = New PerTelCatValDAO
    Set PerMaiCatValDataObject = New PerMaiCatValDAO
    Set PerDirCatValDataObject = New PerDirCatValDAO
    Set PerIdnDataObject = New PerIdnDAO
    Set PerGruDataObject = New PerGruDAO
    Set PerPrxDataObject = New PerPrxDAO
    Set PerAutDataObject = New PerAutDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PerDataObject = Nothing
    Set PerCatValDataObject = Nothing
    Set PerEstValDataObject = Nothing
    Set PerDocCatValDataObject = Nothing
    Set PerTelCatValDataObject = Nothing
    Set PerMaiCatValDataObject = Nothing
    Set PerDirCatValDataObject = Nothing
    Set PerIdnDataObject = Nothing
    Set PerGruDataObject = Nothing
    Set PerPrxDataObject = Nothing
    Set PerAutDataObject = Nothing
End Sub

' Persona

Public Function crearPersona(Apellido As String, _
                             Nombre As String, _
                             FechaNacimiento As String, _
                             Sexo As String, _
                             Pais As String, _
                             FechaInicio As String, _
                             FechaFin As String, _
                             Hora_Salida As String, Optional Hora_Entrada As String) As Long
                             
    PerDataObject.Apellido = Apellido
    PerDataObject.Nombre = Nombre
    PerDataObject.FechaNacimiento = FechaNacimiento
    PerDataObject.Sexo = Sexo
    PerDataObject.Pais = Pais
    PerDataObject.FechaInicio = FechaInicio & " " & IIf(Hora_Entrada = "", "00:00", Format(Hora_Entrada, "HH:mm"))
    PerDataObject.FechaFin = FechaFin & " " & Hora_Salida
    
    ''agregado FMV
    ''PerDataObject.Hora_Salida = Hora_Salida
    ''''
    crearPersona = AsistenteDataObject.create(PerDataObject)
    
End Function

Public Function obtenerPersona(PersonaID As Long) As PerDAO
    PerDataObject.PersonaID = PersonaID
    If AsistenteDataObject.retrieve(PerDataObject) Then
        Set obtenerPersona = PerDataObject
    End If
End Function

Public Function actualizarPersona(PersonaID As Long, Apellido As String, Nombre As String, FechaNacimiento As String, _
                                    Sexo As String, Pais As String, FechaInicio As String, FechaFin As String, _
                                    Hora_Salida As String, Optional Hora_Entrada As String) As Boolean
                                    
    Dim sql As String
                                    
    PerDataObject.PersonaID = PersonaID
    PerDataObject.Apellido = Apellido
    PerDataObject.Nombre = Nombre
    PerDataObject.FechaNacimiento = FechaNacimiento
    PerDataObject.Sexo = Sexo
    PerDataObject.Pais = Pais
    sql = FechaInicio & " " & Format(Hora_Entrada, "HH:MM")
    PerDataObject.FechaInicio = FechaInicio & " " & Format(Hora_Entrada, "HH:MM")
    PerDataObject.FechaFin = FechaFin & " " & Hora_Salida
    ''agregado FMV
    ''PerDataObject.Hora_Salida = Hora_Salida
    ''''
    
    actualizarPersona = AsistenteDataObject.update(PerDataObject)
End Function

'Public Function eliminarTicketdePersona(PersonaID As Long, TicketID As Long) As Boolean
'    PerDataObject.PersonaID = PersonaID
'    PerDataObject.TicketID = TicketID
'    eliminarTicketdePersona = AsistenteDataObject.delete(PerDataObject)
'End Function
'
'Public Function eliminarAutodePersona(PersonaID As Long, AutoID As Long) As Boolean
'    PerDataObject.PersonaID = PersonaID
'    PerDataObject.AutoID = AutoID
'    eliminarAutodePersona = AsistenteDataObject.delete(PerDataObject)
'End Function
'
'Public Function eliminarPersonadelGrupo(PersonaID As Long, GrupoID As Long) As Boolean
'    PerDataObject.PersonaID = PersonaID
'    PerDataObject.GrupoID = GrupoID
'    eliminarPersonadelGrupo = AsistenteDataObject.delete(PerDataObject)
'End Function

Public Function eliminarPersona(PersonaID As Long) As Boolean
    PerDataObject.PersonaID = PersonaID
    eliminarPersona = AsistenteDataObject.delete(PerDataObject, True)
End Function

Public Function getDescription(PersonaID As Long) As String
    PerDataObject.PersonaID = PersonaID
    If AsistenteDataObject.retrieve(PerDataObject) Then
        getDescription = PerDataObject.Apellido & ", " & PerDataObject.Nombre
    End If
End Function

' Categorias

Public Function crearPerCatVal(PersonaID As Long, CategoriaID As Long, ValorID As Long) As Long
    PerCatValDataObject.PersonaID = PersonaID
    PerCatValDataObject.CategoriaID = CategoriaID
    PerCatValDataObject.ValorID = ValorID
    crearPerCatVal = AsistenteDataObject.create(PerCatValDataObject)
End Function

Public Function eliminarPerCatVal(PersonaID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    PerCatValDataObject.PersonaID = PersonaID
    PerCatValDataObject.CategoriaID = CategoriaID
    PerCatValDataObject.ValorID = ValorID
    eliminarPerCatVal = AsistenteDataObject.delete(PerCatValDataObject)
End Function

Public Function crearPerEstVal(PersonaID As Long, EstadoID As Long, ValorID As Long) As Long
    PerEstValDataObject.PersonaID = PersonaID
    PerEstValDataObject.EstadoID = EstadoID
    PerEstValDataObject.ValorID = ValorID
    crearPerEstVal = AsistenteDataObject.create(PerEstValDataObject)
End Function

Public Function eliminarPerEstVal(PersonaID As Long, EstadoID As Long, ValorID As Long) As Boolean
    PerEstValDataObject.PersonaID = PersonaID
    PerEstValDataObject.EstadoID = EstadoID
    PerEstValDataObject.ValorID = ValorID
    eliminarPerEstVal = AsistenteDataObject.delete(PerEstValDataObject)
End Function

Public Function crearPerDocCatVal(PersonaID As Long, CategoriaID As Long, ValorID As Long, Documento As String) As Long
    PerDocCatValDataObject.PersonaID = PersonaID
    PerDocCatValDataObject.CategoriaID = CategoriaID
    PerDocCatValDataObject.ValorID = ValorID
    PerDocCatValDataObject.Documento = Documento
    crearPerDocCatVal = AsistenteDataObject.create(PerDocCatValDataObject)
End Function

Public Function obtenerPerDocCatVal(PersonaID As Long, DocumentoID As Long, CategoriaID As Long, ValorID As Long) As PerDocCatValDAO
    PerDocCatValDataObject.PersonaID = PersonaID
    PerDocCatValDataObject.DocumentoID = DocumentoID
    PerDocCatValDataObject.CategoriaID = CategoriaID
    PerDocCatValDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(PerDocCatValDataObject) Then
        Set obtenerPerDocCatVal = PerDocCatValDataObject
    End If
End Function


Public Function actualizarPerDocCatVal(PersonaID As Long, DocumentoID As Long, CategoriaID As Long, ValorID As Long, Documento As String) As Boolean
    PerDocCatValDataObject.PersonaID = PersonaID
    PerDocCatValDataObject.DocumentoID = DocumentoID
    PerDocCatValDataObject.CategoriaID = CategoriaID
    PerDocCatValDataObject.ValorID = ValorID
    PerDocCatValDataObject.Documento = Documento
    actualizarPerDocCatVal = AsistenteDataObject.update(PerDocCatValDataObject)
End Function

Public Function eliminarPerDocCatVal(PersonaID As Long, DocumentoID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    PerDocCatValDataObject.PersonaID = PersonaID
    PerDocCatValDataObject.DocumentoID = DocumentoID
    PerDocCatValDataObject.CategoriaID = CategoriaID
    PerDocCatValDataObject.ValorID = ValorID
    eliminarPerDocCatVal = AsistenteDataObject.delete(PerDocCatValDataObject)
End Function

' Telefonos

Public Function crearPerTelCatVal(PersonaID As Long, CategoriaID As Long, ValorID As Long, Telefono As String) As Long
    PerTelCatValDataObject.PersonaID = PersonaID
    PerTelCatValDataObject.CategoriaID = CategoriaID
    PerTelCatValDataObject.ValorID = ValorID
    PerTelCatValDataObject.Telefono = Telefono
    crearPerTelCatVal = AsistenteDataObject.create(PerTelCatValDataObject)
End Function

Public Function obtenerPerTelCatVal(PersonaID As Long, TelefonoID As Long, CategoriaID As Long, ValorID As Long) As PerTelCatValDAO
    PerTelCatValDataObject.PersonaID = PersonaID
    PerTelCatValDataObject.TelefonoID = TelefonoID
    PerTelCatValDataObject.CategoriaID = CategoriaID
    PerTelCatValDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(PerTelCatValDataObject) Then
        Set obtenerPerTelCatVal = PerTelCatValDataObject
    End If
End Function

Public Function actualizarPerTelCatVal(PersonaID As Long, TelefonoID As Long, CategoriaID As Long, ValorID As Long, Telefono As String) As Boolean
    PerTelCatValDataObject.PersonaID = PersonaID
    PerTelCatValDataObject.TelefonoID = TelefonoID
    PerTelCatValDataObject.CategoriaID = CategoriaID
    PerTelCatValDataObject.ValorID = ValorID
    PerTelCatValDataObject.Telefono = Telefono
    actualizarPerTelCatVal = AsistenteDataObject.update(PerTelCatValDataObject)
End Function

Public Function eliminarPerTelCatVal(PersonaID As Long, TelefonoID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    PerTelCatValDataObject.PersonaID = PersonaID
    PerTelCatValDataObject.TelefonoID = TelefonoID
    PerTelCatValDataObject.CategoriaID = CategoriaID
    PerTelCatValDataObject.ValorID = ValorID
    eliminarPerTelCatVal = AsistenteDataObject.delete(PerTelCatValDataObject)
End Function

' Emails

Public Function crearPerMaiCatVal(PersonaID As Long, CategoriaID As Long, ValorID As Long, Email As String) As Long
    PerMaiCatValDataObject.PersonaID = PersonaID
    PerMaiCatValDataObject.CategoriaID = CategoriaID
    PerMaiCatValDataObject.ValorID = ValorID
    PerMaiCatValDataObject.Email = Email
    crearPerMaiCatVal = AsistenteDataObject.create(PerMaiCatValDataObject)
End Function

Public Function obtenerPerMaiCatVal(PersonaID As Long, EmailID As Long, CategoriaID As Long, ValorID As Long) As PerMaiCatValDAO
    PerMaiCatValDataObject.PersonaID = PersonaID
    PerMaiCatValDataObject.EmailID = EmailID
    PerMaiCatValDataObject.CategoriaID = CategoriaID
    PerMaiCatValDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(PerMaiCatValDataObject) Then
        Set obtenerPerMaiCatVal = PerMaiCatValDataObject
    End If
End Function

Public Function actualizarPerMaiCatVal(PersonaID As Long, EmailID As Long, CategoriaID As Long, ValorID As Long, Email As String) As Boolean
    PerMaiCatValDataObject.PersonaID = PersonaID
    PerMaiCatValDataObject.EmailID = EmailID
    PerMaiCatValDataObject.CategoriaID = CategoriaID
    PerMaiCatValDataObject.ValorID = ValorID
    PerMaiCatValDataObject.Email = Email
    actualizarPerMaiCatVal = AsistenteDataObject.update(PerMaiCatValDataObject)
End Function

Public Function eliminarPerMaiCatVal(PersonaID As Long, EmailID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    PerMaiCatValDataObject.PersonaID = PersonaID
    PerMaiCatValDataObject.EmailID = EmailID
    PerMaiCatValDataObject.CategoriaID = CategoriaID
    PerMaiCatValDataObject.ValorID = ValorID
    eliminarPerMaiCatVal = AsistenteDataObject.delete(PerMaiCatValDataObject)
End Function

' Categorias

Public Function crearPerDirCatVal(PersonaID As Long, CategoriaID As Long, ValorID As Long, Pais As String, Provincia As String, Localidad As String, CodigoPostal As String, Calle As String, Numero As String, Piso As String, Oficina As String) As Long
    PerDirCatValDataObject.PersonaID = PersonaID
    PerDirCatValDataObject.CategoriaID = CategoriaID
    PerDirCatValDataObject.ValorID = ValorID
    PerDirCatValDataObject.Pais = Pais
    PerDirCatValDataObject.Provincia = Provincia
    PerDirCatValDataObject.Localidad = Localidad
    PerDirCatValDataObject.CodigoPostal = CodigoPostal
    PerDirCatValDataObject.Calle = Calle
    PerDirCatValDataObject.Numero = Numero
    PerDirCatValDataObject.Piso = Piso
    PerDirCatValDataObject.Oficina = Oficina
    crearPerDirCatVal = AsistenteDataObject.create(PerDirCatValDataObject)
End Function

Public Function obtenerPerDirCatVal(PersonaID As Long, DireccionID As Long, CategoriaID As Long, ValorID As Long) As PerDirCatValDAO
    PerDirCatValDataObject.PersonaID = PersonaID
    PerDirCatValDataObject.DireccionID = DireccionID
    PerDirCatValDataObject.CategoriaID = CategoriaID
    PerDirCatValDataObject.ValorID = ValorID
    If AsistenteDataObject.retrieve(PerDirCatValDataObject) Then
        Set obtenerPerDirCatVal = PerDirCatValDataObject
    End If
End Function

Public Function actualizarPerDirCatVal(PersonaID As Long, DireccionID As Long, CategoriaID As Long, ValorID As Long, Pais As String, Provincia As String, Localidad As String, CodigoPostal As String, Calle As String, Numero As String, Piso As String, Oficina As String) As Boolean
    PerDirCatValDataObject.PersonaID = PersonaID
    PerDirCatValDataObject.DireccionID = DireccionID
    PerDirCatValDataObject.CategoriaID = CategoriaID
    PerDirCatValDataObject.ValorID = ValorID
    PerDirCatValDataObject.Pais = Pais
    PerDirCatValDataObject.Provincia = Provincia
    PerDirCatValDataObject.Localidad = Localidad
    PerDirCatValDataObject.CodigoPostal = CodigoPostal
    PerDirCatValDataObject.Calle = Calle
    PerDirCatValDataObject.Numero = Numero
    PerDirCatValDataObject.Piso = Piso
    PerDirCatValDataObject.Oficina = Oficina
    actualizarPerDirCatVal = AsistenteDataObject.update(PerDirCatValDataObject)
End Function

Public Function eliminarPerDirCatVal(PersonaID As Long, DireccionID As Long, CategoriaID As Long, ValorID As Long) As Boolean
    PerDirCatValDataObject.PersonaID = PersonaID
    PerDirCatValDataObject.DireccionID = DireccionID
    PerDirCatValDataObject.CategoriaID = CategoriaID
    PerDirCatValDataObject.ValorID = ValorID
    eliminarPerDirCatVal = AsistenteDataObject.delete(PerDirCatValDataObject)
End Function

' Identificiones

Public Function crearPerIdn(PersonaID As Long, IdentificacionID As Long) As Long
    PerIdnDataObject.PersonaID = PersonaID
    PerIdnDataObject.IdentificacionID = IdentificacionID
    crearPerIdn = AsistenteDataObject.create(PerIdnDataObject)
End Function

Public Function eliminarPerIdn(PersonaID As Long, IdentificacionID As Long) As Boolean
    PerIdnDataObject.PersonaID = PersonaID
    PerIdnDataObject.IdentificacionID = IdentificacionID
    eliminarPerIdn = AsistenteDataObject.delete(PerIdnDataObject)
End Function

Public Function crearPerGru(PersonaID As Long, GrupoID As Long, CategoriaID As Long, ValorID As Long) As Long
    PerGruDataObject.PersonaID = PersonaID
    PerGruDataObject.GrupoID = GrupoID
    PerGruDataObject.CategoriaID = CategoriaID
    PerGruDataObject.ValorID = ValorID
    crearPerGru = AsistenteDataObject.create(PerGruDataObject)
End Function

Public Function eliminarPerGru(PersonaID As Long, GrupoID As Long) As Boolean
    PerGruDataObject.PersonaID = PersonaID
    PerGruDataObject.GrupoID = GrupoID
    eliminarPerGru = AsistenteDataObject.delete(PerGruDataObject)
End Function

' Propiedades Extendidas

Public Function crearPerPrx(PersonaID As Long, PropiedadID As Long, Valor As String) As Long
    PerPrxDataObject.PersonaID = PersonaID
    PerPrxDataObject.PropiedadID = PropiedadID
    PerPrxDataObject.Valor = Valor
    crearPerPrx = AsistenteDataObject.create(PerPrxDataObject)
End Function

Public Function obtenerPerPrx(PersonaID As Long, PropiedadID As Long) As PerPrxDAO
    PerPrxDataObject.PersonaID = PersonaID
    PerPrxDataObject.PropiedadID = PropiedadID
    If AsistenteDataObject.retrieve(PerPrxDataObject) Then
        Set obtenerPerPrx = PerPrxDataObject
    End If
End Function

Public Function actualizarPerPrx(PersonaID As Long, PropiedadID As Long, Valor As String) As Boolean
    PerPrxDataObject.PersonaID = PersonaID
    PerPrxDataObject.PropiedadID = PropiedadID
    PerPrxDataObject.Valor = Valor
    actualizarPerPrx = AsistenteDataObject.update(PerPrxDataObject)
End Function

Public Function eliminarPerPrx(PersonaID As Long, PropiedadID As Long) As Boolean
    PerPrxDataObject.PersonaID = PersonaID
    PerPrxDataObject.PropiedadID = PropiedadID
    eliminarPerPrx = AsistenteDataObject.delete(PerPrxDataObject)
End Function

' Autos

Public Function crearPerAut(PersonaID As Long, AutoID As Long) As Long
    PerAutDataObject.PersonaID = PersonaID
    PerAutDataObject.AutoID = AutoID
    crearPerAut = AsistenteDataObject.create(PerAutDataObject)
End Function

Public Function obtenerPerAut(PersonaID As Long, AutoID As Long) As PerAutDAO
    PerAutDataObject.PersonaID = PersonaID
    PerAutDataObject.AutoID = AutoID
    If AsistenteDataObject.retrieve(PerAutDataObject) Then
        Set obtenerPerAut = PerAutDataObject
    End If
End Function

Public Function actualizarPerAut(PersonaID As Long, AutoID As Long) As Boolean
    PerAutDataObject.PersonaID = PersonaID
    PerAutDataObject.AutoID = AutoID
    actualizarPerAut = AsistenteDataObject.update(PerAutDataObject)
End Function

Public Function eliminarPerAut(PersonaID As Long, AutoID As Long) As Boolean
    PerAutDataObject.PersonaID = PersonaID
    PerAutDataObject.AutoID = AutoID
    eliminarPerAut = AsistenteDataObject.delete(PerAutDataObject)
End Function
