VERSION 5.00 Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0";

"vsflex8d.ocx" Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0";

"MSCOMCTL.OCX" Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0";

"comdlg32.ocx" Object = "{00025600-0000-0000-C000-000000000046}#5.2#0";

"Crystl32.OCX" Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0";

"DianaOperaciones.ocx" Begin VB.Form FrmBalanceGeneral BackColor = & H00FFFFC0 & BorderStyle = 1 'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11880
   Icon            =   "FrmBalanceGeneral.frx":0000
   KeyPreview      =   -1  ' True LinkTopic = "Form1" MaxButton = 0 'False
   MinButton       =   0   ' False Moveable = 0 'False
   ScaleHeight     =   8520
   ScaleWidth      =   11880
   StartUpPosition =   2  ' CenterScreen Begin VB.TextBox TxtDif Height = 285 Left = 7920 TabIndex = 27 Top = 960 Visible = 0 'False
      Width           =   1230
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   330
      Left            =   270
      TabIndex        =   19
      Top             =   2430
      Visible         =   0   ' False Width = 9240 _ExtentX = 16298 _ExtentY = 582 _Version = 393216 Appearance = 1 Max = 10000
End Begin VB.Frame Frabusqueda BackColor = & H80000018 & Caption = "Parametros de Busquedas" BeginProperty Font Name = "Arial" Size = 8.25 Charset = 0 Weight = 700 Underline = 0 'False
         Italic          =   0   ' False Strikethrough = 0 'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   690
      Left            =   270
      TabIndex        =   23
      Top             =   1620
      Width           =   9510
      Begin VB.ComboBox CobCampos 
         Height          =   315
         ItemData        =   "FrmBalanceGeneral.frx":46B2
         Left            =   1080
         List            =   "FrmBalanceGeneral.frx":46B4
         Style           =   2  ' Dropdown List TabIndex = 3 ToolTipText = "F1" Top = 270 Width = 2400
End Begin VB.CommandButton CmdBuscar BackColor = & H00FFFFFF & Height = 375 Left = 8100 Picture = "FrmBalanceGeneral.frx" :46B6 Style = 1 'Graphical
         TabIndex        =   5
         ToolTipText     =   "Buscar Datos - F2"
         Top             =   240
         Width           =   1350
      End
      Begin VB.TextBox TxtBusqueda 
         Height          =   315
         Left            =   5355
         TabIndex        =   4
         Top             =   270
         Width           =   2715
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  ' True BackStyle = 0 'Transparent
         Caption         =   "Columnas:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   ' False Italic = 0 'False
            Strikethrough   =   0   ' False EndProperty ForeColor = & H00C00000 & Height = 210 Left = 135 TabIndex = 25 Top = 330 Width = 885
End Begin VB.Label Label4 AutoSize = -1 'True
         BackStyle       =   0  ' Transparent Caption = "Digite la Informaci�n:" BeginProperty Font Name = "Arial" Size = 8.25 Charset = 0 Weight = 700 Underline = 0 'False
            Italic          =   0   ' False Strikethrough = 0 'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   3555
         TabIndex        =   24
         Top             =   330
         Width           =   1725
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00FEFDE0&
      Caption         =   "Parametros de Consulta"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   ' False Italic = 0 'False
         Strikethrough   =   0   ' False EndProperty ForeColor = & H00C00000 & Height = 735 Left = 270 TabIndex = 20 Top = 810 Width = 6675 Begin VB.CheckBox CheSaldo BackColor = & H00FEFDE0 & Caption = "Saldos Iniciales en Cero" BeginProperty Font Name = "Arial" Size = 8.25 Charset = 0 Weight = 700 Underline = 0 'False
            Italic          =   0   ' False Strikethrough = 0 'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   240
         Left            =   4185
         TabIndex        =   2
         Top             =   352
         Width           =   2310
      End
      Begin VB.ComboBox CobMeses 
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   2610
         Style           =   2  ' Dropdown List TabIndex = 1 Top = 315 Width = 1410
End Begin VB.ComboBox Coba � o ForeColor = & H00800000 & Height = 315 Left = 990 Style = 2 'Dropdown List
         TabIndex        =   0
         ToolTipText     =   "Seleccione el A�o..."
         Top             =   315
         Width           =   1005
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  ' True BackStyle = 0 'Transparent
         Caption         =   "Mes:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   ' False Italic = 0 'False
            Strikethrough   =   0   ' False EndProperty ForeColor = & H00C00000 & Height = 210 Left = 2070 TabIndex = 22 Top = 375 Width = 405
End Begin VB.Label Label2 AutoSize = -1 'True
         BackStyle       =   0  ' Transparent Caption = "A�o: " BeginProperty Font Name = "Arial" Size = 8.25 Charset = 0 Weight = 700 Underline = 0 'False
            Italic          =   0   ' False Strikethrough = 0 'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   495
         TabIndex        =   21
         Top             =   375
         Width           =   420
      End
   End
   Begin Crystal.CrystalReport CReporte 
      Left            =   3105
      Top             =   180
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "4"
      Height          =   285
      Index           =   3
      Left            =   11205
      Style           =   1  ' Graphical TabIndex = 11 ToolTipText = "Ver a Nivel de Cuentas.." Top = 2115 Width = 285
End Begin VSFlex8DAOCtl.VSFlexGrid FGbalance Height = 5730 Left = 270 TabIndex = 6 Top = 2430 Width = 11235 _cx = 19817 _cy = 10107 Appearance = 1 BorderStyle = 1 Enabled = -1 'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   ' False Italic = 0 'False
         Strikethrough   =   0   ' False EndProperty MousePointer = 0 BackColor = 12648384 ForeColor = 32768 BackColorFixed = 4194304 ForeColorFixed = -2147483630 BackColorSel = -2147483647 ForeColorSel = -2147483635 BackColorBkg = 8421504 BackColorAlternate = 12648384 GridColor = 12632256 GridColorFixed = 0 TreeColor = -2147483632 FloodColor = 16576 SheetBorder = 0 FocusRect = 1 HighLight = 2 AllowSelection = -1 'True
      AllowBigSelection=   -1  ' True AllowUserResizing = 0 SelectionMode = 0 GridLines = 1 GridLinesFixed = 2 GridLineWidth = 1 Rows = 50 Cols = 15 FixedRows = 1 FixedCols = 0 RowHeightMin = 0 RowHeightMax = 0 ColWidthMin = 0 ColWidthMax = 0 ExtendLastCol = 0 'False
      FormatString    =   ""
      ScrollTrack     =   0   ' False ScrollBars = 3 ScrollTips = 0 'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  ' True AutoSizeMode = 0 AutoSearch = 2 AutoSearchDelay = 2 MultiTotals = -1 'True
      SubtotalPosition=   1
      OutlineBar      =   1
      OutlineCol      =   3
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   ' False FillStyle = 0 RightToLeft = 0 'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0
      ShowComboButton =   1
      WordWrap        =   0   ' False TextStyle = 0 TextStyleFixed = 0 OleDragMode = 0 OleDropMode = 0 DataMode = 0 VirtualData = -1 'True
      ComboSearch     =   3
      AutoSizeMouse   =   -1  ' True FrozenRows = 0 FrozenCols = 0 AllowUserFreezing = 0 BackColorFrozen = 0 ForeColorFrozen = 0 WallPaperAlignment = 9 AccessibleName = "" AccessibleDescription = "" AccessibleValue = "" AccessibleRole = 24
End Begin VB.CommandButton CmdNivel BackColor = & H00E7D6B8 & Caption = "1" Height = 285 Index = 0 Left = 10395 Style = 1 'Graphical
      TabIndex        =   8
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   2115
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   10665
      Style           =   1  ' Graphical TabIndex = 9 ToolTipText = "Ver a Nivel de Subcuentas" Top = 2115 Width = 285
End Begin VB.CommandButton CmdNivel BackColor = & H00E7D6B8 & Caption = "3" Height = 285 Index = 2 Left = 10935 Style = 1 'Graphical
      TabIndex        =   10
      ToolTipText     =   "Ver a nivel de Auxiliares"
      Top             =   2115
      Width           =   285
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   9990
      TabIndex        =   17
      Text            =   "Text1"
      Top             =   90
      Visible         =   0   ' False Width = 1230
End Begin VB.Frame Frame1EE BackColor = & H80000018 & Caption = "Agrupado por:" BeginProperty Font Name = "MS Sans Serif" Size = 8.25 Charset = 0 Weight = 700 Underline = 0 'False
         Italic          =   0   ' False Strikethrough = 0 'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   735
      Left            =   5535
      TabIndex        =   13
      Top             =   0
      Visible         =   0   ' False Width = 4245 Begin VB.OptionButton OptAgrupa BackColor = & H80000018 & Caption = "SubAuxiliar" ForeColor = & H00800000 & Height = 285 Index = 3 Left = 3285 TabIndex = 18 Top = 360 Value = -1 'True
         Width           =   1140
      End
      Begin VB.OptionButton OptAgrupa 
         BackColor       =   &H80000018&
         Caption         =   "Auxiliar"
         ForeColor       =   &H00800000&
         Height          =   285
         Index           =   2
         Left            =   2340
         TabIndex        =   16
         Top             =   360
         Width           =   825
      End
      Begin VB.OptionButton OptAgrupa 
         BackColor       =   &H80000018&
         Caption         =   "SubCuenta"
         ForeColor       =   &H00800000&
         Height          =   285
         Index           =   1
         Left            =   1125
         TabIndex        =   15
         Top             =   360
         Width           =   1095
      End
      Begin VB.OptionButton OptAgrupa 
         BackColor       =   &H80000018&
         Caption         =   "Cuenta"
         ForeColor       =   &H00800000&
         Height          =   285
         Index           =   0
         Left            =   225
         TabIndex        =   14
         Top             =   360
         Width           =   870
      End
   End
   Begin VB.CommandButton Cmdplano 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   ' False Italic = 0 'False
         Strikethrough   =   0   ' False EndProperty Height = 375 Left = 9945 Picture = "FrmBalanceGeneral.frx" :6188 Style = 1 'Graphical
      TabIndex        =   7
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1665
      Width           =   1350
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   3735
      Top             =   135
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
            Picture         =   "FrmBalanceGeneral.frx":7C5A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBalanceGeneral.frx":819E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBalanceGeneral.frx":82AA
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog ComArchivo 
      Left            =   0
      Top             =   675
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   9855
      TabIndex        =   26
      Top             =   675
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Balance General "
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   12.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   ' False Italic = 0 'False
         Strikethrough   =   0   ' False EndProperty ForeColor = & H00FFFFFF & Height = 315 Left = 0 TabIndex = 12 Top = 250 Width = 12000
End Begin VB.Menu Menur Caption = "Opciones" Visible = 0 'False
      Begin VB.Menu Menu 
         Caption         =   "Nivel Uno"
         Index           =   1
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu Menu 
         Caption         =   "Nivel Dos"
         Index           =   3
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu Menu 
         Caption         =   "Detallado"
         Index           =   5
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   6
      End
      Begin VB.Menu Menu 
         Caption         =   "Pantalla"
         Index           =   7
      End
   End
End
Attribute VB_Name = "FrmBalanceGeneral"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Posi(6) As Long, Tabla As New Collection
Dim Acomulado(2) As Variant, Vector(2) As Variant
Dim ColMov As New Collection, Mes As Integer, Sald As Variant, ColBal As New Collection
Dim Cuentas(3) As String, RegFor As Variant, ColN As Integer
Dim ClaseT As New ClsDatos

Private Enum Bals
    Cuen = 0
    Scue = 1
    Aux = 2
    Auxl = 3
    Desc = 4
    Vls = 5
    CodC = 6
End Enum
Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = Me.FGbalance.Left + 300
        FGbalance.Width = Me.Width - N
        FGbalance.Height = Me.Height - FGbalance.Top - vHeightFor
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        
        If Coba�o.Text = Empty Then MsgBox "Seleccione el A�o", vbInformation + vbOKOnly, "Atenci�n": Coba�o.SetFocus: Exit Sub
        If CobMeses.Text = Empty Then MsgBox "Seleccione el Mes", vbInformation + vbOKOnly, "Atenci�n": CobMeses.SetFocus: Exit Sub
        If Hay_Datos(Empresa, Coba�o.Text, Mes) = False Then
              If MsgBox("No Hay informaci�n del mes seleccionado" & Chr(13) & "Desea continuar?", vbQuestion + vbYesNo, "Atenci�n") = vbNo Then Exit Sub
        End If
        Call Consulta_Balance
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        PopupMenu Menur
End Sub

Private Sub Boton_Click(Index As Integer)
        On Error GoTo Mk
        Select Case Index
               Case Opt.Buscar
                    
               Case Opt.imprimir
                    
        End Select
        Exit Sub
        
Mk: MsgBox "Consultar con el Adm. del Sistema", vbInformation + vbOKOnly, "Atenci�n"
End Sub

Private Sub CheSaldo_Click()
        FGbalance.Rows = 1
End Sub

Private Sub CmdBuscar_Click()
        If FGbalance.Rows < 2 Then MsgBox "No hay informaci�n para buscar", vbExclamation + vbOKOnly, "Atenci�n": Exit Sub
        If CobCampos.Text = Empty Then MsgBox "Seleccione la Columna por la cual desea buscar", vbInformation + vbOKOnly, "Atenci�n": CobCampos.SetFocus: Exit Sub
        If Trim(TxtBusqueda.Text) = Empty Then MsgBox "Digite la informaci�n a buscar", vbInformation + vbOKOnly, "Atenci�n": TxtBusqueda.SetFocus: Exit Sub
        RegIni = RegFor
        If Buscar_datos(FGbalance, Trim(TxtBusqueda.Text), ColN) = True Then
            RegFor = RegIni
        Else
            MsgBox "No hay informaci�n para mostrar de acuerdo a los parametros seleccionados", vbExclamation + vbOKOnly, "Atenci�n"
            RegFor = 1
        End If
End Sub

Private Sub CmdBuscar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdBuscar.Picture = LoadResPicture(BotonSeleccionado.ConsultarS, vbResBitmap)
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGbalance
                Select Case Index
                       Case 0
                            .Outline (4)
                            .Outline (3)
                            .Outline (2)
                       Case 1
                            .Outline (4)
                            .Outline (3)
                       Case 2
                            .Outline (5)
                            .Outline (4)
                       Case 3
                            .Outline (6)
                            .Outline (5)
                End Select
           
           End With
End Sub
Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGbalance.Rows - 1 < 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
              FGbalance.Outline (6)
              FGbalance.SaveGrid ComArchivo.FileName, flexFileExcel, 3
              FGbalance.Outline (4)
              FGbalance.Outline (3)
              FGbalance.Outline (2)
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atenci�n"
End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub Coba�o_Click()
        FGbalance.Rows = 1
End Sub

Private Sub CobCampos_Click()
        Select Case CobCampos.Text
               Case "CUENTA CONTABLE": ColN = Bals.CodC
               Case "DESCRIPCION": ColN = Bals.Desc
               Case "VALOR": ColN = Bals.Vls
        End Select
        RegFor = 1
End Sub

Private Sub CobMeses_Click()
        Select Case CobMeses.Text
               Case "Enero": Mes = 1
               Case "Febrero": Mes = 2
               Case "Marzo": Mes = 3
               Case "Abril": Mes = 4
               Case "Mayo": Mes = 5
               Case "Junio": Mes = 6
               Case "Julio": Mes = 7
               Case "Agosto": Mes = 8
               Case "Septiembre": Mes = 9
               Case "Octubre": Mes = 10
               Case "Noviembre": Mes = 11
               Case "Diciembre": Mes = 12
        End Select
        FGbalance.Rows = 1
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        If Iempresa <> Empresa Then
           Iempresa = Empresa
           Me.BackColor = Bcolor1
           Me.Caption = Trim(Titul)
           Call Define_Grids(FGbalance)
           Call DGRILLA
        End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
        Dim SetFoc As Object
        Dim FGFocus As VSFlexGrid
        Select Case KeyCode
               Case vbKeyB:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(Buscar) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Buscar)
               Case vbKeyI:
                    ' If (Shift = 2)
And (BarraOperaciones.BotonActivo(Imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Imprimir) Case
   vbKeyF2: On Error Resume Next: Call CmdBuscar_Click Case
      vbKeyF1 On Error Resume Next: CobCampos.SetFocus
   End
   Select
End Sub Private Sub Form_KeyPress(KeyAscii As Integer) If KeyAscii = vbKeyReturn Then SendKeys "{TAB}" KeyAscii = 0
End If
End Sub Private Sub Form_Load() Iempresa = Empresa Call Configurar_Pantalla Me.BackColor = Bcolor1 Me.Caption = Trim(Titul) LblTitle.BackColor = Bfcolor LblTitle.ForeColor = Fcolor1 LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama � oLetraTitulo CmdNivel(0).BackColor = Bcolor1 CmdNivel(1).BackColor = Bcolor1 CmdNivel(2).BackColor = Bcolor1 CmdNivel(3).BackColor = Bcolor1 If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana With BarraOperaciones.BarUso = BaConsulta.Tabla = "".BarBuscar = EstCancel
End With CobMeses.AddItem ("Enero"): CobMeses.AddItem ("Febrero") CobMeses.AddItem ("Marzo"): CobMeses.AddItem ("Abril") CobMeses.AddItem ("Mayo"): CobMeses.AddItem ("Junio") CobMeses.AddItem ("Julio"): CobMeses.AddItem ("Agosto") CobMeses.AddItem ("Septiembre"): CobMeses.AddItem ("Octubre") CobMeses.AddItem ("Noviembre"): CobMeses.AddItem ("Diciembre") Coba � o.Clear Sql = "SELECT PerAno FROM PERIODOS WHERE PerEmpr = '" & Empresa & "' Group by PerAno " If Buscar_Res(rdoRs, Sql) = BDOk Then While Not rdoRs.EOF Coba � o.AddItem rdoRs ! PerAno rdoRs.MoveNext Wend
End If Call Define_Grids(FGbalance) Idx = 3 Call DGRILLA CobCampos.Clear CobCampos.AddItem "CUENTA CONTABLE" CobCampos.AddItem "DESCRIPCION" CobCampos.AddItem "VALOR" Screen.MousePointer = vbDefault
End Sub Private Sub DGRILLA() With FGbalance.Rows = 1.Cols = 7.FixedCols = 0.FontName = "Tahoma".FontSize = 8.GridLines = flexGridNone.BackColorBkg = & H80000018.BackColorFixed = vbWhite.ForeColorFixed = vColorFixed.BackColor = ColorGrilla.BackColorSel = & H808000.ForeColorSel = vbWhite.ForeColor = vbBlack.AllowUserResizing = flexResizeColumns.ExtendLastCol = False.MergeCells = flexMergeFree.OutlineCol = Bals.Desc.SelectionMode = flexSelectionByRow.ScrollBars = flexScrollBarBoth.TextMatrix(0, Bals.Cuen) = "Cuenta".TextMatrix(0, Bals.Scue) = "Sub".TextMatrix(0, Bals.Aux) = "Aux".TextMatrix(0, Bals.Auxl) = "Aux 1".TextMatrix(0, Bals.Desc) = "Descripci�n".TextMatrix(0, Bals.Vls) = "Valor ($)".TextMatrix(0, Bals.CodC) = "Cuenta Contable".ColFormat(Bals.Vls) = "#,###.00".ColFormat(Bals.Scue) = "00".ColFormat(Bals.Aux) = "00".ColFormat(Bals.Auxl) = "00".ColWidth(Bals.Cuen) = 1000.ColWidth(Bals.Scue) = 800.ColWidth(Bals.Aux) = 800.ColWidth(Bals.Auxl) = 800.ColWidth(Bals.Desc) = 5000.ColWidth(Bals.Vls) = 2000.FocusRect = flexFocusRaised.OutlineBar = flexOutlineBarComplete.Cell(flexcpAlignment, 0, 0, 0,.Cols - 1) = flexAlignCenterCenter.ColHidden(Bals.CodC) = True
End With
End Sub Private Sub Form_MouseMove(
   Button As Integer,
   Shift As Integer,
   X As Single,
   Y As Single
) Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap) CmdBuscar.Picture = LoadResPicture(BotonSeleccionado.Consultar, vbResBitmap) Call BarraOperaciones.Estado_Botones
End Sub Private Sub Form_Resize() On Error Resume Next If Screen.Width >= 15360
And Screen.Height >= 10800 Then F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0) Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0) Me.Move F + AnchoMenu,
Y + TopMenu,
Me.Width,
Me.Height
End If
End Sub Private Sub Menu_Click(Index As Integer) If Index = 1
Or Index = 3 Then Call Imprimir_Informe(Index)
Else If Index = 5
And Me.OptAgrupa(0).Value = True Then Call Imprimir_Informe(3)
Else Call Imprimir_Informe(Index)
End If
End If
End Sub Private Sub OptAgrupa_Click(Index As Integer) FGbalance.Rows = 1 Idx = Index
End Sub Sub DoGroup(Row, lvl) FGbalance.IsSubtotal(Row) = True FGbalance.RowOutlineLevel(Row) = lvl
End Sub Private Sub Detalle() With FGbalance Dim SubCx As String,
AuxS As String,
AuxS1 As String Acomulado(0) = 0: Acomulado(1) = 0 i = 0 If Buscar_Res(rdoRs, Sql) = BDOk Then While Not rdoRs.EOF i = i + 1:
Set
   ClaseT = New ClsDatos ClaseT.Cuenta = Trim(rdoRs ! CarCuen): ClaseT.Nombre = Trim(rdoRs ! carnomb) ClaseT.Scuenta = Trim(rdoRs ! CarScue): ClaseT.Aux = Trim(rdoRs ! CarAuxi) ClaseT.Aux1 = Trim(rdoRs ! CarAuxl) Tabla.Add ClaseT,
   Str(i):
Set
   ClaseT = Nothing rdoRs.MoveNext Wend
End If
Set
   ClaseT = New ClsDatos For i = 1 To Tabla.Count
Set
   ClaseT = Tabla(i) Fcuenta = ClaseT.Cuenta: Titulo = ClaseT.Nombre SubCx = ClaseT.Scuenta: AuxS = ClaseT.Aux: AuxS1 = ClaseT.Aux1 Ha = ClaseT.Cuenta + ClaseT.Scuenta + ClaseT.Aux: Hw = ClaseT.Cuenta + ClaseT.Scuenta If i + 1 <= Tabla.Count Then
Set
   ClaseT = Tabla(i + 1) Hj = ClaseT.Cuenta + ClaseT.Scuenta + ClaseT.Aux: Hm = ClaseT.Aux1: Hy = ClaseT.Aux Hw1 = ClaseT.Cuenta + ClaseT.Scuenta
End If.AddItem "".TextMatrix(.Rows - 1, Bals.Cuen) = Fcuenta.TextMatrix(.Rows - 1, Bals.Desc) = Titulo.TextMatrix(.Rows - 1, Bals.Vls) = 0
Select
   Case
      Idx Case
         1:.TextMatrix(.Rows - 1, Bals.Scue) = SubCx Case
            2:.TextMatrix(.Rows - 1, Bals.Scue) = SubCx:.TextMatrix(.Rows - 1, Bals.Aux) = AuxS Case
               3:.TextMatrix(.Rows - 1, Bals.Scue) = SubCx:.TextMatrix(.Rows - 1, Bals.Aux) = AuxS:.TextMatrix(.Rows - 1, Bals.Auxl) = AuxS1
            End
            Select
               Pos =.Rows - 1 If Mid(Fcuenta, 3, 2) = "00" Then Posi(2) =.Rows - 1: DoGroup.Rows - 1,
               2 Vector(0) = 0 ColBal.Add.Rows - 1,
               Trim(Fcuenta)
               Else
            Select
               Case
                  Idx Case
                     0: Call LLenado(0) 'Cuentas
                         Case 1
                              If SubCx = "00" Then
                                    Posi(3) = .Rows - 1: DoGroup .Rows - 1, 3
                                    ColBal.Add .Rows - 1, Trim(Fcuenta)
                              Else
                                    Call LLenado(1)
                              End If
                         Case 2
                              If SubCx = "00" Then
                                    Posi(3) = .Rows - 1: DoGroup .Rows - 1, 3
                                    ColBal.Add .Rows - 1, Trim(Fcuenta)
                              Else
                                    If AuxS = "00" Then
                                         Posi(4) = .Rows - 1
                                         If Hw = Hw1 Then
                                              If Hy <> "00" Then DoGroup .Rows - 1, 4
                                         End If
                                         ColBal.Add .Rows - 1, Trim(Fcuenta) + Trim(SubCx)
                                         Posi(6) = 0: Call LLenado(2)
                                    Else
                                         Posi(6) = 1: Call LLenado(2)
                                    End If
                              End If
                                                
                         Case 3
                              If SubCx = "00" Then
                                  Posi(3) = .Rows - 1: DoGroup .Rows - 1, 3
                                  ColBal.Add .Rows - 1, Trim(Fcuenta)
                              Else
                                  If AuxS = "00" Then
                                       Posi(4) = .Rows - 1
                                       If Hw = Hw1 Then
                                            If Hy <> "00" Then DoGroup .Rows - 1, 4
                                       End If
                                       ColBal.Add .Rows - 1, Trim(Fcuenta) + Trim(SubCx)
                                       Posi(5) = 0: Posi(6) = 0: Call LLenado(3)
                                  Else
                                      If AuxS1 = "00" Then
                                          Posi(5) = .Rows - 1
                                          If Ha = Hj Then
                                              If Hm <> "00" Then DoGroup .Rows - 1, 5
                                          End If
                                          ColBal.Add .Rows - 1, Trim(Fcuenta) + Trim(SubCx) + Trim(AuxS)
                                          Posi(6) = 0: Call LLenado(3)
                                      Else
                                          Posi(6) = 1: Call LLenado(3)
                                      End If
                                  End If
                              End If
                                                          
                  End Select
             End If
         Next i
         Set Tabla = Nothing
         Pos = Posi(1)
         .TextMatrix(Pos, Bals.Vls) = Acomulado(0)
                  
    End With
End Sub

Private Sub Movimientos()
        Set ColMov = Nothing
        Sald = 0
        Progres.Value = Progres.Value + 1
        If CheSaldo.Value = 0 Then
             Select Case Idx
                    Case 0: Sql = "SELECT MovCuen,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes <= " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen"
                    Case 1: Sql = "SELECT MovCuen,MovScue,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes <= " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen, MovScue"
                    Case 2: Sql = "SELECT MovCuen,MovScue,MovAuxi,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes <= " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen, MovScue,MovAuxi"
                    Case 3: Sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes <= " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl"
             End Select
        Else
             Select Case Idx
                    Case 0: Sql = "SELECT MovCuen,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes = " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen"
                    Case 1: Sql = "SELECT MovCuen,MovScue,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes = " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen,MovScue"
                    Case 2: Sql = "SELECT MovCuen,MovScue,MovAuxi,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes = " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen,MovScue,MovAuxi"
                    Case 3: Sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr =' " & Empresa & " ' And TmoAno = " & Coba�o.Text & " And TmoMes = " & Mes & " And TmoApl = ' 0 ' GROUP BY MovCuen,MovScue,MovAuxi,MovAuxl"
             End Select
        End If
        
        Progres.Value = Progres.Value + 1
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                   Select Case Idx
                          Case 0: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!movcuen)
                          Case 1: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!movcuen) + Trim(rdoRs!movscue)
                          Case 2: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!movcuen) + Trim(rdoRs!movscue) + Trim(rdoRs!movauxi)
                          Case 3: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!movcuen) + Trim(rdoRs!movscue) + Trim(rdoRs!movauxi) + Trim(rdoRs!movauxl)
                                                                
                   End Select
                   X = Mid(Trim(rdoRs!movcuen), 1, 1)
                   If X = "4" Or X = "5" Or X = "6" Or X = "7" Then Sald = Sald + Val(rdoRs!MovValr)
                   rdoRs.MoveNext
             Wend
        End If
        Progres.Value = Progres.Value + 1
        Me.Text1.Text = Sald
End Sub

Private Function Bus_Resulta() As Boolean
        Cuentas(0) = Empty: Cuentas(1) = Empty: Cuentas(2) = Empty
        Bus_Resulta = False
        If Sald < 0 Then A = "1" Else A = "2"
        Sql = "SELECT CarCuen,CarScue,CarAuxi,CarAuxl FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarUtil = ' " & A & " '"
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             Cuentas(0) = rdoRs!CarCuen: Cuentas(1) = rdoRs!CarScue
             Cuentas(2) = rdoRs!CarAuxi: Cuentas(3) = rdoRs!CarAuxl
             Bus_Resulta = True
        End If
        
End Function

Private Sub Consulta_Balance()
        Dim Nm As Long
        
        With FGbalance
                          
             Progres.Min = 0: Progres.Value = 1: Progres.Max = 11
             Set ColBal = Nothing
             Set ColSaldo = Nothing
             Vector(0) = 0
             
             Nm = Coba�o.Text - 1
             If CheSaldo.Value = 0 Then
                   Sql = "SELECT * FROM PERIODOS WHERE perempr = ' " & Empresa & " ' AND PerAno = " & Coba�o.Text - 1 & " And Permes = ' 12 ' And PerApl = ' 0 '"
                   If Buscar_Res(rdoRs, Sql) = BDOk Then
                        If Val("" & rdoRs!PerEsta) = 0 Then
                             MsgBox "El periodo se encuentra abierto", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                        Else
                             Call BusCar_Saldos(Nm, Idx + 1)
                        End If
                   Else
                        Call BusCar_Saldos(Nm, Idx + 1)
                   End If
             End If
             Progres.Visible = True
             Progres.Value = Progres.Value + 1
             Call Movimientos
             
             Progres.Value = Progres.Value + 1
             .Rows = 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "ACTIVOS"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "1000": Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 1 % ' And CarScue = ' 00 ' And Carcuen <> ' 1000 ' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 1 % ' And CarAuxi = ' 00 ' And Carcuen <> ' 1000 ' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 1 % ' And CarAuxl = ' 00 ' And Carcuen <> ' 1000 ' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 1 % ' And Carcuen <> ' 1000 ' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "PASIVOS"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "2000": Q3 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 2 % ' And CarScue = ' 00 ' And Carcuen <> ' 2000 ' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 2 % ' And CarAuxi = ' 00 ' And Carcuen <> ' 2000 ' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 2 % ' And CarAuxl = ' 00 ' And Carcuen <> ' 2000 ' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 2 % ' And Carcuen <> ' 2000 ' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "PATRIMONIO"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "3000": Pq = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1: Q4 = .Rows - 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 3 % ' And CarScue = ' 00 ' And Carcuen <> ' 3000 ' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 3 % ' And CarAuxi = ' 00 ' And Carcuen <> ' 3000 ' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 3 % ' And CarAuxl = ' 00 ' And Carcuen <> ' 3000 ' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarCuen Like ' 3 % ' And Carcuen <> ' 3000 ' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1
                          
             If Bus_Resulta = True Then
                  On Error Resume Next
                  N = "rr"
                  Select Case Idx
                         Case 0: N = ColBal(Cuentas(0)): J = Mid(Cuentas(0), 1, 2) + "00"
                         Case 1: N = ColBal(Cuentas(0) + Cuentas(1)): J = Cuentas(0): M = Mid(Cuentas(0), 1, 2) + "00"
                         Case 2: N = ColBal(Cuentas(0) + Cuentas(1) + Cuentas(2)): J = Cuentas(0): M = Mid(Cuentas(0), 1, 2) + "00"
                         Case 3: N = ColBal(Cuentas(0) + Cuentas(1) + Cuentas(2) + Cuentas(3)): J = Cuentas(0): M = Mid(Cuentas(0), 1, 2) + "00"
                  End Select
                  
                  If N <> "rr" Then
                        .TextMatrix(N, Bals.Vls) = Sald
                  End If
                  
                  On Error Resume Next
                  N = "rr" ' Cuenta Padre N = ColBal(J) If N <> "rr" Then.TextMatrix(N, Bals.Vls) = Sald
                  End If If M <> Empty Then On Error Resume Next N = "rr" 'Cuenta Principal a nivel de Subcuenta
                        N = ColBal(M)
                        If N <> "rr" Then
                              .TextMatrix(N, Bals.Vls) = Sald
                        End If
                  End If
             End If
             Progres.Value = Progres.Value + 1
             .TextMatrix(Pq, Bals.Vls) = Val(.TextMatrix(Pq, Bals.Vls)) + Sald
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "TOTAL PASIVO MAS PATRIMONIO"
             .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(Q3, Bals.Vls)) + Val(.TextMatrix(Q4, Bals.Vls))
             DoGroup .Rows - 1, 1
             .Outline (3)
             .Outline (2)
             X = Round(Val(.TextMatrix(Q2, Bals.Vls)), 2)
             Y = Round(Val(.TextMatrix(Q3, Bals.Vls)), 2) + Round(Val(.TextMatrix(Q4, Bals.Vls)), 2)
             Z = Round(X + Y, 2)
             If Z <> 0 Then MsgBox "El Informe esta descuadrado ", vbInformation + vbOKOnly, "Atenci�n"
             For i = 1 To .Rows - 1
                  If i < .Rows Then
                        .TextMatrix(i, Bals.CodC) = .TextMatrix(i, Bals.Cuen) & .TextMatrix(i, Bals.Scue) & .TextMatrix(i, Bals.Aux) & .TextMatrix(i, Bals.Auxl)
                        Select Case .RowOutlineLevel(i)
                               Case 1: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H4000&
                               Case 2: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbBlue
                               Case 3: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H40C0&
                               Case 4: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbMagenta
                               Case 5: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbRed
                        End Select
                        If OptAgrupa(1).Value = True Then
                           If Val(.TextMatrix(i, Bals.Vls)) = 0 Then .RemoveItem i: i = i - 1
                        Else
                           If Val(.TextMatrix(i, Bals.Vls)) = 0 And .RowOutlineLevel(i) <> 1 And .RowOutlineLevel(i) <> 2 Then .RemoveItem i: i = i - 1
                        End If
                  End If
             Next i
             If .Rows > 2 Then .SetFocus: .Select 1, Bals.Desc
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
                                  
        End With
End Sub

Private Sub LLenado(Iz As Integer)
        With FGbalance
             Select Case Iz
                    Case 0 ' Cuenta On Error Resume Next N = "rr" N = ColSaldo(Trim(.TextMatrix(.Rows - 1, Bals.Cuen))) If N <> "rr" Then.TextMatrix(.Rows - 1, Bals.Vls) = N.TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N Acomulado(0) = Acomulado(0) + N
               End If On Error Resume Next N = "rr" N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen))) If N <> "rr" Then.TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N.TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N Acomulado(0) = Acomulado(0) + N
         End If ColBal.Add.Rows - 1,
         Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) If Mid(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)), 1, 1) <> "3" Then If Val(.TextMatrix(.Rows - 1, Bals.Vls)) = 0 Then.RemoveItem Pos
      End If Case
         1 'Subcuenta
                         On Error Resume Next
                         N = "rr"
                         N = ColSaldo(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                        
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         ColBal.Add .Rows - 1, Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue))
                         If Mid(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)), 1, 1) <> "3" Then
                             If Val(.TextMatrix(.Rows - 1, Bals.Vls)) = 0 Then .RemoveItem Pos
                         End If
                    Case 2 ' Auxiliar On Error Resume Next N = "rr" N = ColSaldo(
            Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux))
         ) If N <> "rr" Then.TextMatrix(.Rows - 1, Bals.Vls) = N.TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N.TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N If.Rows - 1 <> Posi(4) Then.TextMatrix(Posi(4), Bals.Vls) = Val(.TextMatrix(Posi(4), Bals.Vls)) + N Acomulado(0) = Acomulado(0) + N
      End If On Error Resume Next N = "rr" N = ColMov(
         Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux))
      ) If N <> "rr" Then.TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N.TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N.TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N If.Rows - 1 <> Posi(4) Then.TextMatrix(Posi(4), Bals.Vls) = Val(.TextMatrix(Posi(4), Bals.Vls)) + N Acomulado(0) = Acomulado(0) + N
   End If ColBal.Add.Rows - 1,
   Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) If Mid(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)), 1, 1) <> "3"
   And Posi(6) = 1 Then If Val(.TextMatrix(.Rows - 1, Bals.Vls)) = 0 Then.RemoveItem Pos
End If Case
   3 'SubAuxiliar
                         On Error Resume Next
                         N = "rr"
                         N = ColSaldo(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), Bals.Vls) = Val(.TextMatrix(Posi(4), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), Bals.Vls) = Val(.TextMatrix(Posi(5), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                        
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), Bals.Vls) = Val(.TextMatrix(Posi(4), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), Bals.Vls) = Val(.TextMatrix(Posi(5), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         ColBal.Add .Rows - 1, Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl))
                         If Mid(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)), 1, 1) <> "3" And Posi(6) = 1 Then
                             If Val(.TextMatrix(.Rows - 1, Bals.Vls)) = 0 Then .RemoveItem Pos
                         End If
             End Select
        End With
End Sub


Cuentas(0) = Empty: Cuentas(1) = Empty: Cuentas(2) = Empty
        Bus_Resulta = False
        If Sald < 0 Then A = "1" Else A = "2"
        Sql = "SELECT CarCuen,CarScue,CarAuxi,CarAuxl FROM CARTILLA WHERE CarEmpr = ' " & Empresa & " ' And CarUtil = ' " & A & " '"
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             Cuentas(0) = rdoRs!CarCuen: Cuentas(1) = rdoRs!CarScue
             Cuentas(2) = rdoRs!CarAuxi: Cuentas(3) = rdoRs!CarAuxl
             Bus_Resulta = True
        End If


        

If X = "4" Or X = "5" Or X = "6" Or X = "7" Then Sald = Sald + Val(rdoRs!MovValr)