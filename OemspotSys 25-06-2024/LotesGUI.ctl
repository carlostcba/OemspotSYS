VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl LoteGUI 
   ClientHeight    =   4980
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9870
   ScaleHeight     =   4980
   ScaleWidth      =   9870
   Begin VB.TextBox txtNumero 
      ForeColor       =   &H000000FF&
      Height          =   285
      Left            =   4860
      MaxLength       =   200
      TabIndex        =   4
      Top             =   570
      Width           =   3075
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancela&r"
      Height          =   270
      Left            =   8145
      TabIndex        =   7
      Top             =   870
      Width           =   1440
   End
   Begin VB.CommandButton cmdCrear 
      Caption         =   "&Crear"
      Height          =   270
      Left            =   8145
      TabIndex        =   6
      Top             =   420
      Width           =   1410
   End
   Begin VB.TextBox txtUF 
      Height          =   285
      Left            =   1635
      MaxLength       =   32
      TabIndex        =   1
      Top             =   555
      Width           =   1965
   End
   Begin VB.TextBox txtLote 
      Height          =   285
      Left            =   1635
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   1950
   End
   Begin VB.CommandButton cmdActualizarIntegrante 
      Caption         =   "Ac&tualizar"
      Height          =   255
      Left            =   8280
      TabIndex        =   9
      Top             =   3045
      Width           =   1335
   End
   Begin VB.TextBox txtCalle 
      Height          =   285
      Left            =   4860
      MaxLength       =   32
      TabIndex        =   3
      Top             =   90
      Width           =   3090
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "C&errar"
      Height          =   255
      Left            =   8340
      TabIndex        =   12
      Top             =   4590
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "&Guardar"
      Height          =   255
      Left            =   6765
      TabIndex        =   11
      Top             =   4575
      Width           =   1335
   End
   Begin VB.ComboBox txtEstado 
      Height          =   315
      ItemData        =   "LotesGUI.ctx":0000
      Left            =   4500
      List            =   "LotesGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1065
      Width           =   1935
   End
   Begin VB.TextBox txtInternoTelefonico 
      Height          =   285
      Left            =   1635
      MaxLength       =   32
      TabIndex        =   2
      Top             =   1080
      Width           =   1950
   End
   Begin VB.CommandButton cmdBorrarIntegrante 
      Caption         =   "&Borrar"
      Height          =   255
      Left            =   8280
      TabIndex        =   10
      Top             =   3480
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregarIntegrante 
      Caption         =   "&Agregar ..."
      Height          =   255
      Left            =   8265
      TabIndex        =   8
      Top             =   2595
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid GridLotes 
      Height          =   2715
      Left            =   1620
      TabIndex        =   13
      Top             =   1695
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   4789
      _Version        =   393216
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Label lblNumero 
      Caption         =   "Observaciones:"
      Height          =   255
      Left            =   3720
      TabIndex        =   20
      Top             =   585
      Width           =   1215
   End
   Begin VB.Label lblLote 
      Caption         =   "Lote Nº:"
      Height          =   255
      Left            =   210
      TabIndex        =   19
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblIntegrantes 
      Caption         =   "Integrantes:"
      Height          =   255
      Left            =   180
      TabIndex        =   18
      Top             =   1710
      Width           =   1335
   End
   Begin VB.Label lblUF 
      Caption         =   "UF:"
      Height          =   255
      Left            =   195
      TabIndex        =   17
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label lblCalle 
      Caption         =   "Calle:"
      Height          =   255
      Left            =   4200
      TabIndex        =   16
      Top             =   105
      Width           =   1215
   End
   Begin VB.Label lblEstado 
      Caption         =   "Estado:"
      Height          =   255
      Left            =   3825
      TabIndex        =   15
      Top             =   1065
      Width           =   1215
   End
   Begin VB.Label lblInternoTelefonico 
      Caption         =   "Int. Telefónico:"
      Height          =   255
      Left            =   195
      TabIndex        =   14
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Line Line2 
      X1              =   180
      X2              =   9720
      Y1              =   1590
      Y2              =   1590
   End
   Begin VB.Line Line5 
      X1              =   180
      X2              =   9750
      Y1              =   4515
      Y2              =   4515
   End
End
Attribute VB_Name = "LoteGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private PlatformService As PlatformSVR
Private AdminLotesService As AdminLotesSVR
Private LoteDataObject As LoteDAO

Public db_LoteID As Long

Private Sub UserControl_Initialize()
    Set AdminLotesService = New AdminLotesSVR
    Set LoteDataObject = New LoteDAO
    Set PlatformService = New PlatformSVR
    Dim i As Integer

    If PlatformService.getValoresCategoria(CAT_ESTADO_LOTE) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            txtEstado.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            txtEstado.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        txtEstado.ListIndex = 0
    End If

End Sub

Private Sub UserControl_Terminate()
    Set AdminLotesService = Nothing
    Set LoteDataObject = Nothing
    Set PlatformService = Nothing
End Sub

Property Let LoteID(value As Long)
    Let db_LoteID = value
End Property

Public Sub init()
   ' actualizarLocalizacion

    If db_LoteID <> 0 Then
        onUpdate = True
        loadData
    Else
   
        onUpdate = False
    End If

    enableEdition
End Sub



Sub enableEdition()
    If db_LoteID <> 0 Then
        GridLotes.Enabled = True
        cmdAgregarIntegrante.Enabled = True
        cmdBorrarIntegrante.Enabled = True
       ' cmdModificar.Enabled = True

        'cmdGuardar.Caption = localizar(cmdGuardar.name)
         cmdCrear.Visible = False
         CmdCancelar.Visible = False
    Else
        
        GridLotes.Enabled = False
        cmdAgregarIntegrante.Enabled = False
        cmdBorrarIntegrante.Enabled = False
        'cmdModificar.Enabled = False
        
        cmdGuardar.Visible = False
        cmdCerrar.Visible = False
        'cmdGuardar.Caption = localizar("cmdCrear")
    End If
End Sub

Sub loadGrids()
    GridLotes.Clear
    If AdminLotesService.LoteQuery.getLotPerPrfList(db_LoteID) Then
        fillGrid GridLotes, AdminLotesService.LoteQuery.DbRecordsetQRY, 6
    End If
    
End Sub


Sub loadData()
    Set LoteDataObject = AdminLotesService.LoteOrm.obtenerLote(db_LoteID)

    If Not (LoteDataObject Is Nothing) Then
        txtLote.Text = LoteDataObject.Lote
        txtUF.Text = LoteDataObject.UF
        txtInternoTelefonico.Text = LoteDataObject.Interno
        txtCalle.Text = LoteDataObject.Calle
        txtNumero.Text = LoteDataObject.Numero


        Dim i As Integer


  
    If AdminLotesService.LoteQuery.obtenerLotCatVal(db_LoteID, CAT_ESTADO_LOTE) Then
        If Not AdminLotesService.LoteQuery.DbRecordsetQRY.EOF Then
            For i = 0 To txtEstado.ListCount - 1
                If txtEstado.ItemData(i) = CStr(AdminLotesService.LoteQuery.DbRecordsetQRY.Fields(0).value) Then
                    txtEstado.ListIndex = i
                End If
            Next
        End If
    End If
    
    Else
        MsgBox "No se puede leer el Lote", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids

End Sub



Function validarDatos() As Boolean
On Error GoTo Salir
 
    validarDatos = (txtLote.Text <> "") And _
                   (txtInternoTelefonico.Text <> "") And _
                   (txtEstado.ListIndex > -1)

Salir:
'    If txtLote.Text = "" Then
'        MsgBox "Ingrese el Número de Lote", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'    If txtUF.Text = "" Then
'        MsgBox "Ingrese el Número de Unidad Funcional", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'       If txtInternoTelefonico.Text = "" Then
'        MsgBox "Ingrese el Interno Telefónico", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'    If txtCalle.Text = "" Then
'        MsgBox "Ingrese la Calle", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'     If txtNumero.Text = "" Then
'        MsgBox "Ingrese el Número", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'    If txtEstado.ListIndex = -1 Then
'        MsgBox "Ingrese Estado", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If

    validarDatos = True
End Function

Private Sub cmdAgregarIntegrante_Click()
    Set LotePerMOD.ParentWindow = Me
    LotePerMOD.LoteID = db_LoteID
    LotePerMOD.PerfilID = 0
    LotePerMOD.PersonaID = 0
    LotePerMOD.Show vbModal
    loadGrids
End Sub


Private Sub cmdCancelar_Click()
    ParentWindow.Destroy
End Sub

Private Sub cmdCrear_Click()
    cmdGuardar_Click
End Sub


Private Sub cmdGuardar_Click()

    If validarDatos Then
        If Not onUpdate Then
        '''CHEQUEA QUE EL LOTE NO EXISTA
             If AdminLotesService.LoteYaExiste(txtLote) Then
                MsgBox "El Lote que intenta crear ya existe", vbCritical, "Atención"
                Exit Sub
            End If
        '''CHEQUEA QUE LA UNIDAD FUNCIONAL NO EXISTA
            If AdminLotesService.UFYaExiste(txtUF) Then
                MsgBox "La Unidad Funcional que intenta crear ya existe", vbCritical, "Atención"
                Exit Sub
            End If
        ''' CREAR EL LOTE
        
            db_LoteID = AdminLotesService.LoteOrm.crearLote(txtLote.Text, txtUF.Text, txtCalle.Text, txtNumero.Text, txtInternoTelefonico.Text)
            If db_LoteID <> -1 Then
                If AdminLotesService.LoteQuery.eliminarLotCat(db_LoteID, CAT_ESTADO_LOTE) Then
                End If
                AdminLotesService.LoteOrm.crearLotCatVal db_LoteID, CAT_ESTADO_LOTE, txtEstado.ItemData(txtEstado.ListIndex)
                enableEdition
                onUpdate = True
                ParentWindow.Destroy
               
             Else
                MsgBox "No se puede crear el Lote", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminLotesService.LoteOrm.actualizarLote(db_LoteID, txtLote.Text, txtUF.Text, txtCalle.Text, txtNumero.Text, txtInternoTelefonico.Text) Then
                              
                If AdminLotesService.LoteQuery.eliminarLotCat(db_LoteID, CAT_ESTADO_LOTE) Then
                   AdminLotesService.LoteOrm.crearLotCatVal db_LoteID, CAT_ESTADO_LOTE, txtEstado.ItemData(txtEstado.ListIndex)
                End If
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar el Lote", vbCritical, "Atención"
                Exit Sub
            End If
        End If
    End If

cmdCerrar.Visible = True
End Sub

Private Sub GridLotes_DblClick()
'    If ParentWindow.ParentWindow Is Nothing Then
        cmdActualizarIntegrante_Click
'    Else
'        'esto es cuando de aca se selecciona algo para el parent windows, no sirve aca
'        If GridLotes.Text <> "" And GridLotes.Row >= 1 Then
'            GridLotes.Col = 0
'            GridLotes.Row = GridLotes.RowSel
'            UpdateWindow CLng(GridLotes.Text)
'
'        End If
'    End If
End Sub

Public Sub cmdBorrarIntegrante_Click()

 If GridLotes.Text <> "" And GridLotes.Row >= 1 Then
    Dim PerfilID As Long
    Dim PersonaID As Long
    Dim CategoriaID As Long
    Dim ValorID As Long
    Dim FechaInicio As String
    Dim FechaFin As String
    
    
    GridLotes.Col = 0
    GridLotes.Row = GridLotes.RowSel
    PerfilID = GridLotes.Text
    
    GridLotes.Col = 1
    GridLotes.Row = GridLotes.RowSel
    PersonaID = GridLotes.Text

    GridLotes.Col = 2
    GridLotes.Row = GridLotes.RowSel
    CategoriaID = GridLotes.Text

    GridLotes.Col = 3
    GridLotes.Row = GridLotes.RowSel
    ValorID = GridLotes.Text

    GridLotes.Col = 4
    GridLotes.Row = GridLotes.RowSel
    FechaInicio = GridLotes.Text

    GridLotes.Col = 5
    GridLotes.Row = GridLotes.RowSel
    FechaFin = GridLotes.Text


     If GridLotes.Text <> "" And GridLotes.Row >= 1 Then
        If MsgBox("Está seguro de borrar este ítem?", vbYesNo, "Atención") = vbYes Then
            If Not AdminLotesService.LotperOrm.eliminarLotPerPrf(db_LoteID, PersonaID, PerfilID, CategoriaID, ValorID, FechaInicio, FechaFin) Then
                 
                MsgBox "No se puede eliminar este integrante", vbCritical, "Atención"
                Exit Sub
            End If
            UpdateWindow
        End If
    End If
Else
MsgBox "Debe Seleccionar un integrante", vbInformation, "Atencion"
End If
End Sub


Public Sub UpdateWindow()
    loadGrids
End Sub

Private Sub cmdActualizarIntegrante_Click()

If GridLotes.Text <> "" And GridLotes.Row >= 1 Then
    Dim PerfilID As Long
    Dim PersonaID As Long
    Dim CategoriaID As Long
    Dim ValorID As Long
    Dim FechaInicio As String
    Dim FechaFin As String
    
    GridLotes.Col = 0
    GridLotes.Row = GridLotes.RowSel
    PerfilID = GridLotes.Text
    
    GridLotes.Col = 1
    GridLotes.Row = GridLotes.RowSel
    PersonaID = GridLotes.Text

    GridLotes.Col = 2
    GridLotes.Row = GridLotes.RowSel
    CategoriaID = GridLotes.Text

    GridLotes.Col = 3
    GridLotes.Row = GridLotes.RowSel
    ValorID = GridLotes.Text

    GridLotes.Col = 4
    GridLotes.Row = GridLotes.RowSel
    FechaInicio = GridLotes.Text

    GridLotes.Col = 5
    GridLotes.Row = GridLotes.RowSel
    FechaFin = GridLotes.Text
        
    
    GridLotes.Col = 0
    GridLotes.Row = GridLotes.RowSel
    If GridLotes.Text <> "" And GridLotes.Row >= 1 Then
        GridLotes.Col = 0
        GridLotes.Row = GridLotes.RowSel
        Set LotePerMOD.ParentWindow = Me
        LotePerMOD.LoteID = db_LoteID
        LotePerMOD.PerfilID = PerfilID
        LotePerMOD.PersonaID = PersonaID
        LotePerMOD.CategoriaID = CategoriaID
        LotePerMOD.ValorID = ValorID
        LotePerMOD.FechaInicio = FechaInicio
        LotePerMOD.FechaFin = FechaFin
        LotePerMOD.Show vbModal

    End If
Else
MsgBox "Debe Seleccionar un Integrante", vbInformation, "Atencion"
End If

End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
    UpdateWindow
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub
'Sub actualizarLocalizacion()
'    lblLote.Caption = localizar(lblLote.name)
'    lblUF.Caption = localizar(lblUF.name)
'    lblInternoTelefonico.Caption = localizar(lblInternoTelefonico.name)
'    lblCalle.Caption = localizar(lblCalle.name)
'    lblEstado.Caption = localizar(lblEstado.name)
'    cmdCrear.Caption = localizar(cmdCrear.name)
'    cmdCancelar.Caption = localizar(cmdCancelar.name)
'    cmdAgregarLote.Caption = localizar(cmdAgregarLote.name)
'    cmdBorrarLote.Caption = localizar(cmdBorrarLote.name)
'    cmdModificar.Caption = localizar(cmdModificar.name)
'    cmdGuardar.Caption = localizar(cmdGuardar.name)
'    cmdCerrar.Caption = localizar(cmdCerrar.name)
'End Sub
