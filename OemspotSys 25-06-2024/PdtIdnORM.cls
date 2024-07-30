VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "PdtIdnORM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Dim AsistenteDataObject As AsistenteDAO
Dim PdtIdnDataObject As PdtIdnDAO

Private Sub Class_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set PdtIdnDataObject = New PdtIdnDAO
End Sub

Private Sub Class_Terminate()
    Set AsistenteDataObject = Nothing
    Set PdtIdnDataObject = Nothing
End Sub


