VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.UserControl PreautorizadaPerGUI 
   ClientHeight    =   3990
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9030
   ScaleHeight     =   3990
   ScaleWidth      =   9030
   Begin VB.CommandButton cmdPerfil 
      Caption         =   "Seleccione el Perfil ..."
      Height          =   330
      Left            =   5205
      TabIndex        =   26
      Top             =   525
      Width           =   2910
   End
   Begin VB.CommandButton cmdEntrada 
      Caption         =   "ENTRADA >>"
      Height          =   330
      Left            =   375
      TabIndex        =   25
      Top             =   3510
      Width           =   1320
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar"
      Height          =   330
      Left            =   6975
      TabIndex        =   24
      Top             =   90
      Width           =   1365
   End
   Begin VB.TextBox txtEntidad 
      Height          =   330
      Index           =   2
      Left            =   945
      TabIndex        =   22
      Top             =   525
      Width           =   2910
   End
   Begin VB.TextBox txtLote 
      Height          =   315
      Left            =   945
      TabIndex        =   20
      Top             =   90
      Width           =   5925
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   330
      Left            =   5295
      TabIndex        =   19
      Top             =   3510
      Width           =   1320
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "Cancelar"
      Height          =   345
      Left            =   6975
      TabIndex        =   18
      Top             =   3510
      Width           =   1320
   End
   Begin VB.TextBox txtPatente 
      Height          =   330
      Index           =   5
      Left            =   945
      TabIndex        =   17
      Top             =   2415
      Width           =   2910
   End
   Begin VB.TextBox txtAutoriza 
      Height          =   345
      Index           =   4
      Left            =   960
      TabIndex        =   15
      Top             =   2895
      Width           =   2910
   End
   Begin VB.TextBox txtFechaInicio 
      Height          =   345
      Left            =   5220
      MaxLength       =   32
      TabIndex        =   11
      Top             =   2415
      Width           =   1710
   End
   Begin VB.CommandButton cmdFechaInicio 
      Caption         =   "..."
      Height          =   270
      Left            =   7140
      TabIndex        =   10
      Top             =   2460
      Width           =   255
   End
   Begin VB.TextBox txtFechaFin 
      Height          =   345
      Left            =   5220
      MaxLength       =   32
      TabIndex        =   9
      Top             =   2895
      Width           =   1710
   End
   Begin VB.CommandButton cmdFechaFin 
      Caption         =   "..."
      Height          =   270
      Left            =   7140
      TabIndex        =   8
      Top             =   2910
      Width           =   255
   End
   Begin VB.TextBox txtMotivo 
      Height          =   1260
      Index           =   3
      Left            =   5220
      TabIndex        =   7
      Top             =   1005
      Width           =   2910
   End
   Begin VB.TextBox txtNombre 
      Height          =   330
      Index           =   2
      Left            =   960
      TabIndex        =   5
      Top             =   1935
      Width           =   2910
   End
   Begin VB.TextBox txtApellido 
      Height          =   330
      Index           =   1
      Left            =   960
      TabIndex        =   4
      Top             =   1455
      Width           =   2910
   End
   Begin VB.TextBox txtDNI 
      Height          =   330
      Index           =   0
      Left            =   960
      TabIndex        =   3
      Top             =   990
      Width           =   2910
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7695
      Top             =   2595
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblEntidad 
      Caption         =   "Entidad:"
      Height          =   285
      Index           =   2
      Left            =   225
      TabIndex        =   23
      Top             =   600
      Width           =   645
   End
   Begin VB.Label lblDNI 
      Caption         =   "Lote:"
      Height          =   270
      Index           =   1
      Left            =   240
      TabIndex        =   21
      Top             =   165
      Width           =   495
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   8355
      Y1              =   3390
      Y2              =   3390
   End
   Begin VB.Label lblPatente 
      Caption         =   "Patente:"
      Height          =   285
      Index           =   0
      Left            =   225
      TabIndex        =   16
      Top             =   2475
      Width           =   645
   End
   Begin VB.Label lblAutoriza 
      Caption         =   "Autoriza:"
      Height          =   285
      Left            =   210
      TabIndex        =   14
      Top             =   2910
      Width           =   690
   End
   Begin VB.Label lblVigenciaInicio 
      Caption         =   "Desde:"
      Height          =   270
      Left            =   4590
      TabIndex        =   13
      Top             =   2475
      Width           =   585
   End
   Begin VB.Label lblVigenciaFin 
      Caption         =   "Hasta:"
      Height          =   270
      Left            =   4605
      TabIndex        =   12
      Top             =   2910
      Width           =   525
   End
   Begin VB.Label lblMotivo 
      Caption         =   "Motivo:"
      Height          =   225
      Index           =   0
      Left            =   4515
      TabIndex        =   6
      Top             =   1065
      Width           =   645
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   285
      Index           =   2
      Left            =   240
      TabIndex        =   2
      Top             =   1995
      Width           =   645
   End
   Begin VB.Label lblApellido 
      Caption         =   "Apellido:"
      Height          =   285
      Index           =   1
      Left            =   270
      TabIndex        =   1
      Top             =   1545
      Width           =   660
   End
   Begin VB.Label lblDNI 
      Caption         =   "DNI:"
      Height          =   285
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   1065
      Width           =   495
   End
End
Attribute VB_Name = "PreautorizadaPerGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private AdminLotesService As AdminLotesSVR
Dim AsistenteDataObject As AsistenteDAO
Dim db_LoteID As Long
Dim Mi_Lote As LoteDAO

'Private onUpdate As Boolean

Private Sub UserControl_Initialize()
    Set AdminLotesService = New AdminLotesSVR
    Set AsistenteDataObject = New AsistenteDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminLotesService = Nothing
    Set AsistenteDataObject = Nothing
End Sub

Property Let LoteID(ByVal data As Long)

   Let db_LoteID = data
   If db_LoteID > 0 Then
      Set Mi_Lote = AdminLotesService.LoteOrm.obtenerLote(db_LoteID)
'      txtDatosPersona(1).Text = "Lote = " & Str(Mi_Lote.Lote) & vbCrLf & _
'                                "Unidad Funcional = " & Str(Mi_Lote.UF) & vbCrLf & _
'                                "Calle = " & Str(Mi_Lote.Calle) & vbCrLf & _
'                                "Número = " & Str(Mi_Lote.Numero) & vbCrLf & _
'                                "Interno = " & Str(Mi_Lote.Interno)
    End If
   
End Property

Sub init()
    'If db_perfilID <> 0 Then
    '    onUpdate = True
    '    loadData
    'Else
    '    onUpdate = False
    'End If

    'enableEdition
End Sub

'Sub enableEdition()
'    If db_perfilID <> 0 Then
'        Grid.Enabled = True
'        CmdAgregar.Enabled = True
'        cmdActualizar.Enabled = True
'        cmdBorrar.Enabled = True
'
'        cmdGuardar.Caption = "Guardar"
'    Else
'        Grid.Enabled = False
'        CmdAgregar.Enabled = False
'        cmdActualizar.Enabled = False
'        cmdBorrar.Enabled = False
'
'        cmdGuardar.Caption = "Siguiente >> "
'    End If
'End Sub

Sub loadData()
'    Set PrfDataObject = AdminPerfilesService.PerfilOrm.obtenerPerfil(db_perfilID)
'
'    If Not (PrfDataObject Is Nothing) Then
'        txtNombre.Text = PrfDataObject.Nombre
'        txtDescripcion.Text = PrfDataObject.Descripcion
'    Else
'        MsgBox "No se puede leer Perfil", vbCritical, "Atención"
'        Exit Sub
'    End If
'
'    loadGrids
End Sub

Sub loadGrids()

'    Dim RecordSet  As ADODB.RecordSet
'
'    Dim i As Integer
'    Dim J As Integer
'    Dim K As Integer
'
'    Grid.Visible = False
'    Grid.Clear
'
'    If AdminPerfilesService.getItemsList(db_perfilID) Then
'
'        Set RecordSet = AdminPerfilesService.PerfilQuery.DbRecordsetQRY
'
'        Grid.Row = 0
'
'        Grid.Col = 0
'        Grid.ColWidth(0) = Grid.Width * 0
'        Grid.Text = RecordSet.Fields(0).name
'
'        Grid.Col = 1
'        Grid.ColWidth(1) = Grid.Width * 0.33
'        Grid.Text = RecordSet.Fields(1).name
'
'        Grid.Col = 2
'        Grid.ColWidth(2) = Grid.Width * 0.33
'        Grid.Text = RecordSet.Fields(2).name
'
'        Grid.Col = 3
'        Grid.ColWidth(3) = Grid.Width * 0.33
'        Grid.Text = RecordSet.Fields(3).name
'
'        J = 1
'        Do While Not RecordSet.EOF
'            For i = 0 To RecordSet.Fields.Count - 1
'                Grid.Row = J
'                Grid.Col = i
'                Grid.AddItem ""
'                If RecordSet.Fields(i).ActualSize <> 0 Then
'                    Grid.CellAlignment = 1
'
'                    If i = 1 Then
'                        Grid.Text = obtenerDeLaSemana(CInt(RecordSet.Fields(i).value))
'                    ElseIf i = 2 Then
'                        Grid.Text = obtenerHora(CStr(RecordSet.Fields(i).value))
'                    ElseIf i = 3 Then
'                        Grid.Text = obtenerHora(CStr(RecordSet.Fields(i).value))
'                    Else
'                        Grid.Text = DBFieldToGridString(RecordSet.Fields(i).value)
'                    End If
'
'                    If (J Mod 2) = 0 Then
'                        Grid.CellBackColor = RGB(255, 255, 255)
'                    Else
'                        Grid.CellBackColor = RGB(242, 242, 242)
'                    End If
'
'                End If
'            Next i
'            J = J + 1
'
'            RecordSet.MoveNext
'        Loop
'
'    End If
'
'    Grid.Visible = True

End Sub

Function validarDatos() As Boolean
'    If txtNombre.Text = "" Then
'        MsgBox "Ingrese Nombre", vbCritical, "Atención"
'        validarDatos = False
'        Exit Function
'    End If
'    validarDatos = True
End Function

'Private Sub cmdGuardar_Click()
'    If validarDatos Then
'        If Not onUpdate Then
'            db_perfilID = AdminPerfilesService.PerfilOrm.crearPerfil(txtNombre.Text, txtDescripcion.Text)
'            If db_perfilID <> -1 Then
'                enableEdition
'                onUpdate = True
'            Else
'                MsgBox "No se puede crear Perfil", vbCritical, "Atención"
'                Exit Sub
'            End If
'        Else
'            If AdminPerfilesService.PerfilOrm.actualizarPerfil(db_perfilID, txtNombre.Text, txtDescripcion.Text) Then
'                ParentWindow.Destroy
'            Else
'                MsgBox "No se puede actualizar Perfil", vbCritical, "Atención"
'                Exit Sub
'            End If
'        End If
'    End If
'End Sub
Private Sub cmdBuscar_Click()
On Error GoTo Salir
'  db_LoteID = 0
  'txtLote.Text = db_LoteID
  Unload AdminLotesMOD
  AdminLotesMOD.ReadOnly = True
  AdminLotesMOD.Seleccion = True
  AdminLotesMOD.db_busqueda = txtLote.Text
  Set AdminLotesMOD.ParentWindow = Me
  AdminLotesMOD.Show vbModal
  
  AdminLotesMOD.Destroy
Salir:
End Sub
Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    ElseIf KeyAscii = vbKeySpace Then
        cmdActualizar_Click
    End If
End Sub

Private Sub CmdAgregar_Click()
    Set PreautorizadasPerMOD.ParentWindow = Me
    'PreautorizadasPerMOD.PerfilID = db_perfilID
    'PreautorizadasPerMOD.ItemID = 0
    PreautorizadasPerMOD.Show vbModal
End Sub

Private Sub cmdActualizar_Click()
'    Grid.Col = 0
'    Grid.Row = Grid.RowSel
'    If Grid.Text <> "" And Grid.Row >= 1 Then
'        Grid.Col = 0
'        Grid.Row = Grid.RowSel
'        Dim ItemID  As Long
'        ItemID = CLng(Grid.Text)
'
'        Set PerfilItemMOD.ParentWindow = Me
'        PerfilItemMOD.PerfilID = db_perfilID
'        PerfilItemMOD.ItemID = ItemID
'        PerfilItemMOD.Show vbModal
'    End If
End Sub

Private Sub Grid_DblClick()
    cmdActualizar_Click
End Sub

Private Sub cmdBorrar_Click()
'    If Grid.Text <> "" And Grid.Row >= 1 Then
'        Grid.Col = 1
'        Grid.Row = Grid.RowSel
'        If MsgBox("Está seguro de quitar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
'            Grid.Col = 0
'            Grid.Row = Grid.RowSel
'            If Not AdminPerfilesService.PerfilOrm.eliminarPrfVal(db_perfilID, CLng(Grid.Text)) Then
'                MsgBox "No se puede quitar Valor de Perfil", vbCritical, "Atención"
'                Exit Sub
'            End If
'            loadGrids
'        End If
'    End If
End Sub
Private Sub cmdCancelar_Click()
    ParentWindow.Destroy
End Sub
Public Sub UpdateWindow()
    loadGrids
End Sub


