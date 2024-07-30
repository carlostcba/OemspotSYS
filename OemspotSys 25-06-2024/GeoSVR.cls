VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "GeoSVR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit

Private mvarIpHost As String
Private mvarCmdPort As Long
Private mvarDataPort As Long
Private mvarUser As String
Private mvarPsw As String

'propiedades de solo lectura
Private mvarPATH_IMAGENES_PERSONAS As String
Private mvarPATH_IMAGENES_VISITA_INGRESOS As String
Private mvarPATH_IMAGENES_VISITA_SALIDAS As String
Private mvarPATH_IMAGENES_MOVIMIENTOS As String

''Agregado FMV
Private mvarPATH_DNI_PERSONAS As String

Private mvarGeoVisionConectada As Boolean

Public Property Get GeoVisionConectada() As Boolean
    GeoVisionConectada = mvarGeoVisionConectada
End Property


Public Property Get PATH_IMAGENES_PERSONAS() As String
    PATH_IMAGENES_PERSONAS = mvarPATH_IMAGENES_PERSONAS
End Property

Public Property Get PATH_IMAGENES_VISITA_INGRESOS() As String
    PATH_IMAGENES_VISITA_INGRESOS = mvarPATH_IMAGENES_VISITA_INGRESOS
End Property

Public Property Get PATH_IMAGENES_VISITA_SALIDAS() As String
    PATH_IMAGENES_VISITA_SALIDAS = mvarPATH_IMAGENES_VISITA_SALIDAS
End Property

Public Property Get PATH_IMAGENES_MOVIMIENTOS() As String
    PATH_IMAGENES_MOVIMIENTOS = mvarPATH_IMAGENES_MOVIMIENTOS
End Property
''Agregado FMV
Public Property Get PATH_DNI_PERSONAS() As String
    PATH_DNI_PERSONAS = mvarPATH_DNI_PERSONAS
End Property

Public Function Cargar_Propiedades_GEO(ByRef mycn As ADODB.Connection, _
                           ByRef GrupoModulos_ As Long, Optional NoCargarPath As Boolean) As Boolean
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
    
    mvarGeoVisionConectada = False
    
    ''No se hace falta siempre volver a cargar por diooooos
    If NoCargarPath = False Then
        Call Buscar_PATH_IMAGENES_PERSONAS(mycn)
        Call Buscar_PATH_IMAGENES_VISITA_INGRESOS(mycn)
        Call Buscar_PATH_IMAGENES_VISITA_SALIDAS(mycn)
        Call Buscar_PATH_IMAGENES_MOVIMIENTOS(mycn)
        '''FMV
        Call Buscar_PATH_DNI_PERSONAS(mycn)
        '''
    End If
    
    Call Buscar_GEO(mycn, GrupoModulos_)
    Cargar_Propiedades_GEO = True

Salir:
Set Rst = Nothing
End Function

Private Function Buscar_GEO(ByRef mycn As ADODB.Connection, _
                           ByRef GrupoModulos_ As Long) As Boolean
Dim oRs As New ADODB.RecordSet
On Error GoTo Salir
    
        
    oRs.Open "SELECT geo.IpHost, geo.CmdPort, geo.DataPort, geo.[User], geo.Psw " & _
    " FROM geo INNER JOIN geogrpmdl ON geo.GeoID = geogrpmdl.GeoID" & _
    " WHERE geogrpmdl.GrupoModulos = " & GrupoModulos_, mycn, adOpenStatic, adLockReadOnly
               
    If Not oRs.EOF Then
        mvarIpHost = oRs.Fields("IpHost")
        mvarCmdPort = oRs.Fields("CmdPort")
        mvarDataPort = oRs.Fields("DataPort")
        mvarUser = oRs.Fields("User")
        mvarPsw = oRs.Fields("Psw")
        Set oRs = Nothing
        Buscar_GEO = True
    End If
    
    Exit Function
Salir:
    MsgBox Err.Description
    Set oRs = Nothing
End Function

Private Function Buscar_PATH_IMAGENES_PERSONAS(ByRef mycn As ADODB.Connection) As Boolean
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
        
    Set Rst = New ADODB.RecordSet
    Rst.Open "SELECT Valor " & _
    " FROM cfgopt " & _
    " WHERE ConfiguracionID = 2 AND OpcionID = 5 ", mycn, adOpenStatic, adLockReadOnly
                      
    mvarPATH_IMAGENES_PERSONAS = Rst!valor
    Rst.Close
    Buscar_PATH_IMAGENES_PERSONAS = True

Salir:
Set Rst = Nothing
End Function

Private Function Buscar_PATH_IMAGENES_VISITA_INGRESOS(ByRef mycn As ADODB.Connection) As Boolean
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
        
    Set Rst = New ADODB.RecordSet
    Rst.Open "SELECT Valor " & _
    " FROM cfgopt " & _
    " WHERE ConfiguracionID = 2 AND OpcionID = 6 ", mycn, adOpenStatic, adLockReadOnly
           
    mvarPATH_IMAGENES_VISITA_INGRESOS = Rst!valor
    Rst.Close
    Buscar_PATH_IMAGENES_VISITA_INGRESOS = True

Salir:
Set Rst = Nothing
End Function

Private Function Buscar_PATH_IMAGENES_VISITA_SALIDAS(ByRef mycn As ADODB.Connection) As Boolean
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
        
    Set Rst = New ADODB.RecordSet
    Rst.Open "SELECT Valor " & _
    " FROM cfgopt " & _
    " WHERE ConfiguracionID = 2 AND OpcionID = 7 ", mycn, adOpenStatic, adLockReadOnly
           
    mvarPATH_IMAGENES_VISITA_SALIDAS = Rst!valor
    Rst.Close
    Buscar_PATH_IMAGENES_VISITA_SALIDAS = True

Salir:
Set Rst = Nothing
End Function

Private Function Buscar_PATH_IMAGENES_MOVIMIENTOS(ByRef mycn As ADODB.Connection) As Boolean
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
        
    Set Rst = New ADODB.RecordSet
    Rst.Open "SELECT Valor " & _
    " FROM cfgopt " & _
    " WHERE ConfiguracionID = 2 AND OpcionID = 8 ", mycn, adOpenStatic, adLockReadOnly
           
    mvarPATH_IMAGENES_MOVIMIENTOS = Rst!valor
    Rst.Close
    Buscar_PATH_IMAGENES_MOVIMIENTOS = True
    
Salir:
Set Rst = Nothing
End Function

Private Function Buscar_PATH_DNI_PERSONAS(ByRef mycn As ADODB.Connection) As Boolean
Dim Rst As ADODB.RecordSet
Dim sSql As String
On Error GoTo Salir
        
        
    sSql = "SELECT valor FROM cfgopt  WHERE nombre = 'PATH_DNI_PERSONAS'"
    Set Rst = New ADODB.RecordSet
    
    Rst.Open sSql, mycn
    
'    "SELECT Valor " & _
'    " FROM cfgopt " & _
'    " WHERE ConfiguracionID = 2 AND OpcionID = 8 ", mycn, adOpenStatic, adLockReadOnly
           
    mvarPATH_DNI_PERSONAS = Rst!valor
    Rst.Close
    Buscar_PATH_DNI_PERSONAS = True
    
Salir:
Set Rst = Nothing



End Function

Public Function Buscar_Camara_Modulo(ByRef mycn As ADODB.Connection, ByVal ModuloID_ As Long) As Integer
Dim oRs As New ADODB.RecordSet
On Error GoTo Salir
            
    Buscar_Camara_Modulo = -1
    
    oRs.Open "SELECT Camara " & _
    " FROM mdlcam " & _
    " WHERE moduloID = " & ModuloID_, mycn, adOpenStatic, adLockReadOnly
    
    If Not oRs.EOF Then
        Buscar_Camara_Modulo = oRs.Fields("camara")
    End If
    
    Set oRs = Nothing
    
    Exit Function
Salir:
    MsgBox Err.Description, vbCritical, "Buscar_Camara_Modulo"

End Function


Public Function Conectar(ByRef Mi_LiveX As LiveX, _
                         ByRef FixWidth_ As Integer, _
                         ByRef FixHeight_ As Integer, _
                         ByRef DefaultCam_ As Integer) As Boolean

Dim Continuar As Boolean
Dim reintento As Integer

On Error GoTo Salir
  
  Continuar = True
  reintento = 0
  
  Mi_LiveX.IpAddress = mvarIpHost
  Mi_LiveX.CommandPort = mvarCmdPort
  Mi_LiveX.DataPort = mvarDataPort
  Mi_LiveX.BandWidth = "LAN"
  Mi_LiveX.DisablePWD = True
  Mi_LiveX.UserName = mvarUser
  Mi_LiveX.Password = mvarPsw
  Mi_LiveX.FixSize = True
  Mi_LiveX.FixWidth = FixWidth_
  Mi_LiveX.FixHeight = FixHeight_
  Mi_LiveX.DefaultCam = DefaultCam_
  
  
  While Continuar
    DoEvents
    Conectar = Mi_LiveX.Connect()
    If Conectar Then
      mvarGeoVisionConectada = True
      Continuar = False
    Else
      If reintento < 1000 Then
        Sleep (100)
        reintento = reintento + 1
      Else
        Continuar = False
      End If
    End If
    Sleep (300)
  Wend
  
Salir:
 Conectar = mvarGeoVisionConectada

End Function


Public Function Desconectar(ByRef Mi_LiveX As LiveX) As Boolean
On Error GoTo Salir
  
  If mvarGeoVisionConectada Then
    Mi_LiveX.Disconnect
    mvarGeoVisionConectada = False
  End If
  
  Desconectar = True

Salir:
End Function
Public Function Cambiar_Camara(ByRef Mi_LiveX As LiveX, _
                               ByVal camara_ As Long) As Boolean
Dim i As Integer

Dim aux3 As Boolean


On Error GoTo Salir
  ''FMV
  ''cambiado pregunto si la camara es la misma sino no hace falta hacer el cambio
  i = 0
    
 
  Cambiar_Camara = False
    
  Sleep (300)
  aux3 = Mi_LiveX.ChangeCamX(camara_)
  Sleep (300)
  If aux3 Then
    Cambiar_Camara = True
  Else
    MsgBox "No permite comutar de Camara", vbOKOnly + vbCritical, "Verificar conexion de Camaras..!!!"
  End If
  
  'If Mi_LiveX.DefaultCam <> camara_ Then
  '  Call Mi_LiveX.ChangeCamX(camara_)
    
  ' aux1 = Mi_LiveX.GetCurCam
  ''FMV
  ''Si no pudo conectar reintento 5 veces
  '  If Mi_LiveX.GetCurCam <> camara_ Then
  '     While Mi_LiveX.GetCurCam <> camara_
  '          Call Mi_LiveX.ChangeCamX(camara_)
  '          Sleep (300)
  '          If i = 4 Then ' reintenta 5 veces.
  '              Exit Function ' sale con error
  '          Else
  '              i = i + 1
  '          End If
  '      Wend
  '  End If
  
  
Salir:
End Function


Public Function Tomar_Foto(ByRef Mi_LiveX As LiveX, _
                               ByVal string_foto As String) As Boolean
On Error GoTo Salir
Dim i As Integer
Dim aux As Boolean

  'For i = 0 To 50
  '  If Verificar_Existencia_Archivo(string_foto) Then
  '       Tomar_Foto = True
  '       i = 50
  '  Else
  '       Mi_LiveX.SnapShotToFile (string_foto)
  '       Sleep (300)
  '  End If
  'Next
  Tomar_Foto = False
   
  Sleep (300)
  aux = Mi_LiveX.SnapShotToFile(string_foto)
  If aux Then
     Tomar_Foto = True
  End If
  Sleep (300)
  
Salir:
End Function

Public Function Borrar_Foto(ByVal string_foto As String) As Boolean
On Error GoTo Salir

    Kill (string_foto)

Salir:
End Function

