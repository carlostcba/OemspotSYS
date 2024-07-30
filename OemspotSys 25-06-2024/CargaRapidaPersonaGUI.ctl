VERSION 5.00
Begin VB.UserControl CargaRapidaPersonaGUI 
   ClientHeight    =   3120
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7485
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   3120
   ScaleWidth      =   7485
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6000
      TabIndex        =   6
      Top             =   2760
      Width           =   1215
   End
   Begin VB.PictureBox Image1 
      Height          =   1935
      Left            =   4035
      ScaleHeight     =   1875
      ScaleWidth      =   1695
      TabIndex        =   10
      Top             =   225
      Width           =   1755
   End
   Begin VB.CommandButton CmdCambiarFoto 
      Caption         =   "Capturar Foto"
      Height          =   255
      Left            =   6000
      TabIndex        =   4
      Top             =   960
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Agregar"
      Default         =   -1  'True
      Height          =   255
      Left            =   4560
      TabIndex        =   5
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdImportarFoto 
      Caption         =   "Importar Foto"
      Height          =   255
      Left            =   6000
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   1
      Top             =   720
      Width           =   2655
   End
   Begin VB.TextBox txtApellido 
      Height          =   285
      Left            =   1080
      MaxLength       =   64
      TabIndex        =   0
      Top             =   240
      Width           =   2655
   End
   Begin VB.TextBox txtDNI 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   2
      Top             =   1200
      Width           =   2655
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   7320
      Y1              =   2520
      Y2              =   2520
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   720
      Width           =   735
   End
   Begin VB.Label lblApellido 
      Caption         =   "Apellido:"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   240
      Width           =   735
   End
   Begin VB.Label lblDNI 
      Caption         =   "DNI:"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   1200
      Width           =   735
   End
End
Attribute VB_Name = "CargaRapidaPersonaGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object

Private AdminPersonasService As AdminPersonasSVR
Private mod_DNI As String

Property Let DNI(value As String)
    mod_DNI = value
End Property


Private Sub UserControl_Initialize()
    Set AdminPersonasService = New AdminPersonasSVR
End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
End Sub

Sub init()
    txtDNI.Text = mod_DNI
End Sub

Function validarDatos() As Boolean
    
    If txtApellido.Text = "" Then
        MsgBox "Ingrese Apellido", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    
    If txtNombre.Text = "" Then
        MsgBox "Ingrese Nombre", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    
    If txtDNI.Text = "" Then
        MsgBox "Ingrese DNI", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub CmdAgregar_Click()
    Dim db_PersonaID As Long
    If validarDatos Then
        db_PersonaID = AdminPersonasService.PersonaOrm.crearPersona(txtApellido.Text, txtNombre.Text, "", "", "", Date, Date, "")
        If db_PersonaID <> -1 Then
            AdminPersonasService.PersonaOrm.crearPerDocCatVal db_PersonaID, CAT_TIPO_DOC_PERSONA, CAT_VAL_TIPO_DOC_DNI, txtDNI.Text
            ParentWindow.db_PersonaID = db_PersonaID
            ParentWindow.Destroy
        End If
    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.DestroySinUpdateWindow
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

'Private Sub cmdImportarFoto_Click()
'On Error Resume Next
'    CommonDialog1.DefaultExt = "jpg"
'    CommonDialog1.Filter = "*.jpg"
'    CommonDialog1.ShowOpen
'    If CommonDialog1.FileName <> "" Then
'        FileCopy CommonDialog1.FileName, getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg"
'        cargarFoto
'    End If
'End Sub
'
'Sub cargarFoto()
'On Error GoTo noHayFoto
'    Image1.Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg")
'    Image1.ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & db_PersonaID & ".jpg"
'    Exit Sub
'noHayFoto:
'    On Error Resume Next
'    Image1.Picture = LoadPicture("")
'    Image1.Picture = LoadPicture(App.Path & "\NoHayFoto.jpg")
'End Sub
