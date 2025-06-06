VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl PersonaIdnGUI 
   ClientHeight    =   5910
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10935
   KeyPreview      =   -1  'True
   ScaleHeight     =   5910
   ScaleWidth      =   10935
   Begin VB.TextBox txtPersona 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000012&
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   120
      Width           =   7695
   End
   Begin VB.CommandButton CmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   9360
      TabIndex        =   4
      Top             =   1920
      Width           =   1335
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   9360
      TabIndex        =   5
      Top             =   5520
      Width           =   1335
   End
   Begin VB.CommandButton cmdIdentificaciones 
      Caption         =   "Identificaciones  ..."
      Height          =   255
      Left            =   7560
      TabIndex        =   1
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox txtIdentificacion 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   840
      Width           =   6015
   End
   Begin VB.CommandButton CmdAgregar 
      Caption         =   "Agregar"
      Height          =   255
      Left            =   9360
      TabIndex        =   2
      Top             =   840
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid GridIdentificaciones 
      Height          =   3735
      Left            =   1440
      TabIndex        =   3
      Top             =   1560
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   6588
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   10800
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Label lblPersona 
      Caption         =   "Persona:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblIdentificacion 
      Caption         =   "Seleccionar Identificación:"
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.Label lblIdentificaciones 
      Caption         =   "Identificaciones de esta Persona:"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Line Line6 
      X1              =   120
      X2              =   10800
      Y1              =   5400
      Y2              =   5400
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   10800
      Y1              =   1320
      Y2              =   1320
   End
End
Attribute VB_Name = "PersonaIdnGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPersonasService As AdminPersonasSVR
Private AdminIdentificacionesService As AdminIdentificacionesSVR
Private PlatformService As PlatformSVR

Public db_PersonaID As Long
Public db_IdentificacionID As Long

Private Sub UserControl_Initialize()
    Set AdminPersonasService = New AdminPersonasSVR
    Set AdminIdentificacionesService = New AdminIdentificacionesSVR
    Set PlatformService = New PlatformSVR
End Sub

Private Sub UserControl_Terminate()
    Set AdminPersonasService = Nothing
    Set AdminIdentificacionesService = Nothing
    Set PlatformService = Nothing
End Sub

Property Let PersonaID(value As Long)
    Let db_PersonaID = value
    txtPersona.Text = AdminPersonasService.PersonaOrm.getDescription(db_PersonaID)
End Property

Property Let IdentificacionID(value As Long)
    Let db_IdentificacionID = value
    txtIdentificacion.Text = AdminIdentificacionesService.IdentificacionOrm.getDescription(db_IdentificacionID)
End Property

Sub init()
    loadGrids
End Sub

Sub enableEdition()
End Sub

Sub loadData()
End Sub

Sub loadGrids()
    GridIdentificaciones.Clear
    If AdminPersonasService.getIdnList(db_PersonaID) Then
        fillGrid GridIdentificaciones, AdminPersonasService.PersonaQuery.DbRecordsetQRY, 1
    End If
End Sub

Function validarDatos() As Boolean
    If db_IdentificacionID = 0 Then
        MsgBox "Debe seleccionar una Identificación", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdIdentificaciones_Click()
    Unload AdminIdentificacionesMOD
    Set AdminIdentificacionesMOD.ParentWindow = Me
    AdminIdentificacionesMOD.Seleccion = True
    Unload AdminIdentificacionesMOD
    AdminIdentificacionesMOD.Show vbModal
End Sub

Private Sub cmdAgregar_Click()
    If Not AdminIdentificacionesService.IdentificacionYaAsignada(db_IdentificacionID) Then
        If validarDatos Then
            If AdminPersonasService.PersonaOrm.crearPerIdn(db_PersonaID, db_IdentificacionID) <> -1 Then
                UpdateWindow
            Else
                MsgBox "No se puede agregar esta Identificación a la Persona", vbCritical, "Atención"
                Exit Sub
            End If
        End If
    Else
        MsgBox "Esta Identificación ya registrada a una Persona", vbCritical, "Identificación ya registrada a una Persona"
    End If
End Sub

Private Sub cmdBorrar_Click()
    GridIdentificaciones.Col = 1
    GridIdentificaciones.Row = GridIdentificaciones.RowSel
    If GridIdentificaciones.Text <> "" And GridIdentificaciones.Row >= 1 Then
        If MsgBox("Está seguro de borrar [" & GridIdentificaciones.Text & "]?", vbYesNo, "Atención") = vbYes Then
            GridIdentificaciones.Col = 0
            GridIdentificaciones.Row = GridIdentificaciones.RowSel
            If Not AdminPersonasService.PersonaOrm.eliminarPerIdn(db_PersonaID, CLng(GridIdentificaciones.Text)) Then
                MsgBox "No se puede eliminar Persona", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Sub UpdateWindow()
    loadGrids
End Sub
