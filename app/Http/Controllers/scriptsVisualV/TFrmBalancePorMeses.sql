VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Begin VB.Form FrmBalancePorMeses 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11880
   Icon            =   "FrmBalancePorMeses.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   11880
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00FEFDE0&
      Caption         =   "Parametros de Consulta"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   780
      Left            =   405
      TabIndex        =   11
      Top             =   855
      Width           =   2895
      Begin VB.ComboBox Cobaño 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   1035
         Style           =   2  'Dropdown List
         TabIndex        =   0
         ToolTipText     =   "Seleccione el Año..."
         Top             =   360
         Width           =   960
      End
      Begin VB.Label LblAno 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Año: "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   210
         Left            =   540
         TabIndex        =   12
         Top             =   405
         Width           =   420
      End
   End
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   6660
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "Fijar Columnas de Nombres.."
      Top             =   1530
      Width           =   255
   End
   Begin Crystal.CrystalReport MCReporte 
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
      Left            =   7785
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1530
      Width           =   285
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGbalMes 
      Height          =   6270
      Left            =   405
      TabIndex        =   1
      Top             =   1845
      Width           =   11100
      _cx             =   19579
      _cy             =   11060
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   12648384
      ForeColor       =   32768
      BackColorFixed  =   4194304
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483647
      ForeColorSel    =   -2147483635
      BackColorBkg    =   8421504
      BackColorAlternate=   12648384
      GridColor       =   12632256
      GridColorFixed  =   0
      TreeColor       =   -2147483632
      FloodColor      =   16576
      SheetBorder     =   0
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   15
      FixedRows       =   1
      FixedCols       =   0
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
      AutoSearch      =   2
      AutoSearchDelay =   2
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   1
      OutlineCol      =   3
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
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "1"
      Height          =   285
      Index           =   0
      Left            =   6975
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1530
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   7245
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   1530
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "3"
      Height          =   285
      Index           =   2
      Left            =   7515
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Ver a nivel de Auxiliares"
      Top             =   1530
      Width           =   285
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   6300
      TabIndex        =   9
      Text            =   "Text1"
      Top             =   1575
      Visible         =   0   'False
      Width           =   1230
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
      Height          =   375
      Left            =   8145
      Picture         =   "FrmBalancePorMeses.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1440
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
            Picture         =   "FrmBalancePorMeses.frx":6184
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBalancePorMeses.frx":66C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBalancePorMeses.frx":67D4
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
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   2475
      TabIndex        =   10
      Top             =   1080
      Visible         =   0   'False
      Width           =   4515
      _ExtentX        =   7964
      _ExtentY        =   423
      _Version        =   393216
      Appearance      =   1
      Max             =   10000
   End
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   9765
      TabIndex        =   13
      Top             =   765
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Balance General Mes a Mes"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   12.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   0
      TabIndex        =   8
      Top             =   250
      Width           =   12000
   End
   Begin VB.Menu Menur 
      Caption         =   "Opciones"
      Visible         =   0   'False
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
Attribute VB_Name = "FrmBalancePorMeses"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Posi(6) As Long, Tabla As New Collection
Dim Acomulado(12) As Variant, Vector(24) As Variant, Rmes(12) As Variant
Dim ColMov As New Collection, Mes As Integer, Sald As Variant, ColBal As New Collection, SaldA As Variant
Dim Cuentas(7) As String, ColSal As New Collection
Dim ClaseT As New ClsDatos

Private Enum Bmes
        Cuen = 0
        Scue = 1
        Aux = 2
        Auxl = 3
        Desc = 4
        Ene = 5
        Feb = 6
        Mar = 7
        Abr = 8
        May = 9
        Jun = 10
        Jul = 11
        Ago = 12
        Sep = 13
        Oct = 14
        Nov = 15
        Dic = 16
        
End Enum
Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = Me.FGbalMes.Left + 300
        FGbalMes.Width = Me.Width - N
        FGbalMes.Height = Me.Height - FGbalMes.Top - vHeightFor
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        If Permisos(3) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        Call Balance_Mes
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        PopupMenu Menur
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
            CmdFijar.Caption = "V"
            FGbalMes.FixedCols = 5
        Else
            FGbalMes.FixedCols = 0
            CmdFijar.Caption = "F"
        End If
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGbalMes
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
        If FGbalMes.Rows - 1 < 1 Then MsgBox "No hay información para exportar", vbInformation + vbOKOnly, "Atención": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
              FGbalMes.Outline (6)
              FGbalMes.SaveGrid ComArchivo.FileName, flexFileExcel, 3
              FGbalMes.Outline (4)
              FGbalMes.Outline (3)
              FGbalMes.Outline (2)
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atención"
End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub Cobaño_Click()
        FGbalMes.Rows = 1
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        If Iempresa <> Empresa Then
           Iempresa = Empresa
           Me.BackColor = Bcolor1
           Me.Caption = Trim(Titul)
           Call Define_Grids(FGbalMes)
           Call DGRILLA
        End If
        'Me.SetFocus
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
        Dim SetFoc As Object
        Dim FGFocus As VSFlexGrid
        Select Case KeyCode
               Case vbKeyB:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(Buscar) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Buscar)
               Case vbKeyI:
                   ' If (Shift = 2) And (BarraOperaciones.BotonActivo(Imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Imprimir)
               
        End Select
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
        If KeyAscii = vbKeyReturn Then
            SendKeys "{TAB}"
            KeyAscii = 0
        End If
End Sub

Private Sub Form_Load()
        Iempresa = Empresa
        Call Configurar_Pantalla
        
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = TamañoLetraTitulo
        CmdNivel(0).BackColor = Bcolor1
        CmdNivel(1).BackColor = Bcolor1
        CmdNivel(2).BackColor = Bcolor1
        CmdNivel(3).BackColor = Bcolor1
        CmdFijar.BackColor = Bcolor1
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana

        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
                
        Cobaño.Clear
        Sql = "SELECT PerAno FROM PERIODOS WHERE PerEmpr = '" & Empresa & "' Group by PerAno "
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                 Cobaño.AddItem rdoRs!PerAno
                 rdoRs.MoveNext
             Wend
        End If
        Call Define_Grids(FGbalMes)
        Idx = 0
        Call DGRILLA
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGbalMes
             .Rows = 1
             .Cols = 17
             .FixedCols = 0
             .FontName = "Arial"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColorBkg = &H80000018
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColor = ColorGrilla
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColor = vbBlack
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .MergeCells = flexMergeFree
             .OutlineCol = Bmes.Desc
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .TextMatrix(0, Bmes.Cuen) = "Cuenta"
             .TextMatrix(0, Bmes.Scue) = "Sub"
             .TextMatrix(0, Bmes.Aux) = "Aux"
             .TextMatrix(0, Bmes.Auxl) = "Aux 1"
             .TextMatrix(0, Bmes.Desc) = "Descripción"
             .TextMatrix(0, Bmes.Ene) = "Ene"
             .TextMatrix(0, Bmes.Feb) = "Feb"
             .TextMatrix(0, Bmes.Mar) = "Mar"
             .TextMatrix(0, Bmes.Abr) = "Abr"
             .TextMatrix(0, Bmes.May) = "May"
             .TextMatrix(0, Bmes.Jun) = "Jun"
             .TextMatrix(0, Bmes.Jul) = "Jul"
             .TextMatrix(0, Bmes.Ago) = "Ago"
             .TextMatrix(0, Bmes.Sep) = "Sep"
             .TextMatrix(0, Bmes.Oct) = "Oct"
             .TextMatrix(0, Bmes.Nov) = "Nov"
             .TextMatrix(0, Bmes.Dic) = "Dic"
             For K = Bmes.Ene To Bmes.Dic
                 .ColFormat(K) = "#,###.00"
                 .ColWidth(K) = 1100
             Next K
             .ColFormat(Bmes.Scue) = "00"
             .ColFormat(Bmes.Aux) = "00"
             .ColFormat(Bmes.Auxl) = "00"
             .ColWidth(Bmes.Cuen) = 1000
             .ColWidth(Bmes.Scue) = 500
             .ColWidth(Bmes.Aux) = 500
             .ColWidth(Bmes.Auxl) = 500
             .ColWidth(Bmes.Desc) = 2500
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        Call BarraOperaciones.Estado_Botones
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Sub DoGroup(Row, lvl)
     FGbalMes.IsSubtotal(Row) = True
     FGbalMes.RowOutlineLevel(Row) = lvl
End Sub

Private Sub Detalle()
        With FGbalMes
             Dim SubCx As String, AuxS As String, AuxS1 As String
             For K = 0 To 12
                 Acomulado(K) = 0
             Next K
             
             i = 0
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                    i = i + 1: Set ClaseT = New ClsDatos
                    ClaseT.Cuenta = Trim(rdoRs!CarCuen): ClaseT.Nombre = Trim(rdoRs!carnomb)
                    ClaseT.Scuenta = Trim(rdoRs!CarScue): ClaseT.Aux = Trim(rdoRs!CarAuxi)
                    ClaseT.Aux1 = Trim(rdoRs!CarAuxl)
                    Tabla.Add ClaseT, Str(i): Set ClaseT = Nothing
                    rdoRs.MoveNext
                Wend
             End If
                      
             Set ClaseT = New ClsDatos
             For i = 1 To Tabla.Count
                    Set ClaseT = Tabla(i)
                    Fcuenta = ClaseT.Cuenta: Titulo = ClaseT.Nombre
                    SubCx = ClaseT.Scuenta: AuxS = ClaseT.Aux: AuxS1 = ClaseT.Aux1
                    
                    Ha = ClaseT.Cuenta + ClaseT.Scuenta + ClaseT.Aux: Hw = ClaseT.Cuenta + ClaseT.Scuenta
                    If i + 1 <= Tabla.Count Then
                        Set ClaseT = Tabla(i + 1)
                        Hj = ClaseT.Cuenta + ClaseT.Scuenta + ClaseT.Aux: Hm = ClaseT.Aux1: Hy = ClaseT.Aux
                        Hw1 = ClaseT.Cuenta + ClaseT.Scuenta
                    End If
                    
                    .AddItem ""
                    .TextMatrix(.Rows - 1, Bmes.Cuen) = Fcuenta
                    .TextMatrix(.Rows - 1, Bmes.Desc) = Titulo
                    .TextMatrix(.Rows - 1, Bmes.Scue) = SubCx: .TextMatrix(.Rows - 1, Bmes.Aux) = AuxS: .TextMatrix(.Rows - 1, Bmes.Auxl) = AuxS1
                    For K = Bmes.Ene To Bmes.Dic
                           .TextMatrix(.Rows - 1, K) = 0
                    Next K
                    Pos = .Rows - 1
                    
                    If Mid(Fcuenta, 3, 2) = "00" Then
                        Posi(2) = .Rows - 1: DoGroup .Rows - 1, 2
                        ColBal.Add .Rows - 1, Trim(Fcuenta)
                    Else
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
                    End If
             Next i
             Set Tabla = Nothing
             Pos = Posi(1)
             J = 0
             For K = Bmes.Ene To Bmes.Dic
                 .TextMatrix(Pos, K) = Acomulado(J)
                 J = J + 1
             Next K
                       
             
        End With
End Sub

Private Sub Movimientos()
        Set ColMov = Nothing
        Sald = 0: SaldA = 0
        
        For J = 0 To 12
             Rmes(J) = 0
        Next J
        
        Progres.Value = Progres.Value + 1
        Sql = "SELECT TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes <=12  And TmoApl = '0' GROUP BY TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl"
        Progres.Value = Progres.Value + 1
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                   X = Mid(Trim(rdoRs!movcuen), 1, 1)
                   If X = 2 Or X = 3 Then l = -1 Else l = 1
                   ColMov.Add Val(rdoRs!MovValr) * l, Trim(rdoRs!TmoMes) + Trim(rdoRs!movcuen) + Trim(rdoRs!movscue) + Trim(rdoRs!movauxi) + Trim(rdoRs!movauxl)
                   Rmes(Val(rdoRs!TmoMes) - 1) = 1
                   If X = "4" Or X = "5" Or X = "6" Or X = "7" Then
                        Vector(Val(rdoRs!TmoMes) - 1) = Vector(Val(rdoRs!TmoMes) - 1) + Val(rdoRs!MovValr)
                   End If
                   rdoRs.MoveNext
             Wend
        End If
                
        T = 12
        For K = 0 To 11
            For J = 0 To K
                 Vector(T) = Vector(T) + Vector(J)
            Next J
            T = T + 1
        Next K
        
        For K = 0 To 11
             Vector(K) = Vector(K + 12) * -1
        Next K
        Progres.Value = Progres.Value + 1
        Me.Text1.Text = Sald
        
End Sub

Private Function Bus_Resulta() As Boolean
        For i = 0 To 7
           Cuentas(i) = Empty
        Next i
        
        Bus_Resulta = False
        If Sald < 0 Then A = "1" Else A = "2"
        Sql = "SELECT CarCuen,CarScue,CarAuxi,CarAuxl,CarUtil FROM CARTILLA " & _
              "WHERE CarEmpr = '" & Empresa & "' And CarUtil In ('1','2') "
        If Buscar_Res(rdoRs, Sql) = BDOk Then
              While Not rdoRs.EOF
                    If rdoRs!CarUtil = "1" Then
                        Cuentas(0) = rdoRs!CarCuen: Cuentas(1) = rdoRs!CarScue
                        Cuentas(2) = rdoRs!CarAuxi: Cuentas(3) = rdoRs!CarAuxl
                    Else
                        Cuentas(4) = rdoRs!CarCuen: Cuentas(5) = rdoRs!CarScue
                        Cuentas(6) = rdoRs!CarAuxi: Cuentas(7) = rdoRs!CarAuxl
                    End If
                    rdoRs.MoveNext
              Wend
               Bus_Resulta = True
        End If
        
End Function

Private Sub Balance_Mes()
        On Error GoTo sALIDA
        Dim Nm As Long
        
        With FGbalMes
             If Cobaño.Text = Empty Then MsgBox "Seleccione el Año", vbInformation + vbOKOnly, "Atención": Cobaño.SetFocus: Exit Sub
             Progres.Min = 0: Progres.Value = 1: Progres.Max = 11
             Set ColBal = Nothing
             Set ColSaldo = Nothing
             
             For K = 0 To 24
                 Vector(K) = 0
             Next K
             
             Nm = Cobaño.Text - 1
             h = 0: M = 0
             Sql = "SELECT * FROM PERIODOS WHERE PerAno = " & Cobaño.Text - 1 & " And Permes = '12' And PerApl = '0' And PerEsta = '1'"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 Call BusCar_Saldos(Nm, 4)
             Else
                 MsgBox "No hay Saldos para generar el balance", vbInformation + vbOKOnly, "Atención": Exit Sub
             End If
             Progres.Visible = True
             Progres.Value = Progres.Value + 1
             Call Movimientos
                         
             Progres.Value = Progres.Value + 1
             .Rows = 1
             .AddItem "": .TextMatrix(.Rows - 1, Bmes.Desc) = "ACTIVOS"
             .TextMatrix(.Rows - 1, Bmes.Cuen) = "1000": Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '1%' And Carcuen <> '1000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.Value = Progres.Value + 1
                   
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bmes.Desc) = "PASIVOS"
             .TextMatrix(.Rows - 1, Bmes.Cuen) = "2000": Q3 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '2%' And Carcuen <> '2000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bmes.Desc) = "PATRIMONIO"
             .TextMatrix(.Rows - 1, Bmes.Cuen) = "3000": Pq = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1: Q4 = .Rows - 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '3%' And Carcuen <> '3000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.Value = Progres.Value + 1
                          
             If Bus_Resulta = True Then
                  On Error Resume Next
                  N = "rr": S = "rr"
                  N = ColBal(Cuentas(0) + Cuentas(1) + Cuentas(2) + Cuentas(3)): J = Cuentas(0): M = Mid(Cuentas(0), 1, 2) + "00"
                  On Error Resume Next
                  S = ColBal(Cuentas(4) + Cuentas(5) + Cuentas(6) + Cuentas(7)): j1 = Cuentas(4): M1 = Mid(Cuentas(4), 1, 2) + "00"
                  Call llena_Utilidad(N, S)
                  
                  On Error Resume Next
                  N = "rr": S = "rr" 'Cuenta Padre
                  N = ColBal(J)
                  On Error Resume Next
                  S = ColBal(j1)
                  Call llena_Utilidad(N, S)
                                    
                  On Error Resume Next
                  N = "rr": S = "rr" 'Cuenta Principal a nivel de Subcuenta
                  N = ColBal(M)
                  On Error Resume Next
                  S = ColBal(M1)
                  Call llena_Utilidad(N, S)
                  
             End If
             Progres.Value = Progres.Value + 1
             J = 0
             For K = Bmes.Ene To Bmes.Dic
                   .TextMatrix(Pq, K) = Val(.TextMatrix(Pq, K)) + Vector(J)
                   J = J + 1
             Next K
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bmes.Desc) = "TOTAL PASIVO MAS PATRIMONIO"
             
             For K = Bmes.Ene To Bmes.Dic
                   .TextMatrix(.Rows - 1, K) = Val(.TextMatrix(Q3, K)) + Val(.TextMatrix(Q4, K))
             Next K
             DoGroup .Rows - 1, 1
             .Outline (3)
             .Outline (2)
             
             For K = Bmes.Ene To Bmes.Dic
                If Round(Round(Val(.TextMatrix(Q2, K)), 2) - (Round(Val(.TextMatrix(Q3, K)), 2) + Round(Val(.TextMatrix(Q4, K)), 2)), 2) <> 0 Then MsgBox "El Informe esta descuadeado ", vbInformation + vbOKOnly, "Atención": Exit For
             Next K
             
             For i = 1 To .Rows - 1
                  If i < .Rows Then
                        Select Case .RowOutlineLevel(i)
                               Case 1: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H4000&
                               Case 2: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbBlue
                               Case 3: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H40C0&
                               Case 4: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbMagenta
                               Case 5: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbRed
                        End Select
                        J = 0: P = 0
                        For K = Bmes.Ene To Bmes.Dic
                             If Val(.TextMatrix(i, K)) <> 0 Then J = 1
                             If Rmes(P) = 0 Then .TextMatrix(i, K) = 0
                             P = P + 1
                        Next K
                        If J = 0 And .RowOutlineLevel(i) <> 1 And .RowOutlineLevel(i) <> 2 Then .RemoveItem i: i = i - 1
                  End If
             Next i
             
             P = 0
             For K = Bmes.Ene To Bmes.Dic
                  .ColHidden(K) = False
                  If Rmes(P) = 0 Then .ColHidden(K) = True
                  P = P + 1
             Next K
             If .Rows > 2 Then .SetFocus: .Select 1, Bmes.Desc
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
                                       
                          
        End With
        Exit Sub
sALIDA: Call MensajeAdministrador
End Sub

Private Sub LLenado(Iz As Integer)
        With FGbalMes
             On Error Resume Next
             N = 0
             N = ColSaldo(Trim(.TextMatrix(.Rows - 1, Bmes.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bmes.Scue)) + Trim(.TextMatrix(.Rows - 1, Bmes.Aux)) + Trim(.TextMatrix(.Rows - 1, Bmes.Auxl)))
             If Mid(.TextMatrix(.Rows - 1, Bmes.Cuen), 1, 1) = "2" Or Mid(.TextMatrix(.Rows - 1, Bmes.Cuen), 1, 1) = "3" Then l = -1 Else l = 1
             
             If N <> 0 Then
                  N = N * l: P = 0
                  For K = Bmes.Ene To Bmes.Dic
                        .TextMatrix(.Rows - 1, K) = N
                        .TextMatrix(Posi(2), K) = Val(.TextMatrix(Posi(2), K)) + N
                        .TextMatrix(Posi(3), K) = Val(.TextMatrix(Posi(3), K)) + N
                        If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), K) = Val(.TextMatrix(Posi(4), K)) + N
                        If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), K) = Val(.TextMatrix(Posi(5), K)) + N
                      
                  Next K
             End If
            
             J = 1: M = 0
             For K = Bmes.Ene To Bmes.Dic
                 N = 0
                 On Error Resume Next
                 N = ColMov(Trim(Str(J)) + Trim(.TextMatrix(.Rows - 1, Bmes.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bmes.Scue)) + Trim(.TextMatrix(.Rows - 1, Bmes.Aux)) + Trim(.TextMatrix(.Rows - 1, Bmes.Auxl)))
                 If N <> 0 Then
                      For l = K To Bmes.Dic
                           .TextMatrix(.Rows - 1, l) = Val(.TextMatrix(.Rows - 1, l)) + N
                           .TextMatrix(Posi(2), l) = Val(.TextMatrix(Posi(2), l)) + N
                           .TextMatrix(Posi(3), l) = Val(.TextMatrix(Posi(3), l)) + N
                           If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), l) = Val(.TextMatrix(Posi(4), l)) + N
                           If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), l) = Val(.TextMatrix(Posi(5), l)) + N
                      Next l
                 End If
                 J = J + 1
                 
             Next K
             ColBal.Add .Rows - 1, Trim(.TextMatrix(.Rows - 1, Bmes.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bmes.Scue)) + Trim(.TextMatrix(.Rows - 1, Bmes.Aux)) + Trim(.TextMatrix(.Rows - 1, Bmes.Auxl))
             
             J = 0: M = 0
             For K = Bmes.Ene To Bmes.Dic
                   Acomulado(M) = Acomulado(M) + Val(.TextMatrix(.Rows - 1, K))
                   If Val(.TextMatrix(.Rows - 1, K)) <> 0 Then J = 1
                   M = M + 1
             Next K
             
             If Mid(Trim(.TextMatrix(.Rows - 1, Bmes.Cuen)), 1, 1) <> "3" And Posi(6) = 1 Then
                 If J = 0 Then .RemoveItem Pos
             End If
             
        End With
End Sub

Private Sub Imprimir_Informe(Ti As Integer)
        With FGbalMes
             On Error GoTo Imprime
             Dim Mh As String, GF As String, Iw As String
             If .Rows - 1 < 2 Then MsgBox "No hay información para imprimir", vbInformation + vbOKOnly, "Atención": Exit Sub
             S = Trim(Str(nDias))
             Mh = "ESTADO DE SITUACIÓN FINANCIERA MES A MES DEL AÑO " + Trim(Cobaño.Text)
             
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             
             Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                        
             For i = 1 To .Rows - 1
                      If .RowHidden(i) = False Then
                             Nivel = .RowOutlineLevel(i)
                             If .TextMatrix(i, Bmes.Desc) <> Empty Then
                                    If Trim(.TextMatrix(i, Bmes.Scue)) = "00" Then A = Empty Else A = .TextMatrix(i, Bmes.Scue)
                                    If Trim(.TextMatrix(i, Bmes.Aux)) = "00" Then B = Empty Else B = .TextMatrix(i, Bmes.Aux)
                                    If Trim(.TextMatrix(i, Bmes.Auxl)) = "00" Then c = Empty Else c = .TextMatrix(i, Bmes.Auxl)
                                    Sql = "INSERT INTO INFORME(InfCuen,InfScue,InfAuxi,InfAuxl,InfDesc,InfVal1,InfVal2,InfVal3,InfVal4," & _
                                          "InfVal5,InfVal6,InfVal7,InfVal8,InfVal9,InfVa10,InfVa11,InfVa12,InfNivl) " & _
                                          "VALUES ('" & .TextMatrix(i, Bmes.Cuen) & "','" & A & "', '" & B & "','" & c & "','" & Trim(.TextMatrix(i, Bmes.Desc)) & "'," & _
                                          "" & Val(.TextMatrix(i, Bmes.Ene)) & "," & Val(.TextMatrix(i, Bmes.Feb)) & "," & Val(.TextMatrix(i, Bmes.Mar)) & "," & _
                                          "" & Val(.TextMatrix(i, Bmes.Abr)) & "," & Val(.TextMatrix(i, Bmes.May)) & "," & Val(.TextMatrix(i, Bmes.Jun)) & "," & _
                                          "" & Val(.TextMatrix(i, Bmes.Jul)) & "," & Val(.TextMatrix(i, Bmes.Ago)) & "," & Val(.TextMatrix(i, Bmes.Sep)) & "," & _
                                          "" & Val(.TextMatrix(i, Bmes.Oct)) & "," & Val(.TextMatrix(i, Bmes.Nov)) & "," & Val(.TextMatrix(i, Bmes.Dic)) & "," & Nivel & ")"
                             Else
                                    Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
                             End If
                             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                      End If
             Next i
             Iw = "BalMes.rpt"
             Call Transaccion(BDCommit)
                                       
             MCReporte.DiscardSavedData = True
             MCReporte.Formulas(1) = "Titulo= '" & Mh & "'"
             MCReporte.Formulas(2) = "Empresa= '" & Sigl & "'"
             X = Inf + Iw: MCReporte.ReportFileName = X
             MCReporte.Destination = crptToWindow
             MCReporte.WindowTitle = "BALANCE GENERAL MES A MES"
             MCReporte.WindowMinButton = True
             MCReporte.WindowMaxButton = True
             MCReporte.WindowState = crptMaximized
             MCReporte.PrintReport
        End With
        Exit Sub
Imprime: MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atención"
End Sub

Private Sub llena_Utilidad(N As Variant, S As Variant)
        With FGbalMes
             J = 0
             For K = Bmes.Ene To Bmes.Dic
                   If Vector(J) > 0 Then 'Utilidad (1)
                        If N <> "rr" Then .TextMatrix(N, K) = Vector(J)
                   Else
                        If S <> "rr" Then .TextMatrix(S, K) = Vector(J)
                   End If
                   J = J + 1
             Next K
                                           
             
        End With
End Sub

Private Sub Menu_Click(Index As Integer)
        Select Case Index
               Case 1: FGbalMes.Outline (2)
               Case 3: FGbalMes.Outline (3)
               Case 5: FGbalMes.Outline (9)
        End Select
        Call Imprimir_Informe(Index)
End Sub
