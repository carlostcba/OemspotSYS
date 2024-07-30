VERSION 5.00
Begin VB.Form LoginMOD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Inicio de Sistema OEMSPOT"
   ClientHeight    =   4785
   ClientLeft      =   1245
   ClientTop       =   2535
   ClientWidth     =   4575
   Icon            =   "LoginMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4785
   ScaleWidth      =   4575
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   1920
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   2160
      Width           =   1215
   End
   Begin OemspotSys.LoginGUI LoginGUI1 
      Height          =   1215
      Left            =   960
      TabIndex        =   0
      Top             =   2760
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   2143
   End
   Begin VB.Image Image1 
      Height          =   1095
      Left            =   120
      Picture         =   "LoginMOD.frx":15162
      Stretch         =   -1  'True
      Top             =   0
      Width           =   4335
   End
   Begin VB.Line Line3 
      BorderColor     =   &H80000010&
      X1              =   120
      X2              =   4440
      Y1              =   4200
      Y2              =   4200
   End
   Begin VB.Line Line2 
      BorderColor     =   &H80000010&
      X1              =   120
      X2              =   4440
      Y1              =   1080
      Y2              =   1080
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000010&
      X1              =   120
      X2              =   4440
      Y1              =   1800
      Y2              =   1800
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   1200
      Picture         =   "LoginMOD.frx":1ED20
      Stretch         =   -1  'True
      Top             =   2040
      Width           =   465
   End
   Begin VB.Label lblVersionNumber 
      BackStyle       =   0  'Transparent
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   4440
      Width           =   3495
   End
   Begin VB.Label lblVersion 
      BackStyle       =   0  'Transparent
      Caption         =   "Version:"
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   4440
      Width           =   615
   End
   Begin VB.Label lblNombrePrograma 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   1200
      Width           =   4455
   End
End
Attribute VB_Name = "LoginMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private LoginService As LoginSVR
Private AdminCulturaService As AdminCulturaSVR
Private AdminSistemasService As AdminSistemasSVR

Private Sub Form_Load()
    Set AdminCulturaService = New AdminCulturaSVR
    Set AdminSistemasService = New AdminSistemasSVR
    Set LoginService = New LoginSVR
    Set LoginGUI1.LoginRule = LoginService
    Set LoginGUI1.ParentWindow = Me
    lblNombrePrograma.Caption = DBFieldToString(NOMBRE_PROGRAMA_SYS)
    lblVersion.Caption = "Versión "
    lblVersionNumber.Caption = VERSION_PRODUCTO_SYS & " ( " & VERSION_PLATAFORMA_SYS & " )"

    actualizarLocalizacion
    establecerIdioma
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set LoginService = Nothing
    Set AdminCulturaService = Nothing
    Set AdminSistemasService = Nothing

    If UsuarioActivoSYS = 0 Then
        End
    End If
End Sub

Sub Destroy()
    Unload Me
End Sub

Sub establecerIdioma()
    Dim i As Integer
    Dim Idioma As String

    If AdminCulturaService.getList("") Then
        i = 0
        Do While Not AdminCulturaService.CulturaQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(AdminCulturaService.CulturaQuery.DbRecordsetQRY.Fields(1).value)
            Combo1.ItemData(i) = CStr(AdminCulturaService.CulturaQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            AdminCulturaService.CulturaQuery.DbRecordsetQRY.MoveNext
        Loop
    End If

    Idioma = AdminCulturaService.obtenerDescripcionCultura(LOCALIZACION_ACTIVA_SYS)

    For i = 0 To Combo1.ListCount - 1
        If Combo1.List(i) = Idioma Then
            Combo1.ListIndex = i
        End If
    Next
End Sub

Private Sub Combo1_Click()

    Dim ConfiguracionID As Long
    Dim OpcionID As Long
    Dim Nombre As String
    Dim Valor As String

    ConfiguracionID = AdminSistemasService.getConfiguracionID(CONFIGURACION_PROGRAMA_SYS)
    OpcionID = AdminSistemasService.getConfiguracionOpcionID(ConfiguracionID, "LOCALIZACION_ACTIVA_SYS")
    Nombre = "LOCALIZACION_ACTIVA_SYS"
    Valor = AdminCulturaService.obtenerNombreCultura(Combo1.ItemData(Combo1.ListIndex))

    AdminSistemasService.actualizarIdioma ConfiguracionID, OpcionID, Nombre, Valor

    LOCALIZACION_ACTIVA_SYS = Valor
    limpiarCacheCultura
    LoginGUI1.actualizarLocalizacion
    actualizarLocalizacion
End Sub

Public Sub actualizarLocalizacion()
    Me.Caption = localizar("tituloLogin")
    lblVersion.Caption = localizar(lblVersion.name)
End Sub

