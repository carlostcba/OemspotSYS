VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PerGruORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim PerGruDataObject As PerGruDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set PerGruDataObject = New PerGruDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PerGruDataObject = Nothing
End Sub


Public Function eliminarPersonadelGrupo(PersonaID As Long, GrupoID As Long) As Boolean
    PerGruDataObject.PersonaID = PersonaID
    PerGruDataObject.GrupoID = GrupoID
    eliminarPersonadelGrupo = AsistenteDataObject.delete(PerGruDataObject)
End Function
