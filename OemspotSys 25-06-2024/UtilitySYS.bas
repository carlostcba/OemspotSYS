Attribute VB_Name = "UtilitySYS"
Option Explicit

   
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   DECLARACIONES COMUNES A TODOS LOS MODULOS SYS
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

' DECLARACIONES PARA ACCESO A ARCHIVOS INI

    Declare Function GetPrivateProfileStringByKeyName& Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName$, ByVal lpszKey$, ByVal lpszDefault$, ByVal lpszReturnBuffer$, ByVal cchReturnBuffer&, ByVal lpszFile$)

' DECLARACIONES PARA ACCESO AL SHELL

    Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" ( _
                 ByVal hWnd As Long, _
                 ByVal lpOperation As String, _
                 ByVal lpFile As String, _
                 ByVal lpParameters As String, _
                 ByVal lpDirectory As String, _
                 ByVal nShowCmd As Long) As Long

    Public Const conSwNormal = 1
    
    Private Declare Function GetDesktopWindow Lib "user32" () As Long
    Private Const SW_SHOWNORMAL          As Long = 1
    Private Const SE_ERR_FNF             As Long = 2
    Private Const SE_ERR_PNF             As Long = 3
    Private Const SE_ERR_ACCESSDENIED    As Long = 5
    Private Const SE_ERR_OOM             As Long = 8
    Private Const SE_ERR_DLLNOTFOUND     As Long = 32
    Private Const SE_ERR_SHARE           As Long = 26
    Private Const SE_ERR_ASSOCINCOMPLETE As Long = 27
    Private Const SE_ERR_DDETIMEOUT      As Long = 28
    Private Const SE_ERR_DDEFAIL         As Long = 29
    Private Const SE_ERR_DDEBUSY         As Long = 30
    Private Const SE_ERR_NOASSOC         As Long = 31
    Private Const ERROR_BAD_FORMAT       As Long = 11

' DECLARACIONES PARA TARJETA DE RED
    
    Private Const NCBASTAT                       As Long = &H33
    Private Const NCBNAMSZ                       As Integer = 16
    Private Const HEAP_ZERO_MEMORY               As Long = &H8
    Private Const HEAP_GENERATE_EXCEPTIONS       As Long = &H4
    Private Const NCBRESET                       As Long = &H32
    
    Private Type NCB
        ncb_command     As Byte
        ncb_retcode     As Byte
        ncb_lsn         As Byte
        ncb_num         As Byte
        ncb_buffer      As Long
        ncb_length      As Integer
        ncb_callname    As String * NCBNAMSZ
        ncb_name        As String * NCBNAMSZ
        ncb_rto         As Byte
        ncb_sto         As Byte
        ncb_post        As Long
        ncb_lana_num    As Byte
        ncb_cmd_cplt    As Byte
        ncb_reserve(9)  As Byte
        ncb_event       As Long
    End Type
    
    Private Type ADAPTER_STATUS
        adapter_address(5)  As Byte
        rev_major           As Byte
        reserved0           As Byte
        adapter_type        As Byte
        rev_minor           As Byte
        duration            As Integer
        frmr_recv           As Integer
        frmr_xmit           As Integer
        iframe_recv_err     As Integer
        xmit_aborts         As Integer
        xmit_success        As Long
        recv_success        As Long
        iframe_xmit_err     As Integer
        recv_buff_unavail   As Integer
        t1_timeouts         As Integer
        ti_timeouts         As Integer
        Reserved1           As Long
        free_ncbs           As Integer
        max_cfg_ncbs        As Integer
        max_ncbs            As Integer
        xmit_buf_unavail    As Integer
        max_dgram_size      As Integer
        pending_sess        As Integer
        max_cfg_sess        As Integer
        max_sess            As Integer
        max_sess_pkt_size   As Integer
        name_count          As Integer
    End Type
    
    Private Type NAME_BUFFER
        name                                       As String * NCBNAMSZ
        name_num                                   As Integer
        name_flags                                 As Integer
    End Type
    
    Private Type ASTAT
        adapt                                      As ADAPTER_STATUS
        NameBuff(30)                               As NAME_BUFFER
    End Type
    
    Private Declare Function Netbios Lib "netapi32.dll" (pncb As NCB) As Byte
    
    Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (hpvDest As Any, _
                                                                         ByVal hpvSource As Long, _
                                                                         ByVal cbCopy As Long)
    Private Declare Function GetProcessHeap Lib "kernel32" () As Long
    
    Private Declare Function HeapAlloc Lib "kernel32" (ByVal hHeap As Long, _
                                                       ByVal dwFlags As Long, _
                                                       ByVal dwBytes As Long) As Long
                                                       
    Private Declare Function HeapFree Lib "kernel32" (ByVal hHeap As Long, _
                                                      ByVal dwFlags As Long, _
                                                      lpMem As Any) As Long

' DECLARACIONES PARA GUID

    Private Type GUID
        Data1 As Long
        Data2 As Integer
        Data3 As Integer
        Data4(7) As Byte
    End Type

    Private Declare Function CoCreateGuid Lib "OLE32.DLL" (pGuid As GUID) As Long

' DECLARACIONES PARA OBTENER NOMBRE DE MAQUINA DE WINDOWS

    Private Const MAX_COMPUTERNAME_LENGTH As Long = 31
    Private Declare Function getComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long

' DECLARACIONES PARA WINDOWS SYSTRAY

    Public Type NOTIFYICONDATA
       cbSize As Long
       hWnd As Long
       uId As Long
       uFlags As Long
       uCallBackMessage As Long
       hIcon As Long
       szTip As String * 64
    End Type

    Public Const NIM_ADD = &H0
    Public Const NIM_MODIFY = &H1
    Public Const NIM_DELETE = &H2

    Public Const WM_MOUSEMOVE = &H200

    Public Const NIF_MESSAGE = &H1
    Public Const NIF_ICON = &H2
    Public Const NIF_TIP = &H4

    Public Const WM_LBUTTONDBLCLK = &H203
    Public Const WM_LBUTTONDOWN = &H201
    Public Const WM_LBUTTONUP = &H202

    Public Const WM_RBUTTONDBLCLK = &H206
    Public Const WM_RBUTTONDOWN = &H204
    Public Const WM_RBUTTONUP = &H205

    Public Declare Function Shell_NotifyIcon Lib "shell32" _
       Alias "Shell_NotifyIconA" _
       (ByVal dwMessage As Long, pnid As NOTIFYICONDATA) As Boolean

    Dim nid As NOTIFYICONDATA

'   DECLARACIONES PARA TckSVR

Public Type SYSTEMTIME
        wYear As Integer
        wMonth As Integer
        wDayOfWeek As Integer
        wDay As Integer
        wHour As Integer
        wMinute As Integer
        wSecond As Integer
        wMilliseconds As Integer
End Type '

Public Type TIME_ZONE_INFORMATION
        Bias As Long
        StandardName As String * 64
        StandardDate As SYSTEMTIME
        StandardBias As Long
        DaylightName As String * 64
        DaylightDate As SYSTEMTIME
        DaylightBias As Long
End Type

Public Declare Sub GetSystemTime Lib "kernel32" (lpSystemTime As SYSTEMTIME)
Public Declare Function timeGetTime Lib "winmm.dll" () As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Dim kk As String
Dim kk1 As Long



' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE STRING
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function StringToDBField(s As String) As String
    s = Replace(s, Chr(34), "¶")
    s = Replace(s, Chr(39), "§")
    s = Replace(s, vbCrLf, "µ")
    StringToDBField = s
End Function

Function DBFieldToString(s As String) As String
    s = Replace(s, "¶", Chr(34))
    s = Replace(s, "§", Chr(39))
    s = Replace(s, "µ", vbCrLf)
    DBFieldToString = s
End Function

Function DBFieldToHtmlString(s As String) As String
    s = Replace(s, "¶", "&#34;")
    s = Replace(s, "§", "&#39;")
    s = Replace(s, "µ", "<br/>")
    DBFieldToHtmlString = s
End Function

Function DBFieldToGridString(s As String) As String
    s = Replace(s, "¶", Chr(34))
    s = Replace(s, "§", Chr(39))
    s = Replace(s, "µ", " ")
    DBFieldToGridString = s
End Function

Function completarConCeros(s As String, longitud As Integer) As String
    If Len(s) < longitud Then
        completarConCeros = String(longitud - Len(s), "0") & s
    Else
        completarConCeros = s
    End If
End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE FECHA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function DateToDB(Fecha As String) As String
    If Fecha <> "" Then
       'DateToDB = Format(Fecha, "yyyy/MM/dd HH:mm:ss")
       DateToDB = Format(Fecha, "DD/MM/YYYY HH:mm:ss")
        'DateToDB = Format(fecha, "yyyy") & "/" & Format(fecha, "mm") & "/" & Format(fecha, "dd")
    Else
        DateToDB = FECHA_NULA_SYS
    End If
End Function

Function DBToDate(Fecha As String) As String
    If Fecha = FECHA_NULA_SYS Then
        DBToDate = ""
    Else
        DBToDate = Fecha
    End If
End Function

Function esFechaValida(Fecha As String) As Boolean
On Error GoTo fechaErronea
    Dim s As String
    s = DateAdd("d", 1, Fecha)
    esFechaValida = True
    Exit Function
fechaErronea:
    esFechaValida = False
End Function


' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE PORCENTAJE
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Public Function getporcentaje(parte_ As Variant, total_ As Variant) As String
On Error GoTo Salir
    getporcentaje = CStr(Round(parte_ * 100 / total_))
Salir:
    getporcentaje = 0
End Function



' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE ARRAY
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Public Function getArrayLength(a As Variant) As Integer
On Error GoTo Salir
    getArrayLength = UBound(a)
'    Dim E As Variant
'    Dim i As Integer
'    i = 0'

'    For Each E In a
'        i = i + 1
'    Next E
'    getArrayLength = i - 1
Exit Function
Salir:
    getArrayLength = -1
End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE GRILLA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sub fillGrid(Grid As MSFlexGrid, RecordSet As ADODB.RecordSet, Keys As Integer)
On Error Resume Next
    MainMOD.setStatusMessage "Procesando..."

    Dim i As Integer
    Dim J As Integer
    Dim K As Integer

    Grid.Visible = False

    Grid.Rows = MAX_GRID_ROWS_SIZE_SYS + 1
    
    
    
    Grid.Clear

    Grid.Cols = RecordSet.Fields.Count

    Grid.Row = 0
    For i = 0 To RecordSet.Fields.Count - 1
        DoEvents
        Grid.Col = i
        Grid.Text = Str(RecordSet.Fields(i).name)
        
        For K = 0 To Keys - 1
            DoEvents
            If (i = K) Then
                Grid.ColWidth(i) = 0
                Exit For
            Else
                Grid.ColWidth(i) = Grid.Width / (RecordSet.Fields.Count - Keys)
            End If
        Next
    Next i
    

    J = 1
    Do While Not RecordSet.EOF
        DoEvents
        For i = 0 To RecordSet.Fields.Count '- 1
            DoEvents
            Grid.Row = J
            Grid.Col = i

            If RecordSet.Fields(i).ActualSize <> 0 Then
                Grid.CellAlignment = 1
                Grid.Text = Str((DBFieldToGridString(Str(RecordSet.Fields(i).value))))

                If (J Mod 2) = 0 Then
                    Grid.CellBackColor = RGB(255, 255, 255)
                Else
                    Grid.CellBackColor = RGB(242, 242, 242)
                End If

            End If
        Next i

        J = J + 1
        RecordSet.MoveNext
    Loop

    Grid.Row = 0
    Grid.Col = 0
    
    'afa 07/2009 cargo la grilla con el total de la grilla del resorset
    Grid.Rows = J
    

    Grid.Visible = True

    MainMOD.setStatusMessage "Listo."

End Sub

Sub fillGridComplete(Grid As MSFlexGrid, RecordSet As ADODB.RecordSet, Keys As Integer)
On Error Resume Next
    MainMOD.setStatusMessage "Procesando..."

    Dim i As Integer
    Dim J As Integer
    Dim K As Integer

    Grid.Visible = False


'    RecordSet.MoveLast
'    Grid.Rows = RecordSet.RecordCount + 1
    
    RecordSet.MoveFirst
    
    
    Grid.Clear

    Grid.Cols = RecordSet.Fields.Count

    Grid.Row = 0
    For i = 0 To RecordSet.Fields.Count - 1
        DoEvents
        Grid.Col = i
        Grid.Text = Str(RecordSet.Fields(i).name)
        
        For K = 0 To Keys - 1
            DoEvents
            If (i = K) Then
                Grid.ColWidth(i) = 0
                Exit For
            Else
                Grid.ColWidth(i) = Grid.Width / (RecordSet.Fields.Count - Keys)
            End If
        Next
    Next i
    

    J = 1
    Do While Not RecordSet.EOF
        DoEvents
        For i = 0 To RecordSet.Fields.Count '- 1
            DoEvents
            Grid.Row = J
            Grid.Col = i

            If RecordSet.Fields(i).ActualSize <> 0 Then
                Grid.CellAlignment = 1
                Grid.Text = Str((DBFieldToGridString(Str(RecordSet.Fields(i).value))))

                If (J Mod 2) = 0 Then
                    Grid.CellBackColor = RGB(255, 255, 255)
                Else
                    Grid.CellBackColor = RGB(242, 242, 242)
                End If

            End If
        Next i

        J = J + 1
        RecordSet.MoveNext
    Loop
    Grid.Row = 0
    Grid.Col = 0
    
    'afa 07/2009 cargo la grilla con el total de la grilla del resorset
    Grid.Rows = J
    

    Grid.Visible = True

    MainMOD.setStatusMessage "Listo."

End Sub

Function convertirGrillaAHtml(Grid As MSFlexGrid, Titulo As String, Keys As Integer) As String
    
    Dim i As Integer
    Dim J As Integer

    Dim s As String

    Dim AlternarColor As Boolean
    Dim ColorFondo As String

    Grid.Visible = False
    
    s = s & "<table bgcolor='#ffffff' border='0' cellspacing='1'>" & vbCrLf

    If Titulo <> "" Then
        s = s & "<tr>" & vbCrLf
            s = s & "<td bgcolor='#555555' colspan='" & Grid.Cols - Keys & "'>"
            s = s & "<font color='#ffffff'><b>" & Titulo & "</b></font>"
            s = s & "</td>" & vbCrLf
        s = s & "</tr>" & vbCrLf
    End If

    For i = 0 To Grid.Rows - 1

        s = s & "<tr>" & vbCrLf

        If i = 0 Then
            ColorFondo = "#cccccc"
        Else
            If AlternarColor Then
                ColorFondo = "#f5f5f5"
            Else
                ColorFondo = "#ffffff"
            End If
            AlternarColor = Not AlternarColor
        End If

        For J = Keys To Grid.Cols - 1

            Grid.Row = i
            Grid.Col = J
                
               s = s & "<td bgcolor='" & ColorFondo & "'>"

            If i = 0 Then
                s = s & "<b>"
                s = s & Grid.Text
                s = s & "</b>"
            Else
                s = s & Grid.Text
            End If

            s = s & "</td>" & vbCrLf

        Next J

        s = s & "</tr>" & vbCrLf

    Next i

    s = s & "</table>" & vbCrLf

    Grid.Visible = True
    
    convertirGrillaAHtml = s

End Function

Sub exportarGrillaAArchivo(Grid As MSFlexGrid, NombreArchivo As String, Titulo As String, Keys As Integer)

    Open NombreArchivo For Output As #1
       Print #1, convertirGrillaAHtml(Grid, Titulo, Keys)
    Close #1

End Sub

Function convertirQueryAHtml(RecordSet As ADODB.RecordSet, Titulo As String, Keys As Integer, mostrarHeader As Boolean) As String

    Dim i As Integer
    Dim J As Integer

    Dim s As String

    Dim AlternarColor As Boolean
    Dim ColorFondo As String

    s = s & "<table bgcolor='#ffffff' border='0' cellspacing='1' width='100%'>" & vbCrLf

    If mostrarHeader Then
        If Titulo <> "" Then
            s = s & "<tr>" & vbCrLf
                s = s & "<td bgcolor='#555555' colspan='" & RecordSet.Fields.Count - Keys & "'>"
                s = s & "<font color='#ffffff'><b>" & Titulo & "</b></font>"
                s = s & "</td>" & vbCrLf
            s = s & "</tr>" & vbCrLf
        End If
    End If
    
    
    RecordSet.MoveFirst
    

    Do While Not RecordSet.EOF
        DoEvents
        s = s & "<tr>" & vbCrLf

        If i = 0 And mostrarHeader Then
            ColorFondo = "#cccccc"
        
        
            'afa 072009 cargo aca los encabezados porque sino se comia un registro
            For J = Keys To RecordSet.Fields.Count - 1
    
                s = s & "<td bgcolor='" & ColorFondo & "' width='" & Round(100 / (RecordSet.Fields.Count - Keys)) & "%'>"
    
                s = s & "<b>"
                s = s & RecordSet.Fields(J).name
                s = s & "</b>"
                s = s & "</td>" & vbCrLf
    
            Next J
    
            s = s & "</tr>" & vbCrLf
            '''''''''''''''''''''''''''
        Else
            If AlternarColor Then
                ColorFondo = "#f5f5f5"
            Else
                ColorFondo = "#ffffff"
            End If
            AlternarColor = Not AlternarColor
        End If
        


        For J = Keys To RecordSet.Fields.Count - 1

            s = s & "<td bgcolor='" & ColorFondo & "' width='" & Round(100 / (RecordSet.Fields.Count - Keys)) & "%'>"

'            If i = 0 And mostrarHeader Then
'                s = s & "<b>"
'                s = s & RecordSet.Fields(J).name
'                s = s & "</b>"
'
'            Else
'                s = s & RecordSet.Fields(J).value
'            End If

            s = s & RecordSet.Fields(J).value

            s = s & "</td>" & vbCrLf

        Next J

        s = s & "</tr>" & vbCrLf

        RecordSet.MoveNext
        i = i + 1
    Loop

    s = s & "</table>" & vbCrLf

    convertirQueryAHtml = s

End Function

Sub exportarQueryAArchivo(RecordSet As ADODB.RecordSet, NombreArchivo As String, Titulo As String, Keys As Integer, mostrarHeader As Boolean)

    Open NombreArchivo For Append As #1
       Print #1, convertirQueryAHtml(RecordSet, Titulo, Keys, mostrarHeader)
    Close #1

End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE CONTROLES
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sub llenarComboNumeros(Combo As Object, Cantidad As Long, empiezaEnCero As Boolean)
    Dim i As Integer
    Combo.Clear
    If Cantidad < 0 Then
        Cantidad = 0
    End If
 'afa 07/2009
 'si empiezaencero es false, el for es hasta cantidad-1
 
 
     If empiezaEnCero Then
        For i = 0 To Cantidad
            Combo.List(i) = i
            Combo.ItemData(i) = i
        Next
     Else
        For i = 0 To Cantidad - 1
            Combo.List(i) = i + 1
            Combo.ItemData(i) = i + 1
        Next
     End If

    
'afa
'    For i = 0 To Cantidad
'        If empiezaEnCero Then
'            Combo.List(i) = i
'            Combo.ItemData(i) = i
'        Else
'            Combo.List(i) = i + 1
'            Combo.ItemData(i) = i + 1
'        End If
'    Next
   On Error Resume Next
   Combo.ListIndex = 0
End Sub


Sub llenarListaPaises(Combo As Object)

    Combo.AddItem "Afganistán"
    Combo.AddItem "Albania"
    Combo.AddItem "Alemania"
    Combo.AddItem "Andorra"
    Combo.AddItem "Angola"
    Combo.AddItem "Anguila"
    Combo.AddItem "Antártida"
    Combo.AddItem "Antigua y Barbuda"
    Combo.AddItem "Antillas Neerlandesas"
    Combo.AddItem "Arabia Saudita"
    Combo.AddItem "Argelia"
    Combo.AddItem "Argentina"
    Combo.AddItem "Armenia"
    Combo.AddItem "Aruba"
    Combo.AddItem "Australia"
    Combo.AddItem "Austria"
    Combo.AddItem "Azerbaiyán"
    Combo.AddItem "Bahamas"
    Combo.AddItem "Bahréin"
    Combo.AddItem "Bangladesh"
    Combo.AddItem "Barbados"
    Combo.AddItem "Bélgica"
    Combo.AddItem "Belice"
    Combo.AddItem "Benín"
    Combo.AddItem "Bermudas"
    Combo.AddItem "Bielorrusia"
    Combo.AddItem "Bolivia"
    Combo.AddItem "Bosnia-Herzegovina"
    Combo.AddItem "Botsuana"
    Combo.AddItem "Brasil"
    Combo.AddItem "Brunei Darussalam"
    Combo.AddItem "Bulgaria"
    Combo.AddItem "Burkina Faso"
    Combo.AddItem "Burundi"
    Combo.AddItem "Bután"
    Combo.AddItem "Cabo Verde"
    Combo.AddItem "Camboya"
    Combo.AddItem "Camerún"
    Combo.AddItem "Canadá"
    Combo.AddItem "Chad"
    Combo.AddItem "Chile"
    Combo.AddItem "Chipre"
    Combo.AddItem "Ciudad del Vaticano"
    Combo.AddItem "Colombia"
    Combo.AddItem "Comoras"
    Combo.AddItem "Corea del Sur"
    Combo.AddItem "Costa de Marfil"
    Combo.AddItem "Costa Rica"
    Combo.AddItem "Croacia"
    Combo.AddItem "Cuba"
    Combo.AddItem "Dinamarca"
    Combo.AddItem "Dominica"
    Combo.AddItem "Ecuador"
    Combo.AddItem "Egipto"
    Combo.AddItem "El Salvador"
    Combo.AddItem "Emiratos Árabes Unidos"
    Combo.AddItem "Eritrea"
    Combo.AddItem "Eslovaquia"
    Combo.AddItem "Eslovenia"
    Combo.AddItem "España"
    Combo.AddItem "Estados Federados de Micronesia"
    Combo.AddItem "Estados Unidos"
    Combo.AddItem "Estonia"
    Combo.AddItem "Etiopía"
    Combo.AddItem "Fiji"
    Combo.AddItem "Filipinas"
    Combo.AddItem "Finlandia"
    Combo.AddItem "Francia"
    Combo.AddItem "Gabón"
    Combo.AddItem "Gambia"
    Combo.AddItem "Georgia"
    Combo.AddItem "Ghana"
    Combo.AddItem "Gibraltar"
    Combo.AddItem "Granada"
    Combo.AddItem "Grecia"
    Combo.AddItem "Groenlandia"
    Combo.AddItem "Guadalupe"
    Combo.AddItem "Guam"
    Combo.AddItem "Guatemala"
    Combo.AddItem "Guayana Francesa"
    Combo.AddItem "Guernesey"
    Combo.AddItem "Guinea"
    Combo.AddItem "Guinea Ecuatorial"
    Combo.AddItem "Guinea-Bissáu"
    Combo.AddItem "Guyana"
    Combo.AddItem "Haití"
    Combo.AddItem "Honduras"
    Combo.AddItem "Hong Kong"
    Combo.AddItem "Hungría"
    Combo.AddItem "India"
    Combo.AddItem "Indonesia"
    Combo.AddItem "Irán"
    Combo.AddItem "Irlanda"
    Combo.AddItem "Isla Ascensión"
    Combo.AddItem "Isla de Jersey"
    Combo.AddItem "Isla de Man"
    Combo.AddItem "Isla de Navidad"
    Combo.AddItem "Isla Norfolk"
    Combo.AddItem "Islandia"
    Combo.AddItem "Islas Caimán"
    Combo.AddItem "Islas Cocos"
    Combo.AddItem "Islas Cook"
    Combo.AddItem "Islas Feroe"
    Combo.AddItem "Islas Georgias del Sur y Sandwich del Sur"
    Combo.AddItem "Islas Heard y McDonald"
    Combo.AddItem "Islas Malvinas"
    Combo.AddItem "Islas Marianas del Norte"
    Combo.AddItem "Islas Marshall"
    Combo.AddItem "Islas Pitcairn"
    Combo.AddItem "Islas Salomón"
    Combo.AddItem "Islas Turcas y Caicos"
    Combo.AddItem "Islas Ultramarinas de Estados Unidos"
    Combo.AddItem "Islas Vírgenes Británicas"
    Combo.AddItem "Islas Vírgenes de los Estados Unidos"
    Combo.AddItem "Israel"
    Combo.AddItem "Italia"
    Combo.AddItem "Jamaica"
    Combo.AddItem "Japón"
    Combo.AddItem "Jordania"
    Combo.AddItem "Kazajstán"
    Combo.AddItem "Kenia"
    Combo.AddItem "Kirguistán"
    Combo.AddItem "Kiribati"
    Combo.AddItem "Kuwait"
    Combo.AddItem "Laos"
    Combo.AddItem "Lesotho"
    Combo.AddItem "Letonia"
    Combo.AddItem "Líbano"
    Combo.AddItem "Liberia"
    Combo.AddItem "Libia"
    Combo.AddItem "Liechtenstein"
    Combo.AddItem "Lituania"
    Combo.AddItem "Luxemburgo"
    Combo.AddItem "Macao"
    Combo.AddItem "Madagascar"
    Combo.AddItem "Malasia"
    Combo.AddItem "Malawi"
    Combo.AddItem "Maldivas"
    Combo.AddItem "Malí"
    Combo.AddItem "Malta"
    Combo.AddItem "Marruecos"
    Combo.AddItem "Martinica"
    Combo.AddItem "Mauricio"
    Combo.AddItem "Mauritania"
    Combo.AddItem "Mayotte"
    Combo.AddItem "México"
    Combo.AddItem "Moldavia"
    Combo.AddItem "Mónaco"
    Combo.AddItem "Mongolia"
    Combo.AddItem "Montserrat"
    Combo.AddItem "Mozambique"
    Combo.AddItem "Myanmar"
    Combo.AddItem "Namibia"
    Combo.AddItem "Nauru"
    Combo.AddItem "Nepal"
    Combo.AddItem "Nicaragua"
    Combo.AddItem "Níger"
    Combo.AddItem "Nigeria"
    Combo.AddItem "Niue"
    Combo.AddItem "Noruega"
    Combo.AddItem "Nueva Caledonia"
    Combo.AddItem "Nueva Zelanda"
    Combo.AddItem "Omán"
    Combo.AddItem "Países Bajos"
    Combo.AddItem "Pakistán"
    Combo.AddItem "Palau"
    Combo.AddItem "Palestina"
    Combo.AddItem "Panamá"
    Combo.AddItem "Papúa Nueva Guinea"
    Combo.AddItem "Paraguay"
    Combo.AddItem "Perú"
    Combo.AddItem "Polinesia Francesa"
    Combo.AddItem "Polonia"
    Combo.AddItem "Portugal"
    Combo.AddItem "Puerto Rico"
    Combo.AddItem "Qatar"
    Combo.AddItem "Reino Unido"
    Combo.AddItem "República Centroafricana"
    Combo.AddItem "República Checa"
    Combo.AddItem "República de Macedonia"
    Combo.AddItem "República del Congo"
    Combo.AddItem "República Dominicana"
    Combo.AddItem "República Popular China"
    Combo.AddItem "Reunión"
    Combo.AddItem "Ruanda"
    Combo.AddItem "Rumania"
    Combo.AddItem "Rusia"
    Combo.AddItem "Samoa"
    Combo.AddItem "Samoa Americana"
    Combo.AddItem "San Cristóbal y Nevis"
    Combo.AddItem "San Marino"
    Combo.AddItem "San Pedro y Miquelón"
    Combo.AddItem "San Vicente y las Granadinas"
    Combo.AddItem "Santa Helena"
    Combo.AddItem "Santa Lucía"
    Combo.AddItem "Santo Tomé y Príncipe"
    Combo.AddItem "Senegal"
    Combo.AddItem "Seychelles"
    Combo.AddItem "Sierra Leona"
    Combo.AddItem "Singapur"
    Combo.AddItem "Siria"
    Combo.AddItem "Somalia"
    Combo.AddItem "Sri Lanka"
    Combo.AddItem "Sudáfrica"
    Combo.AddItem "Sudán"
    Combo.AddItem "Suecia"
    Combo.AddItem "Suiza"
    Combo.AddItem "Surinam"
    Combo.AddItem "Swazilandia"
    Combo.AddItem "Tailandia"
    Combo.AddItem "Taiwán"
    Combo.AddItem "Tanzania"
    Combo.AddItem "Tayikistán"
    Combo.AddItem "Territorio Británico en el Océano Índico"
    Combo.AddItem "Territorios Australes Franceses"
    Combo.AddItem "Timor Oriental"
    Combo.AddItem "Togo"
    Combo.AddItem "Tokelau"
    Combo.AddItem "Tonga"
    Combo.AddItem "Trinidad y Tobago"
    Combo.AddItem "Túnez"
    Combo.AddItem "Turkmenistán"
    Combo.AddItem "Turquía"
    Combo.AddItem "Tuvalu"
    Combo.AddItem "Ucrania"
    Combo.AddItem "Uganda"
    Combo.AddItem "Unidos"
    Combo.AddItem "Unión Europea"
    Combo.AddItem "Uruguay"
    Combo.AddItem "Uzbekistán"
    Combo.AddItem "Vanuatu"
    Combo.AddItem "Venezuela"
    Combo.AddItem "Vietnam"
    Combo.AddItem "Wallis y Futuna"
    Combo.AddItem "Yemen"
    Combo.AddItem "Yibuti"
    Combo.AddItem "Yugoslavia"
    Combo.AddItem "Zaire"
    Combo.AddItem "Zambia"
    Combo.AddItem "Zimbabwe"

    Combo.ListIndex = 11

End Sub



Sub llenarListaEstadoLote(Combo As Object)

    Combo.AddItem "Baldío"
    Combo.AddItem "En Obra"
    Combo.AddItem "Residencia Permanente"
    Combo.AddItem "Residencia Ocasional"

    Combo.ListIndex = 1

End Sub




Sub llenarListaProvinciasArgentinas(Combo As Object)

    Combo.AddItem "Buenos Aires"
    Combo.AddItem "Catamarca"
    Combo.AddItem "Chaco"
    Combo.AddItem "Chubut"
    Combo.AddItem "Ciudad de Buenos Aires"
    Combo.AddItem "Córdoba"
    Combo.AddItem "Corrientes"
    Combo.AddItem "Entre Ríos"
    Combo.AddItem "Formosa"
    Combo.AddItem "Jujuy"
    Combo.AddItem "La Pampa"
    Combo.AddItem "La Rioja"
    Combo.AddItem "Mendoza"
    Combo.AddItem "Misiones"
    Combo.AddItem "Neuquén"
    Combo.AddItem "Río Negro"
    Combo.AddItem "Salta"
    Combo.AddItem "San Juan"
    Combo.AddItem "San Luis"
    Combo.AddItem "Santa Cruz"
    Combo.AddItem "Santa Fe"
    Combo.AddItem "Santiago del Estero"
    Combo.AddItem "Tierra del Fuego"
    Combo.AddItem "Tucumán"

    Combo.ListIndex = 4

End Sub

Function llenarDiasDeLaSemana(Combo As Object)

    Combo.AddItem "Domingo"

    Combo.AddItem "Lunes"

    Combo.AddItem "Martes"

    Combo.AddItem "Miércoles"

    Combo.AddItem "Jueves"

    Combo.AddItem "Viernes"

    Combo.AddItem "Sábado"

End Function

Function obtenerDeLaSemana(numeroDia As Integer) As String

    Select Case numeroDia
        Case 0:
            obtenerDeLaSemana = "Domingo"
        Case 1:
            obtenerDeLaSemana = "Lunes"
        Case 2:
            obtenerDeLaSemana = "Martes"
        Case 3:
            obtenerDeLaSemana = "Miércoles"
        Case 4:
            obtenerDeLaSemana = "Jueves"
        Case 5:
            obtenerDeLaSemana = "Viernes"
        Case 6:
            obtenerDeLaSemana = "Sábado"
    End Select

End Function

Function obtenerHora(numeroHora As Integer) As String

    Dim hora As String
    Dim inicioHora As String
    Dim finHora As String

    hora = CStr(numeroHora)
    
    finHora = completarConCeros(Right(hora, 2), 2)

    If Len(hora) = 4 Then
        inicioHora = Left(hora, 2)
    Else
        inicioHora = completarConCeros(Left(hora, 1), 2)
    End If

    obtenerHora = inicioHora & ":" & finHora

End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE ACCESO A ARCHIVOS INI
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function getPrivateProfileString(section$, key$, File$) As String
    Dim KeyValue$
    Dim characters As Long
    KeyValue$ = String$(128, 0)
    characters = GetPrivateProfileStringByKeyName(section$, key$, "", KeyValue$, 127, File$)
    If (characters = 0) Then
        KeyValue$ = ""
    Else
        KeyValue$ = Left$(KeyValue$, characters)
    End If
    getPrivateProfileString = KeyValue$
End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE ACCESO AL SHELL
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Public Function StartDoc(ByRef Document As String, ByRef directorio As String, Optional ShowError As Boolean = False) As Boolean
    Dim Scr_hDC As Long
    Dim rtn  As Long

On Error GoTo Salir
    Scr_hDC = GetDesktopWindow()
    rtn = ShellExecute(Scr_hDC, "OPEN", Document, "", directorio, SW_SHOWNORMAL)
    If ShowError Then
       ShowErrorMessage rtn
    Else
        StartDoc = True
    End If
Salir:
End Function

Private Sub ShowErrorMessage(r As Long)
    Dim s As String
    If r <= 32 Then 'There was an error
        Select Case r
            Case SE_ERR_FNF
                s = "Archivo no encontrado"             '"File not found"
            Case SE_ERR_PNF
                s = "Ruta no encontrada"                '"Path not found"
            Case SE_ERR_ACCESSDENIED
                s = "Acceso Negado"                     '"Access denied"
            Case SE_ERR_OOM
                s = "Fuera de Memoria"                  '"Out of memory"
            Case SE_ERR_DLLNOTFOUND
                s = "Dll no encontrada"                 '"DLL not found"
            Case SE_ERR_SHARE
                s = "Violacion de Vinculación"          '"A sharing violation occurred"
            Case SE_ERR_ASSOCINCOMPLETE
                s = "Error de vinculacion a archivo"    '"Incomplete or invalid file association"
            Case SE_ERR_DDETIMEOUT
                s = "DDE Tiempo excedido"                '"DDE Time out"
            Case SE_ERR_DDEFAIL
                s = "DDE fallo de transacción"          '"DDE transaction failed"
            Case SE_ERR_DDEBUSY
                s = "DDE Ocupada"                       '"DDE busy"
            Case SE_ERR_NOASSOC
                s = "Extension de Archivo no asociada"  '"No association for file extension"
            Case ERROR_BAD_FORMAT
                s = "Invalido archivo exe"              '"Invalid EXE file or error in EXE image"
            Case Else
                s = "Error desconocido"                 '"Unknown error"
        End Select
        MsgBox s, vbInformation
    End If
End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES DE TARJETA DE RED
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Private Function HexEx(ByVal b As Long) As String
    Dim aa As String

    aa = Hex$(b)
    If Len(aa) < 2 Then
        aa = "0" & aa
    End If
    HexEx = aa
End Function

Function getMacAddress() As String

    Dim bRet    As Byte
    Dim myNcb   As NCB
    Dim myASTAT As ASTAT
    Dim pASTAT  As Long

    myNcb.ncb_command = NCBRESET
    bRet = Netbios(myNcb)

    With myNcb
        .ncb_command = NCBASTAT
        .ncb_lana_num = 0
        .ncb_callname = "* "
        .ncb_length = Len(myASTAT)
        pASTAT = HeapAlloc(GetProcessHeap(), HEAP_GENERATE_EXCEPTIONS Or HEAP_ZERO_MEMORY, .ncb_length)
    End With

    If pASTAT = 0 Then
        Exit Function
    End If
    myNcb.ncb_buffer = pASTAT
    bRet = Netbios(myNcb)
    CopyMemory myASTAT, myNcb.ncb_buffer, Len(myASTAT)

    Call HeapFree(GetProcessHeap(), 0, pASTAT)

    getMacAddress = HexEx(myASTAT.adapt.adapter_address(0)) & "-" & HexEx(myASTAT.adapt.adapter_address(1)) & "-" & HexEx(myASTAT.adapt.adapter_address(2)) & "-" & HexEx(myASTAT.adapt.adapter_address(3)) & "-" & HexEx(myASTAT.adapt.adapter_address(4)) & "-" & HexEx(myASTAT.adapt.adapter_address(5))

End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES PARA GUID
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Public Function GetGUID() As String '(c) 2000 Gus Molina
    Dim udtGUID As GUID

    If (CoCreateGuid(udtGUID) = 0) Then

        GetGUID = _
        String(8 - Len(Hex$(udtGUID.Data1)), "0") & Hex$(udtGUID.Data1) & _
        String(4 - Len(Hex$(udtGUID.Data2)), "0") & Hex$(udtGUID.Data2) & _
        String(4 - Len(Hex$(udtGUID.Data3)), "0") & Hex$(udtGUID.Data3) & _
        IIf((udtGUID.Data4(0) < &H10), "0", "") & Hex$(udtGUID.Data4(0)) & _
        IIf((udtGUID.Data4(1) < &H10), "0", "") & Hex$(udtGUID.Data4(1)) & _
        IIf((udtGUID.Data4(2) < &H10), "0", "") & Hex$(udtGUID.Data4(2)) & _
        IIf((udtGUID.Data4(3) < &H10), "0", "") & Hex$(udtGUID.Data4(3)) & _
        IIf((udtGUID.Data4(4) < &H10), "0", "") & Hex$(udtGUID.Data4(4)) & _
        IIf((udtGUID.Data4(5) < &H10), "0", "") & Hex$(udtGUID.Data4(5)) & _
        IIf((udtGUID.Data4(6) < &H10), "0", "") & Hex$(udtGUID.Data4(6)) & _
        IIf((udtGUID.Data4(7) < &H10), "0", "") & Hex$(udtGUID.Data4(7))

    End If

End Function

Function generarNombreArchivoAleatorio(Nombre As String, Extension As String) As String
    generarNombreArchivoAleatorio = Nombre & GetGUID & "." & Extension
End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES PARA OBTENER NOMBRE DE MAQUINA DE WINDOWS
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function getWindowsComputerName()
    Dim dwLen As Long
    Dim strString As String

    dwLen = MAX_COMPUTERNAME_LENGTH + 1
    strString = String(dwLen, "X")

    getComputerName strString, dwLen

    strString = Left(strString, dwLen)

    getWindowsComputerName = strString
End Function


' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES PARA TckSVR
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Public Function FF(ByVal Fecha As Date) As String
  'FF = Format(Fecha, "yyyy-mm-dd HH:mm:ss")
   FF = Format(Fecha, "dd/mm/yyyy HH:mm:ss")
End Function


' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES PARA RECONOCIMIENTO DE TIPO
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Function esEntero(Numero As String) As Boolean
On Error GoTo errorhandler
    Dim l As Long
    l = CLng(Numero)
    esEntero = True
    Exit Function
errorhandler:
    esEntero = False
End Function

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES PARA RECONOCIMIENTO DE TIPO
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Function FormatearFechaMySQL(Fecha As String) As String
On Error GoTo errorhandler:
    Dim i As Integer
    Dim primerBarra As Integer
    Dim segundaBarra As Integer
    Dim DD, MM, YY As Integer
    
    If Fecha = "" Then Exit Function
    
    For i = 1 To Len(Fecha)
        If Right(Left(Fecha, i), 1) = "/" Then
            DD = CInt(Left(Fecha, i - 1))
            primerBarra = i
            Exit For
        End If
    Next

    For i = 1 To Len(Fecha)
        If Right(Left(Fecha, i), 1) = "/" Then
            MM = CInt(Mid(Fecha, primerBarra + 1, i - 1))
            segundaBarra = i
            Exit For
        End If
    Next

    YY = CInt(Right(Fecha, segundaBarra + 1))
    
    FormatearFechaMySQL = CStr(YY) + "-" + completarConCeros(CStr(MM), 2) + "-" + completarConCeros(CStr(DD), 2)
    Exit Function
errorhandler:
    FormatearFechaMySQL = ""
    Exit Function
End Function


Public Function Path_Relativo_Fecha(ByVal Path_Destino As String, _
                                    ByVal Fecha_Relativa As Date) As String
Dim Path_ As String
On Error GoTo Salir
    Path_ = (Path_Destino & "\" & Format(Fecha_Relativa, "YYYYMMDD"))
    Call Crear_Directorio(Path_)
    Path_Relativo_Fecha = Path_
    
Salir:
End Function

Private Sub Crear_Directorio(ByRef Ruta As String)
On Error GoTo ya_creado
    MkDir Ruta
ya_creado:
End Sub


Public Function Verificar_Existencia_Archivo(ByRef RefArchivo As String) As Boolean
On Error GoTo noexiste

kk = PuestoControlManualMOD.mi_tck.TicketID

kk1 = FileLen(RefArchivo)
  If (FileLen(RefArchivo)) > 0 Then
    Verificar_Existencia_Archivo = True
  End If
  
Exit Function
noexiste:
End Function

'nuevo
Public Function Str(ByRef Cadena As Variant) As String
On Error GoTo Salir
  
  'If (cadena = Null) Then
    Str = Cadena
  'End If
  
Salir:
End Function

Public Function Separar_en_Vector(ByRef Cadena As String, _
                                  ByRef Vector() As String) As Boolean

Dim Largo As Integer
Dim Indice As Integer
Dim Dimension As Integer
Dim Caracter As String
Dim Palabra As String

On Error GoTo Salir
'****** Esta función me sirve para poder realizar busquedas por mas de un criterio*******
'****** como por ejemplo: Nombre y Apellido y que no sea tomada como un solo string*******
'
' recibo una cadena y separa las palabras en un vector
  
  Largo = Len(Cadena)
  Indice = 1
  Dimension = -1
  
  For Indice = 1 To Largo 'recorre la cadena
    Caracter = Mid$(Cadena, Indice, 1)
    If (Caracter <> " ") Then
      Palabra = Palabra & Caracter
    Else
      If Palabra <> "" Then 'si tiene algo
        Dimension = Dimension + 1
        ReDim Preserve Vector(Dimension)
        Vector(Dimension) = Palabra
        Palabra = ""
      End If
    End If
  Next
  
  If Palabra <> "" Then 'si tiene algo
    Dimension = Dimension + 1
    ReDim Preserve Vector(Dimension)
    Vector(Dimension) = Palabra
  End If
  
  Separar_en_Vector = True
  
Salir:
End Function


Public Sub Mostrar_Cartel(Texto As String)
On Error Resume Next
    SplashScreenMOD.Caption = "Aguarde unos instantes ..."
    SplashScreenMOD.lblMensaje.Caption = Texto
    SplashScreenMOD.Show
    SplashScreenMOD.MousePointer = 11
    SplashScreenMOD.Refresh
    DoEvents
End Sub

Public Sub Descargar_Cartel()
On Error Resume Next
    SplashScreenMOD.MousePointer = 0
    Unload SplashScreenMOD
    Set SplashScreenMOD = Nothing
End Sub

Public Sub Cargar_Foto(ByRef controlimagen As Image, ByVal imagen_ As String)
On Error GoTo Salir
    ''Verificamos que exista el archivo FMV
    Dim oFso

    Set oFso = CreateObject("Scripting.filesystemObject")
    
    If oFso.FileExists(imagen_) Then
        controlimagen = LoadPicture(imagen_)
        controlimagen.ToolTipText = "imagen"
    End If
    
Exit Sub
Salir:
    controlimagen = LoadPicture("")
    controlimagen.ToolTipText = ""
End Sub

Sub exportarArrayArchivo(ByRef V() As String, NombreArchivo As String, Titulo As String, Keys As Integer, mostrarHeader As Boolean)

    Open NombreArchivo For Append As #1
       Print #1, convertirArrayHtml(V(), Titulo, Keys, mostrarHeader)
    Close #1

End Sub
Function convertirArrayHtml(ByRef V() As String, _
                            Titulo As String, _
                            ancho As Integer, _
                            mostrarHeader As Boolean) As String
'trabajando
    Dim i As Integer
    Dim J As Integer
    Dim t_vector As Integer

    Dim s As String

    Dim AlternarColor As Boolean
    Dim ColorFondo As String
On Error GoTo Salir
   t_vector = UBound(V)
    s = s & "<table bgcolor='#ffffff' border='0' cellspacing='1' width='100%'>" & vbCrLf

    If mostrarHeader Then
        If Titulo <> "" Then
            s = s & "<tr>" & vbCrLf
                s = s & "<td bgcolor='#555555' colspan='" & ancho & "'>"
                s = s & "<font color='#ffffff'><b>" & Titulo & "</b></font>"
                s = s & "</td>" & vbCrLf
            s = s & "</tr>" & vbCrLf
        End If
    End If

    For i = 0 To t_vector

        s = s & "<tr>" & vbCrLf

        If i = 0 And mostrarHeader Then
            ColorFondo = "#cccccc"
        Else
            If AlternarColor Then
                ColorFondo = "#f5f5f5"
            Else
                ColorFondo = "#ffffff"
            End If
            AlternarColor = Not AlternarColor
        End If

       ' For J = 0 To ancho

            s = s & "<td bgcolor='" & ColorFondo & "' width='" & Round(100 / (i + 1)) & "%'>"

            If i = 0 And mostrarHeader Then
                s = s & "<b>"
                s = s & V(i)
                s = s & "</b>"
            Else
                s = s & V(i)
            End If

            s = s & "</td>" & vbCrLf

      '  Next J

        s = s & "</tr>" & vbCrLf

       ' i = i + 1
    Next

    s = s & "</table>" & vbCrLf

    convertirArrayHtml = s
Salir:
 'MsgBox Err.Description
End Function


Public Function Exportar_Excel(sOutputPath As String, FlexGrid As Object) As Boolean
  
       On Error GoTo Error_Handler
  
       Dim o_Excel     As Object
       Dim o_Libro     As Object
       Dim o_Hoja      As Object
       Dim Fila        As Long
       Dim Columna     As Long
  
       ' -- Crea el objeto Excel, el objeto workBook y el objeto sheet
       Set o_Excel = CreateObject("Excel.Application")
       Set o_Libro = o_Excel.Workbooks.Add
       Set o_Hoja = o_Libro.Worksheets.Add
  
       ' -- Bucle para Exportar los datos
       With FlexGrid
           For Fila = 1 To .Rows - 1
               For Columna = 0 To .Cols - 1
                   o_Hoja.Cells(Fila, Columna + 1).value = .TextMatrix(Fila, Columna)
               Next
           Next
       End With
       o_Libro.Close True, sOutputPath
       ' -- Cerrar Excel
       o_Excel.Quit
       ' -- Terminar instancias
       Call ReleaseObjects(o_Excel, o_Libro, o_Hoja)
       Exportar_Excel = True
   Exit Function
  
  ' -- Controlador de Errores
Error_Handler:
       ' -- Cierra la hoja y el la aplicación Excel
       If Not o_Libro Is Nothing Then: o_Libro.Close False
       If Not o_Excel Is Nothing Then: o_Excel.Quit
       Call ReleaseObjects(o_Excel, o_Libro, o_Hoja)
       If Err.Number <> 1004 Then MsgBox Err.Description, vbCritical
   End Function
   ' -------------------------------------------------------------------
   ' \\ -- Eliminar objetos para liberar recursos
   ' -------------------------------------------------------------------
   Public Sub ReleaseObjects(o_Excel As Object, o_Libro As Object, o_Hoja As Object)
       If Not o_Excel Is Nothing Then Set o_Excel = Nothing
       If Not o_Libro Is Nothing Then Set o_Libro = Nothing
       If Not o_Hoja Is Nothing Then Set o_Hoja = Nothing
  End Sub

   ' -------------------------------------------------------------------
   ' afa 07/2009
   ' chequeo de conexion a la base en cada consulta sql
   ' -------------------------------------------------------------------

Public Function Chequear_conexion_Motor_MySQL() As Boolean

  
Dim Cmd As ADODB.Command
Dim Rst As ADODB.RecordSet
    
    Chequear_conexion_Motor_MySQL = False
    
    On Error GoTo Salir
  
    
    
    Set Cmd = New ADODB.Command
    Cmd.ActiveConnection = DbConnectionSYS
    Cmd.CommandText = "SELECT 1+1"
    Set Rst = Cmd.Execute()
   
    Chequear_conexion_Motor_MySQL = True
    Exit Function
      
Salir:
    'MsgBox Err.Description
    Set Cmd = Nothing
    Set Rst = Nothing
    On Error GoTo Terminar
    DesconnectDatabase
    Sleep (1000)             'meto una demora de 1 segundo
    If Not connectDatabase Then
        MsgBox "La conexion a la base de Datos: " & _
               "VideoMan" & vbCrLf & "Se encuentra cerrada" & vbCrLf & _
               "Por Favor reintente la operación", vbCritical
                 
          'afa 072009 End
          ' si no esta la base no cierro el programa, intento despues reconectarme
          Chequear_conexion_Motor_MySQL = False
          Exit Function
    End If
        'Terminar_programa
       
    Chequear_conexion_Motor_MySQL = True
    Exit Function

Terminar:

    Chequear_conexion_Motor_MySQL = False

End Function


