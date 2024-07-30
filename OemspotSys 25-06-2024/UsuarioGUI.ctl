VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl UsuarioGUI 
   ClientHeight    =   3735
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   8070
   KeyPreview      =   -1  'True
   ScaleHeight     =   3735
   ScaleWidth      =   8070
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "UsuarioGUI.ctx":0000
      Left            =   960
      List            =   "UsuarioGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   2640
      Width           =   2175
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   960
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
   Begin VB.TextBox txtPassword 
      Height          =   285
      Left            =   4200
      MaxLength       =   32
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
   Begin VB.CommandButton cmdQuitar 
      Caption         =   "Quitar"
      Height          =   255
      Left            =   6480
      TabIndex        =   3
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Agregar ..."
      Height          =   255
      Left            =   6480
      TabIndex        =   2
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6480
      TabIndex        =   6
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   4920
      TabIndex        =   5
      Top             =   3360
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   1815
      Left            =   960
      TabIndex        =   7
      Top             =   600
      Width           =   5415
      _ExtentX        =   9551
      _ExtentY        =   3201
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label lblEstado 
      Caption         =   "Estado:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   2640
      Width           =   735
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   120
      Width           =   735
   End
   Begin VB.Label lblPassword 
      Caption         =   "Password:"
      Height          =   255
      Left            =   3360
      TabIndex        =   9
      Top             =   120
      Width           =   735
   End
   Begin VB.Label lblPerfiles 
      Caption         =   "Perfiles:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   600
      Width           =   735
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   7920
      Y1              =   3120
      Y2              =   3120
   End
End
Attribute VB_Name = "UsuarioGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminUsuariosService As AdminUsuariosSVR
Private PlatformService As PlatformSVR
Private UsrDataObject As UsrDAO
Private EncryptionService As EncryptionSVR

Public db_UsuarioID As Long

Private Sub UserControl_Initialize()
    Set AdminUsuariosService = New AdminUsuariosSVR
    Set PlatformService = New PlatformSVR
    Set UsrDataObject = New UsrDAO
    Set EncryptionService = New EncryptionSVR

    Dim i As Integer

    If PlatformService.getValoresEstado(EST_USUARIO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo1.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 1
    End If
End Sub

Private Sub UserControl_Terminate()
    Set AdminUsuariosService = Nothing
    Set PlatformService = Nothing
    Set UsrDataObject = Nothing
    Set EncryptionService = Nothing
End Sub

Property Let UsuarioID(value As Long)
    Let db_UsuarioID = value
End Property

Sub init()
    If db_UsuarioID <> 0 Then
        onUpdate = True
        lblPassword.Visible = False
        txtPassword.Visible = False
        loadData
    Else
        onUpdate = False
        lblPassword.Visible = True
        txtPassword.Visible = True
    End If

    enableEdition
End Sub

Sub enableEdition()
    If db_UsuarioID <> 0 Then
        Grid.Enabled = True
        cmdAgregar.Enabled = True
        cmdQuitar.Enabled = True
        Combo1.Enabled = True

        cmdGuardar.Caption = "Guardar"
    Else
        Grid.Enabled = False
        cmdAgregar.Enabled = False
        cmdQuitar.Enabled = False
        Combo1.Enabled = False

        cmdGuardar.Caption = "Siguiente >> "
    End If
End Sub

Sub loadData()
    Set UsrDataObject = AdminUsuariosService.UsuarioOrm.obtenerUsuario(db_UsuarioID)

    If Not (UsrDataObject Is Nothing) Then
        txtNombre.Text = UsrDataObject.Nombre
        txtPassword.Text = EncryptionService.Desencriptar(UsrDataObject.Password)
    Else
        MsgBox "No se puede leer Usuario", vbCritical, "Atención"
        Exit Sub
    End If

    Dim i As Integer

    If AdminUsuariosService.UsuarioQuery.obtenerUsrEstVal(db_UsuarioID, EST_USUARIO) Then
        If Not AdminUsuariosService.UsuarioQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo1.ListCount - 1
                If Combo1.ItemData(i) = CStr(AdminUsuariosService.UsuarioQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo1.ListIndex = i
                End If
            Next
        End If
    End If

    loadGrids
End Sub

Sub loadGrids()
    Grid.Clear
    If AdminUsuariosService.getPerfilesList(db_UsuarioID) Then
        fillGrid Grid, AdminUsuariosService.UsuarioQuery.DbRecordsetQRY, 1
    End If
End Sub

Function validarDatos() As Boolean
    If txtNombre.Text = "" Then
        MsgBox "Ingrese Nombre", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If txtPassword.Text = "" Then
        MsgBox "Ingrese Password", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo1.ListIndex = -1 Then
        MsgBox "Debe seleccionar Estado de Usuario", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not onUpdate Then
            db_UsuarioID = AdminUsuariosService.UsuarioOrm.crearUsuario(txtNombre.Text, txtPassword.Text, 0)
            If db_UsuarioID <> -1 Then
                If AdminUsuariosService.UsuarioQuery.eliminarUsrEst(db_UsuarioID, EST_USUARIO) Then
                    AdminUsuariosService.UsuarioOrm.crearUsrEstVal db_UsuarioID, EST_USUARIO, Combo1.ItemData(Combo1.ListIndex)
                End If
                enableEdition
                onUpdate = True
            Else
                MsgBox "No se puede crear Usuario", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminUsuariosService.UsuarioOrm.actualizarUsuario(db_UsuarioID, txtNombre.Text, txtPassword.Text) Then
                If AdminUsuariosService.UsuarioQuery.eliminarUsrEst(db_UsuarioID, EST_USUARIO) Then
                    AdminUsuariosService.UsuarioOrm.crearUsrEstVal db_UsuarioID, EST_USUARIO, Combo1.ItemData(Combo1.ListIndex)
                End If
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Usuario", vbCritical, "Atención"
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

Private Sub cmdAgregar_Click()
    Set UsuarioCatValMOD.ParentWindow = Me
    UsuarioCatValMOD.UsuarioID = db_UsuarioID
    UsuarioCatValMOD.CategoriaID = CAT_PERFIL_USUARIO
    UsuarioCatValMOD.Show vbModal
End Sub

Private Sub cmdQuitar_Click()
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 1
        Grid.Row = Grid.RowSel
        If MsgBox("Está seguro de quitar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
            Grid.Col = 0
            Grid.Row = Grid.RowSel
            If Not AdminUsuariosService.UsuarioOrm.eliminarUsrCatVal(db_UsuarioID, CAT_PERFIL_USUARIO, CLng(Grid.Text)) Then
                MsgBox "No se puede quitar Perfil de Usuario", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub
