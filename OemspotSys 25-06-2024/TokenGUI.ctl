VERSION 5.00
Begin VB.UserControl TokenGUI 
   ClientHeight    =   6315
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10785
   KeyPreview      =   -1  'True
   ScaleHeight     =   6315
   ScaleWidth      =   10785
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   9240
      TabIndex        =   5
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   7680
      TabIndex        =   4
      Top             =   5880
      Width           =   1335
   End
   Begin VB.TextBox txtEnglish 
      Height          =   1485
      Left            =   1560
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Top             =   3960
      Width           =   9015
   End
   Begin VB.TextBox txtPortuguese 
      Height          =   1485
      Left            =   1560
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   2280
      Width           =   9015
   End
   Begin VB.TextBox txtSpanish 
      Height          =   1485
      Left            =   1560
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   600
      Width           =   9015
   End
   Begin VB.TextBox txtNombre 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1560
      MaxLength       =   64
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   10680
      Y1              =   5640
      Y2              =   5640
   End
   Begin VB.Label lblEnglish 
      Caption         =   "English:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label lblPortuguese 
      Caption         =   "Português:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblSpanish 
      Caption         =   "Español:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label lblNombreToken 
      Caption         =   "Nombre Token:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "TokenGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminCulturaService As AdminCulturaSVR
Private TknDataObject As TknDAO
Private TknCulDataObject As TknCulDAO

Public db_TokenID As Long

Private Sub UserControl_Initialize()
    Set AdminCulturaService = New AdminCulturaSVR
    Set TknDataObject = New TknDAO
    Set TknCulDataObject = New TknCulDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminCulturaService = New AdminCulturaSVR
    Set TknDataObject = Nothing
    Set TknCulDataObject = Nothing
End Sub

Property Let TokenID(value As Long)
    Let db_TokenID = value
End Property

Sub init()
    If db_TokenID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
End Sub

Sub loadData()
    Set TknDataObject = AdminCulturaService.CulturaOrm.obtenerTkn(db_TokenID)
    If Not (TknDataObject Is Nothing) Then
        txtNombre.Text = TknDataObject.Nombre
    End If

    Set TknCulDataObject = AdminCulturaService.CulturaOrm.obtenerTknCul(db_TokenID, IDIOMA_SPANISH)
    If Not (TknCulDataObject Is Nothing) Then
        txtSpanish.Text = TknCulDataObject.Texto
    End If

    Set TknCulDataObject = AdminCulturaService.CulturaOrm.obtenerTknCul(db_TokenID, IDIOMA_ENGLISH)
    If Not (TknCulDataObject Is Nothing) Then
        txtEnglish.Text = TknCulDataObject.Texto
    End If

    Set TknCulDataObject = AdminCulturaService.CulturaOrm.obtenerTknCul(db_TokenID, IDIOMA_PORTUGUES)
    If Not (TknCulDataObject Is Nothing) Then
        txtPortuguese.Text = TknCulDataObject.Texto
    End If

    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not AdminCulturaService.CulturaOrm.actualizarTknCul(db_TokenID, IDIOMA_SPANISH, txtSpanish.Text) Then
            MsgBox "No se puede actualizar Token", vbCritical, "Atención"
            Exit Sub
        End If
        If Not AdminCulturaService.CulturaOrm.actualizarTknCul(db_TokenID, IDIOMA_ENGLISH, txtEnglish.Text) Then
            MsgBox "No se puede actualizar Token", vbCritical, "Atención"
            Exit Sub
        End If
        If Not AdminCulturaService.CulturaOrm.actualizarTknCul(db_TokenID, IDIOMA_PORTUGUES, txtPortuguese.Text) Then
            MsgBox "No se puede actualizar Token", vbCritical, "Atención"
            Exit Sub
        End If
    End If

    ParentWindow.Destroy
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub
