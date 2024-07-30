VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.UserControl PerfilGUI 
   ClientHeight    =   7815
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9660
   KeyPreview      =   -1  'True
   ScaleHeight     =   7815
   ScaleWidth      =   9660
   Begin VB.TextBox txtDescripcion 
      Height          =   1485
      Left            =   1080
      MaxLength       =   8192
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   600
      Width           =   6855
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   1080
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   8160
      TabIndex        =   7
      Top             =   7440
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   6600
      TabIndex        =   6
      Top             =   7440
      Width           =   1335
   End
   Begin VB.CommandButton cmdAgregar 
      Caption         =   "Crear ..."
      Height          =   255
      Left            =   8160
      TabIndex        =   3
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton cmdBorrar 
      Caption         =   "Borrar"
      Height          =   255
      Left            =   8160
      TabIndex        =   5
      Top             =   3600
      Width           =   1335
   End
   Begin VB.CommandButton cmdActualizar 
      Caption         =   "Actualizar ..."
      Height          =   255
      Left            =   8160
      TabIndex        =   4
      Top             =   3240
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   4695
      Left            =   1080
      TabIndex        =   2
      Top             =   2520
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   8281
      _Version        =   393216
      Cols            =   5
      FixedCols       =   0
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
   End
   Begin VB.Line Line2 
      X1              =   120
      X2              =   9480
      Y1              =   2280
      Y2              =   2280
   End
   Begin VB.Label lblDescripcion 
      Caption         =   "Descripción:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   600
      Width           =   855
   End
   Begin VB.Label lblNombre 
      Caption         =   "Nombre:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   855
   End
   Begin VB.Label lblItems 
      Caption         =   "Items:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2520
      Width           =   855
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   9480
      Y1              =   7320
      Y2              =   7320
   End
End
Attribute VB_Name = "PerfilGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private onUpdate As Boolean

Private AdminPerfilesService As AdminPerfilesSVR
Private PrfDataObject As PrfDAO

Public db_perfilID As Long

Private Sub UserControl_Initialize()
    Set AdminPerfilesService = New AdminPerfilesSVR
    Set PrfDataObject = New PrfDAO
End Sub

Private Sub UserControl_Terminate()
    Set AdminPerfilesService = Nothing
    Set PrfDataObject = Nothing
End Sub

Property Let PerfilID(value As Long)
    Let db_perfilID = value
End Property

Sub init()
    If db_perfilID <> 0 Then
        onUpdate = True
        loadData
    Else
        onUpdate = False
    End If

    enableEdition
End Sub

Sub enableEdition()
    If db_perfilID <> 0 Then
        Grid.Enabled = True
        cmdAgregar.Enabled = True
        cmdActualizar.Enabled = True
        cmdBorrar.Enabled = True

        cmdGuardar.Caption = "Guardar"
    Else
        Grid.Enabled = False
        cmdAgregar.Enabled = False
        cmdActualizar.Enabled = False
        cmdBorrar.Enabled = False

        cmdGuardar.Caption = "Siguiente >> "
    End If
End Sub

Sub loadData()
    Set PrfDataObject = AdminPerfilesService.PerfilOrm.obtenerPerfil(db_perfilID)

    If Not (PrfDataObject Is Nothing) Then
        txtNombre.Text = PrfDataObject.Nombre
        txtDescripcion.Text = PrfDataObject.Descripcion
    Else
        MsgBox "No se puede leer Perfil", vbCritical, "Atención"
        Exit Sub
    End If

    loadGrids
End Sub

Sub loadGrids()

    Dim RecordSet  As ADODB.RecordSet

    Dim i As Integer
    Dim J As Integer
    Dim K As Integer

    Grid.Visible = False
    Grid.Clear

    If AdminPerfilesService.getItemsList(db_perfilID) Then

        Set RecordSet = AdminPerfilesService.PerfilQuery.DbRecordsetQRY

        Grid.Row = 0

        Grid.Col = 0
        Grid.ColWidth(0) = Grid.Width * 0
        Grid.Text = RecordSet.Fields(0).name

        Grid.Col = 1
        Grid.ColWidth(1) = Grid.Width * 0.25
        Grid.Text = RecordSet.Fields(1).name

        Grid.Col = 2
        Grid.ColWidth(2) = Grid.Width * 0.25
        Grid.Text = RecordSet.Fields(2).name

        Grid.Col = 3
        Grid.ColWidth(3) = Grid.Width * 0.25
        Grid.Text = RecordSet.Fields(3).name
        
        Grid.Col = 4
        Grid.ColWidth(4) = Grid.Width * 0.25
        Grid.Text = RecordSet.Fields(4).name

        J = 1
        Do While Not RecordSet.EOF
            For i = 0 To RecordSet.Fields.Count - 1
                Grid.Row = J
                Grid.Col = i
                Grid.AddItem ""
                If RecordSet.Fields(i).ActualSize <> 0 Then
                    Grid.CellAlignment = 1

                    If i = 1 Then
                        Grid.Text = obtenerDeLaSemana(CInt(RecordSet.Fields(i).value))
                    ElseIf i = 2 Then
                        Grid.Text = obtenerHora(CStr(RecordSet.Fields(i).value))
                    ElseIf i = 3 Then
                        Grid.Text = obtenerHora(CStr(RecordSet.Fields(i).value))
                    Else
                        Grid.Text = DBFieldToGridString(RecordSet.Fields(i).value)
                    End If

                    If (J Mod 2) = 0 Then
                        Grid.CellBackColor = RGB(255, 255, 255)
                    Else
                        Grid.CellBackColor = RGB(242, 242, 242)
                    End If

                End If
            Next i
            J = J + 1

            RecordSet.MoveNext
        Loop

    End If

    Grid.Visible = True

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
            db_perfilID = AdminPerfilesService.PerfilOrm.crearPerfil(txtNombre.Text, txtDescripcion.Text)
            If db_perfilID <> -1 Then
                enableEdition
                onUpdate = True
            Else
                MsgBox "No se puede crear Perfil", vbCritical, "Atención"
                Exit Sub
            End If
        Else
            If AdminPerfilesService.PerfilOrm.actualizarPerfil(db_perfilID, txtNombre.Text, txtDescripcion.Text) Then
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar Perfil", vbCritical, "Atención"
                ParentWindow.UpdateWindow
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
    'ElseIf KeyAscii = vbKeySpace Then
    '    cmdActualizar_Click
    End If
End Sub

Private Sub CmdAgregar_Click()
    Set PerfilItemMOD.ParentWindow = Me
    PerfilItemMOD.PerfilID = db_perfilID
    PerfilItemMOD.ItemID = 0
    PerfilItemMOD.Show vbModal
End Sub

Private Sub cmdActualizar_Click()
    Grid.Col = 0
    Grid.Row = Grid.RowSel
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 0
        Grid.Row = Grid.RowSel
        Dim ItemID  As Long
        ItemID = CLng(Grid.Text)

        Set PerfilItemMOD.ParentWindow = Me
        PerfilItemMOD.PerfilID = db_perfilID
        PerfilItemMOD.ItemID = ItemID
        PerfilItemMOD.Show vbModal
    End If
End Sub

Private Sub Grid_DblClick()
    cmdActualizar_Click
End Sub

Private Sub cmdBorrar_Click()
    If Grid.Text <> "" And Grid.Row >= 1 Then
        Grid.Col = 1
        Grid.Row = Grid.RowSel
        If MsgBox("Está seguro de quitar [" & Grid.Text & "]?", vbYesNo, "Atención") = vbYes Then
            Grid.Col = 0
            Grid.Row = Grid.RowSel
            If Not AdminPerfilesService.PerfilOrm.eliminarPrfVal(db_perfilID, CLng(Grid.Text)) Then
                MsgBox "No se puede quitar Valor de Perfil", vbCritical, "Atención"
                Exit Sub
            End If
            loadGrids
        End If
    End If
End Sub

Public Sub UpdateWindow()
    loadGrids
End Sub
