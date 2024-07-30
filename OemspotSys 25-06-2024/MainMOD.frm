VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form MainMOD 
   BackColor       =   &H8000000C&
   ClientHeight    =   10650
   ClientLeft      =   1920
   ClientTop       =   3390
   ClientWidth     =   15120
   Icon            =   "MainMOD.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   10650
   ScaleWidth      =   15120
   Visible         =   0   'False
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   120
      Top             =   1680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1440
      Top             =   720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   22
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":15162
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":2A2D4
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":3F446
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":42A32
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":57BA4
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":6CD16
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":81E88
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":96FFA
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":AC16C
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":C12DE
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":D6450
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":EB5C2
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":100734
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":100C78
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":101170
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":101995
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":102167
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":102481
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":1175F3
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":12C765
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":12CCFF
            Key             =   ""
         EndProperty
         BeginProperty ListImage22 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "MainMOD.frx":12D815
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   10275
      Width           =   15120
      _ExtentX        =   26670
      _ExtentY        =   661
      Style           =   1
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.Toolbar MainToolBar 
      Align           =   1  'Align Top
      Height          =   4080
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15120
      _ExtentX        =   26670
      _ExtentY        =   7197
      ButtonWidth     =   5636
      ButtonHeight    =   1429
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   17
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Sistema"
            Key             =   "Administración de Sistema"
            Description     =   "Administración de Sistema"
            Object.ToolTipText     =   "Administración de Sistema"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Usuarios"
            Key             =   "Administración de Usuarios"
            Description     =   "Administración de Usuarios"
            Object.ToolTipText     =   "Administración de Usuarios"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Personas"
            Key             =   "Administración de Personas"
            Description     =   "Administración de Personas"
            Object.ToolTipText     =   "Administración de Personas"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Módulos"
            Key             =   "Admninistración de Módulos"
            Description     =   "Admninistración de Módulos"
            Object.ToolTipText     =   "Admninistración de Módulos"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Grupos"
            Key             =   "Administración de Grupos"
            Description     =   "Administración de Grupos"
            Object.ToolTipText     =   "Administración de Grupos"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Perfiles"
            Key             =   "Administración de Perfiles"
            Description     =   "Administración de Perfiles"
            Object.ToolTipText     =   "Administración de Perfiles"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Identificaciones"
            Key             =   "Administración de Identificaciones"
            Description     =   "Administración de Identificaciones"
            Object.ToolTipText     =   "Administración de Identificaciones"
            Object.Tag             =   "Administración de Identificaciones"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Permisos"
            Key             =   "Administración de Permisos"
            Description     =   "Permisos"
            Object.ToolTipText     =   "Administración de Permisos"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Reporte de Visitas y Proveedores"
            Key             =   "Reporte de Visitas y Proveedores"
            Description     =   "Reporte de Visitas y Proveedores"
            Object.ToolTipText     =   "Reporte de Visitas y Proveedores"
            Object.Tag             =   "Administración de Tickets"
            ImageIndex      =   19
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Puesto Control"
            Description     =   "Puesto de Control"
            Object.ToolTipText     =   "Puesto de Control"
            Object.Tag             =   "Puesto de Control"
            ImageIndex      =   18
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Autos"
            Key             =   "Autos"
            Description     =   "Administración de Autos"
            Object.ToolTipText     =   "Administración de Autos"
            ImageIndex      =   17
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Movimientos de Personas Identificadas"
            Key             =   "Movimientos de Personas Identificadas"
            Description     =   "Movimientos de Personas Identificadas"
            Object.ToolTipText     =   "Movimientos de Personas Identificadas"
            ImageIndex      =   19
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Reporte de Personas Identificadas"
            Key             =   "Reporte de Personas Identificadas"
            Description     =   "Reporte de Personas Identificadas"
            Object.ToolTipText     =   "Reporte de Personas Identificadas"
            Object.Tag             =   "Reporte de Personas Identificadas"
            ImageIndex      =   13
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Lotes"
            Key             =   "AdminLotes"
            Description     =   "Administrador de Lotes"
            Object.ToolTipText     =   "Administrador de Lotes"
            Object.Tag             =   "Administrador de Lotes"
            ImageIndex      =   20
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Respaldo /Back Up "
            Key             =   "ValidarTickets"
            Description     =   "Respaldo /Back Up "
            Object.ToolTipText     =   "Respaldo /Back Up de Base de Datos"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Visitas PreAutorizadas"
            Key             =   "Visitas PreAutorizada"
            Description     =   "Visitas PreAutorizada"
            ImageIndex      =   21
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
      Begin MSCommLib.MSComm MSComm 
         Left            =   13440
         Top             =   2040
         _ExtentX        =   1005
         _ExtentY        =   1005
         _Version        =   393216
         DTREnable       =   -1  'True
      End
      Begin VB.Timer Tmr 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   7800
         Top             =   1800
      End
   End
   Begin VB.Menu mnuPrincipal 
      Caption         =   "&Principal"
      Begin VB.Menu ExtenderSistema 
         Caption         =   "&Extender Sistema ..."
      End
      Begin VB.Menu ConfigEstacionTrabajo 
         Caption         =   "C&onfiguración de Estación de Trabajo ..."
      End
      Begin VB.Menu InstalarActualizacion 
         Caption         =   "&Instalar Actualización  ..."
      End
      Begin VB.Menu CambiarClaveAcceso 
         Caption         =   "&Cambiar Password ..."
      End
      Begin VB.Menu AcercaDe 
         Caption         =   "Acerca de ..."
      End
      Begin VB.Menu Linea1 
         Caption         =   "-"
      End
      Begin VB.Menu Salir 
         Caption         =   "&Salir"
      End
   End
   Begin VB.Menu Sistema 
      Caption         =   "&Sistema"
      Begin VB.Menu AdminSistema 
         Caption         =   "Administración de &Sistema ..."
      End
      Begin VB.Menu AdminUsuarios 
         Caption         =   "Administración de &Usuarios ..."
      End
      Begin VB.Menu MnuGeo 
         Caption         =   "Administración de &Geo"
      End
      Begin VB.Menu val_config 
         Caption         =   "Respaldo / BackUp Base de Datos"
      End
   End
   Begin VB.Menu Modulos 
      Caption         =   "&Módulos Controladores"
      Begin VB.Menu AdminModulos 
         Caption         =   "Administración de Módulos ..."
      End
   End
   Begin VB.Menu ControlAcceso 
      Caption         =   "&Control de Acceso"
      Begin VB.Menu AdminGrupos 
         Caption         =   "Administración de &Grupos ..."
      End
      Begin VB.Menu AdminPerfiles 
         Caption         =   "Administración de &Perfiles ..."
      End
      Begin VB.Menu AdminIdentificaciones 
         Caption         =   "Administración de &Identificaciones ..."
      End
      Begin VB.Menu Permisos 
         Caption         =   "Administración de Permisos..."
      End
      Begin VB.Menu AdminLotes 
         Caption         =   "Administración de Lotes"
      End
      Begin VB.Menu PuestoControl 
         Caption         =   "Puesto de Control Manual ..."
      End
      Begin VB.Menu ReporteDeMovimientos 
         Caption         =   "Reporte de Movimientos ..."
      End
      Begin VB.Menu ReporteMovimientos 
         Caption         =   "Reporte de Movimientos de Tickets ..."
      End
      Begin VB.Menu Rlogin 
         Caption         =   "Reporte de Logins"
      End
   End
   Begin VB.Menu General 
      Caption         =   "&General"
      Begin VB.Menu AdminPersonas 
         Caption         =   "Administración de &Personas ..."
      End
      Begin VB.Menu AdminAutos 
         Caption         =   "Administración de &Autos..."
      End
   End
   Begin VB.Menu Ayuda 
      Caption         =   "&Ayuda"
      NegotiatePosition=   1  'Left
      Begin VB.Menu IndiceAyuda 
         Caption         =   "&Indice de Contenido ..."
      End
   End
End
Attribute VB_Name = "MainMOD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   MODULO PRINCIPAL DE LA PLATAFORMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Dim MainService As MainSVR

Private Sub Form_Load()
    Set MainService = New MainSVR
    Me.Caption = " OEMSPOT :: " & VERSION_PLATAFORMA_SYS & "  " & DBFieldToString(NOMBRE_PROGRAMA_SYS) & " ( " & NombreUsuarioActivoSYS & " )"
    setStatusMessage "Listo"
    autorizarModulos

    actualizarLocalizacion
    Me.Tmr.Interval = 3600
    MainMOD.MainToolBar.Buttons(9).Caption = "Movimiento y Reporte de Visitas"
    MainMOD.MainToolBar.Buttons(12).Caption = "Movimiento de Personas Identificadas"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If MsgBox("Está seguro de salir del Sistema?", vbYesNo, "Atención") = vbYes Then
        connectDatabase
        Set MainService = Nothing
        End
    Else
        Cancel = 1
    End If
End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   AUTORIZACION DE MODULOS EN FUNCION DE LOS PERFILES
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Sub autorizarModulos()
On Error GoTo Salir

    MainService.obtenerPerfiles

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_SISTEMA) Then
        AdminSistema.Enabled = True
        MainToolBar.Buttons(1).Visible = True
    Else
        AdminSistema.Enabled = False
        MainToolBar.Buttons(1).Visible = False
    End If


    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_SISTEMA) Then
        MnuGeo.Enabled = True
        MainToolBar.Buttons(1).Visible = True
    Else
        MnuGeo.Enabled = False
        MainToolBar.Buttons(1).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_USUARIOS) Then
        AdminUsuarios.Enabled = True
        MainToolBar.Buttons(2).Visible = True
    Else
        AdminUsuarios.Enabled = False
        MainToolBar.Buttons(2).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_PERSONAS) Then
        AdminPersonas.Enabled = True
        MainToolBar.Buttons(3).Visible = True
    Else
        AdminPersonas.Enabled = False
        MainToolBar.Buttons(3).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_MODULOS) Then
        AdminModulos.Enabled = True
        MainToolBar.Buttons(4).Visible = True
        ReporteMovimientos.Enabled = True
        MainToolBar.Buttons(9).Visible = True
    Else
        AdminModulos.Enabled = False
        MainToolBar.Buttons(4).Visible = False
        ReporteMovimientos.Enabled = False
        MainToolBar.Buttons(9).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_GRUPOS) Then
        AdminGrupos.Enabled = True
        MainToolBar.Buttons(5).Visible = True
    Else
        AdminGrupos.Enabled = False
        MainToolBar.Buttons(5).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_IDENTIFICACIONES) Then
        AdminIdentificaciones.Enabled = True
        MainToolBar.Buttons(7).Visible = True
    Else
        AdminIdentificaciones.Enabled = False
        MainToolBar.Buttons(7).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_PERFILES) Then
        AdminPerfiles.Enabled = True
        MainToolBar.Buttons(6).Visible = True
    Else
        AdminPerfiles.Enabled = False
        MainToolBar.Buttons(6).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_PERMISOS) Then
        Permisos.Enabled = True
        MainToolBar.Buttons(8).Visible = True
    Else
        Permisos.Enabled = False
        MainToolBar.Buttons(8).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_PUESTO_CONTROL) Then
        PuestoControl.Enabled = True
        MainToolBar.Buttons(10).Visible = True
    Else
        PuestoControl.Enabled = False
        MainToolBar.Buttons(10).Visible = False
    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_AUTOS) Then
        AdminAutos.Enabled = True
        MainToolBar.Buttons(11).Visible = True
    Else
        AdminAutos.Enabled = False
        MainToolBar.Buttons(11).Visible = False
    End If

'    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_LOTES) Then
'        AdminLotes.Enabled = True
'        MainToolBar.Buttons(12).Visible = True
'    Else
'        AdminLotes.Enabled = False
'        MainToolBar.Buttons(12).Visible = False
'    End If

    If MainService.isPerfilActivo(CAT_VAL_PERFIL_VALIDA_TICKETS) Then
        MainToolBar.Buttons(16).Visible = True
    Else
        MainToolBar.Buttons(16).Visible = False
    End If



    If MainService.isPerfilActivo(CAT_VAL_PERFIL_ADMIN_WORKSTATION) Then
        ConfigEstacionTrabajo.Enabled = True
    Else
        ConfigEstacionTrabajo.Enabled = False
    End If
    
    
    If CampingHabilitado Then
        MainToolBar.Buttons(17).Visible = True
    Else
        MainToolBar.Buttons(17).Visible = False
    End If
    
Exit Sub
Salir:
    MsgBox "MainMOD.autorizarmodulos" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   LLAMADA A LOS MODULOS DESDE EL MENU Y EL TOOLBAR
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Private Sub Preautorizaciones_Click()
    Unload PreautorizadasMOD
    PreautorizadasMOD.ReadOnly = False
    PreautorizadasMOD.Seleccion = False
    Set PreautorizadasMOD.ParentWindow = Nothing
    PreautorizadasMOD.Show
End Sub

Private Sub AdminLotes_Click()
    Unload AdminLotesMOD
    AdminLotesMOD.ReadOnly = False
    AdminLotesMOD.Seleccion = False
    Set AdminLotesMOD.ParentWindow = Nothing
    AdminLotesMOD.Show
End Sub

Private Sub ConfigEstacionTrabajo_Click()
On Error GoTo Salir
    Set AdminWorkstationMOD.ParentWindow = Nothing
    AdminWorkstationMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.ConfigEstacionTrabajo_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub ExtenderSistema_Click()
On Error GoTo Salir
    Set AdminLicenciasMOD.ParentWindow = Nothing
    AdminLicenciasMOD.Show

Exit Sub
Salir:
    MsgBox "MainMOD.ExtenderSistema_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminSistema_Click()
On Error GoTo Salir
    Unload AdminSistemaMOD
    AdminSistemaMOD.ReadOnly = False
    AdminSistemaMOD.Seleccion = False
    Set AdminSistemaMOD.ParentWindow = Nothing
    AdminSistemaMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminSistema_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminUsuarios_Click()
On Error GoTo Salir
    Unload AdminUsuariosMOD
    AdminUsuariosMOD.ReadOnly = False
    AdminUsuariosMOD.Seleccion = False
    Set AdminUsuariosMOD.ParentWindow = Nothing
    AdminUsuariosMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminUsuarios_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminPersonas_Click()
On Error GoTo Salir
    Unload AdminPersonasMOD
    AdminPersonasMOD.ReadOnly = False
    AdminPersonasMOD.Seleccion = False
    Set AdminPersonasMOD.ParentWindow = Nothing
    AdminPersonasMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminPersonas_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminModulos_Click()
On Error GoTo Salir
    Unload AdminModulosMOD
    AdminModulosMOD.ReadOnly = False
    AdminModulosMOD.Seleccion = False
    Set AdminModulosMOD.ParentWindow = Nothing
    AdminModulosMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminModulos_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminGrupos_Click()
On Error GoTo Salir
    Unload AdminGruposMOD
    AdminGruposMOD.ReadOnly = False
    AdminGruposMOD.Seleccion = False
    Set AdminGruposMOD.ParentWindow = Nothing
    AdminGruposMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminGrupos_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminPerfiles_Click()
On Error GoTo Salir
    Unload AdminPerfilesMOD
    AdminPerfilesMOD.ReadOnly = False
    AdminPerfilesMOD.Seleccion = False
    Set AdminPerfilesMOD.ParentWindow = Nothing
    AdminPerfilesMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminPerfiles_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminIdentificaciones_Click()
On Error GoTo Salir
    Unload AdminIdentificacionesMOD
    AdminIdentificacionesMOD.ReadOnly = False
    AdminIdentificacionesMOD.Seleccion = False
    Set AdminIdentificacionesMOD.ParentWindow = Nothing
    AdminIdentificacionesMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminIdentificaciones_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AdminAutos_Click()
On Error GoTo Salir
    Unload AdminAutosMOD
    AdminAutosMOD.ReadOnly = False
    AdminAutosMOD.Seleccion = False
    Set AdminAutosMOD.ParentWindow = Nothing
    AdminAutosMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.AdminAutos_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub InstalarActualizacion_Click()
On Error GoTo Salir

    CommonDialog1.DefaultExt = "VIDEOMAN"
    CommonDialog1.Filter = "*.VIDEOMAN"
    CommonDialog1.fileName = "UPDATE.VIDEOMAN"
    CommonDialog1.ShowOpen

    If CommonDialog1.fileName <> "" And Right(CommonDialog1.fileName, 15) = "UPDATE.VIDEOMAN" Then
        FileCopy CommonDialog1.fileName, App.path & "\UPDATE.VIDEOMAN"
        If MdlActualizar.Actualizar Then
            MsgBox "Debe reiniciar el Sistema Operativo para que los cambios sean efectuados", vbOKOnly, "Instalación de Actualización"
            Unload Me
        Else
            MsgBox "Error en la actualizacion", vbCritical
        End If
    End If
Exit Sub
Salir:
   If Err.Number = 53 Then
    MsgBox "No se completo la Actualización", vbInformation, "Cancelación de Actualización"
   Else
    MsgBox "MainMOD.InstalarActualizacion_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
   End If
End Sub

Private Sub MnuGeo_Click()

    Unload AdminGeoMOD
    AdminGeoMOD.ReadOnly = False
    AdminGeoMOD.Seleccion = False
    Set AdminGeoMOD.ParentWindow = Nothing
    AdminGeoMOD.Show
End Sub

Private Sub Permisos_Click()
On Error GoTo Salir
    Unload PermisosMOD
    PermisosMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.Permisos_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub PuestoControl_Click()
    ' FIXME: Continuar
    'Set PuestoControlManualMOD.ParentWindow = Nothing
    'PuestoControlManualMOD.Show
End Sub

Private Sub ReporteDeMovimientos_Click()
On Error GoTo Salir
    Unload MovimientosMOD
    Set MovimientosMOD.ParentWindow = Nothing
    MovimientosMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.ReportedeMovimientos_CLick" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub ReporteMovimientos_Click()
On Error GoTo Salir
    Unload ReporteMovimientosMOD
    Set ReporteMovimientosMOD.ParentWindow = Nothing
    ReporteMovimientosMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.ReporteMovimientos" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub IndiceAyuda_Click()
On Error GoTo Salir
    Dim NombreArchivo As String
    If LOCALIZACION_ACTIVA_SYS = "es-ar" Then
        NombreArchivo = App.path & "\HelpViewSYS.exe " & Chr(34) & App.path & "\Help\doc.hhp" & Chr(34)
    ElseIf LOCALIZACION_ACTIVA_SYS = "pt-br" Then
        NombreArchivo = App.path & "\HelpViewSYS.exe " & Chr(34) & App.path & "\Help_pt\pt_doc.hhp" & Chr(34)
    ElseIf LOCALIZACION_ACTIVA_SYS = "en-us" Then
        NombreArchivo = App.path & "\HelpViewSYS.exe " & Chr(34) & App.path & "\Help_en\en_doc.hhp" & Chr(34)
    End If
    Shell NombreArchivo, vbNormalFocus
Exit Sub
Salir:
    MsgBox "MainMOD.IndiceAyuda_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub MainToolBar_ButtonClick(ByVal Button As MSComctlLib.Button)

'On Error GoTo Salir

MainToolBar.Enabled = False


On Error Resume Next
    Select Case Button.Index
        Case 1:
            Unload AdminSistemaMOD
            Set AdminSistemaMOD = Nothing
            AdminSistemaMOD.ReadOnly = False
            AdminSistemaMOD.Seleccion = False
            Set AdminSistemaMOD.ParentWindow = Nothing
            AdminSistemaMOD.Show
        Case 2:
            Unload AdminUsuariosMOD
            Set AdminUsuariosMOD = Nothing
            AdminUsuariosMOD.ReadOnly = False
            AdminUsuariosMOD.Seleccion = False
            Set AdminUsuariosMOD.ParentWindow = Nothing
            AdminUsuariosMOD.Show
        Case 3:
            Unload AdminPersonasMOD
            Set AdminPersonasMOD = Nothing
            AdminPersonasMOD.ReadOnly = False
            AdminPersonasMOD.Seleccion = False
            Set AdminPersonasMOD.ParentWindow = Nothing
            AdminPersonasMOD.Show
        Case 4:
            Unload AdminModulosMOD
            Set AdminModulosMOD = Nothing
            AdminModulosMOD.ReadOnly = False
            AdminModulosMOD.Seleccion = False
            Set AdminModulosMOD.ParentWindow = Nothing
            AdminModulosMOD.Show
        Case 5:
            Unload AdminGruposMOD
            Set AdminGruposMOD = Nothing
            AdminGruposMOD.ReadOnly = False
            AdminGruposMOD.Seleccion = False
            Set AdminGruposMOD.ParentWindow = Nothing
            AdminGruposMOD.Show
        Case 6:
            Unload AdminPerfilesMOD
            Set AdminPerfilesMOD = Nothing
            AdminPerfilesMOD.ReadOnly = False
            AdminPerfilesMOD.Seleccion = False
            Set AdminPerfilesMOD.ParentWindow = Nothing
            AdminPerfilesMOD.Show
        Case 7:
            Unload AdminIdentificacionesMOD
            Set AdminIdentificacionesMOD = Nothing
            AdminIdentificacionesMOD.ReadOnly = False
            AdminIdentificacionesMOD.Seleccion = False
            Set AdminIdentificacionesMOD.ParentWindow = Nothing
            AdminIdentificacionesMOD.Show
        Case 8:
            Unload PermisosMOD
            Set PermisosMOD = Nothing
            Set PermisosMOD.ParentWindow = Nothing
            PermisosMOD.Show
        Case 9:
            Unload ReporteMovimientosMOD
            Set ReporteMovimientosMOD = Nothing
            Set ReporteMovimientosMOD.ParentWindow = Nothing
            ReporteMovimientosMOD.Desde = Date
            ReporteMovimientosMOD.Hasta = Date
            ReporteMovimientosMOD.Show
        Case 10:
            If EsPuestoDeControl Then
               'Shell App.Path & "\puesto.exe", vbNormalFocus
                Unload PuestoControlManualMOD
                Set PuestoControlManualMOD = Nothing

                Set PuestoControlManualMOD.ParentWindow = Nothing
                PuestoControlManualMOD.Show
                PuestoControlManualMOD.Lectura_Doc_Cruda.SetFocus
                PuestoControlManualMOD.Opt_Conductor.value = True
                PuestoControlManualMOD.txtDocumento.ListIndex = 4
                
                PuestoControlManualMOD.txtRChasta.Locked = False
                PuestoControlManualMOD.txtRChasta = Date
                PuestoControlManualMOD.txtPShasta.Locked = False        'Habilitamos las fechas desde y hasta para que se puedan ingresar
                PuestoControlManualMOD.txtPShasta = Date                'por teclado y aumentar la velocidad de ingreso para no depender
                PuestoControlManualMOD.txtPAhasta.Locked = False        'solo de los calendarios "pic"
                PuestoControlManualMOD.txtPAhasta = Date
                PuestoControlManualMOD.txtRCdesde.Locked = False
                PuestoControlManualMOD.txtRCdesde = Date
                PuestoControlManualMOD.txtPSdesde.Locked = False
                PuestoControlManualMOD.txtPSdesde = Date
                PuestoControlManualMOD.txtPAdesde.Locked = False
                PuestoControlManualMOD.txtPAdesde = Date
                PuestoControlManualMOD.txtPSempresa.Locked = False
                PuestoControlManualMOD.txtPSempresa = "COMPANIA SEGUROS"
                
                InitMSComm
                
            Else
                MsgBox "Este módulo no se encuentra activado, " & _
                  vbCrLf & "por favor contácte a su Proveedor.", vbCritical, "ATENCION"
            End If
        Case 11:
            Unload AdminAutosMOD
            Set AdminAutosMOD = Nothing
            AdminAutosMOD.ReadOnly = False
            AdminAutosMOD.Seleccion = False
            Set AdminAutosMOD.ParentWindow = Nothing
            AdminAutosMOD.Show
            
        Case 12:
            Unload MovimientosMOD
            Set MovimientosMOD = Nothing
            Set MovimientosMOD.ParentWindow = Nothing
            MovimientosMOD.Show
            
        Case 13:
              Unload frm_Rep_Gral
              'Shell "RepPres.exe", vbNormalFocus
              frm_Rep_Gral.Show
              
        Case 14:
            Unload AdminLotesMOD
            Set AdminLotesMOD = Nothing
            AdminLotesMOD.ReadOnly = False
            AdminLotesMOD.Seleccion = False
            Set AdminLotesMOD.ParentWindow = Nothing
            AdminLotesMOD.Show
          
        
          Case 15:
            Unload frm_BackUp
        '    Set ValidaTicketMOD = Nothing
        '    'ValidaTicketMOD.ReadOnly = True
        '    'ValidaTicketMOD.Seleccion = True
        '    Set ValidaTicketMOD.ParentWindow = Nothing
            frm_BackUp.Show
            
        Case 16:
            Unload PreautorizadasMOD
            Set PreautorizadasMOD = Nothing
            PreautorizadasMOD.ReadOnly = True
            PreautorizadasMOD.Seleccion = True
            Set PreautorizadasMOD.ParentWindow = Nothing
            PreautorizadasMOD.Show
            
            
        
        Case 17
            FrmCamping.Show
        
        End Select
        MainToolBar.Enabled = True
                
Exit Sub
Salir:
    MsgBox "MainMOD.MainToolBar_Button_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub Rlogin_Click()

On Error GoTo Salir
    Unload ReporteLoginMOD
    Set ReporteLoginMOD.ParentWindow = Nothing
    ReporteLoginMOD.Show
Exit Sub
Salir:
    MsgBox "MainMOD.ReporteLogin" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"

End Sub

Private Sub Salir_Click()
    If MsgBox("Está seguro de salir del Sistema?", vbYesNo, "Atención") = vbYes Then
        Set DbRecordsetSYS = Nothing
        Set DbCommandSYS = Nothing
        Set DbConnectionSYS = Nothing
        End
    End If
End Sub

Private Sub CambiarClaveAcceso_Click()
On Error GoTo Salir
    CambioDeClaveMOD.Show vbModal
Exit Sub
Salir:
    MsgBox "MainMOD.CambiarClaveAcceso_Click" & vbCrLf & _
           "Descripción: " & Err.Description & vbCrLf & _
           "Número error: " & Err.Number, _
           vbCritical, _
           "Error en Ejecución"
End Sub

Private Sub AcercaDe_Click()
    AcercaDeMOD.Show vbModal
End Sub

' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'   FUNCIONES GLOBALES DEL MODULO PRINCIPAL DE LA PLATAFORMA
' ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'Private Sub cmdTestWPC_Click()
'On Error GoTo Salir
'    TestWpcSvrMOD.Show
'Exit Sub
'Salir:
'    MsgBox "MainMOD.cmdTestWPC" & vbCrLf & _
'           "Descripción: " & Err.Description & vbCrLf & _
'           "Número error: " & Err.Number, _
'           vbCritical, _
'           "Error en Ejecución"
'End Sub

Public Sub setStatusMessage(message As String)
    StatusBar1.SimpleText = message
End Sub

Public Sub UpdateWindow()
End Sub

Sub actualizarLocalizacion()
    MainMOD.IndiceAyuda.Caption = localizar(MainMOD.IndiceAyuda.name)
    MainMOD.ConfigEstacionTrabajo.Caption = localizar(MainMOD.ConfigEstacionTrabajo.name)
    MainMOD.ExtenderSistema.Caption = localizar(MainMOD.ExtenderSistema.name)
    MainMOD.AdminSistema.Caption = localizar(MainMOD.AdminSistema.name)
    MainMOD.AdminUsuarios.Caption = localizar(MainMOD.AdminUsuarios.name)
    MainMOD.AdminPersonas.Caption = localizar(MainMOD.AdminPersonas.name)
    'MainMOD.AdminLotes.Caption = localizar(MainMOD.AdminLotes.name)
    MainMOD.AdminModulos.Caption = localizar(MainMOD.AdminModulos.name)
    MainMOD.AdminGrupos.Caption = localizar(MainMOD.AdminGrupos.name)
    MainMOD.AdminPerfiles.Caption = localizar(MainMOD.AdminPerfiles.name)
    MainMOD.AdminIdentificaciones.Caption = localizar(MainMOD.AdminIdentificaciones.name)
    MainMOD.AdminAutos.Caption = localizar(MainMOD.AdminAutos.name)
    MainMOD.InstalarActualizacion.Caption = localizar(MainMOD.InstalarActualizacion.name)
    MainMOD.Permisos.Caption = localizar(MainMOD.Permisos.name)
    MainMOD.PuestoControl.Caption = localizar(MainMOD.PuestoControl.name)
    MainMOD.ReporteDeMovimientos.Caption = localizar(MainMOD.ReporteDeMovimientos.name)
    MainMOD.ReporteMovimientos.Caption = localizar(MainMOD.ReporteMovimientos.name)
    MainMOD.mnuPrincipal.Caption = localizar(MainMOD.mnuPrincipal.name)
    MainMOD.Sistema.Caption = localizar(MainMOD.Sistema.name)
    MainMOD.Modulos.Caption = localizar(MainMOD.Modulos.name)
    MainMOD.ControlAcceso.Caption = localizar(MainMOD.ControlAcceso.name)
    MainMOD.General.Caption = localizar(MainMOD.General.name)
    MainMOD.Ayuda.Caption = localizar(MainMOD.Ayuda.name)
    MainMOD.CambiarClaveAcceso.Caption = localizar(MainMOD.CambiarClaveAcceso.name)
    MainMOD.AcercaDe.Caption = localizar(MainMOD.AcercaDe.name)
    MainMOD.Salir.Caption = localizar(MainMOD.Salir.name)

    MainMOD.MainToolBar.Buttons(1).Caption = localizar("AdminSistemaToolbar")
    MainMOD.MainToolBar.Buttons(2).Caption = localizar("AdminUsuariosToolbar")
    MainMOD.MainToolBar.Buttons(3).Caption = localizar("AdminPersonasToolbar")
    MainMOD.MainToolBar.Buttons(4).Caption = localizar("AdminModulosToolbar")
    MainMOD.MainToolBar.Buttons(5).Caption = localizar("AdminGruposToolbar")
    MainMOD.MainToolBar.Buttons(6).Caption = localizar("AdminPerfilesToolbar")
    MainMOD.MainToolBar.Buttons(7).Caption = localizar("AdminIdentificacionesToolbar")
    MainMOD.MainToolBar.Buttons(8).Caption = localizar("PermisosToolbar")
    MainMOD.MainToolBar.Buttons(9).Caption = localizar("ReporteMovimientosToolbar")
    MainMOD.MainToolBar.Buttons(10).Caption = localizar("PuestoControlManualToolbar")
    MainMOD.MainToolBar.Buttons(11).Caption = localizar("AdminAutosToolbar")
    MainMOD.MainToolBar.Buttons(12).Caption = localizar("MovimientosToolbar")
    'MainMOD.MainToolBar.Buttons(14).Caption = localizar("AdminLotesToolbar")

End Sub


Private Function EsPuestoDeControl() As Boolean
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
    Set Rst = New ADODB.RecordSet
    Rst.Open "SELECT wksmdl.ModuloID FROM wks INNER JOIN  wksmdl ON (wks.workstationID = wksmdl.workstationID) " & _
        "  WHERE wks.nombre = '" & getWindowsComputerName & "'", DbConnectionSYS, adOpenForwardOnly, adLockReadOnly
    
    If Not Rst.EOF Then
        EsPuestoDeControl = True
    End If
    
    Set Rst = Nothing
    
    Exit Function
    
Salir:
   MsgBox Err.Description
End Function




Private Sub Refrescar_conexion_Motor_MySQL()
On Error GoTo Terminar
  
  MainMOD.Tmr.Enabled = False
  MainMOD.Enabled = False
  MainMOD.MousePointer = 11
  
    If Not Refresco_Conexion_MySql(DbConnectionSYS) Then
       'Call MainEntorno.CloseBD 'de todas formas cierro mi conexion
       'Sleep (1000)             'meto una demora de 1 segundo
       'DoEvents
       DesconnectDatabase
       'Sleep (5000)             'meto una demora de 1 segundo            ' Jorge
       Sleep (1000)
       If Not connectDatabase Then
          MsgBox "La conexion a la base de Datos: " & _
                 "VideoMan" & vbCrLf & "Se encuentra cerrada" & vbCrLf & _
                 "Verifique conexion y reinicie el sistema", vbCritical
                 
Terminar:
          'afa 072009 End
          ' si no esta la base no cierro el programa, intento despues reconectarme
       End If
        'Terminar_programa
       
    End If
  
  MainMOD.Tmr.Enabled = True
  MainMOD.Enabled = True
  MainMOD.MousePointer = 0
  MainMOD.Refresh
End Sub

''''''''''''''''''''''''''''''''''''''''



Public Function Refresco_Conexion_MySql(ByRef Cnx As ADODB.Connection) As Boolean
Dim Cmd As ADODB.Command
Dim Rst As ADODB.RecordSet
On Error GoTo Salir
  
  Set Cmd = New ADODB.Command
  Cmd.ActiveConnection = Cnx
  Cmd.CommandText = "SELECT 1+1"
  Set Rst = Cmd.Execute()
   
  Refresco_Conexion_MySql = Not Rst.EOF
      
Salir:
'MsgBox Err.Description
Set Cmd = Nothing
Set Rst = Nothing
End Function

Private Sub Tmr_Timer()
   
   If refresco_conexion_MySql_i < refresco_conexion_MySql_T Then
     refresco_conexion_MySql_i = refresco_conexion_MySql_i + 1
   Else
     Call Refrescar_conexion_Motor_MySQL
     refresco_conexion_MySql_i = 0
   End If
End Sub
Public Sub ReadLectorSerialQR()

Dim Char As String
Dim TimeOut As Long
Dim ReceivedData As String
Dim i As Integer

  Char = ""
  ReceivedData = ""
  TimeOut = 700 + timeGetTime()
  If Not (MainMOD.MSComm.InBufferCount > 0) Then
   Exit Sub
  End If
  Do
    If (MainMOD.MSComm.InBufferCount > 0) Then
      Char = MainMOD.MSComm.Input
      ReceivedData = ReceivedData & Char
    End If
  Loop Until timeGetTime() >= TimeOut
  
  ReceivedData = Replace(ReceivedData, "@", Chr$(34))
  PuestoControlManualMOD.Lectura_Doc_Cruda.Text = ReceivedData
  PuestoControlManualMOD.Lectura_Doc_Cruda_KeyPressDoc (13)

End Sub



Public Sub InitMSComm()

On Error GoTo Errores
  
  
  If PUERTO_SERIE_LECTORQR_SYS = 0 Then                ' Si el Puerto seleccionado es "0" significa que no trabaja
   Exit Sub                                         ' con ningun lector serial QR
  End If
  
  If MainMOD.MSComm.PortOpen Then                   ' Si ya esta activado se va y no inicializa
    Exit Sub
  End If
  
  MainMOD.MSComm.CommPort = PUERTO_SERIE_LECTORQR_SYS
  'CACommMain.MSComm.CommPort = Context.ComPort
  'CACommMain.MSComm.Settings = Str(Context.Baud) & _
                                "," & Context.Paridad & _
                                "," & Str(Context.DataBits) & _
                                "," & Str(Context.StopBits)
  'CACommMain.MSComm.Handshaking = comNone
  'CACommMain.MSComm.InputLen = 0
  'CACommMain.MSComm.RThreshold = 0 '1
  'cerrar_previo
  'DoEvents
  'DoEvents
   MainMOD.MSComm.PortOpen = True
    
Exit Sub
Errores:
  MsgBox "Error de Inicializacion del Puerto Serie para lector QR Serial !!!! Por favor Seleccione el Puerto adecuado..", vbCritical, "Atención"
 
'End                           ' Finaliza el Programa
End Sub


