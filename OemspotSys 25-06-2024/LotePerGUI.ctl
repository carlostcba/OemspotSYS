VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.UserControl LotePerGUI 
   ClientHeight    =   3105
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11100
   ScaleHeight     =   3105
   ScaleWidth      =   11100
   Begin VB.TextBox txtFechaInicio 
      Height          =   285
      Left            =   2190
      MaxLength       =   32
      TabIndex        =   15
      Top             =   1785
      Width           =   1500
   End
   Begin VB.CommandButton cmdFechaInicio 
      Caption         =   "..."
      Height          =   255
      Left            =   3840
      TabIndex        =   14
      Top             =   1800
      Width           =   255
   End
   Begin VB.TextBox txtFechaFin 
      Height          =   285
      Left            =   4965
      MaxLength       =   32
      TabIndex        =   13
      Top             =   1800
      Width           =   1530
   End
   Begin VB.CommandButton cmdFechaFin 
      Caption         =   "..."
      Height          =   255
      Left            =   6615
      TabIndex        =   12
      Top             =   1800
      Width           =   255
   End
   Begin VB.CommandButton cmdPerfiles 
      Caption         =   "Buscar ..."
      Height          =   252
      Left            =   5775
      TabIndex        =   10
      Top             =   1344
      Width           =   1095
   End
   Begin VB.TextBox txtPerfil 
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
      Left            =   1590
      MaxLength       =   32
      TabIndex        =   9
      TabStop         =   0   'False
      Top             =   1335
      Width           =   4095
   End
   Begin VB.TextBox txtLote 
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
      Left            =   1395
      MaxLength       =   32
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   120
      Width           =   7695
   End
   Begin VB.CommandButton CmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   9345
      TabIndex        =   4
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton cmdPersonas 
      Caption         =   "Buscar ..."
      Height          =   255
      Left            =   5775
      TabIndex        =   3
      Top             =   840
      Width           =   1095
   End
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
      Height          =   285
      Left            =   1605
      MaxLength       =   32
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   825
      Width           =   4065
   End
   Begin VB.CommandButton CmdAgregar 
      Caption         =   "Agregar"
      Height          =   255
      Left            =   9345
      TabIndex        =   1
      Top             =   2145
      Width           =   1335
   End
   Begin VB.ComboBox combo1 
      Height          =   315
      ItemData        =   "LotePerGUI.ctx":0000
      Left            =   7935
      List            =   "LotePerGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   825
      Width           =   2625
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7710
      Top             =   1380
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label lblAyuda 
      Caption         =   "Seleccione la Persona y Relación, el Perfil y la Vigencia  y haga clic en Agregar."
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   210
      Left            =   225
      TabIndex        =   19
      Top             =   2370
      Width           =   5700
   End
   Begin VB.Label lblFechaInicio 
      Caption         =   "Desde:"
      Height          =   255
      Left            =   1545
      TabIndex        =   18
      Top             =   1785
      Width           =   600
   End
   Begin VB.Label lblFechaFin 
      Caption         =   "Hasta:"
      Height          =   255
      Left            =   4365
      TabIndex        =   17
      Top             =   1815
      Width           =   570
   End
   Begin VB.Label lblVigencia 
      Caption         =   "Vigencia:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   1770
      Width           =   705
   End
   Begin VB.Label lblPerfil 
      Caption         =   "Seleccoine Perfil:"
      Height          =   255
      Left            =   135
      TabIndex        =   11
      Top             =   1335
      Width           =   1335
   End
   Begin VB.Line Line2 
      X1              =   105
      X2              =   10785
      Y1              =   585
      Y2              =   585
   End
   Begin VB.Label lblLote 
      Caption         =   "Lote:"
      Height          =   255
      Left            =   135
      TabIndex        =   8
      Top             =   120
      Width           =   435
   End
   Begin VB.Label lblPersona 
      Caption         =   "Seleccionar Persona:"
      Height          =   375
      Left            =   150
      TabIndex        =   7
      Top             =   765
      Width           =   1215
   End
   Begin VB.Line Line6 
      X1              =   105
      X2              =   10785
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Label lblTipoDeRelacion 
      Caption         =   "Tipo de Relación:"
      Height          =   375
      Left            =   7095
      TabIndex        =   6
      Top             =   795
      Width           =   765
   End
End
Attribute VB_Name = "LotePerGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminLotesService As AdminLotesSVR
Private AdminPersonasService As AdminPersonasSVR
Private PlatformService As PlatformSVR
Private AdminPerfilesService As AdminPerfilesSVR



Public db_LoteID As Long
Public db_PersonaID As Long
Public db_perfilID As Long
Public db_CategoriaID As Long
Public db_ValorID As Long
Public db_FechaInicio As String
Public db_FechaFin As String


Private Sub UserControl_Initialize()
    On Error Resume Next
    Set AdminLotesService = New AdminLotesSVR
    Set AdminPersonasService = New AdminPersonasSVR
    Set PlatformService = New PlatformSVR
    Set AdminPerfilesService = New AdminPerfilesSVR
    
 

    Dim i As Integer
    If PlatformService.getValoresCategoria(CAT_TIPO_RELACION_GRUPO) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo1.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo1.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 0
    End If
 
End Sub

Private Sub UserControl_Terminate()

    On Error Resume Next
    Set AdminLotesService = Nothing
    Set AdminPersonasService = Nothing
    Set PlatformService = Nothing
    Set AdminPerfilesService = Nothing
    

End Sub

Property Let LoteID(value As Long)
    Let db_LoteID = value
End Property

Property Let PersonaID(value As Long)
    On Error Resume Next
    Let db_PersonaID = value
    txtPersona.Text = AdminPersonasService.PersonaOrm.getDescription(db_PersonaID)
End Property

Property Let PerfilID(value As Long)
    On Error Resume Next
    Let db_perfilID = value
    txtPerfil.Text = AdminPerfilesService.PerfilOrm.getDescription(db_perfilID)
End Property

Property Let CategoriaID(value As Long)
    Let db_CategoriaID = value
      'CategoriaID = AdminLotesService.LotperOrm.getCategoriaID(db_CategoriaID)
End Property

Property Let ValorID(value As Long)
    Let db_ValorID = value
    'ValorID = AdminLotesService.LotperOrm.getValorID(db_ValorID)
End Property

Property Let FechaInicio(value As String)
    On Error Resume Next
    Let db_FechaInicio = value
    txtFechaInicio.Text = AdminLotesService.LotperOrm.getFechaInicio(db_FechaInicio)
End Property

Property Let FechaFin(value As String)
    On Error Resume Next
    Let db_FechaFin = value
    txtFechaFin.Text = AdminLotesService.LotperOrm.getFechaFin(db_FechaFin)
End Property

Sub init()

    On Error Resume Next
     If db_PersonaID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
       
    End If
   
    enableEdition
End Sub

Sub loadData()
    Dim i As Long
    
    On Error Resume Next
    
    i = 0
    txtLote.Text = AdminLotesService.LoteOrm.getNumeroLote(db_LoteID)
    txtPerfil.Text = AdminPerfilesService.PerfilOrm.getDescription(db_perfilID)
    txtPersona.Text = AdminPersonasService.PersonaOrm.getDescription(db_PersonaID)
    txtFechaInicio.Text = AdminLotesService.LotperOrm.getFechaInicio(db_FechaInicio)
    txtFechaFin.Text = AdminLotesService.LotperOrm.getFechaFin(db_FechaFin)
    txtFechaInicio.Text = db_FechaInicio
    txtFechaFin.Text = db_FechaFin
    
    '''LLENA EL COMBO CON LA RELACION DE LA PERSONA CON EL LOTE
    If AdminLotesService.LotperQuery.obtenerLotPerCatVal(db_PersonaID, CAT_TIPO_RELACION_GRUPO) Then
        If Not AdminLotesService.LotperQuery.DbRecordsetQRY.EOF Then
                For i = 0 To Combo1.ListCount - 1
                If Combo1.ItemData(i) = CStr(AdminLotesService.LotperQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo1.ListIndex = i
                End If
                Next
        End If
    End If
    '''BORRA LA PERSONA DESPUES DE CARGARLA
    If AdminLotesService.LotperOrm.eliminarLotPerPrf(db_LoteID, db_PersonaID, db_perfilID, CAT_TIPO_RELACION_GRUPO, Combo1.ListIndex, txtFechaInicio.Text, txtFechaFin.Text) Then
           ParentWindow.UpdateWindow
         '''  MsgBox "SE BORRO", vbInformation, "test"
    End If
    
End Sub


    
Sub enableEdition()
    
    On Error Resume Next
    
    
    If db_PersonaID <> 0 Then
        cmdAgregar.Caption = "Modificar"
        cmdCerrar.Caption = "Cancelar"
        txtFechaInicio.Text = db_FechaInicio
        txtFechaFin.Text = db_FechaFin
        'cmdGuardar.Caption = localizar(cmdGuardar.name)
'        txtLote.Text = AdminLotesService.LoteOrm.getNumeroLote(db_LoteID)
        

         
    Else
        
        cmdAgregar.Caption = "Agregar"
        cmdCerrar.Caption = "Cerrar"
        txtFechaInicio.Text = Date
        txtFechaFin.Text = Date
        
        'cmdGuardar.Caption = localizar("cmdCrear")
        
        txtLote.Text = AdminLotesService.LoteOrm.getNumeroLote(db_LoteID)
    End If
End Sub


Private Sub cmdPerfiles_Click()
    
    On Error Resume Next
    Unload AdminPerfilesMOD
    Set AdminPerfilesMOD.ParentWindow = Me
    AdminPerfilesMOD.ReadOnly = True
    AdminPerfilesMOD.Seleccion = True
    AdminPerfilesMOD.Show vbModal
    'loadGrids
End Sub

Private Sub cmdPersonas_Click()
    
    On Error Resume Next
    
    Mostrar_Cartel "Sea paciente mientras se procesa su consulta ..."
    Unload AdminPersonasMOD
    Set AdminPersonasMOD.ParentWindow = Me
    AdminPersonasMOD.ReadOnly = False
    AdminPersonasMOD.Seleccion = False
    Unload AdminPersonasMOD
    AdminPersonasMOD.Show vbModal
End Sub

Private Sub CmdCerrar_Click()
    On Error Resume Next
    AdminLotesService.LotperOrm.crearLotPerPrf db_LoteID, db_PersonaID, db_perfilID, CAT_TIPO_RELACION_GRUPO, (Combo1.ItemData(Combo1.ListIndex)), txtFechaInicio.Text, txtFechaFin.Text
    ParentWindow.Destroy
End Sub

Private Sub CmdAgregar_Click()


    On Error Resume Next

    If validarDatos Then
            '''falta chequeo de existencias
        If Not onUpdate Then
             db_LoteID = AdminLotesService.LotperOrm.crearLotPerPrf(db_LoteID, db_PersonaID, db_perfilID, CAT_TIPO_RELACION_GRUPO, (Combo1.ItemData(Combo1.ListIndex)), txtFechaInicio.Text, txtFechaFin.Text)
            If db_PersonaID <> -1 Then
                If AdminLotesService.LotperOrm.eliminarLotPerPrf(db_LoteID, db_PersonaID, db_perfilID, CAT_TIPO_RELACION_GRUPO, (Combo1.ItemData(Combo1.ListIndex)), txtFechaInicio.Text, txtFechaFin.Text) Then
                End If
                AdminLotesService.LotperOrm.crearLotPerPrf db_LoteID, db_PersonaID, db_perfilID, CAT_TIPO_RELACION_GRUPO, (Combo1.ItemData(Combo1.ListIndex)), txtFechaInicio.Text, txtFechaFin.Text
                enableEdition
                onUpdate = True
                ParentWindow.Destroy
             Else: MsgBox "No se puede agregar este Integrante", vbCritical, "Error"
                Exit Sub
             End If
        Else
           
              AdminLotesService.LotperOrm.crearLotPerPrf db_LoteID, db_PersonaID, db_perfilID, CAT_TIPO_RELACION_GRUPO, (Combo1.ItemData(Combo1.ListIndex)), txtFechaInicio.Text, txtFechaFin.Text
              ParentWindow.UpdateWindow
              ParentWindow.Destroy
    
    
    '        End If
    '        Else
    '             MsgBox "No se puede actualizar este integrante", vbCritical, "Atención"
    '             Exit Sub
    '        End If
            
        End If
        
    End If

End Sub


Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Function validarDatos() As Boolean
    On Error Resume Next
    If db_PersonaID = 0 Then
        MsgBox "Debe seleccionar una Persona", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
    If db_perfilID = 0 Then
        MsgBox "Debe seleccionar un Perfil", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
      If Combo1.ListIndex = -1 Then
        MsgBox "Ingrese la Relación de ésta persona con el Lote", vbCritical, "Atención"
        validarDatos = False
        Exit Function
    End If
'      If Not esFechaValida(txtFechaFin.Text) Then
'        MsgBox "Fecha de Vigencia de Fin Errónea", vbCritical, "Atención"
'        txtFechaFin.SetFocus
'        validarDatos = False
'        Exit Function
'    End If
    validarDatos = True
End Function

Private Sub cmdFechaInicio_Click()
    On Error Resume Next
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaInicio
    DatePickerMOD.Show vbModal
End Sub

Private Sub cmdFechaFin_Click()
    On Error Resume Next
    Unload DatePickerMOD
    Set DatePickerMOD.parentControl = txtFechaFin
    DatePickerMOD.Show vbModal
End Sub
