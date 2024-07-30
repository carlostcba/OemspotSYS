VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl AutoGUI 
   ClientHeight    =   5940
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9030
   KeyPreview      =   -1  'True
   ScaleHeight     =   5940
   ScaleWidth      =   9030
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7800
      Top             =   1440
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdActualizarPrx 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   7440
      TabIndex        =   16
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrarPrx 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   7440
      TabIndex        =   15
      Top             =   3720
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregarPrx 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   7440
      TabIndex        =   14
      Top             =   3000
      Width           =   1335
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "AutoGUI.ctx":0000
      Left            =   1080
      List            =   "AutoGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2040
      Width           =   4095
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      ItemData        =   "AutoGUI.ctx":0004
      Left            =   1080
      List            =   "AutoGUI.ctx":0006
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   1560
      Width           =   4095
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "AutoGUI.ctx":0008
      Left            =   1080
      List            =   "AutoGUI.ctx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   1080
      Width           =   4095
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "AutoGUI.ctx":000C
      Left            =   1080
      List            =   "AutoGUI.ctx":000E
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   600
      Width           =   4095
   End
   Begin VB.TextBox txtPatente 
      Height          =   285
      Left            =   1080
      MaxLength       =   64
      TabIndex        =   4
      Top             =   120
      Width           =   4095
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   7440
      TabIndex        =   3
      Top             =   5520
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   5880
      TabIndex        =   2
      Top             =   5520
      Width           =   1335
   End
   Begin VB.CommandButton CmdImportarFoto 
      Caption         =   "Importar Foto..."
      Height          =   255
      Left            =   7440
      TabIndex        =   1
      Top             =   600
      Width           =   1335
   End
   Begin VB.CommandButton cmdCapturarFoto 
      Caption         =   "Capturar Foto..."
      Height          =   255
      Left            =   7440
      TabIndex        =   0
      Top             =   960
      Visible         =   0   'False
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid GridPropiedadesExtendidas 
      Height          =   2535
      Left            =   1080
      TabIndex        =   17
      Top             =   2760
      Width           =   6255
      _ExtentX        =   11033
      _ExtentY        =   4471
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Image Image1 
      Height          =   1695
      Left            =   5400
      Stretch         =   -1  'True
      Top             =   480
      Width           =   1935
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   8880
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Label lblOtrasCaracteristicas 
      Caption         =   "Otros Datos:"
      Height          =   495
      Left            =   120
      TabIndex        =   18
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label lblColorAuto 
      Caption         =   "Color:"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   2040
      Width           =   495
   End
   Begin VB.Label lblModeloAuto 
      Caption         =   "Modelo:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   1560
      Width           =   615
   End
   Begin VB.Label lblMarcaAuto 
      Caption         =   "Marca:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1080
      Width           =   495
   End
   Begin VB.Label lblTipoAuto 
      Caption         =   "Tipo:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   495
   End
   Begin VB.Label lblPatente 
      Caption         =   "Patente:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   615
   End
   Begin VB.Line Line6 
      X1              =   120
      X2              =   8880
      Y1              =   5400
      Y2              =   5400
   End
End
Attribute VB_Name = "AutoGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private PlatformService As PlatformSVR
Private AdminAutosService As AdminAutosSVR
Private AutDataObject As AutDAO

Public db_AutoID As Long

Private Sub UserControl_Initialize()
    Set PlatformService = New PlatformSVR
    Set AdminAutosService = New AdminAutosSVR
    Set AutDataObject = New AutDAO
    
    Dim i As Integer
    
    If PlatformService.getValoresCategoria(CAT_TIPO_AUTO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo1.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        If Not Combo1.ListIndex < 0 Then
        Combo1.ListIndex = 1
        End If
    End If

    If PlatformService.getValoresCategoria(CAT_MARCA_AUTO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo2.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo2.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo2.ListIndex = 1
    End If

    If PlatformService.getValoresCategoria(CAT_MODELO_AUTO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo3.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo3.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo3.ListIndex = 1
    End If

    If PlatformService.getValoresCategoria(CAT_COLOR_AUTO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo4.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo4.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo4.ListIndex = 1
    End If

End Sub

Private Sub UserControl_Terminate()
    Set PlatformService = Nothing
    Set AdminAutosService = Nothing
    Set AutDataObject = Nothing
End Sub

Property Let AutoID(value As Long)
    Let db_AutoID = value
End Property

Sub init()
    If db_AutoID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
    If db_AutoID <> 0 Then
        GridPropiedadesExtendidas.Enabled = True
        cmdAgregarPrx.Enabled = True
        cmdActualizarPrx.Enabled = True
        cmdBorrarPrx.Enabled = True

        cmdGuardar.Caption = "Guardar"
    Else
        GridPropiedadesExtendidas.Enabled = False
        cmdAgregarPrx.Enabled = False
        cmdActualizarPrx.Enabled = False
        cmdBorrarPrx.Enabled = False

        cmdGuardar.Caption = "Siguiente >> "
    End If
End Sub

Sub loadData()
    Set AutDataObject = AdminAutosService.AutosOrm.obtenerAuto(db_AutoID)

    If Not (AutDataObject Is Nothing) Then
        TxtPatente.Text = AutDataObject.Patente

    Else
        MsgBox "No se puede leer Auto", vbCritical, "Atención"
        Exit Sub
    End If

    Dim i As Integer

    If AdminAutosService.AutosQuery.obtenerAutCatVal(db_AutoID, CAT_TIPO_AUTO) Then
        If Not AdminAutosService.AutosQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo1.ListCount - 1
                If Combo1.ItemData(i) = CStr(AdminAutosService.AutosQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo1.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminAutosService.AutosQuery.obtenerAutCatVal(db_AutoID, CAT_MARCA_AUTO) Then
        If Not AdminAutosService.AutosQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo2.ListCount - 1
                If Combo2.ItemData(i) = CStr(AdminAutosService.AutosQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo2.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminAutosService.AutosQuery.obtenerAutCatVal(db_AutoID, CAT_MODELO_AUTO) Then
        If Not AdminAutosService.AutosQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo3.ListCount - 1
                If Combo3.ItemData(i) = CStr(AdminAutosService.AutosQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo3.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminAutosService.AutosQuery.obtenerAutCatVal(db_AutoID, CAT_COLOR_AUTO) Then
        If Not AdminAutosService.AutosQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo4.ListCount - 1
                If Combo4.ItemData(i) = CStr(AdminAutosService.AutosQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo4.ListIndex = i
                End If
            Next
        End If
    End If

    cargarFoto
    
    loadGrids
End Sub

Sub loadGrids()
    GridPropiedadesExtendidas.Clear
    If AdminAutosService.getPrxList(db_AutoID) Then
        fillGrid GridPropiedadesExtendidas, AdminAutosService.AutosQuery.DbRecordsetQRY, 1
    End If
End Sub

Function validarDatos() As Boolean
    If TxtPatente.Text = "" Then
        MsgBox "Ingrese Patente", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo1.ListIndex = -1 Then
        MsgBox "Ingrese Tipo de Auto", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo2.ListIndex = -1 Then
        MsgBox "Ingrese Marca de Auto", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo3.ListIndex = -1 Then
        MsgBox "Ingrese Modelo de Auto", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If Combo4.ListIndex = -1 Then
        MsgBox "Ingrese Color de Auto", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    validarDatos = True
End Function

Private Sub cmdGuardar_Click()
    If validarDatos Then
        If Not onUpdate Then
            db_AutoID = AdminAutosService.AutosOrm.crearAuto(TxtPatente.Text)
            If db_AutoID <> -1 Then
                AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_TIPO_AUTO, Combo1.ItemData(Combo1.ListIndex)
                AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_MARCA_AUTO, Combo2.ItemData(Combo2.ListIndex)
                AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_MODELO_AUTO, Combo3.ItemData(Combo3.ListIndex)
                AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_COLOR_AUTO, Combo4.ItemData(Combo4.ListIndex)

                enableEdition
                onUpdate = True
                
                cargarFoto
            Else
                MsgBox "No se puede crear Auto", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminAutosService.AutosOrm.actualizarAuto(db_AutoID, TxtPatente.Text) Then
                If AdminAutosService.AutosQuery.eliminarAutCat(db_AutoID, CAT_TIPO_AUTO) Then
                    AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_TIPO_AUTO, Combo1.ItemData(Combo1.ListIndex)
                End If
                If AdminAutosService.AutosQuery.eliminarAutCat(db_AutoID, CAT_MARCA_AUTO) Then
                    AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_MARCA_AUTO, Combo2.ItemData(Combo2.ListIndex)
                End If
                If AdminAutosService.AutosQuery.eliminarAutCat(db_AutoID, CAT_MODELO_AUTO) Then
                    AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_MODELO_AUTO, Combo3.ItemData(Combo3.ListIndex)
                End If
                If AdminAutosService.AutosQuery.eliminarAutCat(db_AutoID, CAT_COLOR_AUTO) Then
                    AdminAutosService.AutosOrm.crearAutCatVal db_AutoID, CAT_COLOR_AUTO, Combo4.ItemData(Combo4.ListIndex)
                End If
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Auto", vbCritical, "Atención"
                Exit Sub
            End If
        End If
    End If
    'ParentWindow.update
End Sub

Private Sub CmdImportarFoto_Click()
On Error Resume Next
    CommonDialog1.DefaultExt = "jpg"
    CommonDialog1.Filter = "*.jpg"
    CommonDialog1.ShowOpen
    If CommonDialog1.fileName <> "" Then
        FileCopy CommonDialog1.fileName, getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_AUTOS") & "\" & db_AutoID & ".jpg"
        cargarFoto
    End If
End Sub

Sub cargarFoto()
On Error GoTo noHayFoto
    Image1.Picture = LoadPicture(getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_AUTOS") & "\" & db_AutoID & ".jpg")
    Image1.ToolTipText = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_AUTOS") & "\" & db_AutoID & ".jpg"
    Exit Sub
noHayFoto:
    Image1.Picture = LoadPicture(App.path & "\NoHayFoto.jpg")
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

' Propiedades Extendidas:

Private Sub cmdAgregarPrx_Click()
    Set AutoPrxMOD.ParentWindow = Me
    AutoPrxMOD.AutoID = db_AutoID
    AutoPrxMOD.PropiedadID = 0
    AutoPrxMOD.Show vbModal
End Sub

Private Sub cmdActualizarPrx_Click()
    GridPropiedadesExtendidas.col = 0
    GridPropiedadesExtendidas.row = GridPropiedadesExtendidas.RowSel
    If GridPropiedadesExtendidas.Text <> "" And GridPropiedadesExtendidas.row >= 1 Then
        GridPropiedadesExtendidas.col = 0
        GridPropiedadesExtendidas.row = GridPropiedadesExtendidas.RowSel
        Dim PropiedadID  As Long
        PropiedadID = CLng(GridPropiedadesExtendidas.Text)

        Set AutoPrxMOD.ParentWindow = Me
        AutoPrxMOD.AutoID = db_AutoID
        AutoPrxMOD.PropiedadID = PropiedadID
        AutoPrxMOD.Show vbModal
    End If
End Sub

Private Sub GridPropiedadesExtendidas_DblClick()
    cmdActualizarPrx_Click
End Sub

Private Sub cmdBorrarPrx_Click()
    GridPropiedadesExtendidas.col = 1
    GridPropiedadesExtendidas.row = GridPropiedadesExtendidas.RowSel
    If GridPropiedadesExtendidas.Text <> "" And GridPropiedadesExtendidas.row >= 1 Then
        If MsgBox("Está seguro de quitar [" & GridPropiedadesExtendidas.Text & "]?", vbYesNo, "Atención") = vbYes Then

            GridPropiedadesExtendidas.col = 0
            GridPropiedadesExtendidas.row = GridPropiedadesExtendidas.RowSel
            Dim PropiedadID  As Long
            PropiedadID = CLng(GridPropiedadesExtendidas.Text)

            If Not AdminAutosService.AutosOrm.eliminarAutPrx(db_AutoID, PropiedadID) Then
                MsgBox "No se puede quitar el Propiedad Extendida del Auto", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub
