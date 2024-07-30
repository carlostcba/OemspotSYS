VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ProtocoloSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit


Private Const ASCII_STX = 2  ' Start of text
Private Const ASCII_ETX = 3  ' End of text
Private Const ASCII_EOF = 3   'End of file


Private Const UPTRJ = "C0"
Private Const DWTRJL = "C1"
Private Const DWTRJ = "C2"
Private Const BORTRJ = "C3"
Private Const BORTRJT = "C4"
Private Const UpPer = "A8" ' cargar perfil Numero perfil, dia perfil, desde, y hasta
Private Const DwPer = "A9" ' leer perfil Numero perfil, dia perfil
'Private Const IniciarSec = "S7"
'Private Const IniciarSec = "K8"

Private Const AbrirBarreraEstado = "V9"
Private Const AbrirBarreraPulso = "V3"
Private Const AbrirMolinete = "V5"
Private Const AbrirPuerta = "V6"
Private Const AbrirBarreraDoblePulso = "V8"

Private Const TerminarSec = "R7"
Private Const Rst9 = "X9"
Private Const PrintTicket1 = "T9"


Public Function Imprimir_Tiket(ByVal address As Integer) As String
  Imprimir_Tiket = Chr$(ASCII_STX) & Format(address, "#00") & PrintTicket1
  Imprimir_Tiket = Imprimir_Tiket & CalculoCS(Imprimir_Tiket) & Chr$(ASCII_EOF)
End Function


Public Function Up_Perfil(ByVal address As Integer, _
                          ByVal perfil_ As String, _
                          ByVal dia_ As String, _
                          ByVal desde_ As Integer, _
                          ByVal hasta_ As Integer) As String
  Up_Perfil = Chr$(ASCII_STX) & Format(address, "#00") & UpPer & perfil_ & dia_ & Format(desde_, "#0000") & Format(hasta_, "#00")
                                                                  
  ' Calculo CheckSum y pongo fin del texto y CR
  Up_Perfil = Up_Perfil + CalculoCS(Up_Perfil) + Chr$(ASCII_EOF)
End Function
                          
Public Function Down_Perfil(ByVal address As Integer, _
                          ByVal perfil_ As String, _
                          ByVal dia_ As String) As String
  Down_Perfil = Chr$(ASCII_STX) & Format(address, "#00") & DwPer & perfil_ & dia_
  Down_Perfil = Down_Perfil + CalculoCS(Down_Perfil) + Chr$(ASCII_EOF)
  
End Function

Public Function Up_Trj(ByVal address As Integer, _
                       ByVal trj_ As String, _
                       ByVal persona_ As String, _
                       ByVal perfil_ As String) As String
  Up_Trj = Chr$(ASCII_STX) & _
           Format(address, "#00") & _
           UPTRJ & _
           trj_ & _
           Mid$((persona_ & "                "), 1, 16) & _
           perfil_
  ' Calculo CheckSum y pongo fin del texto y CR
  Up_Trj = Up_Trj & CalculoCS(Up_Trj) & Chr$(ASCII_EOF)
End Function

Public Function Down_Trj(ByVal address As Integer, _
                       ByVal trj_ As String) As String
  Down_Trj = Chr$(ASCII_STX) & _
           Format(address, "#00") & _
           DWTRJ & _
           trj_
  Down_Trj = Down_Trj & CalculoCS(Down_Trj) & Chr$(ASCII_EOF)
End Function


Public Function Comienzo_Secuencia(ByVal address As Integer, ByVal tipo As Integer, duracion As Long) As String
  Comienzo_Secuencia = Chr$(ASCII_STX) & Format(address, "#00")
  ''& IniciarSec
  ' Calculo CheckSum y pongo fin del texto y CR
   
  Select Case tipo
    Case CAT_VAL_TIPO_ACCESO_PUERTA
        Comienzo_Secuencia = Comienzo_Secuencia & AbrirPuerta & Format(duracion \ 100, "#00")
    Case CAT_VAL_TIPO_ACCESO_MOLINETE
        Comienzo_Secuencia = Comienzo_Secuencia & AbrirMolinete
    Case CAT_VAL_TIPO_ACCESO_BARRERA
        Comienzo_Secuencia = Comienzo_Secuencia & AbrirBarreraEstado
    Case CAT_VAL_TIPO_ACCESO_CONTROLADO
        'Comienzo_Secuencia = Comienzo_Secuencia & Abrir
    Case CAT_VAL_TIPO_ACCESO_BARRERA_PULSO
        Comienzo_Secuencia = Comienzo_Secuencia & AbrirBarreraPulso
    Case CAT_VAL_TIPO_ACCESO_BARRERA_DOBLE_PULSO
        Comienzo_Secuencia = Comienzo_Secuencia & AbrirBarreraDoblePulso
    Case Else
  End Select
  
  
  Comienzo_Secuencia = Comienzo_Secuencia & CalculoCS(Comienzo_Secuencia) & Chr$(ASCII_EOF)
End Function


Public Function Terminar_Secuencia(ByVal address As Integer) As String
  Terminar_Secuencia = Chr$(ASCII_STX) + Format(address, "#00") & TerminarSec
  ' Calculo CheckSum y pongo fin del texto y CR
  Terminar_Secuencia = Terminar_Secuencia + CalculoCS(Terminar_Secuencia) & Chr$(ASCII_EOF)
End Function


Public Function Reset9(ByVal address As Integer) As String
 Reset9 = Chr$(ASCII_STX) & Format(address, "#00") & Rst9
  ' Calculo CheckSum y pongo fin del texto y CR
  Reset9 = Reset9 & CalculoCS(Reset9) & Chr$(ASCII_EOF)
End Function


Public Function Down_Trj_Lote(ByVal address As Integer) As String
  Down_Trj_Lote = Chr$(ASCII_STX) & _
           Format(address, "#00") & _
           DWTRJL
  Down_Trj_Lote = Down_Trj_Lote & CalculoCS(Down_Trj_Lote) & Chr$(ASCII_EOF)
End Function

Public Function Borra_Trj(ByVal address As Integer, _
                       ByVal trj_ As String) As String
  Borra_Trj = Chr$(ASCII_STX) & _
           Format(address, "#00") & _
           BORTRJ & _
           trj_
  Borra_Trj = Borra_Trj & CalculoCS(Borra_Trj) & Chr$(ASCII_EOF)
End Function


Public Function Borra_Trj_Total(ByVal address As Integer) As String
  Borra_Trj_Total = Chr$(ASCII_STX) & _
           Format(address, "#00") & _
           BORTRJT
  Borra_Trj_Total = Borra_Trj_Total & CalculoCS(Borra_Trj_Total) & Chr$(ASCII_EOF)
End Function


Public Function CalculoCS(ByVal Comando As String) As Variant
  Dim IFor As Integer
  Dim Fin As Integer
  Dim Checksum As Byte

  Checksum = 0
  Fin = Len(Comando)
  
  For IFor = 1 To Fin
    Checksum = (Asc(Mid$(Comando, IFor, 1)) + Checksum) And &HFF
  Next IFor

  Checksum = ((&HFF - Checksum) + 1) And &HFF

  If Len(Hex(Checksum)) < 2 Then
    CalculoCS = "0" + Hex(Checksum)
    Else
    CalculoCS = Hex(Checksum)
  End If
End Function

