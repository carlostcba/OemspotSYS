VERSION 5.00
Begin VB.UserControl ModuloGUI 
   ClientHeight    =   9240
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10515
   KeyPreview      =   -1  'True
   ScaleHeight     =   9240
   ScaleWidth      =   10515
   Begin VB.ComboBox Combo15 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0000
      Left            =   7680
      List            =   "ModuloGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   45
      Top             =   8040
      Width           =   1815
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Tiene Camara Asociada"
      Height          =   255
      Left            =   7680
      TabIndex        =   44
      Top             =   7680
      Width           =   2175
   End
   Begin VB.CheckBox chkvalidaBarras 
      Caption         =   "Necesita validar ticket antes de salir"
      Height          =   375
      Left            =   6600
      TabIndex        =   43
      Top             =   3240
      Width           =   3735
   End
   Begin VB.ComboBox Combo14 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0004
      Left            =   7560
      List            =   "ModuloGUI.ctx":0006
      Style           =   2  'Dropdown List
      TabIndex        =   40
      Top             =   1080
      Width           =   1215
   End
   Begin VB.ComboBox Combo13 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0008
      Left            =   7560
      List            =   "ModuloGUI.ctx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   600
      Width           =   2295
   End
   Begin VB.CommandButton CmdBajarPermisosModulo 
      Caption         =   "Bajar Permisos del Módulo ..."
      Height          =   255
      Left            =   1920
      TabIndex        =   18
      Top             =   8760
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.CommandButton CmdSubirPermisosModulo 
      Caption         =   "Subir Permisos al Módulo ..."
      Height          =   255
      Left            =   4680
      TabIndex        =   17
      Top             =   8760
      Width           =   2535
   End
   Begin VB.ComboBox Combo12 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":000C
      Left            =   2880
      List            =   "ModuloGUI.ctx":000E
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1080
      Width           =   3375
   End
   Begin VB.ComboBox Combo11 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0010
      Left            =   2880
      List            =   "ModuloGUI.ctx":0012
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   8040
      Width           =   3255
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0014
      Left            =   2880
      List            =   "ModuloGUI.ctx":0016
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   3240
      Width           =   3375
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0018
      Left            =   2880
      List            =   "ModuloGUI.ctx":001A
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   600
      Width           =   3375
   End
   Begin VB.ComboBox Combo9 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":001C
      Left            =   6600
      List            =   "ModuloGUI.ctx":001E
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   6120
      Width           =   1815
   End
   Begin VB.ComboBox Combo8 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0020
      Left            =   2880
      List            =   "ModuloGUI.ctx":0022
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   6120
      Width           =   1815
   End
   Begin VB.ComboBox Combo10 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0024
      Left            =   2880
      List            =   "ModuloGUI.ctx":0026
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   7560
      Width           =   1815
   End
   Begin VB.ComboBox Combo6 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0028
      Left            =   2880
      List            =   "ModuloGUI.ctx":002A
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   5160
      Width           =   1815
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":002C
      Left            =   2880
      List            =   "ModuloGUI.ctx":002E
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   4680
      Width           =   1815
   End
   Begin VB.CommandButton cmdModuloSalida 
      Caption         =   "Módulos del Grupo ..."
      Height          =   255
      Left            =   8520
      TabIndex        =   14
      Top             =   7080
      Width           =   1815
   End
   Begin VB.TextBox txtModuloSalida 
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
      Left            =   2880
      MaxLength       =   32
      TabIndex        =   28
      TabStop         =   0   'False
      Top             =   7080
      Width           =   5535
   End
   Begin VB.CommandButton cmdModuloEntrada 
      Caption         =   "Módulos del Grupo ..."
      Height          =   255
      Left            =   8520
      TabIndex        =   13
      Top             =   6600
      Width           =   1815
   End
   Begin VB.TextBox txtModuloEntrada 
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
      Left            =   2880
      MaxLength       =   32
      TabIndex        =   21
      TabStop         =   0   'False
      Top             =   6600
      Width           =   5535
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0030
      Left            =   2880
      List            =   "ModuloGUI.ctx":0032
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   4200
      Width           =   1815
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0034
      Left            =   2880
      List            =   "ModuloGUI.ctx":0036
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   3720
      Width           =   3375
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   7440
      TabIndex        =   19
      Top             =   8760
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   9000
      TabIndex        =   20
      Top             =   8760
      Width           =   1335
   End
   Begin VB.TextBox txtDescripcion 
      Height          =   1485
      Left            =   2880
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Top             =   1560
      Width           =   7335
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   2880
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.ComboBox Combo7 
      Height          =   315
      ItemData        =   "ModuloGUI.ctx":0038
      Left            =   2880
      List            =   "ModuloGUI.ctx":003A
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label lblms 
      Caption         =   "ms"
      Height          =   255
      Left            =   8880
      TabIndex        =   42
      Top             =   1110
      Width           =   375
   End
   Begin VB.Label lblduracion 
      Caption         =   "Duracion:"
      Height          =   255
      Left            =   6480
      TabIndex        =   41
      Top             =   1110
      Width           =   975
   End
   Begin VB.Label lblWorkstation 
      Caption         =   "Workstation:"
      Height          =   255
      Left            =   6480
      TabIndex        =   39
      Top             =   600
      Width           =   975
   End
   Begin VB.Label lblTipoAcceso 
      Caption         =   "Tipo de Acceso:"
      Height          =   255
      Left            =   120
      TabIndex        =   38
      Top             =   1080
      Width           =   2655
   End
   Begin VB.Label lblProtocolo 
      Caption         =   "Protocolo:"
      Height          =   255
      Left            =   120
      TabIndex        =   37
      Top             =   8040
      Width           =   2655
   End
   Begin VB.Label lblTipoIdentificacion 
      Caption         =   "Tipo de Identificación:"
      Height          =   255
      Left            =   120
      TabIndex        =   36
      Top             =   3240
      Width           =   2655
   End
   Begin VB.Label lblTipoModulo 
      Caption         =   "Tipo de Módulo:"
      Height          =   255
      Left            =   120
      TabIndex        =   35
      Top             =   600
      Width           =   2655
   End
   Begin VB.Label lblOrdenEncuesta 
      Caption         =   "Orden de Encuesta:"
      Height          =   255
      Left            =   4920
      TabIndex        =   34
      Top             =   6120
      Width           =   1575
   End
   Begin VB.Label lblFuncionando 
      Caption         =   "Funcionando:"
      Height          =   255
      Left            =   120
      TabIndex        =   33
      Top             =   7560
      Width           =   2655
   End
   Begin VB.Label lblRequiereAntipassBack 
      Caption         =   "Requiere AntiPassBack:"
      Height          =   255
      Left            =   120
      TabIndex        =   32
      Top             =   5160
      Width           =   2655
   End
   Begin VB.Label lblResponde 
      Caption         =   "Responde:"
      Height          =   255
      Left            =   120
      TabIndex        =   31
      Top             =   4680
      Width           =   2655
   End
   Begin VB.Label lblGrupoModulos 
      Caption         =   "Grupo de Módulos:"
      Height          =   255
      Left            =   120
      TabIndex        =   30
      Top             =   6120
      Width           =   2655
   End
   Begin VB.Label lblModuloSalida 
      Caption         =   "Módulo interrelacionado de Salida:"
      Height          =   255
      Left            =   120
      TabIndex        =   29
      Top             =   7080
      Width           =   2655
   End
   Begin VB.Label lblModuloEntrada 
      Caption         =   "Módulo interrelacionado de Entrada:"
      Height          =   255
      Left            =   120
      TabIndex        =   27
      Top             =   6600
      Width           =   2655
   End
   Begin VB.Label lblEncuesta 
      Caption         =   "Encuesta:"
      Height          =   255
      Left            =   120
      TabIndex        =   26
      Top             =   4200
      Width           =   2655
   End
   Begin VB.Label lblSentido 
      Caption         =   "Sentido:"
      Height          =   255
      Left            =   120
      TabIndex        =   25
      Top             =   3720
      Width           =   2655
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   10320
      Y1              =   8520
      Y2              =   8520
   End
   Begin VB.Label lblDescripcion 
      Caption         =   "Descripción:"
      Height          =   255
      Left            =   120
      TabIndex        =   24
      Top             =   1560
      Width           =   2655
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   23
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label lblAddress 
      Caption         =   "Address:"
      Height          =   255
      Left            =   120
      TabIndex        =   22
      Top             =   5640
      Width           =   2655
   End
End
Attribute VB_Name = "ModuloGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminModulosService As AdminModulosSVR
Private AdminModulosInterrelacionadosService As AdminModulosSVR
Private PlatformService As PlatformSVR
Private MdlDataObject As MdlDAO

Public db_ModuloID As Long
Public db_ModuloInterrelacionadoEntradaID As Long
Public db_ModuloInterrelacionadoSalidaID As Long



Private Sub Check1_Click()
    If Check1.value Then
        Combo15.Visible = True
    Else
        Combo15.Visible = False
    End If

End Sub

Private Sub Combo12_Click()
    If Combo12.ItemData(Combo12.ListIndex) = CAT_VAL_TIPO_ACCESO_PUERTA Then
        lblduracion.Visible = True
        lblms.Visible = True
        Combo14.Visible = True
    Else
        lblduracion.Visible = False
        lblms.Visible = False
        Combo14.Visible = False
    End If
    

End Sub



Private Sub Combo2_Click()
    If Combo2.ItemData(Combo2.ListIndex) = CAT_VAL_IDENTIFICACION_CODIGO_BARRA Then
        chkvalidaBarras.Visible = True
    Else
        chkvalidaBarras.Visible = False
    End If
    

End Sub

Private Sub UserControl_Initialize()
    Set AdminModulosService = New AdminModulosSVR
    Set AdminModulosInterrelacionadosService = New AdminModulosSVR
    Set PlatformService = New PlatformSVR
    Set MdlDataObject = New MdlDAO

    Dim i As Integer

    If PlatformService.getValoresCategoria(CAT_MODULO_CONTROLADOR) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo1.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_IDENTIFICACION) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo2.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo2.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo2.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_SENTIDO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo3.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo3.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo3.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_ENCUESTA) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo4.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo4.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo4.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_RESPONDE) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo5.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo5.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo5.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_ANTIPASSBACK) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo6.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo6.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo6.ListIndex = 0
    End If

    llenarComboNumeros Combo7, 98, False
    llenarComboNumeros Combo8, 98, False
    llenarComboNumeros Combo9, 99, True

    If PlatformService.getValoresEstado(EST_FUNCIONANDO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo10.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo10.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo10.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_PROTOCOLO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo11.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo11.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo11.ListIndex = 0
    End If

    If PlatformService.getValoresCategoria(CAT_TIPO_ACCESO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo12.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo12.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo12.ListIndex = 0
    End If

    If PlatformService.getWorkstations() Then
        i = 0
        Do While Not PlatformService.WorkstationsQuery.DbRecordsetQRY.EOF
            Combo13.List(i) = CStr(PlatformService.WorkstationsQuery.DbRecordsetQRY.Fields(1).value)
            Combo13.ItemData(i) = CStr(PlatformService.WorkstationsQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.WorkstationsQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo13.ListIndex = 0
    
    llenarComboNumeros Combo14, 9999, True
    
    
   End If
   
   llenarComboNumeros Combo15, 99, True

End Sub

Private Sub UserControl_Terminate()
    Set AdminModulosService = Nothing
    Set AdminModulosInterrelacionadosService = Nothing
    Set PlatformService = Nothing
    Set MdlDataObject = Nothing
End Sub

Property Let ModuloID(value As Long)
    Let db_ModuloID = value
End Property

Property Let ModuloInterrelacionadoEntradaID(value As Long)
    Let db_ModuloInterrelacionadoEntradaID = value
    txtModuloEntrada.Text = AdminModulosInterrelacionadosService.ModuloOrm.getDescription(db_ModuloInterrelacionadoEntradaID)
End Property

Property Let ModuloInterrelacionadoSalidaID(value As Long)
    Let db_ModuloInterrelacionadoSalidaID = value
    txtModuloSalida.Text = AdminModulosInterrelacionadosService.ModuloOrm.getDescription(db_ModuloInterrelacionadoSalidaID)
End Property

Sub init()
    actualizarLocalizacion
    
    If db_ModuloID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
    habilitarCmdSubirPermisosModulo
End Sub

Sub enableEdition()
End Sub

Sub loadData()
    Set MdlDataObject = AdminModulosService.ModuloOrm.obtenerModulo(db_ModuloID)

    If Not (MdlDataObject Is Nothing) Then
        txtNombre.Text = MdlDataObject.Nombre
        txtDescripcion.Text = MdlDataObject.Descripcion
        ModuloInterrelacionadoEntradaID = MdlDataObject.ModuloEntradaID
        ModuloInterrelacionadoSalidaID = MdlDataObject.ModuloSalidaID
    Else
        MsgBox "No se puede leer Módulo", vbCritical, "Atención"
        Exit Sub
    End If

    Dim i As Integer

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_MODULO_CONTROLADOR) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo1.ListCount - 1
                If Combo1.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo1.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_IDENTIFICACION) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo2.ListCount - 1
                If Combo2.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo2.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_SENTIDO) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo3.ListCount - 1
                If Combo3.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo3.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_ENCUESTA) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo4.ListCount - 1
                If Combo4.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo4.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_RESPONDE) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo5.ListCount - 1
                If Combo5.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo5.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_ANTIPASSBACK) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo6.ListCount - 1
                If Combo6.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo6.ListIndex = i
                End If
            Next
        End If
    End If

    For i = 0 To Combo7.ListCount - 1
        If Combo7.ItemData(i) = CStr(MdlDataObject.Address) Then
            Combo7.ListIndex = i
        End If
    Next

    For i = 0 To Combo8.ListCount - 1
        If Combo8.ItemData(i) = CStr(MdlDataObject.GrupoModulos) Then
            Combo8.ListIndex = i
        End If
    Next

    For i = 0 To Combo9.ListCount - 1
        If Combo9.ItemData(i) = CStr(MdlDataObject.OrdenEncuesta) Then
            Combo9.ListIndex = i
        End If
    Next

    For i = 0 To Combo14.ListCount - 1
        If Combo14.ItemData(i) = CStr(MdlDataObject.Duracion_pulso) Then
            Combo14.ListIndex = i
        End If
    Next
    
    'afa para validar tickets a la salida
    chkvalidaBarras.value = IIf(MdlDataObject.ValidacionTicket, 1, 0)
    
    
    If AdminModulosService.ModuloQuery.obtenerMdlEstVal(db_ModuloID, EST_FUNCIONANDO) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo10.ListCount - 1
                If Combo10.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo10.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_PROTOCOLO) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo11.ListCount - 1
                If Combo11.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo11.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerMdlCatVal(db_ModuloID, CAT_TIPO_ACCESO) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo12.ListCount - 1
                If Combo12.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo12.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminModulosService.ModuloQuery.obtenerWks(db_ModuloID) Then
        If Not AdminModulosService.ModuloQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo13.ListCount - 1
                If Combo13.ItemData(i) = CStr(AdminModulosService.ModuloQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo13.ListIndex = i
                End If
            Next
        End If
    End If



 ' cargo si tiene camara asociada
    Dim aux As Long
    aux = Buscar_Camara_Modulo(DbConnectionSYS, db_ModuloID)
    If aux > -1 Then
        Check1.value = 1
        Combo15.ListIndex = aux
    Else
        Check1.value = 0
        Combo15.Visible = False
    End If
    


End Sub

Sub loadGrids()
End Sub

Private Sub Combo1_Click()
    habilitarCmdSubirPermisosModulo
End Sub

Private Sub CmdSubirPermisosModulo_Click()
    If MsgBox("Confirma subir datos de Permisos al Módulo?", vbYesNo, "Comunicación con el Módulo") = vbYes Then
        AdminModulosService.getDatosSubirModulo (db_ModuloID)
    End If
End Sub

Sub habilitarCmdSubirPermisosModulo()
    lblWorkstation.Visible = False
    Combo13.Visible = False

    If Combo1.ItemData(Combo1.ListIndex) = CAT_VAL_MODULO_ST1660 Then
        CmdSubirPermisosModulo.Enabled = True
        CmdBajarPermisosModulo.Enabled = True
    ElseIf Combo1.ItemData(Combo1.ListIndex) = CAT_VAL_MODULO_VIRTUAL Then
        lblWorkstation.Visible = True
        Combo13.Visible = True
    Else
        CmdSubirPermisosModulo.Enabled = False
        CmdBajarPermisosModulo.Enabled = False
    End If
End Sub

Function validarDatos() As Boolean
    If Combo1.ListIndex = -1 Then
        MsgBox "Debe seleccionar Tipo de Módulo Controlador", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo2.ListIndex = -1 Then
        MsgBox "Debe seleccionar Tipo de Identificación", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo3.ListIndex = -1 Then
        MsgBox "Debe seleccionar Sentido", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo4.ListIndex = -1 Then
        MsgBox "Debe seleccionar Encuesta", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo5.ListIndex = -1 Then
        MsgBox "Debe seleccionar Respuesta", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo6.ListIndex = -1 Then
        MsgBox "Debe seleccionar AntiPassBack", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo7.ListIndex = -1 Then
        MsgBox "Debe seleccionar Address", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo8.ListIndex = -1 Then
        MsgBox "Debe seleccionar Grupo de Módulos", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo9.ListIndex = -1 Then
        MsgBox "Debe seleccionar Orden de Encuesta", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo10.ListIndex = -1 Then
        MsgBox "Debe seleccionar Estado de Funcionamiento", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo11.ListIndex = -1 Then
        MsgBox "Debe seleccionar Protocolo", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo12.ListIndex = -1 Then
        MsgBox "Debe seleccionar Tipo de Acceso", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not onUpdate Then
            db_ModuloID = AdminModulosService.ModuloOrm.crearModulo(txtNombre.Text, StringToDBField(txtDescripcion.Text), Combo7.ItemData(Combo7.ListIndex), db_ModuloInterrelacionadoEntradaID, db_ModuloInterrelacionadoSalidaID, Combo8.ItemData(Combo8.ListIndex), Combo9.ItemData(Combo9.ListIndex), Combo14.ItemData(Combo14.ListIndex), chkvalidaBarras.value)
            If db_ModuloID <> -1 Then
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_MODULO_CONTROLADOR, Combo1.ItemData(Combo1.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_IDENTIFICACION, Combo2.ItemData(Combo2.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_SENTIDO, Combo3.ItemData(Combo3.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_ENCUESTA, Combo4.ItemData(Combo4.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_RESPONDE, Combo5.ItemData(Combo5.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_ANTIPASSBACK, Combo6.ItemData(Combo6.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_PROTOCOLO, Combo11.ItemData(Combo11.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_TIPO_ACCESO, Combo12.ItemData(Combo12.ListIndex)
                AdminModulosService.ModuloOrm.crearMdlEstVal db_ModuloID, EST_FUNCIONANDO, Combo10.ItemData(Combo10.ListIndex)

                AdminModulosService.ModuloQuery.eliminarWks db_ModuloID ' borra de la tabla de virtuales el modulo
                If Combo1.ItemData(Combo1.ListIndex) = CAT_VAL_MODULO_VIRTUAL Then
                    'si ahora lo setearon como virtual lo crea
                    AdminModulosService.ModuloOrm.crearWksMdl Combo13.ItemData(Combo13.ListIndex), db_ModuloID
                End If
                
                If AdminModulosService.ModuloQuery.EstablecerModulosInterrelacionados(db_ModuloID) Then
                End If
                enableEdition
                onUpdate = True
                ParentWindow.Destroy

                Call MensajesSYS.Escribir_Log_txt(Texto_log, " Creación de Módulo | Usuario ID = " & UsuarioActivoSYS & " | Nombre Módulo = " & txtNombre.Text & " | ID Módulo = " & db_ModuloID)

            Else
                MsgBox "No se puede crear Módulo Controlador", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminModulosService.ModuloOrm.actualizarModulo(db_ModuloID, txtNombre.Text, StringToDBField(txtDescripcion.Text), Combo7.ItemData(Combo7.ListIndex), db_ModuloInterrelacionadoEntradaID, db_ModuloInterrelacionadoSalidaID, Combo8.ItemData(Combo8.ListIndex), Combo9.ItemData(Combo9.ListIndex), Combo14.ItemData(Combo14.ListIndex), chkvalidaBarras.value) Then
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_MODULO_CONTROLADOR) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_MODULO_CONTROLADOR, Combo1.ItemData(Combo1.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_IDENTIFICACION) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_IDENTIFICACION, Combo2.ItemData(Combo2.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_SENTIDO) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_SENTIDO, Combo3.ItemData(Combo3.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_ENCUESTA) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_ENCUESTA, Combo4.ItemData(Combo4.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_RESPONDE) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_RESPONDE, Combo5.ItemData(Combo5.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_ANTIPASSBACK) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_ANTIPASSBACK, Combo6.ItemData(Combo6.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_PROTOCOLO) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_PROTOCOLO, Combo11.ItemData(Combo11.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlCat(db_ModuloID, CAT_TIPO_ACCESO) Then
                    AdminModulosService.ModuloOrm.crearMdlCatVal db_ModuloID, CAT_TIPO_ACCESO, Combo12.ItemData(Combo12.ListIndex)
                End If
                If AdminModulosService.ModuloQuery.eliminarMdlEst(db_ModuloID, EST_FUNCIONANDO) Then
                    AdminModulosService.ModuloOrm.crearMdlEstVal db_ModuloID, EST_FUNCIONANDO, Combo10.ItemData(Combo10.ListIndex)
                End If

                AdminModulosService.ModuloQuery.eliminarWks db_ModuloID ' borra de la tabla de virtuales el modulo
                If Combo1.ItemData(Combo1.ListIndex) = CAT_VAL_MODULO_VIRTUAL Then
                    'si ahora lo setearon como virtual lo crea
                    AdminModulosService.ModuloOrm.crearWksMdl Combo13.ItemData(Combo13.ListIndex), db_ModuloID
                End If
                ParentWindow.UpdateWindow
                ParentWindow.Destroy

                'afa para cargar la camara asociada al modulo
                'borro si existe una camara asociada
                
                Borrar_Camara_Modulo DbConnectionSYS, db_ModuloID
                
                If Check1.value Then
                    Crear_Camara_Modulo DbConnectionSYS, db_ModuloID, Combo15.ListIndex
                End If
                '''''''''



                Call MensajesSYS.Escribir_Log_txt(Texto_log, " Modificación de Módulo | Usuario ID = " & UsuarioActivoSYS & " | Nombre Módulo = " & txtNombre.Text & " | ID Módulo = " & db_ModuloID)

            Else
                MsgBox "No se puede actualizar Módulo Controlador", vbCritical, "Atención"
                Exit Sub
            End If
        End If
    End If
End Sub

Private Sub cmdModuloEntrada_Click()
    Unload AdminModulosEntradaMOD
    Set AdminModulosEntradaMOD.ParentWindow = Me
    AdminModulosEntradaMOD.ReadOnly = True
    AdminModulosEntradaMOD.Seleccion = True
    AdminModulosEntradaMOD.GrupoModulos = Combo8.ItemData(Combo8.ListIndex)
    AdminModulosEntradaMOD.Show vbModal
End Sub

Private Sub cmdModuloSalida_Click()
    Unload AdminModulosSalidaMOD
    Set AdminModulosSalidaMOD.ParentWindow = Me
    AdminModulosSalidaMOD.ReadOnly = True
    AdminModulosSalidaMOD.Seleccion = True
    AdminModulosSalidaMOD.Show vbModal
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
End Sub

Sub actualizarLocalizacion()
    cmdModuloSalida.Caption = localizar(cmdModuloSalida.name)
    lblNombre.Caption = localizar(lblNombre.name)
    lblTipoModulo.Caption = localizar(lblTipoModulo.name)
    lblTipoAcceso.Caption = localizar(lblTipoAcceso.name)
    lblDescripcion.Caption = localizar(lblDescripcion.name)
    lblTipoIdentificacion.Caption = localizar(lblTipoIdentificacion.name)
    lblSentido.Caption = localizar(lblSentido.name)
    lblEncuesta.Caption = localizar(lblEncuesta.name)
    lblResponde.Caption = localizar(lblResponde.name)
    lblRequiereAntipassBack.Caption = localizar(lblRequiereAntipassBack.name)
    lblAddress.Caption = localizar(lblAddress.name)
    lblGrupoModulos.Caption = localizar(lblGrupoModulos.name)
    lblOrdenEncuesta.Caption = localizar(lblOrdenEncuesta.name)
    lblModuloEntrada.Caption = localizar(lblModuloEntrada.name)
    lblModuloSalida.Caption = localizar(lblModuloSalida.name)
    lblFuncionando.Caption = localizar(lblFuncionando.name)
    lblProtocolo.Caption = localizar(lblProtocolo.name)
    CmdBajarPermisosModulo.Caption = localizar(CmdBajarPermisosModulo.name)
    CmdSubirPermisosModulo.Caption = localizar(CmdSubirPermisosModulo.name)
    cmdGuardar.Caption = localizar(cmdGuardar.name)
    cmdModuloEntrada.Caption = localizar(cmdModuloEntrada.name)
End Sub

Private Function Buscar_Camara_Modulo(ByRef mycn As ADODB.Connection, ByVal ModuloID_ As Long) As Integer
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
            
    Buscar_Camara_Modulo = -1
    
    Set Rst = New ADODB.RecordSet
    Rst.Open "SELECT Camara " & _
    " FROM mdlcam " & _
    " WHERE moduloID = " & ModuloID_, mycn, adOpenStatic, adLockReadOnly
           
    Buscar_Camara_Modulo = Rst!camara
    Rst.Close
    
Salir:
Set Rst = Nothing

End Function

Private Function Borrar_Camara_Modulo(ByRef mycn As ADODB.Connection, ByVal ModuloID_ As Long) As Integer
On Error GoTo Salir
            
    mycn.Execute "delete from mdlcam where moduloid =" & ModuloID_
    
Salir:

End Function
Private Function Crear_Camara_Modulo(ByRef mycn As ADODB.Connection, ByVal ModuloID_ As Long, camara As Long) As Integer
On Error GoTo Salir
            
    mycn.Execute "insert into mdlcam (moduloid,camara) values (" & ModuloID_ & "," & camara & ")"
    
Salir:

End Function

