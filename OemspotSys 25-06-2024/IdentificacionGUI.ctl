VERSION 5.00
Begin VB.UserControl IdentificacionGUI 
   ClientHeight    =   7545
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7770
   DefaultCancel   =   -1  'True
   KeyPreview      =   -1  'True
   LockControls    =   -1  'True
   ScaleHeight     =   7545
   ScaleWidth      =   7770
   Begin VB.CommandButton CmdImprimir 
      Caption         =   "Contrafrente"
      Height          =   255
      Index           =   2
      Left            =   1680
      TabIndex        =   13
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton CmdImprimir 
      Caption         =   "Frente"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   12
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CommandButton CmdImprimir 
      Caption         =   "Imprimir"
      Height          =   255
      Index           =   0
      Left            =   6120
      TabIndex        =   10
      Top             =   1800
      Width           =   1335
   End
   Begin VB.CheckBox Check 
      Caption         =   "Check1"
      Height          =   255
      Left            =   1680
      TabIndex        =   8
      Top             =   1065
      Width           =   255
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "IdentificacionGUI.ctx":0000
      Left            =   1680
      List            =   "IdentificacionGUI.ctx":0002
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   600
      Width           =   2415
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Default         =   -1  'True
      Height          =   255
      Left            =   4455
      TabIndex        =   3
      Top             =   7080
      Width           =   1335
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   6000
      TabIndex        =   4
      Top             =   7080
      Width           =   1335
   End
   Begin VB.TextBox txtNumero 
      Height          =   285
      Left            =   1680
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3975
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "IdentificacionGUI.ctx":0004
      Left            =   3480
      List            =   "IdentificacionGUI.ctx":0006
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   1050
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.Image Imgtrj 
      Height          =   2175
      Index           =   1
      Left            =   600
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   2235
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   2880
      TabIndex        =   11
      Top             =   4200
      Width           =   4455
   End
   Begin VB.Image Imgtrj 
      Height          =   4515
      Index           =   0
      Left            =   120
      Stretch         =   -1  'True
      Top             =   2280
      Width           =   7395
   End
   Begin VB.Line Line1 
      Index           =   1
      X1              =   120
      X2              =   7440
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Label lblPanico 
      Caption         =   "Panico:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1065
      Width           =   600
   End
   Begin VB.Label lblTipoProximidad 
      Caption         =   "Tipo de Lectura:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   1455
   End
   Begin VB.Line Line1 
      Index           =   0
      X1              =   120
      X2              =   7440
      Y1              =   6960
      Y2              =   6960
   End
   Begin VB.Label lblNumero 
      Caption         =   "Número:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label lblTipoUnidad 
      Caption         =   "Tipo de Unidad:"
      Height          =   255
      Left            =   1920
      TabIndex        =   5
      Top             =   1050
      Visible         =   0   'False
      Width           =   1455
   End
End
Attribute VB_Name = "IdentificacionGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminIdentificacionesService As AdminIdentificacionesSVR
Private PlatformService As PlatformSVR
Private IdnDataObject As IdnDAO
Private IdnPncDataObject As IdnPncDAO
Private db_texto As String

Public db_IdentificacionID As Long


Public Property Let Texto_Impresion(data As String)
    db_texto = data
End Property




Private Sub CmdImprimir_Click(Index As Integer)
On Error Resume Next
  
Select Case Index
Case 0 'imprimir
     FrmImpresionTrj.Imgtrj(0) = Imgtrj(0)
     FrmImpresionTrj.Imgtrj(1) = Imgtrj(1)
     FrmImpresionTrj.Imgtrj(1).Visible = Imgtrj(1).Visible
     FrmImpresionTrj.Label1 = Label1.Caption
     FrmImpresionTrj.Label1.Visible = Label1.Visible
     FrmImpresionTrj.Show vbModal
     'FrmImpresionTrj.PrintForm
     'Unload FrmImpresionTrj
      ' MsgBox "imprimir en " & Printer.DeviceName & "  " & Printer.DriverName
     '  Printer.ScaleMode = vbPixels
      ' Printer.PaintPicture Imgtrj.Picture, 0, 0, 493, 301
     '  Printer.EndDoc
    '   'Printer.Print
Case 1 'frente
    Call Cargar_Foto(Imgtrj(0), getConfiguracionParametroDB("ProgramaSistemaGestion", "IMAGEN_FRENTE_TRJ"))  'foto Frente
    Imgtrj(1).Visible = True
    Label1.Visible = True
Case 2 'contrafrente
    Call Cargar_Foto(Imgtrj(0), getConfiguracionParametroDB("ProgramaSistemaGestion", "IMAGEN_CONTRAFRENTE_TRJ"))  'foto ContraFrente
    Imgtrj(1).Visible = False
    Label1.Visible = False
End Select

Exit Sub
'Salir:
'    MsgBox Err.Description
End Sub

Private Sub UserControl_Initialize()
    Set AdminIdentificacionesService = New AdminIdentificacionesSVR
    Set PlatformService = New PlatformSVR
    Set IdnDataObject = New IdnDAO
    Set IdnPncDataObject = New IdnPncDAO

    Dim i As Integer

    If PlatformService.getValoresCategoria(CAT_UNIDAD_IDENTIFICACION) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            DoEvents
            Combo1.List(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value))
            Combo1.ItemData(i) = CStr(IIf(IsNull(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value), "", PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value))
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo1.ListIndex = 1
    End If

    If PlatformService.getValoresCategoria(CAT_IDENTIFICACION) Then
        i = 0
        Do While Not PlatformService.PlatformQuery.DbRecordsetQRY.EOF
            Combo2.List(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(1).value)
            Combo2.ItemData(i) = CStr(PlatformService.PlatformQuery.DbRecordsetQRY.Fields(0).value)
            i = i + 1
            PlatformService.PlatformQuery.DbRecordsetQRY.MoveNext
        Loop
        Combo2.ListIndex = 4
    End If
    Label1.Caption = db_texto
    Call CmdImprimir_Click(1)

End Sub

Private Sub UserControl_Terminate()
    Set AdminIdentificacionesService = Nothing
    Set PlatformService = Nothing
    Set IdnDataObject = Nothing
    Set IdnPncDataObject = Nothing
End Sub

Property Let IdentificacionID(value As Long)
    Let db_IdentificacionID = value
End Property

Sub init()
    If db_IdentificacionID <> 0 Then
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
    Set IdnDataObject = AdminIdentificacionesService.IdentificacionOrm.obtenerIdentificacion(db_IdentificacionID)

    If Not (IdnDataObject Is Nothing) Then
        txtNumero.Text = IdnDataObject.Numero
    Else
        MsgBox "No se puede leer Identificación", vbCritical, "Atención"
        Exit Sub
    End If

    Dim i As Integer

    If AdminIdentificacionesService.IdentificacionQuery.obtenerIdnCatVal(db_IdentificacionID, CAT_UNIDAD_IDENTIFICACION) Then
        If Not AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo1.ListCount - 1
                DoEvents
                If Combo1.ItemData(i) = CStr(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo1.ListIndex = i
                End If
            Next
        End If
    End If

    If AdminIdentificacionesService.IdentificacionQuery.obtenerIdnCatVal(db_IdentificacionID, CAT_IDENTIFICACION) Then
        If Not AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.EOF Then
            For i = 0 To Combo2.ListCount - 1
                DoEvents
                If Combo2.ItemData(i) = CStr(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(0).value) Then
                    Combo2.ListIndex = i
                End If
            Next
        End If
    End If
    If AdminIdentificacionesService.IdentificacionQuery.obtenerIdnValoresImprimibles(db_IdentificacionID) Then
        If Not AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.EOF Then
        Label1 = CStr(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(2).value) & _
                    ", " & CStr(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(3).value) & vbCrLf & _
                    "TRJ: " & CStr(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(0).value)
            If Str(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(4).value) <> "" And _
                Str(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(4).value) <> "0" Then
                    Label1 = Label1 & vbCrLf & "Socio: " & _
                    CStr(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(4).value)
            End If
            Call Cargar_Foto(Imgtrj(1), getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS") & "\" & Str(AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Fields(1).value) & ".jpg") 'foto persona
        End If
    End If
   AdminIdentificacionesService.IdentificacionQuery.DbRecordsetQRY.Close
    '''' ACA SE CHEQUE SI EXISTE LA IDENTIFICACION EN LA TABLA PNC PARA TILDAR O NO EL CHECKBOX DE PANICO
    Set IdnPncDataObject = AdminIdentificacionesService.IdnPncOrm.obtenerIdentificacionPanico(db_IdentificacionID)

    If Not (IdnPncDataObject Is Nothing) Then
        Check = Checked
    End If

End Sub

Sub loadGrids()
End Sub

Function validarDatos() As Boolean
        If txtNumero.Text = "" Then
            MsgBox "Debe Ingresar el Número de la Identificación", vbCritical, "Atención"
            validarDatos = False
            Exit Function
             
        End If
        
        If Combo1.ListIndex = -1 Then
            MsgBox "Debe seleccionar Tipo de Unidad de Identificación", vbCritical, "Atención"
            validarDatos = False
        Exit Function
        End If
        
        If Combo2.ListIndex = -1 Then
            MsgBox "Debe seleccionar Tipo de Identificación", vbCritical, "Atención"
            validarDatos = False
        Exit Function
        End If
        
        validarDatos = True
        
End Function

Private Sub cmdGuardar_Click()
' ************** VERIFICO QUE ESTEN LOS DATOS NECESARIOS PARA CREAR LA IDENTIFICACION ************
    If validarDatos Then

'************** AHORA CHEQUEO SI ES UNA TARJETA NUEVA O SI SE ESTA ACTUALIZANDO UNA EXISTENTE *************

'       ************ SI ES UNA TARJETA NUEVA HAGO LO SIGUIENTE ********************
        If Not onUpdate Then
            '******* PRIMERO ME ASEGURO QUE NO EXISTA LA IDENTIFICACION QUE INTENTO CREAR *******
            If AdminIdentificacionesService.ExisteIdentificacion_Numero_Tipo(txtNumero.Text, Combo2.ItemData(Combo2.ListIndex)) Then
                MsgBox "La Identificación que intenta crear ya existe", vbCritical, "Atención"
                Exit Sub
            End If
            '******** CREO LA TARJETA ************
            db_IdentificacionID = AdminIdentificacionesService.IdentificacionOrm.crearIdentificacion(txtNumero.Text)
            If db_IdentificacionID <> -1 Then
                If AdminIdentificacionesService.IdentificacionQuery.eliminarIdnCat(db_IdentificacionID, CAT_UNIDAD_IDENTIFICACION) Then
                End If
                If AdminIdentificacionesService.IdentificacionQuery.eliminarIdnCat(db_IdentificacionID, CAT_IDENTIFICACION) Then
                End If
                AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal db_IdentificacionID, CAT_UNIDAD_IDENTIFICACION, Combo1.ItemData(Combo1.ListIndex)
                AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal db_IdentificacionID, CAT_IDENTIFICACION, Combo2.ItemData(Combo2.ListIndex)
                enableEdition
                '******* VERIFICO SI DEBE SER ASIGNADA COMO TARJETA DE PANICO **************
                If Check = Checked Then
                    AdminIdentificacionesService.IdnPncOrm.crearIdentificacionPanico (db_IdentificacionID)
                Else
                    MsgBox "La tarjeta no pudo ser asignada como Pánico", vbInformation, "Atención"
                End If
                onUpdate = True
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
            Else
                MsgBox "La Identificación no pudo ser creada", vbCritical, "Atención"
                Exit Sub
            End If
        
        Else '********************* EN CASO QUE SE ESTE ACTUALIZANDO UNA TARJETA EXISTENTE HAGO LO SIGUIENTE ********
        
               ' *** ELIMINO LA TARJETA Y LA VUELVO A CREAR CON LOS NUEVOS DATOS ***
            If AdminIdentificacionesService.IdentificacionOrm.actualizarIdentificacion(db_IdentificacionID, txtNumero.Text) Then
                If AdminIdentificacionesService.IdentificacionQuery.eliminarIdnCat(db_IdentificacionID, CAT_UNIDAD_IDENTIFICACION) Then
                    AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal db_IdentificacionID, CAT_UNIDAD_IDENTIFICACION, Combo1.ItemData(Combo1.ListIndex)
                End If
                If AdminIdentificacionesService.IdentificacionQuery.eliminarIdnCat(db_IdentificacionID, CAT_IDENTIFICACION) Then
                    AdminIdentificacionesService.IdentificacionOrm.crearIdnCatVal db_IdentificacionID, CAT_IDENTIFICACION, Combo2.ItemData(Combo2.ListIndex)
                End If
                '******* VERIFICO SI DEBE SER ASIGNADA COMO TARJETA DE PANICO **************
                If Not Check = Checked Then
                    AdminIdentificacionesService.IdnPncOrm.eliminarIdentificacionPanico (db_IdentificacionID)
                Else
                    If Not AdminIdentificacionesService.IdnPncOrm.crearIdentificacionPanico(db_IdentificacionID) Then
                        MsgBox "La tarjeta de panico no pudo ser actualizada ", vbInformation, "Atención"
                    End If
                End If
                ParentWindow.UpdateWindow
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar la Identificación", vbCritical, "Atención"
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
End Sub
