VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PdtMdlORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim PdtMdlDataObject As PdtMdlDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set PdtMdlDataObject = New PdtMdlDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PdtMdlDataObject = Nothing
End Sub

Function crearComandoPendinteModulo(ModuloID_ As Long, Comando_ As String, Inmediato_ As Integer, Extra_ As String) As Long
    PdtMdlDataObject.ModuloID = ModuloID_
    PdtMdlDataObject.comando = Comando_
    PdtMdlDataObject.Inmediato = Inmediato_
    PdtMdlDataObject.Extra = Extra_
    crearComandoPendinteModulo = AsistenteDataObject.create(PdtMdlDataObject)
End Function

