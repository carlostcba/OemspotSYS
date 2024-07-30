VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form FrmCamping 
   Caption         =   "Camping"
   ClientHeight    =   7500
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9540
   Icon            =   "FrmCamping.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7500
   ScaleWidth      =   9540
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FrmCamping 
      Caption         =   "Camping"
      Height          =   6975
      Left            =   120
      TabIndex        =   18
      Top             =   360
      Width           =   9255
      Begin VB.CommandButton CmdCancelar 
         Caption         =   "Cancelar"
         Height          =   375
         Left            =   7560
         TabIndex        =   17
         Top             =   6480
         Width           =   1575
      End
      Begin VB.CommandButton CmdAceptar 
         Caption         =   "Aceptar"
         Height          =   375
         Left            =   5520
         TabIndex        =   16
         Top             =   6480
         Width           =   1575
      End
      Begin VB.Frame Frame4 
         Caption         =   "Foto"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   6135
         Left            =   5520
         TabIndex        =   33
         Top             =   240
         Width           =   3615
         Begin MSComDlg.CommonDialog CommonDialog1 
            Left            =   1560
            Top             =   1680
            _ExtentX        =   847
            _ExtentY        =   847
            _Version        =   393216
         End
         Begin VB.CommandButton CmdImportarFoto 
            Caption         =   "Importar Foto..."
            Height          =   255
            Left            =   120
            TabIndex        =   37
            Top             =   5760
            Width           =   1335
         End
         Begin VB.CommandButton CmdCapturarFoto 
            Caption         =   "Capturar Foto..."
            Height          =   255
            Left            =   2160
            TabIndex        =   36
            Top             =   5760
            Width           =   1335
         End
         Begin VB.Image ImgFoto 
            Height          =   5175
            Index           =   0
            Left            =   120
            Stretch         =   -1  'True
            Top             =   360
            Width           =   3375
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Entrada y Salida"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   120
         TabIndex        =   27
         Top             =   5520
         Width           =   5295
         Begin MSComCtl2.DTPicker DTHoraSalida 
            Height          =   300
            Left            =   3840
            TabIndex        =   15
            Top             =   720
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   529
            _Version        =   393216
            Format          =   50790402
            CurrentDate     =   40940
         End
         Begin MSComCtl2.DTPicker DTFechaEntrada 
            Height          =   300
            Left            =   1320
            TabIndex        =   12
            Top             =   350
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   529
            _Version        =   393216
            Format          =   50790401
            CurrentDate     =   40940
         End
         Begin MSComCtl2.DTPicker DTHoraEntrada 
            Height          =   300
            Left            =   3840
            TabIndex        =   13
            Top             =   345
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   529
            _Version        =   393216
            Format          =   50790402
            CurrentDate     =   40940
         End
         Begin MSComCtl2.DTPicker DTFechaSalida 
            Height          =   300
            Left            =   1320
            TabIndex        =   14
            Top             =   720
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   529
            _Version        =   393216
            Format          =   50790401
            CurrentDate     =   40940
         End
         Begin VB.Label Label11 
            Caption         =   "Hora Salida:"
            Height          =   255
            Left            =   2760
            TabIndex        =   32
            Top             =   735
            Width           =   1095
         End
         Begin VB.Label Label10 
            Caption         =   "Fecha Salida:"
            Height          =   255
            Left            =   120
            TabIndex        =   31
            Top             =   735
            Width           =   1095
         End
         Begin VB.Label Label9 
            Caption         =   "Hora Entrada:"
            Height          =   255
            Left            =   2760
            TabIndex        =   30
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label8 
            Caption         =   "Fecha Entrada:"
            Height          =   255
            Left            =   120
            TabIndex        =   29
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame FrmPersona 
         Caption         =   "Persona"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3735
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Width           =   5295
         Begin VB.TextBox TxtGrupo 
            Height          =   285
            Left            =   1080
            TabIndex        =   5
            Top             =   1800
            Width           =   3975
         End
         Begin VB.Frame Frame2 
            Caption         =   "Lotes"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1455
            Left            =   120
            TabIndex        =   39
            Top             =   2160
            Width           =   5055
            Begin VB.ComboBox CmbRelacion 
               Enabled         =   0   'False
               Height          =   315
               Left            =   960
               TabIndex        =   7
               Top             =   600
               Width           =   3975
            End
            Begin VB.TextBox txtPerfiles 
               Height          =   285
               Left            =   960
               TabIndex        =   8
               Top             =   960
               Width           =   3975
            End
            Begin VB.ComboBox CmbLote 
               Height          =   315
               Left            =   960
               TabIndex        =   6
               Top             =   240
               Width           =   3975
            End
            Begin VB.Label Label16 
               Caption         =   "Perfil:"
               Height          =   255
               Left            =   120
               TabIndex        =   42
               Top             =   960
               Width           =   735
            End
            Begin VB.Label Label14 
               Caption         =   "Lote:"
               Height          =   255
               Left            =   120
               TabIndex        =   41
               Top             =   240
               Width           =   735
            End
            Begin VB.Label Label15 
               Caption         =   "Relacion:"
               Height          =   255
               Left            =   120
               TabIndex        =   40
               Top             =   600
               Width           =   735
            End
         End
         Begin VB.ComboBox CmbTipoDoc 
            Height          =   315
            Left            =   1080
            TabIndex        =   2
            Top             =   1080
            Width           =   1095
         End
         Begin VB.TextBox TxtNroDoc 
            Height          =   285
            Left            =   2640
            TabIndex        =   3
            Top             =   1080
            Width           =   2415
         End
         Begin VB.TextBox TxtTarjeta 
            Height          =   285
            Left            =   1080
            TabIndex        =   4
            Top             =   1440
            Width           =   3975
         End
         Begin VB.TextBox TxtApellido 
            Height          =   285
            Left            =   1080
            TabIndex        =   1
            Top             =   720
            Width           =   3975
         End
         Begin VB.TextBox txtNombre 
            Height          =   285
            Left            =   1080
            TabIndex        =   0
            Top             =   360
            Width           =   3975
         End
         Begin VB.Label Label13 
            Caption         =   "Grupo:"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   1800
            Width           =   735
         End
         Begin VB.Label Label12 
            Caption         =   "Tipo Doc:"
            Height          =   255
            Left            =   120
            TabIndex        =   34
            Top             =   1080
            Width           =   735
         End
         Begin VB.Label Label5 
            Caption         =   "Nro:"
            Height          =   255
            Left            =   2280
            TabIndex        =   28
            Top             =   1080
            Width           =   735
         End
         Begin VB.Label Label3 
            Caption         =   "Tarjeta Nro:"
            Height          =   255
            Left            =   120
            TabIndex        =   23
            Top             =   1440
            Width           =   855
         End
         Begin VB.Label Label2 
            Caption         =   "Apellido:"
            Height          =   255
            Left            =   120
            TabIndex        =   22
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label1 
            Caption         =   "Nombre:"
            Height          =   255
            Left            =   120
            TabIndex        =   21
            Top             =   360
            Width           =   735
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Auto"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   120
         TabIndex        =   19
         Top             =   3960
         Width           =   5295
         Begin VB.TextBox TxtPatente 
            Height          =   285
            Left            =   1080
            TabIndex        =   11
            Top             =   960
            Width           =   3975
         End
         Begin VB.TextBox TxtColor 
            Height          =   285
            Left            =   1080
            TabIndex        =   10
            Top             =   600
            Width           =   3975
         End
         Begin VB.TextBox TxtMarca 
            Height          =   285
            Left            =   1080
            TabIndex        =   9
            Top             =   240
            Width           =   3975
         End
         Begin VB.Label Label7 
            Caption         =   "Patente"
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label6 
            Caption         =   "Color"
            Height          =   255
            Left            =   120
            TabIndex        =   25
            Top             =   650
            Width           =   735
         End
         Begin VB.Label Label4 
            Caption         =   "Marca"
            Height          =   255
            Left            =   120
            TabIndex        =   24
            Top             =   360
            Width           =   855
         End
      End
   End
   Begin MSComctlLib.Toolbar TB 
      Align           =   1  'Align Top
      Height          =   360
      Left            =   0
      TabIndex        =   35
      Top             =   0
      Width           =   9540
      _ExtentX        =   16828
      _ExtentY        =   635
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      Style           =   1
      ImageList       =   "IL"
      HotImageList    =   "IL"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   15
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Agregar"
            Description     =   "Agregar (Ins)"
            Object.ToolTipText     =   "Agregar"
            Object.Tag             =   "Agregar"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Eliminar"
            Description     =   "Eliminar (Ctrl+Del)"
            Object.ToolTipText     =   "Eliminar"
            Object.Tag             =   "Eliminar"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Key             =   "Copiar"
            Description     =   "Copiar (Ctrl+Ins)"
            Object.ToolTipText     =   "Copiar"
            Object.Tag             =   "Copiar"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Modificar"
            Description     =   "Modificar (Shift+Ins)"
            Object.ToolTipText     =   "Modificar"
            Object.Tag             =   "Modificar"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Primero"
            Description     =   "Primero (Inicio)"
            Object.ToolTipText     =   "Primero"
            Object.Tag             =   "Primero"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Anterior"
            Description     =   "Anterior (Re Pág)"
            Object.ToolTipText     =   "Anterior"
            Object.Tag             =   "Anterior"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Siguiente"
            Description     =   "Siguiente (Av Pág)"
            Object.ToolTipText     =   "Siguiente"
            Object.Tag             =   "Siguiente"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Ultimo"
            Description     =   "Ultimo (Fin)"
            Object.ToolTipText     =   "Ultimo"
            Object.Tag             =   "Ultimo"
            ImageIndex      =   10
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.Visible         =   0   'False
            Key             =   "Adjuntar"
            Description     =   "Mostrar Datos Adjuntos"
            Object.ToolTipText     =   "Adjuntar"
            Object.Tag             =   "Adjuntar"
            ImageIndex      =   11
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Buscar"
            Description     =   "Buscar por Clave (Ctrl+B)"
            Object.ToolTipText     =   "Buscar"
            Object.Tag             =   "Buscar"
            ImageIndex      =   12
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Object.Visible         =   0   'False
            Key             =   "Office"
            Description     =   "Conectividad con Office"
            Object.ToolTipText     =   "Office"
            Object.Tag             =   "Office"
            ImageIndex      =   13
            Style           =   5
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.Visible         =   0   'False
            Key             =   "Listar"
            Description     =   "Listar"
            Object.ToolTipText     =   "Listar"
            Object.Tag             =   "Listar"
            ImageIndex      =   14
            Style           =   5
            Object.Width           =   1e-4
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   1
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "Formato"
                  Object.Tag             =   "Formato"
                  Text            =   "Elegir Formato"
               EndProperty
            EndProperty
         EndProperty
      EndProperty
      BorderStyle     =   1
      Begin MSComctlLib.ImageList IL 
         Left            =   6000
         Top             =   0
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   17
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":15162
               Key             =   "Aceptar"
               Object.Tag             =   "Aceptar"
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":154BE
               Key             =   "Cancelar"
               Object.Tag             =   "Cancelar"
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":1581A
               Key             =   "Agregar"
               Object.Tag             =   "Agregar"
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":15B6E
               Key             =   "Eliminar"
               Object.Tag             =   "Eliminar"
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":15EC2
               Key             =   "Copiar"
               Object.Tag             =   "Copiar"
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":16216
               Key             =   "Modificar"
               Object.Tag             =   "Modificar"
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":1656A
               Key             =   "Primero"
               Object.Tag             =   "Primero"
            EndProperty
            BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":168BE
               Key             =   "Anterior"
               Object.Tag             =   "Anterior"
            EndProperty
            BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":16C12
               Key             =   "Siguiente"
               Object.Tag             =   "Siguiente"
            EndProperty
            BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":16F66
               Key             =   "Ultimo"
               Object.Tag             =   "Ultimo"
            EndProperty
            BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":172BA
               Key             =   "Adjuntar"
               Object.Tag             =   "Adjuntar"
            EndProperty
            BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":1760E
               Key             =   "Buscar"
               Object.Tag             =   "Buscar"
            EndProperty
            BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":17966
               Key             =   "Office"
               Object.Tag             =   "Office"
            EndProperty
            BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":17CBA
               Key             =   "Listar"
               Object.Tag             =   "Listar"
            EndProperty
            BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":1800E
               Key             =   "Ayuda"
               Object.Tag             =   "Ayuda"
            EndProperty
            BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":18362
               Key             =   "atango"
               Object.Tag             =   "atango"
            EndProperty
            BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "FrmCamping.frx":186B4
               Key             =   "filtro"
               Object.Tag             =   "filtro"
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "FrmCamping"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim bEdit As Boolean
Dim sPathFotos As String
Dim oCamping As New ClsCamping
Dim oFso As Object
Dim aLote As Variant
Dim aTipoDoc As Variant
Dim aRelacion As Variant
Dim bEncurso As Boolean
Private Sub cmdAceptar_Click()
On Error GoTo Salida

    Me.MousePointer = 11
    CargarValues
    If bEdit Then
        If Not Modificar Then GoTo Salida
    Else
        If Not Ingresar Then GoTo Salida
    End If
    FrmCamping.Enabled = False
    TB.Enabled = True
    oCamping.PersonaID = oCamping.IdPersona
    oCamping.LoadCampingData
    If bEdit Then
        oCamping.SelectPersona oCamping.PersonaID, True
        CargarDatos
    Else
        mnuBuscarUltimo_Click
    End If
    oCamping.PersonaID = 0
    bEdit = False
    MsgBox "Operacion Realizada con Exito", vbInformation, "Camping"
    Me.MousePointer = 0
    Exit Sub
    
Salida:
    Me.MousePointer = 0
End Sub

Private Sub cmdCancelar_Click()
    TB.Enabled = True
    FrmCamping.Enabled = False
    If Not bEdit Then
        ImgFoto(0).Picture = LoadPicture("")
        mnuBuscarAnterior_Click
    End If
    bEdit = False
End Sub

Private Sub CmdCapturarFoto_Click()
    CapturarFoto
End Sub

Private Sub CmdImportarFoto_Click()
    ImportarFoto
End Sub

Private Sub Form_Load()
    LoadOCX
    LoadDatos
End Sub
Sub LoadOCX()
    FrmCamping.Enabled = False
    Set oFso = CreateObject("Scripting.FileSystemObject")
    oCamping.PersonaID = 0
    sPathFotos = getConfiguracionParametroDB("ProgramaSistemaGestion", "PATH_IMAGENES_PERSONAS")

End Sub
Sub LoadDatos()
    oCamping.LoadCampingData
    '''Tenemos que generar OCX para la logica del procedimiento
    CargarLote aLote
    CargarTipoDoc aTipoDoc
    CargarRelacion aRelacion
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    CargarDatos
End Sub

Private Sub TB_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case LCase(Button.key)
        Case "agregar"
            mnuAgregar_Click
        Case "eliminar"
            mnuEliminar_Click
        Case "modificar"
            mnuModificar_Click
        Case "primero"
            mnuBuscarPrimero_Click
        Case "anterior"
            mnuBuscarAnterior_Click
        Case "siguiente"
            mnuBuscarSiguiente_Click
        Case "ultimo"
            mnuBuscarUltimo_Click
        Case "buscar"
            mnuBuscarClave_Click
    End Select
End Sub
Sub CargarDatos()
    txtNombre = oCamping.Nombre
    TxtApellido = oCamping.Apellido
    CmbTipoDoc = oCamping.TipoDoc
    TxtNroDoc = oCamping.NroDoc
    TxtTarjeta = oCamping.NroTarjeta
    TxtGrupo = oCamping.grupo
    CmbLote = oCamping.Lote
    TxtMarca = oCamping.Marca
    TxtColor = oCamping.Color
    TxtPatente = oCamping.Patente
    DTFechaEntrada = oCamping.FechaEntrada
    DTHoraEntrada = oCamping.HoraEntrada
    DTFechaSalida = oCamping.FechaSalida
    DTHoraSalida = oCamping.HoraSalida
    cargarFoto oCamping.IdPersona
    CmbLote = oCamping.Lote
    CmbRelacion = oCamping.Relacion
    txtPerfiles = oCamping.Perfil
End Sub
Sub mnuEliminar_Click()
    If MsgBox("Desea Desasociar a esta Persona del Camping? ", vbQuestion + vbOKCancel, "Eliminar") = 1 Then
        Me.MousePointer = 11
        oCamping.NroTarjeta = TxtTarjeta
        oCamping.delete
        mnuBuscarPrimero_Click
        Me.MousePointer = 0
        MsgBox "Operacion Relazada con Exito", vbInformation, "Eliminar"
    End If
End Sub
Sub mnuBuscarSiguiente_Click()
    oCamping.Siguiente
    CargarDatos
End Sub
Sub mnuBuscarAnterior_Click()
    oCamping.Posterior
    CargarDatos
End Sub
Sub mnuBuscarPrimero_Click()
    oCamping.Primiero
    CargarDatos
End Sub
Sub mnuBuscarUltimo_Click()
    oCamping.Ultimo
    CargarDatos
End Sub
Sub mnuBuscarClave_Click()
    oCamping.GetPersonas
    CargarDatos
End Sub
Sub mnuAgregar_Click()
    TB.Enabled = False
    FrmCamping.Enabled = True
    LimpiarDatos
    CargarCombos CmbTipoDoc, aTipoDoc, 1
    'CmbTipoDoc = "DNI"
    CmbTipoDoc.ListIndex = 3
    
    CargarCombos CmbLote, aLote, 1
    CargarCombos CmbRelacion, aRelacion, 1
    
    CmbRelacion.ListIndex = 7
End Sub

Sub mnuModificar_Click()
Dim sLote
Dim sTipoDoc
    
    sLote = CmbLote.Text
    sTipoDoc = CmbTipoDoc
    CargarCombos CmbTipoDoc, aTipoDoc, 1
    CargarCombos CmbLote, aLote, 1
    CmbLote.ListIndex = IndexBuscar(aLote, sLote)
    CmbTipoDoc.ListIndex = IndexBuscar(aTipoDoc, sTipoDoc)
    
    CargarCombos CmbRelacion, aRelacion, 1
    CmbRelacion.ListIndex = 7
    TxtGrupo_LostFocus
    txtPerfiles_LostFocus
    oCamping.PerfilIDEdit = oCamping.PerfilID
    oCamping.GrupoIDEdit = oCamping.GrupoID
    oCamping.IdLoteEdit = aLote(CmbLote.ListIndex, 0)
    oCamping.NroTarjetaEdit = TxtTarjeta.Text
    oCamping.NroDocEdit = TxtNroDoc
    oCamping.PatenteEdit = TxtPatente
    oCamping.ColorEdit = TxtColor
    oCamping.MarcaEdit = TxtMarca
    FrmCamping.Enabled = True
    bEdit = True
    
End Sub
Sub LimpiarDatos()
    txtNombre = ""
    TxtApellido = ""
    CmbTipoDoc = ""
    TxtNroDoc = ""
    TxtTarjeta = ""
    TxtGrupo = ""
    CmbLote = ""
    TxtMarca = ""
    TxtColor = ""
    TxtPatente = ""
    txtPerfiles = ""
    DTFechaEntrada = Format(Now(), "dd/mm/yyyy")
    DTHoraEntrada = Format(Now(), "HH:mm:00")
    DTFechaSalida = Format(Now(), "dd/mm/yyyy")
    DTHoraSalida = Format(Now(), "HH:mm:00")
    ImgFoto(0).Picture = LoadPicture("")
End Sub
Sub ImportarFoto()
    CommonDialog1.DefaultExt = "jpg"
    CommonDialog1.Filter = "*.jpg"
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        ImgFoto(0).Picture = LoadPicture(CommonDialog1.FileName)
        If oFso.FileExists(sPathFotos & "\" & IIf(bEdit, oCamping.IdPersona, oCamping.IdPersonaNext) & ".jpg") Then
            oFso.deletefile sPathFotos & "\" & IIf(bEdit, oCamping.IdPersona, oCamping.IdPersonaNext) & ".jpg"
        End If
            FileCopy CommonDialog1.FileName, sPathFotos & "\" & IIf(bEdit, oCamping.IdPersona, oCamping.IdPersonaNext) & ".jpg"
    End If
End Sub

Sub CapturarFoto()
On Error GoTo Salir
    Set TomarFotoMOD.ParentWindow = Me
    TomarFotoMOD.PersonaID = IIf(bEdit, oCamping.IdPersona, oCamping.IdPersonaNext)
    TomarFotoMOD.bTomarFotoPersona = True
    TomarFotoMOD.Show vbModal
    cargarFoto IIf(bEdit, oCamping.IdPersona, oCamping.IdPersonaNext)
Exit Sub
Salir:
    MsgBox "PersonaGUI.cmdCapturarFoto_Click" & vbCrLf & _
        "Descripción: " & Err.Description & vbCrLf & _
        "Número error: " & Err.Number, _
        vbCritical, _
        "Error en Ejecución"

End Sub
Sub UpdateWindow()

End Sub
Sub cargarFoto(ByVal lPersona As Long)
    If oFso.FileExists(sPathFotos & "\" & lPersona & ".jpg") Then
        ImgFoto(0).Picture = LoadPicture(sPathFotos & "\" & lPersona & ".jpg")
        ImgFoto(0).ToolTipText = sPathFotos & "\" & lPersona & ".jpg"
    Else
        ImgFoto(0).Picture = LoadPicture("")
    End If
End Sub
Sub CargarValues()
    oCamping.Nombre = txtNombre
    oCamping.Apellido = TxtApellido
    oCamping.TipoDoc = CmbTipoDoc
    oCamping.NroDoc = TxtNroDoc
    oCamping.IdValorTipoDoc = aTipoDoc(CmbTipoDoc.ListIndex, 2)
    oCamping.IdCategoriaDoc = aTipoDoc(CmbTipoDoc.ListIndex, 0)
    oCamping.NroTarjeta = TxtTarjeta
    oCamping.IdLote = aLote(CmbLote.ListIndex, 0)
    oCamping.Marca = TxtMarca
    oCamping.Color = TxtColor
    oCamping.Patente = TxtPatente
    oCamping.FechaEntrada = DTFechaEntrada
    oCamping.HoraEntrada = DTHoraEntrada
    oCamping.FechaSalida = DTFechaSalida
    oCamping.HoraSalida = DTHoraSalida
    oCamping.RelacionId = aRelacion(CmbRelacion.ListIndex, 0)
    oCamping.RelacionValor = aRelacion(CmbRelacion.ListIndex, 2)
    'oCamping.IdGrupo = aGrupo(CmbGrupo.ListIndex, 0)
    'oCamping.IdCategoriaGrup = aGrupo(CmbGrupo.ListIndex, 2)
    'oCamping.IdValorGrup = aGrupo(CmbGrupo.ListIndex, 3)
End Sub

Private Sub TxtGrupo_DblClick()
    bEncurso = True
    TxtGrupo.Text = oCamping.getGrupos
    bEncurso = False
End Sub

Private Sub TxtGrupo_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        bEncurso = True
        Me.TxtGrupo.Text = oCamping.getGrupos
        bEncurso = False
    End If
End Sub

Private Sub TxtGrupo_LostFocus()
    If Not bEncurso Then
        If oCamping.ValidateGrupo(TxtGrupo.Text) = "" Or TxtGrupo.Text = "" Then
            If Not bEdit = True And Not TxtGrupo = "" Then
                TxtGrupo.SetFocus
            End If
            TxtGrupo.Text = ""
        End If
    End If
End Sub
Private Sub txtPerfiles_DblClick()
    bEncurso = True
    txtPerfiles.Text = oCamping.getPerfiles
    bEncurso = False
End Sub

Private Sub txtPerfiles_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        bEncurso = True
        txtPerfiles.Text = oCamping.getPerfiles
        bEncurso = False
    End If
End Sub

Private Sub txtPerfiles_LostFocus()
    If Not bEncurso Then
        If oCamping.ValidatePerfil(txtPerfiles.Text) = "" Or txtPerfiles.Text = "" Then
            If Not bEdit = True And Not txtPerfiles = "" Then
                txtPerfiles.SetFocus
            End If
            txtPerfiles.Text = ""
        End If
    End If
End Sub

Function Ingresar() As Boolean
On Error GoTo Error

    If Not oCamping.ValidateTarjeta(TxtTarjeta.Text) And Not oCamping.ValidateAuto(TxtPatente.Text) _
           And Not ValidateData And Not oCamping.ValidateDocumento(TxtNroDoc, oCamping.IdValorTipoDoc) Then
        oCamping.InsertCamping
        Ingresar = True
    Else
        TxtTarjeta.SetFocus
    End If
    
    Exit Function
Error:
    MsgBox Err.Description, vbCritical, "Camping"
End Function
Function Modificar() As Boolean
On Error GoTo Error

    If Not ValidateData Then
        
        If Trim(oCamping.NroTarjetaEdit) <> Trim(oCamping.NroTarjeta) Then
            If oCamping.ValidateTarjeta(TxtTarjeta.Text) Then
                TxtTarjeta.SetFocus
                Exit Function
            End If
        End If
        If oCamping.PatenteEdit = "" Then
            If oCamping.ValidateAuto(oCamping.Patente) Then
                Exit Function
            End If
        End If
        oCamping.update
        Modificar = True
    End If
    
    Exit Function
Error:
    MsgBox Err.Description, vbCritical, "Camping"
End Function
Function ValidateData() As Boolean

    ''Campos Obligatorios
    If TxtGrupo = "" Then
        ValidateData = True
        MsgBox "Falta Cargar el Grupo", vbInformation
    End If
    If txtPerfiles = "" Then
        ValidateData = True
        MsgBox "Falta Cargar el Perfil", vbInformation
    End If
    If TxtNroDoc = "" Then
        ValidateData = True
        MsgBox "Falta Cargar el Documento", vbInformation
    End If
End Function
