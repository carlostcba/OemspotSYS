VERSION 5.00
Object = "{3F5913F3-36BC-4902-925F-1DF63BCAEB57}#1.0#0"; "LiveX_8500.ocx"
Begin VB.UserControl TomarFotoGUI 
   ClientHeight    =   5325
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5325
   ScaleHeight     =   5325
   ScaleWidth      =   5325
   Begin LIVEXLib.LiveX Mi_LiveX 
      Height          =   4410
      Left            =   135
      TabIndex        =   2
      Top             =   120
      Width           =   5040
      _Version        =   65536
      _ExtentX        =   8890
      _ExtentY        =   7779
      _StockProps     =   0
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      Height          =   465
      Left            =   2925
      TabIndex        =   0
      Top             =   4695
      Width           =   2265
   End
   Begin VB.CommandButton cmdCapturarFoto 
      Caption         =   "Capturar Foto..."
      Height          =   465
      Left            =   165
      TabIndex        =   1
      Top             =   4695
      Width           =   2415
   End
End
Attribute VB_Name = "TomarFotoGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public bTomaFotoPersonas As Boolean
Public ParentWindow As Object
Private GeoService As GeoSVR
Private AdminModulosService As AdminModulosSVR
Dim MdlDataObject As MdlDAO
Dim db_ModuloVirtualID As Long
Public db_PersonaID As Long
Dim AsistenteDataObject As AsistenteDAO

Private Sub cmdCancelar_Click()
    ParentWindow.Destroy
End Sub

Private Sub Mi_LiveX_OnDBClick()
  Call Mi_LiveX.ChangeCamX(Mi_LiveX.ShowCamMenuX)
End Sub

Private Sub UserControl_Initialize()
   
    Set AdminModulosService = New AdminModulosSVR
    Set GeoService = New GeoSVR
    Set MdlDataObject = New MdlDAO
End Sub

Private Sub UserControl_Terminate()
    
  
    If GeoService.GeoVisionConectada Then
        Call GeoService.Desconectar(Mi_LiveX)
    End If
    Set GeoService = Nothing
    Set AdminModulosService = Nothing
    Set MdlDataObject = Nothing
End Sub

Sub init()
On Error GoTo Salir
Dim camara_ As Integer

     
    db_ModuloVirtualID = AdminModulosService.obtenerModuloVirtual(getWindowsComputerName)
       
    If db_ModuloVirtualID Then
       Set MdlDataObject = AdminModulosService.ModuloOrm.obtenerModulo(db_ModuloVirtualID)
    Else
        MsgBox "No hay conexión con las cámaras, debido a que éste equipo no tiene configurado un Módulo Virtual, por favor verifique la configuración y vuelva a intentarlo.", vbInformation, "Configuración incompleta"
        Exit Sub
    End If
    
    If GeoService.Cargar_Propiedades_GEO(DbConnectionSYS, MdlDataObject.GrupoModulos) Then
        camara_ = GeoService.Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloVirtualID)
        If GeoService.Conectar(Mi_LiveX, 340, 300, camara_) Then
            
        End If
    End If
Exit Sub
Salir:
       MsgBox "TomarFotoGUI.init" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub


Private Sub CmdCapturarFoto_Click()
    Dim tmp As Long
    Dim camara_ As Integer
    Dim Path_Foto As String
On Error GoTo Salir
 If GeoService.GeoVisionConectada Then
 
          If bTomaFotoPersonas Then
            Path_Foto = GeoService.PATH_IMAGENES_PERSONAS & "\" & db_PersonaID & ".jpg"
          Else
            Path_Foto = GeoService.PATH_DNI_PERSONAS & "\" & db_PersonaID & ".jpg"
          End If
          
          If Path_Foto = "" Then
             MsgBox "Error en la carpeta de Imagenes, verifique que esten creadas las carpetas correspondientes", vbCritical, "Error"
          Else
                Call GeoService.Borrar_Foto(Path_Foto)
                If Not GeoService.Tomar_Foto(Mi_LiveX, Path_Foto) Then
                       MsgBox "No se pudieron tomar las imagenes", vbCritical, "Atención"
                End If
          End If
 End If
 ParentWindow.Destroy
Exit Sub
Salir: MsgBox "Ha Ocurrido un Error en la Ejecucion cmdCapturarFoto_Click", vbCritical, "Error"
End Sub

Property Let PersonaID(value As Long)
    Let db_PersonaID = value
End Property
