Attribute VB_Name = "TestSYS"
Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   EL PROGRAMA Y EL ENTORNO AL INICIAR Y EN TIEMPO DE EJECUCION
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function testSoftware()
    'test0001 ' Testeo Espec�fico de MD5
    'test0002 ' Testeo Espec�fico de Licencias
End Function

Sub test0001()
    MsgBox "Comienzo de Test de Encriptaci�n"

    Dim MD5 As MD5SVR
    Set MD5 = New MD5SVR

    Dim fuente As String
    Dim destino  As String

    fuente = "M�ximoM�ximoM�ximoM�ximoM�ximoM�ximoM�ximo"
    destino = MD5.DigestStrToHexStr(fuente)

    MsgBox fuente
    MsgBox destino

    MsgBox Len(destino)

    Set MD5 = Nothing

    MsgBox "Fin de Test de Encriptaci�n"
End Sub

Sub test0002()
    MsgBox "Comienzo de Test de Licencias"

    MsgBox validarLicencia(LIC_2_MODULOS)
    MsgBox validarLicencia(LIC_4_MODULOS)
    MsgBox validarLicencia(LIC_8_MODULOS)

    MsgBox "Fin de Test de Licencias"
End Sub
