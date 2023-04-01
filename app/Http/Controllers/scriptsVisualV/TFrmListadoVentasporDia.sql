VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{51FDD105-6381-43BC-BAC1-854E712CC2C4}#1.0#0"; "dianabusqueda2022.ocx"
Object = "{D9F5B1E5-B309-4F14-8DC7-01EF29205216}#1.0#0"; "dianacombo2022.ocx"
Object = "{28AD0AC0-2E58-47B9-A0D1-3F6DE87E5309}#1.0#0"; "dianabarra2022.ocx"
Begin VB.Form FrmListadoVentasporDia 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8955
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   18105
   Icon            =   "FrmListadoVentasporDia.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8955
   ScaleWidth      =   18105
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   285
      Left            =   14670
      TabIndex        =   6
      Top             =   1035
      Visible         =   0   'False
      Width           =   960
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FEFDE0&
      Caption         =   "Parametros de Consulta"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   1140
      Left            =   135
      TabIndex        =   4
      Top             =   585
      Width           =   9780
      Begin VB.ComboBox CobMes 
         BeginProperty Font 
            Name            =   "Bahnschrift Light SemiCondensed"
            Size            =   12
            Charset         =   0
            Weight          =   300
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   405
         ItemData        =   "FrmListadoVentasporDia.frx":46B2
         Left            =   1440
         List            =   "FrmListadoVentasporDia.frx":46B4
         Style           =   2  'Dropdown List
         TabIndex        =   12
         Top             =   585
         Width           =   1770
      End
      Begin VB.ComboBox CobAño 
         BeginProperty Font 
            Name            =   "Bahnschrift Light SemiCondensed"
            Size            =   12
            Charset         =   0
            Weight          =   300
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   405
         ItemData        =   "FrmListadoVentasporDia.frx":46B6
         Left            =   135
         List            =   "FrmListadoVentasporDia.frx":46B8
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   585
         Width           =   1140
      End
      Begin DianaCombo2022.DsaCombox CobInPuntoVenta 
         Height          =   405
         Left            =   9810
         TabIndex        =   7
         Top             =   270
         Visible         =   0   'False
         Width           =   4230
         _ExtentX        =   7461
         _ExtentY        =   714
         CobWidth        =   2985
         TexWidth        =   1095
         TexVisible      =   -1  'True
         Bloqueado       =   0   'False
         TipoApariencia  =   0
         TexFonzise      =   0
         TexFonName      =   2
         TexAltura       =   405
      End
      Begin DianaBusqueda.BusquedaDiana BusGrupoPuntoVenta 
         Height          =   450
         Left            =   4545
         TabIndex        =   13
         Top             =   585
         Width           =   4605
         _ExtentX        =   8123
         _ExtentY        =   794
         CodigoWidth     =   1095
         NombreWidth     =   2985
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
         TipoApariencia  =   0
         TipoAlineacion  =   1
         TexFonName      =   2
         TexFonzise      =   12
         TexAltura       =   405
      End
      Begin DianaBusqueda.BusquedaDiana BusAgencias 
         Height          =   450
         Left            =   4545
         TabIndex        =   14
         Top             =   135
         Width           =   4605
         _ExtentX        =   8123
         _ExtentY        =   794
         CodigoWidth     =   1095
         NombreWidth     =   2985
         TipoBusqueda    =   0
         TooltipBoton    =   ""
         TexVisible      =   0   'False
         TipoApariencia  =   0
         TipoAlineacion  =   1
         TexFonName      =   2
         TexFonzise      =   12
         TexAltura       =   405
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Grupo"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   300
         Left            =   3915
         TabIndex        =   15
         Top             =   630
         Width           =   585
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Mes"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   300
         Left            =   1440
         TabIndex        =   11
         Top             =   270
         Width           =   375
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Empresa"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   300
         Left            =   3690
         TabIndex        =   8
         Top             =   225
         Width           =   825
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Año"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   300
         Left            =   135
         TabIndex        =   5
         Top             =   270
         Width           =   375
      End
   End
   Begin VB.CommandButton Cmdplano 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Left            =   11925
      Picture         =   "FrmListadoVentasporDia.frx":46BA
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   945
      Width           =   1400
   End
   Begin Crystal.CrystalReport TreCompras 
      Left            =   135
      Top             =   900
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   5535
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   3
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoVentasporDia.frx":697C
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoVentasporDia.frx":6EC0
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoVentasporDia.frx":6FCC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   6390
      TabIndex        =   1
      Top             =   90
      Visible         =   0   'False
      Width           =   4515
      _ExtentX        =   7964
      _ExtentY        =   423
      _Version        =   393216
      Appearance      =   1
      Max             =   10000
      Scrolling       =   1
   End
   Begin MSComDlg.CommonDialog ComArchivo 
      Left            =   4950
      Top             =   -45
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin DianaBarra.DianaOperaciones BarraOperaciones 
      Height          =   945
      Left            =   10035
      TabIndex        =   2
      Top             =   630
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
      TipoBusqueda    =   0
   End
   Begin Crystal.CrystalReport ResumenDia 
      Left            =   15930
      Top             =   135
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGVentas 
      Height          =   7035
      Left            =   135
      TabIndex        =   9
      Top             =   1755
      Width           =   17760
      _cx             =   31327
      _cy             =   12409
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   16777215
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777215
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   1
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   30
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   1
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
      ComboSearch     =   3
      AutoSizeMouse   =   -1  'True
      FrozenRows      =   0
      FrozenCols      =   0
      AllowUserFreezing=   0
      BackColorFrozen =   0
      ForeColorFrozen =   0
      WallPaperAlignment=   9
      AccessibleName  =   ""
      AccessibleDescription=   ""
      AccessibleValue =   ""
      AccessibleRole  =   24
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Resumen Diario"
      BeginProperty Font 
         Name            =   "Bahnschrift SemiLight SemiConde"
         Size            =   14.25
         Charset         =   0
         Weight          =   350
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   405
      Left            =   0
      TabIndex        =   0
      Top             =   -15
      Width           =   14295
   End
   Begin VB.Menu Menur 
      Caption         =   "Opciones"
      Visible         =   0   'False
      Begin VB.Menu Menu 
         Caption         =   "Resumen de Ventas"
         Index           =   1
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu Menu 
         Caption         =   "Resumen de Ingresos"
         Index           =   3
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu Menu 
         Caption         =   "Resumen de Compras"
         Index           =   5
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   6
      End
      Begin VB.Menu Menu 
         Caption         =   "Resumen de Egresos"
         Index           =   7
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   8
      End
      Begin VB.Menu Menu 
         Caption         =   "Resumen General"
         Index           =   9
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   10
      End
      Begin VB.Menu Menu 
         Caption         =   "Fiscal Diario de Venta"
         Index           =   11
      End
   End
End
Attribute VB_Name = "FrmListadoVentasporDia"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer, tMes As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String
Dim vPuntoDia As New Collection

Private Enum Datos
        NomPunto
        dia
        NomDia
        CantRap
        VentRap
        PromRap
        CantDom
        VentDom
        PromDom
        CantMes
        VentMes
        PromMes
        CantAut
        VentAut
        PromAut
        CantLlev
        VentLlev
        PromLlev
        CantTot
        VentTot
        PromTot
        vLicor
        ValorMeta
        Cumplimiento
        Punto
End Enum


Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - 100
        Me.Height = Y - 650
        
        LblTitle.Width = X - 100
        N = FGVentas.Left + 300
        FGVentas.Width = Me.Width - N
        FGVentas.Height = Me.Height - FGVentas.Top - vHeightFor
                        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As DianaBarra.ResEstado)
        On Error GoTo Salida
        Dim tFechaT As Date
              
        If Permisos(3) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
              
        Progres.Value = 1: Progres.Min = 1
        Progres.Max = 15
        vFiltro = Empty

        Call Limpiar_Grillas
        Call LLenar_VentasyDevoluciones
              
        Progres.Visible = False
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As DianaBarra.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        
        PopupMenu Menur
        
End Sub


Private Sub BusAgencias_Retorno(RowReturn As Collection, ByHelp As Boolean)
        Call Limpiar_Grillas
End Sub

Private Sub BusGrupoPuntoVenta_Retorno(RowReturn As Collection, ByHelp As Boolean)
        Call Limpiar_Grillas
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGVentas.Rows - 1 <= 1 Then MsgBox "No hay información para exportar", vbInformation + vbOKOnly, "Atención": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGVentas.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atención"

End Sub
Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub CobAño_LostFocus()
        Call Limpiar_Grillas
End Sub

Private Sub CobInPuntoVenta_Retorno()
        Sql = "SELECT * FROM PUNTOSVENTAS WHERE PveIdStEmpresa = '" & Empresa & "' AND PveIdInPuntoVenta = " & Trim(CobInPuntoVenta.Text) & ""
        If Buscar_Res(rdoRs, Sql) = BDOk Then
            tNombrePunto = Trim("" & rdoRs!PveStNombre)
            tDireccionPunto = Trim("" & rdoRs!PveStDireccion)
            tCiudadPunto = Trim("" & rdoRs!PveStCiudad)
        End If

End Sub

Private Sub CobMes_LostFocus()
        Select Case CobMes.Text
               Case "Enero":  tMes = 1
               Case "Febrero": tMes = 2
               Case "Marzo": tMes = 3
               Case "Abril": tMes = 4
               Case "Mayo": tMes = 5
               Case "Junio": tMes = 6
               Case "Julio": tMes = 7
               Case "Agosto": tMes = 8
               Case "Septiembre": tMes = 9
               Case "Octubre": tMes = 10
               Case "Noviembre": tMes = 11
               Case "Diciembre": tMes = 12
        End Select
        Call Limpiar_Grillas
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        
        Call AsignarPermisos_Usuarios(Me)
        LblPeriodo.Caption = "Periodo Activo: " + NombreMes(vPeriodoInv(1)) + " - " + Trim(Str(vPeriodoInv(0)))
        Call Formato_Titulo(Me)
        
        tNombrePunto = gNombrePunto
        tDireccionPunto = gDireccionPunto
        tCiudadPunto = gCiudadPunto
        
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
        Dim SetFoc As Object
        Dim FGFocus As VSFlexGrid
        Select Case KeyCode
               Case vbKeyB:
                    'If (Shift = 2) And (BarraOperaciones.BotonActivo(Buscar) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Buscar)
               Case vbKeyI:
                    'If (Shift = 2) And (BarraOperaciones.BotonActivo(Imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Imprimir)
               
        End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
        If KeyAscii = vbKeyReturn Then
            WshShell.SendKeys "{Tab}"
            KeyAscii = 0
        End If
End Sub

Private Sub Form_Load()
        Iempresa = Empresa
        Call Configurar_Pantalla
        Call Obtener_FechaServidor
                
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        Frame1.BackColor = Bcolor1
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = TamañoLetraTitulo
        LblTitle.Height = 315
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        Frame1.BackColor = Bcolor1
                
        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
        
        With CobInPuntoVenta
             .Enabled = True
             .TexAltura = 405
             .TexFonName = fArial
             .TexFonzise = 10
             .CobWidth = 4800
             .TexWidth = 500
             .TexVisible = True
             .ColCamposGL.Add 0, "Código", "PveIdInPuntoVenta", adChar, 1000, True
             .ColCamposGL.Add 1, "Descripción", "PveStNombre", adVarChar, 4000, False
             .ColRet = 1
             .Sql = "SELECT * FROM PUNTOSVENTAS WHERE PveIdStEmpresa = '" & Empresa & "'"
             .ColForeingKey.Add "PveIdInPuntoVenta", "", adChar
             .CampoNul = True
        End With
                             
        With BusAgencias
             .TipoApariencia = mNomrmal
             .Enabled = True
             .TexVisible = True
             .TexAltura = 405
             .TexFonName = fArial
             .TexFonzise = 10
             .CodigoWidth = 600
             .NombreWidth = 4000
             .ColCampos.Add 0, "Codigo", "gmpcodi", adInteger, 1000, False
             .ColCampos.Add 1, "Descripción", "gmpnomb", adVarChar, 6500, True
             .ColRet = 1
             .Sql = "SELECT * FROM AGENCIAVENTAS WHERE gmpesta = '1'"
             .TitleGrid = "LISTADO DE AGENCIAS"
             .ColLlaves.Add "gmpcodi", "", adVarChar
             .TipoBusqueda = BxCompleta
             .TooltipBoton = "Buscar Agencias"
             .Nregistros = vAltaNormal
        End With
                       
        With BusGrupoPuntoVenta
             .TipoApariencia = mNomrmal
             .Enabled = True
             .TexVisible = True
             .TexAltura = 405
             .TexFonName = fArial
             .TexFonzise = 10
             .CodigoWidth = 600
             .NombreWidth = 4000
             .ColCampos.Add 0, "Codigo", "GpvIdInGrupoPuntoVenta", adInteger, 1000, False
             .ColCampos.Add 1, "Descripción", "GpvStDescripcion", adVarChar, 6500, True
             .ColRet = 1
             .Sql = "SELECT * FROM GRUPOPUNTOSVENTAS WHERE GpvIdStEmpresa = '" & Empresa & "'"
             .TitleGrid = "LISTADO GRUPOS PUNTOS VENTA"
             .ColLlaves.Add "GpvIdInGrupoPuntoVenta", "", adVarChar
             .TipoBusqueda = BxCompleta
             .TooltipBoton = "Buscar Grupo Punto Venta"
             .Nregistros = vAltaNormal
        End With
                             
        CobAño.Clear
        CobAño.AddItem "2021": CobAño.AddItem "2022": CobAño.AddItem "2023": CobAño.AddItem "2024"
        CobAño.AddItem "2025": CobAño.AddItem "2026": CobAño.AddItem "2027": CobAño.AddItem "2028"
        CobAño.AddItem "2029": CobAño.AddItem "2030"
        CobAño.Text = Year(FechaServidor)
        CobMes.Clear
        CobMes.AddItem "Enero": CobMes.AddItem "Febrero": CobMes.AddItem "Marzo": CobMes.AddItem "Abril"
        CobMes.AddItem "Mayo": CobMes.AddItem "Junio": CobMes.AddItem "Julio": CobMes.AddItem "Agosto"
        CobMes.AddItem "Septiembre": CobMes.AddItem "Octubre": CobMes.AddItem "Noviembre": CobMes.AddItem "Diciembre"
        Call Meses(Month(FechaServidor))
        CobMes.Text = Texto
        tMes = Month(FechaServidor)
        
        Call Define_Grids(FGVentas)
                
        Idx = 0
        Call DGRILLA
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        
        With FGVentas
             .Rows = 2
             .Cols = 25
             .FixedCols = 0
             .FixedRows = 2
             .FontName = gFormatoLetra
             .FontSize = 10 'gTamañoLetra
             .BackColorSel = gColorSeleccion
             
             .BackColor = ColorGrilla
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = &H40C0&
             .ForeColorSel = vbWhite
             .ForeColorFixed = vColorFixed
             .AllowUserResizing = flexResizeColumns
             .ScrollBars = flexScrollBarBoth
             .ExtendLastCol = False
             .OutlineCol = Datos.NomPunto
             .OutlineBar = flexOutlineBarComplete
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .Cell(flexcpFontBold, 0, 0, 1, .Cols - 1) = True
             .TextMatrix(0, Datos.dia) = "MES": .TextMatrix(0, Datos.NomDia) = "MES"
             .TextMatrix(0, Datos.CantRap) = "VENTA RAPPI": .TextMatrix(0, Datos.VentRap) = "VENTA RAPPI": .TextMatrix(0, Datos.PromRap) = "VENTA RAPPI"
             .TextMatrix(0, Datos.CantDom) = "VENTA DOMICILIO": .TextMatrix(0, Datos.VentDom) = "VENTA DOMICILIO": .TextMatrix(0, Datos.PromDom) = "VENTA DOMICILIO"
             .TextMatrix(0, Datos.CantMes) = "VENTA MESAS": .TextMatrix(0, Datos.VentMes) = "VENTA MESAS": .TextMatrix(0, Datos.PromMes) = "VENTA MESAS"
             .TextMatrix(0, Datos.CantLlev) = "VENTA PARA LLEVAR": .TextMatrix(0, Datos.VentLlev) = "VENTA PARA LLEVAR": .TextMatrix(0, Datos.PromLlev) = "VENTA PARA LLEVAR"
             .TextMatrix(0, Datos.CantAut) = "VENTA AUTOSERVICIO": .TextMatrix(0, Datos.VentAut) = "VENTA AUTOSERVICIO": .TextMatrix(0, Datos.PromAut) = "VENTA AUTOSERVICIO"
             .TextMatrix(0, Datos.CantTot) = "TOTAL VENTA DEL DIA": .TextMatrix(0, Datos.VentTot) = "TOTAL VENTA DEL DIA": .TextMatrix(0, Datos.PromTot) = "TOTAL VENTA DEL DIA"
             .TextMatrix(0, Datos.vLicor) = "VENTA LICOR": .TextMatrix(1, Datos.vLicor) = "VENTA LICOR"
             .TextMatrix(0, Datos.ValorMeta) = "VALOR META": .TextMatrix(1, Datos.ValorMeta) = "VALOR META"
             .TextMatrix(0, Datos.Cumplimiento) = "%CUMP": .TextMatrix(1, Datos.Cumplimiento) = "%CUMP"
             '.TextMatrix(0, Datos.Punto) = "Punto": .TextMatrix(1, Datos.Punto) = "Punto"
             .TextMatrix(0, Datos.NomPunto) = "Punto de Venta": .TextMatrix(1, Datos.NomPunto) = "Punto de Venta"
             
             .MergeCells = flexMergeFixedOnly
             For K = 0 To .Cols - 1
                 .MergeCol(K) = True
             Next K
             .MergeRow(0) = True
             .TextMatrix(1, Datos.dia) = "Día"
             .TextMatrix(1, Datos.NomDia) = "Día Semana"
             .TextMatrix(1, Datos.CantRap) = "Cant."
             .TextMatrix(1, Datos.VentRap) = "Venta"
             .TextMatrix(1, Datos.PromRap) = "Promedio"
             .TextMatrix(1, Datos.CantDom) = "Cant."
             .TextMatrix(1, Datos.VentDom) = "Venta"
             .TextMatrix(1, Datos.PromDom) = "Promedio"
             .TextMatrix(1, Datos.CantMes) = "Cant."
             .TextMatrix(1, Datos.VentMes) = "Venta"
             .TextMatrix(1, Datos.PromMes) = "Promedio"
             .TextMatrix(1, Datos.CantLlev) = "Cant."
             .TextMatrix(1, Datos.VentLlev) = "Venta"
             .TextMatrix(1, Datos.PromLlev) = "Promedio"
             .TextMatrix(1, Datos.CantAut) = "Cant."
             .TextMatrix(1, Datos.VentAut) = "Venta"
             .TextMatrix(1, Datos.PromAut) = "Promedio"
             .TextMatrix(1, Datos.CantTot) = "Cant."
             .TextMatrix(1, Datos.VentTot) = "Venta"
             .TextMatrix(1, Datos.PromTot) = "Promedio"
             
             .ColFormat(Datos.CantRap) = "#,###"
             .ColFormat(Datos.VentRap) = "#,###"
             .ColFormat(Datos.PromRap) = "#,###"
             .ColFormat(Datos.CantDom) = "#,###"
             .ColFormat(Datos.VentDom) = "#,###"
             .ColFormat(Datos.PromDom) = "#,###"
             .ColFormat(Datos.CantMes) = "#,###"
             .ColFormat(Datos.VentMes) = "#,###"
             .ColFormat(Datos.PromMes) = "#,###"
             .ColFormat(Datos.CantLlev) = "#,###"
             .ColFormat(Datos.VentLlev) = "#,###"
             .ColFormat(Datos.PromLlev) = "#,###"
             .ColFormat(Datos.CantAut) = "#,###"
             .ColFormat(Datos.VentAut) = "#,###"
             .ColFormat(Datos.PromAut) = "#,###"
             .ColFormat(Datos.CantTot) = "#,###"
             .ColFormat(Datos.VentTot) = "#,###"
             .ColFormat(Datos.PromTot) = "#,###"
             .ColFormat(Datos.vLicor) = "#,###"
             .ColFormat(Datos.ValorMeta) = "#,###"
             .ColFormat(Datos.Cumplimiento) = "#,###.00"
             
             .ColWidth(Datos.Punto) = 600
             .ColWidth(Datos.NomPunto) = 2500
             .ColWidth(Datos.dia) = 600
             .ColWidth(Datos.NomDia) = 1300
             .ColWidth(Datos.CantRap) = 700
             .ColWidth(Datos.VentRap) = 1500
             .ColWidth(Datos.PromRap) = 1000
             .ColWidth(Datos.CantDom) = 700
             .ColWidth(Datos.VentDom) = 1500
             .ColWidth(Datos.PromDom) = 1000
             .ColWidth(Datos.CantMes) = 700
             .ColWidth(Datos.VentMes) = 1500
             .ColWidth(Datos.PromMes) = 1000
             .ColWidth(Datos.CantLlev) = 700
             .ColWidth(Datos.VentLlev) = 1500
             .ColWidth(Datos.PromLlev) = 1000
             .ColWidth(Datos.CantAut) = 700
             .ColWidth(Datos.VentAut) = 1500
             .ColWidth(Datos.PromAut) = 1000
             .ColWidth(Datos.CantTot) = 700
             .ColWidth(Datos.VentTot) = 1500
             .ColWidth(Datos.PromTot) = 1000
             .ColWidth(Datos.vLicor) = 1500
             .ColWidth(Datos.ValorMeta) = 1500
             .ColWidth(Datos.Cumplimiento) = 800
             
             .ColHidden(Datos.Punto) = True
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 1, .Cols - 1) = flexAlignCenterCenter
        End With
        
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Call BarraOperaciones.Estado_Botones
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              f = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move f + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Menu_Click(Index As Integer)
        On Error GoTo Salida
'        Select Case Index
'               Case 1: Call Imprimir_VentasyNC
'               Case 3: Call Imprimer_Ingresos
'               Case 5: Call Imprimir_Compras
'               Case 7: Call Imprimir_Egresos
'               Case 9: Call Imprimir_General
'               Case 11: Call Imprimir_Fiscal_Diario
'        End Select
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub LLenar_VentasyDevoluciones()
        On Error GoTo Salida
        Dim tFechaDia As Date, tDias
        Set vPuntoDia = Nothing
        
        If tMes = 12 Then
            tDias = 31
        Else
            tFechaDia = "01-" & (tMes + 1) & "-" & CobAño.Text: tFechaDia = tFechaDia - 1
            tDias = Day(tFechaDia)
        End If
        
        With FGVentas
              .Rows = 2
               
              .AddItem ""
              DoGroup FGVentas, FGVentas.Rows - 1, 1
              .TextMatrix(.Rows - 1, Datos.NomDia) = "TOTALES"
              .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
              .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
              itemVentas = .Rows - 1
              
              vFiltro = Empty
              If Trim(BusAgencias.Text) <> Empty Then
                  vFiltro = " AND PveIdInAgencia = '" & BusAgencias.Text & "' "
              End If
              If Trim(BusGrupoPuntoVenta.Text) <> Empty Then
                  vFiltro = vFiltro & " AND PveIdInGrupoPuntoVenta = " & Val(BusGrupoPuntoVenta.Text) & ""
              End If
              
              Sql = "SELECT A.*,B.MpvInValor FROM PUNTOSVENTAS A " & _
                    "LEFT OUTER JOIN METASPORPUNTODEVENTA B ON (A.PveIdStEmpresa = B.MpvIdStEmpresa and A.PveIdInPuntoVenta = B.MpvIdInPuntoVenta AND " & _
                           "B.MpvInAno = " & Val(CobAño.Text) & " and B.MpvInMes = " & Val(tMes) & ") " & _
                    "WHERE (PveIdStEmpresa = '" & Empresa & "' and PveIdInPuntoVenta <> 1 " & vFiltro & ") " & _
                    "ORDER BY PveIdInGrupoPuntoVenta,PveStNombre"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         .AddItem ""
                         DoGroup FGVentas, FGVentas.Rows - 1, 1
                         .TextMatrix(.Rows - 1, Datos.Punto) = Val("" & rdoRs!PveIdInPuntoVenta)
                         .TextMatrix(.Rows - 1, Datos.NomPunto) = Trim("" & rdoRs!PveStNombre)
                         .TextMatrix(.Rows - 1, Datos.ValorMeta) = Val("" & rdoRs!MpvInValor)
                        ' .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                         .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                         vPuntoDia.Add .Rows - 1, Val("" & rdoRs!PveIdInPuntoVenta) & 0
                         For i = 1 To tDias
                              .AddItem ""
                              .TextMatrix(.Rows - 1, Datos.Punto) = Val("" & rdoRs!PveIdInPuntoVenta)
                              .TextMatrix(.Rows - 1, Datos.NomPunto) = Trim("" & rdoRs!PveStNombre)
                              .TextMatrix(.Rows - 1, Datos.dia) = i
                              tFechaDia = i & "-" & tMes & "-" & CobAño.Text
                              On Error Resume Next
                              .TextMatrix(.Rows - 1, Datos.NomDia) = UCase(WeekdayName(Weekday(tFechaDia)))
                              vPuntoDia.Add .Rows - 1, Val("" & rdoRs!PveIdInPuntoVenta) & i
                         Next i
                         
                         rdoRs.MoveNext
                   Wend
              End If
              
'              If Val(CobInPuntoVenta.Text) > 1 Then
'                  vFiltro = vFiltro & " AND VenIdInPuntoVenta=" & CobInPuntoVenta.Text & ""
'              End If

              Sql = "SELECT * FROM VENTAS A " & _
                    "INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta" & vFiltro & ") " & _
                    "WHERE (VenIdStEmpresa = '" & Empresa & "' AND VenIdStTipoComprobante = '" & vTipoComprobante(4) & "' AND VenStEstadoRegistro = 'A' AND " & _
                        "YEAR(VenDaFechaDoc) = '" & Trim(CobAño.Text) & "' AND MONTH(VenDaFechaDoc) = '" & Trim(tMes) & "') " & _
                    "ORDER BY VenObjectIDVentas"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         i = Day("" & rdoRs!VenDaFechaDoc)
                         On Error Resume Next
                         M = "-1": Ty = Val("" & rdoRs!VenIdInPuntoVenta) & i
                         M = vPuntoDia(Ty)
                         If M <> "-1" Then
                         
                            If Trim("" & rdoRs!VenIdStCliente) = "900843898" Then
                                .TextMatrix(M, Datos.CantRap) = Val(.TextMatrix(M, Datos.CantRap)) + 1
                                .TextMatrix(M, Datos.VentRap) = Val(.TextMatrix(M, Datos.VentRap)) + Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento)
                            Else
                                Select Case Val("" & rdoRs!VenStLugarConsumo)
                                       Case 0  'cuando es mesa
                                            .TextMatrix(M, Datos.CantMes) = Val(.TextMatrix(M, Datos.CantMes)) + 1
                                            .TextMatrix(M, Datos.VentMes) = Val(.TextMatrix(M, Datos.VentMes)) + Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento)
                                       Case 1
                                            .TextMatrix(M, Datos.CantDom) = Val(.TextMatrix(M, Datos.CantDom)) + 1
                                            .TextMatrix(M, Datos.VentDom) = Val(.TextMatrix(M, Datos.VentDom)) + Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento)
                                       Case 2
                                            .TextMatrix(M, Datos.CantLlev) = Val(.TextMatrix(M, Datos.CantLlev)) + 1
                                            .TextMatrix(M, Datos.VentLlev) = Val(.TextMatrix(M, Datos.VentLlev)) + Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento)
                                       Case 3
                                            .TextMatrix(M, Datos.CantAut) = Val(.TextMatrix(M, Datos.CantAut)) + 1
                                            .TextMatrix(M, Datos.VentAut) = Val(.TextMatrix(M, Datos.VentAut)) + Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento)
                                End Select
                            End If
                            .TextMatrix(M, Datos.CantTot) = Val(.TextMatrix(M, Datos.CantTot)) + 1
                            .TextMatrix(M, Datos.VentTot) = Val(.TextMatrix(M, Datos.VentTot)) + Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento)
                         
                         End If
                         
                         rdoRs.MoveNext
                   Wend
              End If
              
              'Se busca el valor de la venta de licor
              Sql = "SELECT A.VenDaFechaDoc,A.VenIdInPuntoVenta, C.MveInValor,C.MveInValorIva,C.MveInValorImpoconsumo FROM VENTAS A " & _
                    "INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta" & vFiltro & ") " & _
                    "INNER JOIN MOVVENTAS C ON (A.VenIdStEmpresa = C.MveIdStEmpresa AND A.VenIdInPuntoVenta = C.MveIdInPuntoVenta AND A.VenIdStComprobante=C.MveIdSComprobante AND A.VenIdInDocumento = C.MveIdInDocumento) " & _
                    "INNER JOIN PRODUCTOS D ON (C.MveIdStEmpresa  = D.ProIdStEmpresa AND C.MveIdInProducto = D.ProIdInProducto AND D.ProIdInClase = 3) " & _
                    "WHERE (VenIdStEmpresa = '" & Empresa & "' AND VenIdStTipoComprobante = '" & vTipoComprobante(4) & "' AND VenStEstadoRegistro = 'A' AND " & _
                        "YEAR(VenDaFechaDoc) = '" & Trim(CobAño.Text) & "' AND MONTH(VenDaFechaDoc) = '" & Trim(tMes) & "') " & _
                    "ORDER BY VenObjectIDVentas"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         i = Day("" & rdoRs!VenDaFechaDoc)
                         On Error Resume Next
                         M = "-1": Ty = Val("" & rdoRs!VenIdInPuntoVenta) & i
                         M = vPuntoDia(Ty)
                         If M <> "-1" Then
                         
                            .TextMatrix(M, Datos.vLicor) = Val(.TextMatrix(M, Datos.vLicor)) + Val(rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo)
                         
                         End If
                         
                         rdoRs.MoveNext
                   Wend
              End If
                     
              '----------------------- DEVOLUCIONES EN VENTAS -----------------------------------------------------------
              Sql = "SELECT A.* FROM VENTAS A " & _
                    "INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta" & vFiltro & ") " & _
                    "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND A.VenStEstadoRegistro = 'A' AND " & _
                        "YEAR(A.VenDaFechaDoc) = '" & Trim(CobAño.Text) & "' AND MONTH(A.VenDaFechaDoc) = '" & Trim(tMes) & "') " & _
                    "ORDER BY A.VenObjectIDVentas"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         i = Day("" & rdoRs!VenDaFechaDoc)
                         On Error Resume Next
                         M = "-1": Ty = Val("" & rdoRs!VenIdInPuntoVenta) & i
                         M = vPuntoDia(Ty)
                         If M <> "-1" Then
                            If Trim("" & rdoRs!VenIdStCliente) = "900843898" Then
                                .TextMatrix(M, Datos.CantRap) = Val(.TextMatrix(M, Datos.CantRap)) - 1
                                .TextMatrix(M, Datos.VentRap) = Val(.TextMatrix(M, Datos.VentRap)) - (Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento))
                            Else
                                If Trim("" & rdoRs!VenStLugarConsumo) = Empty Then
                                    X = 0
                                Else
                                    X = Val("" & rdoRs!VenStLugarConsumo)
                                End If
                                Select Case X
                                       Case 0  'cuando es mesa
                                            .TextMatrix(M, Datos.CantMes) = Val(.TextMatrix(M, Datos.CantMes)) - 1
                                            .TextMatrix(M, Datos.VentMes) = Val(.TextMatrix(M, Datos.VentMes)) - (Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento))
                                       Case 1
                                            .TextMatrix(M, Datos.CantDom) = Val(.TextMatrix(M, Datos.CantDom)) - 1
                                            .TextMatrix(M, Datos.VentDom) = Val(.TextMatrix(M, Datos.VentDom)) - (Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento))
                                       Case 2
                                            .TextMatrix(M, Datos.CantLlev) = Val(.TextMatrix(M, Datos.CantLlev)) - 1
                                            .TextMatrix(M, Datos.VentLlev) = Val(.TextMatrix(M, Datos.VentLlev)) - (Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento))
                                       Case 3
                                            .TextMatrix(M, Datos.CantAut) = Val(.TextMatrix(M, Datos.CantAut)) - 1
                                            .TextMatrix(M, Datos.VentAut) = Val(.TextMatrix(M, Datos.VentAut)) - (Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento))
                                End Select
                            End If
                            .TextMatrix(M, Datos.CantTot) = Val(.TextMatrix(M, Datos.CantTot)) - 1
                            .TextMatrix(M, Datos.VentTot) = Val(.TextMatrix(M, Datos.VentTot)) - (Val("" & rdoRs!VenInValor) - Val("" & rdoRs!VenInDescuento))
                         End If

                         rdoRs.MoveNext
                   Wend
              End If
              
              'Se busca el valor de la devoluciones en venta de licor
              Sql = "SELECT A.VenDaFechaDoc,A.VenIdInPuntoVenta, C.MveInValor,C.MveInValorIva,C.MveInValorImpoconsumo FROM VENTAS A " & _
                    "INNER JOIN PUNTOSVENTAS B ON (A.VenIdStEmpresa = B.PveIdStEmpresa AND A.VenIdInPuntoVenta = B.PveIdInPuntoVenta" & vFiltro & ") " & _
                    "INNER JOIN MOVVENTAS C ON (A.VenIdStEmpresa = C.MveIdStEmpresa AND A.VenIdInPuntoVenta = C.MveIdInPuntoVenta AND A.VenIdStComprobante=C.MveIdSComprobante AND A.VenIdInDocumento = C.MveIdInDocumento) " & _
                    "INNER JOIN PRODUCTOS D ON (C.MveIdStEmpresa  = D.ProIdStEmpresa AND C.MveIdInProducto = D.ProIdInProducto AND D.ProIdInClase = 3) " & _
                    "WHERE (VenIdStEmpresa = '" & Empresa & "' AND VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND VenStEstadoRegistro = 'A' AND " & _
                        "YEAR(VenDaFechaDoc) = '" & Trim(CobAño.Text) & "' AND MONTH(VenDaFechaDoc) = '" & Trim(tMes) & "') " & _
                    "ORDER BY VenObjectIDVentas"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         i = Day("" & rdoRs!VenDaFechaDoc)
                         On Error Resume Next
                         M = "-1": Ty = Val("" & rdoRs!VenIdInPuntoVenta) & i
                         M = vPuntoDia(Ty)
                         If M <> "-1" Then
                         
                            .TextMatrix(M, Datos.vLicor) = Val(.TextMatrix(M, Datos.vLicor)) - (Val(rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo))
                         
                         End If
                         
                         rdoRs.MoveNext
                   Wend
              End If
              
              For i = 3 To .Rows - 1
                    On Error Resume Next
                    M = "-1": Ty = Val(.TextMatrix(i, Datos.Punto)) & 0
                    M = vPuntoDia(Ty)
                    If M <> "-1" Then
                        .TextMatrix(M, Datos.CantRap) = Val(.TextMatrix(M, Datos.CantRap)) + Val(.TextMatrix(i, Datos.CantRap))
                        .TextMatrix(M, Datos.VentRap) = Val(.TextMatrix(M, Datos.VentRap)) + Val(.TextMatrix(i, Datos.VentRap))
                        .TextMatrix(M, Datos.CantDom) = Val(.TextMatrix(M, Datos.CantDom)) + Val(.TextMatrix(i, Datos.CantDom))
                        .TextMatrix(M, Datos.VentDom) = Val(.TextMatrix(M, Datos.VentDom)) + Val(.TextMatrix(i, Datos.VentDom))
                        .TextMatrix(M, Datos.CantMes) = Val(.TextMatrix(M, Datos.CantMes)) + Val(.TextMatrix(i, Datos.CantMes))
                        .TextMatrix(M, Datos.VentMes) = Val(.TextMatrix(M, Datos.VentMes)) + Val(.TextMatrix(i, Datos.VentMes))
                        .TextMatrix(M, Datos.CantLlev) = Val(.TextMatrix(M, Datos.CantLlev)) + Val(.TextMatrix(i, Datos.CantLlev))
                        .TextMatrix(M, Datos.VentLlev) = Val(.TextMatrix(M, Datos.VentLlev)) + Val(.TextMatrix(i, Datos.VentLlev))
                        .TextMatrix(M, Datos.CantAut) = Val(.TextMatrix(M, Datos.CantAut)) + Val(.TextMatrix(i, Datos.CantAut))
                        .TextMatrix(M, Datos.VentAut) = Val(.TextMatrix(M, Datos.VentAut)) + Val(.TextMatrix(i, Datos.VentAut))
                        .TextMatrix(M, Datos.CantTot) = Val(.TextMatrix(M, Datos.CantTot)) + Val(.TextMatrix(i, Datos.CantTot))
                        .TextMatrix(M, Datos.VentTot) = Val(.TextMatrix(M, Datos.VentTot)) + Val(.TextMatrix(i, Datos.VentTot))
                        .TextMatrix(M, Datos.vLicor) = Val(.TextMatrix(M, Datos.vLicor)) + Val(.TextMatrix(i, Datos.vLicor))
                    End If
                    
                    .TextMatrix(2, Datos.CantRap) = Val(.TextMatrix(2, Datos.CantRap)) + Val(.TextMatrix(i, Datos.CantRap))
                    .TextMatrix(2, Datos.VentRap) = Val(.TextMatrix(2, Datos.VentRap)) + Val(.TextMatrix(i, Datos.VentRap))
                    .TextMatrix(2, Datos.CantDom) = Val(.TextMatrix(2, Datos.CantDom)) + Val(.TextMatrix(i, Datos.CantDom))
                    .TextMatrix(2, Datos.VentDom) = Val(.TextMatrix(2, Datos.VentDom)) + Val(.TextMatrix(i, Datos.VentDom))
                    .TextMatrix(2, Datos.CantMes) = Val(.TextMatrix(2, Datos.CantMes)) + Val(.TextMatrix(i, Datos.CantMes))
                    .TextMatrix(2, Datos.VentMes) = Val(.TextMatrix(2, Datos.VentMes)) + Val(.TextMatrix(i, Datos.VentMes))
                    .TextMatrix(2, Datos.CantLlev) = Val(.TextMatrix(2, Datos.CantLlev)) + Val(.TextMatrix(i, Datos.CantLlev))
                    .TextMatrix(2, Datos.VentLlev) = Val(.TextMatrix(2, Datos.VentLlev)) + Val(.TextMatrix(i, Datos.VentLlev))
                    .TextMatrix(2, Datos.CantAut) = Val(.TextMatrix(2, Datos.CantAut)) + Val(.TextMatrix(i, Datos.CantAut))
                    .TextMatrix(2, Datos.VentAut) = Val(.TextMatrix(2, Datos.VentAut)) + Val(.TextMatrix(i, Datos.VentAut))
                    .TextMatrix(2, Datos.CantTot) = Val(.TextMatrix(2, Datos.CantTot)) + Val(.TextMatrix(i, Datos.CantTot))
                    .TextMatrix(2, Datos.VentTot) = Val(.TextMatrix(2, Datos.VentTot)) + Val(.TextMatrix(i, Datos.VentTot))
                    .TextMatrix(2, Datos.vLicor) = Val(.TextMatrix(2, Datos.vLicor)) + Val(.TextMatrix(i, Datos.vLicor))
                    .TextMatrix(2, Datos.ValorMeta) = Val(.TextMatrix(2, Datos.ValorMeta)) + Val(.TextMatrix(i, Datos.ValorMeta))
              Next i
              
              For i = 2 To .Rows - 1
                    If Val(.TextMatrix(i, Datos.VentRap)) > 0 And Val(.TextMatrix(i, Datos.CantRap)) > 0 Then
                        .TextMatrix(i, Datos.PromRap) = Val(.TextMatrix(i, Datos.VentRap)) / Val(.TextMatrix(i, Datos.CantRap))
                    End If
                    If Val(.TextMatrix(i, Datos.VentDom)) > 0 And Val(.TextMatrix(i, Datos.CantDom)) > 0 Then
                        .TextMatrix(i, Datos.PromDom) = Val(.TextMatrix(i, Datos.VentDom)) / Val(.TextMatrix(i, Datos.CantDom))
                    End If
                    If Val(.TextMatrix(i, Datos.VentMes)) > 0 And Val(.TextMatrix(i, Datos.CantMes)) > 0 Then
                        .TextMatrix(i, Datos.PromMes) = Val(.TextMatrix(i, Datos.VentMes)) / Val(.TextMatrix(i, Datos.CantMes))
                    End If
                    If Val(.TextMatrix(i, Datos.VentLlev)) > 0 And Val(.TextMatrix(i, Datos.CantLlev)) > 0 Then
                        .TextMatrix(i, Datos.PromLlev) = Val(.TextMatrix(i, Datos.VentLlev)) / Val(.TextMatrix(i, Datos.CantLlev))
                    End If
                    If Val(.TextMatrix(i, Datos.VentAut)) > 0 And Val(.TextMatrix(i, Datos.CantAut)) > 0 Then
                        .TextMatrix(i, Datos.PromAut) = Val(.TextMatrix(i, Datos.VentAut)) / Val(.TextMatrix(i, Datos.CantAut))
                    End If
                    If Val(.TextMatrix(i, Datos.VentTot)) > 0 And Val(.TextMatrix(i, Datos.CantTot)) > 0 Then
                        .TextMatrix(i, Datos.PromTot) = Val(.TextMatrix(i, Datos.VentTot)) / Val(.TextMatrix(i, Datos.CantTot))
                    End If
                    If Val(.TextMatrix(i, Datos.ValorMeta)) > 0 And Val(.TextMatrix(i, Datos.VentTot)) > 0 Then
                        .TextMatrix(i, Datos.Cumplimiento) = (Val(.TextMatrix(i, Datos.VentTot)) / Val(.TextMatrix(i, Datos.ValorMeta))) * 100
                    End If
              Next i
              
        End With
        FGVentas.Outline (1)
        
'        TxtClumplimiento.Text = Val(Me.TxtClumplimientoMesas.Text) + Val(Me.TxtTotalOtrasVentas.Text) + Val(Me.TxtTotalDomicilios.Text)
        
                
        
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Sub DoGroup(Fgrilla As VSFlexGrid, Row, lvl)
     Fgrilla.IsSubtotal(Row) = True
     Fgrilla.RowOutlineLevel(Row) = lvl
End Sub

Private Sub Limpiar_Grillas()
        FGVentas.Rows = 2
End Sub
