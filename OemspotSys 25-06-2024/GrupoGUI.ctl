VERSION 5.00
Begin VB.UserControl GrupoGUI 
   ClientHeight    =   3375
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7080
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   ScaleHeight     =   3375
   ScaleWidth      =   7080
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "GrupoGUI.ctx":0000
      Left            =   1440
      List            =   "GrupoGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   600
      Width           =   2895
   End
   Begin VB.TextBox txtDescripcion 
      Height          =   1485
      Left            =   1440
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   2
      Top             =   1080
      Width           =   5415
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   255
      Left            =   3840
      TabIndex        =   3
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   5400
      TabIndex        =   4
      Top             =   3000
      Width           =   1335
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1440
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   2895
   End
   Begin VB.Label lblTipoAcceso 
      Caption         =   "Tipo de Acceso:"
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblDescripcion 
      Caption         =   "Descripción:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   6960
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "GrupoGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminGruposService As AdminGruposSVR
Private PlatformService As PlatformSVR
Private GruDataObject As GruDAO

Public db_GrupoID As Long

Private Sub UserControl_Initialize()
    Set AdminGruposService = New AdminGruposSVR
    Set GruDataObject = New GruDAO
    
    Set PlatformService = New PlatformSVR

    Dim i As Integer

    If PlatformService.getValoresCategoria(CAT_TIPO_ACCESO_GRUPO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo1.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 0
    End If

End Sub

Private Sub UserControl_Terminate()
    Set AdminGruposService = Nothing
    Set PlatformService = Nothing
    Set GruDataObject = Nothing
End Sub

Property Let GrupoID(value As Long)
    Let db_GrupoID = value
End Property

Sub init()
    If db_GrupoID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
    If db_GrupoID <> 0 Then
    
    Else
    
    End If
End Sub

Sub loadData()
    Set GruDataObject = AdminGruposService.GruposOrm.obtenerGrupo(db_GrupoID)

    If Not (GruDataObject Is Nothing) Then
        txtNombre.Text = GruDataObject.Nombre
        txtDescripcion.Text = GruDataObject.Descripcion
    Else
        MsgBox "No se puede leer Grupo", vbCritical, "Atención"
        Exit Sub
    End If

    Dim i As Integer

    If AdminGruposService.GruposQuery.obtenerGruCatVal(db_GrupoID, CAT_TIPO_ACCESO_GRUPO) Then
        If Not AdminGruposService.GruposQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo1.ListCount - 1
                If Combo1.ItemData(i) = CStr(AdminGruposService.GruposQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo1.ListIndex = i
                End If
            Next
        End If
    End If


    loadGrids
End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
    If txtNombre.Text = "" Then
        MsgBox "Ingrese Nombre", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not onUpdate Then
            db_GrupoID = AdminGruposService.GruposOrm.crearGrupo(txtNombre.Text, txtDescripcion.Text)
            If db_GrupoID <> -1 Then
                If AdminGruposService.GruposQuery.eliminarGruCat(db_GrupoID, CAT_TIPO_ACCESO_GRUPO) Then
                End If
                AdminGruposService.GruposOrm.crearGruCatVal db_GrupoID, CAT_TIPO_ACCESO_GRUPO, Combo1.ItemData(Combo1.ListIndex)

                enableEdition
                onUpdate = True
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear Grupo", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminGruposService.GruposOrm.actualizarGrupo(db_GrupoID, txtNombre.Text, txtDescripcion.Text) Then
                If AdminGruposService.GruposQuery.eliminarGruCat(db_GrupoID, CAT_TIPO_ACCESO_GRUPO) Then
                    AdminGruposService.GruposOrm.crearGruCatVal db_GrupoID, CAT_TIPO_ACCESO_GRUPO, Combo1.ItemData(Combo1.ListIndex)
                End If
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Grupo", vbCritical, "Atención"
                Exit Sub
            End If
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

Public Sub UpdateWindow()
    loadGrids
End Sub
