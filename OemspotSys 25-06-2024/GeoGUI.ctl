VERSION 5.00
Begin VB.UserControl GeoGUI 
   ClientHeight    =   4485
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4575
   KeyPreview      =   -1  'True
   ScaleHeight     =   4485
   ScaleWidth      =   4575
   Begin VB.TextBox txtgrupos 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2160
      MaxLength       =   32
      TabIndex        =   6
      Top             =   3000
      Width           =   2295
   End
   Begin VB.TextBox txtPsw 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2160
      MaxLength       =   32
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   2520
      Width           =   2295
   End
   Begin VB.TextBox txtUsuario 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2160
      MaxLength       =   32
      TabIndex        =   4
      Top             =   2040
      Width           =   2295
   End
   Begin VB.CommandButton cmdCerrar 
      Caption         =   "Cerrar"
      Height          =   255
      Left            =   3000
      TabIndex        =   8
      Top             =   4080
      Width           =   1335
   End
   Begin VB.CommandButton cmdGuardar 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   1440
      TabIndex        =   7
      Top             =   4080
      Width           =   1335
   End
   Begin VB.TextBox txtNombre 
      Height          =   285
      Left            =   2160
      MaxLength       =   32
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
   Begin VB.TextBox txtip 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2160
      MaxLength       =   32
      TabIndex        =   1
      Top             =   600
      Width           =   2295
   End
   Begin VB.TextBox txtCmdPort 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2160
      MaxLength       =   32
      TabIndex        =   2
      Top             =   1080
      Width           =   2295
   End
   Begin VB.TextBox txtdataPort 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2160
      MaxLength       =   32
      TabIndex        =   3
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Grupos (separar por coma)"
      Height          =   495
      Left            =   120
      TabIndex        =   15
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Password"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   2520
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Usuario:"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   2040
      Width           =   1935
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4440
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Label lblUsuario 
      Alignment       =   1  'Right Justify
      Caption         =   "Nombre"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblPasswordActual 
      Alignment       =   1  'Right Justify
      Caption         =   "Ip Host:"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   600
      Width           =   1935
   End
   Begin VB.Label lblPasswordNueva 
      Alignment       =   1  'Right Justify
      Caption         =   "Command Port:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label lblRepitaPasswordNueva 
      Alignment       =   1  'Right Justify
      Caption         =   "Data Port:"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1560
      Width           =   1935
   End
End
Attribute VB_Name = "GeoGUI"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public ParentWindow As Object
Private AsistenteDataObject As AsistenteDAO
Private GeoDataObject As GeoDAO
Public db_GeoID As Long

Private Sub UserControl_Initialize()
    Set AsistenteDataObject = New AsistenteDAO
    Set GeoDataObject = New GeoDAO
End Sub

Private Sub UserControl_Terminate()
    Set AsistenteDataObject = Nothing
    Set GeoDataObject = Nothing
End Sub

Sub init()
    GeoDataObject.geoID = db_GeoID
    If AsistenteDataObject.retrieve(GeoDataObject) Then
        txtNombre.Text = GeoDataObject.Nombre
        txtip.Text = GeoDataObject.IpHost
        txtCmdPort.Text = GeoDataObject.CmdPort
        txtdataPort.Text = GeoDataObject.DataPort
        txtUsuario.Text = GeoDataObject.User
        txtPsw.Text = GeoDataObject.Psw
    End If
    
    Dim rec As ADODB.RecordSet
    Dim sql As String
    Set rec = New ADODB.RecordSet
    
    
    sql = "select grupoModulos as grupo from geogrpmdl where geoId =" & db_GeoID
    
    Set rec = DbConnectionSYS.Execute(sql)
    
    txtgrupos.Text = ""
    
    While Not rec.EOF
        If txtgrupos <> "" Then
            txtgrupos = txtgrupos & "," & rec!grupo
        Else
            txtgrupos = rec!grupo
        End If
        rec.MoveNext
    Wend
    
    
    
End Sub

Private Sub CmdCerrar_Click()
    ParentWindow.Destroy
End Sub

Private Sub UserControl_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyEscape Then
        CmdCerrar_Click
    End If
End Sub

Function datosValidos() As Boolean
    If txtNombre.Text = "" Then
        MsgBox "Ingrese Nombre", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    If txtip.Text = "" Then
        MsgBox "Ingrese una Ip", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    If txtCmdPort.Text = "" Or Not IsNumeric(txtCmdPort.Text) Then
        MsgBox "el command port debe ser númerico", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    If txtdataPort.Text = "" Or Not IsNumeric(txtdataPort.Text) Then
        MsgBox "el data port debe ser númerico", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If

    If txtgrupos.Text = "" Then
        MsgBox "Configure un grupo para la Geo", vbCritical, "Atención"
        datosValidos = False
        Exit Function
    End If
    
'    Dim rec As ADODB.RecordSet
'    Dim sql As String
'
'    Set rec = New ADODB.RecordSet
'
'    sql = "select geoid from geogrpmdl where grupomodulos in(" & txtgrupos & ")"
'    Set rec = DbConnectionSYS.Execute(sql)
'    If Not rec.EOF Then
'        MsgBox "uno de los grupos seleccionados ya contine una geo asociada, verifique", vbCritical, "Atención"
'        datosValidos = False
'        Exit Function
'    End If
    
    datosValidos = True
End Function

Private Sub cmdGuardar_Click()
    
    If datosValidos Then
        GeoDataObject.geoID = db_GeoID
            GeoDataObject.Nombre = txtNombre
            GeoDataObject.IpHost = txtip
            GeoDataObject.CmdPort = txtCmdPort
            GeoDataObject.DataPort = txtdataPort
            GeoDataObject.User = txtUsuario
            GeoDataObject.Psw = txtPsw
        
        
        
        If db_GeoID <> 0 Then
            If AsistenteDataObject.update(GeoDataObject) Then
                MsgBox "El registro se ha actualizado", vbInformation, "Atención"
                ParentWindow.Destroy
            Else
                MsgBox "No se puede actualizar el registro", vbCritical, "Atención"
                Exit Sub
            End If
    
        Else
            
           
            GeoDataObject.geoID = AsistenteDataObject.create(GeoDataObject, True)
            
        
        
        

            If GeoDataObject.geoID >= 0 Then
                MsgBox "El registro se ha creado", vbInformation, "Atención"
                ParentWindow.Destroy
            Else
                MsgBox "No se puede crear el registro", vbCritical, "Atención"
                Exit Sub
            End If


        End If
    
            
        'grabo en la base los grupo cargados
        Dim sql As String
    
        'borro los existentes y los reemplazo
        sql = "delete from geogrpmdl where geoId =" & GeoDataObject.geoID
        DbConnectionSYS.Execute (sql)
    
        Dim grupo() As String
        Dim i As Integer
        grupo = Split(txtgrupos, ",")
        
        On Error GoTo mal_grupos
        For i = LBound(grupo) To UBound(grupo)
        
            sql = "insert into geogrpmdl (geoid,grupomodulos) values (" & GeoDataObject.geoID & "," & CLng(grupo(i)) & ")"
            DbConnectionSYS.Execute (sql)
        Next
        Exit Sub
    End If
    
    Exit Sub

mal_grupos:
    MsgBox "Verifique los grupos configurados, un grupo ya contiene una geo asociada" + vbCrLf + "Recuerde que cada grupo puede tener solo una geo asociada", vbInformation
    


End Sub
