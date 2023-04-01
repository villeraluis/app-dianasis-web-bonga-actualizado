VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Begin VB.Form FrmBalanceComparativo 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11880
   Icon            =   "FrmBalanceComparativo.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
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
      Height          =   735
      Left            =   405
      TabIndex        =   11
      Top             =   855
      Width           =   4515
      Begin VB.ComboBox Coba�o 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   900
         Style           =   2  'Dropdown List
         TabIndex        =   0
         ToolTipText     =   "Seleccione el A�o..."
         Top             =   315
         Width           =   960
      End
      Begin VB.ComboBox CobMeses 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   2610
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   315
         Width           =   1410
      End
      Begin VB.Label LblAno 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "A�o: "
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
         Left            =   450
         TabIndex        =   13
         Top             =   360
         Width           =   420
      End
      Begin VB.Label LblMes 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Mes:"
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
         Left            =   2115
         TabIndex        =   12
         Top             =   360
         Width           =   405
      End
   End
   Begin Crystal.CrystalReport XCReporte 
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
      Left            =   7920
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1575
      Width           =   285
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGbalance 
      Height          =   6270
      Left            =   405
      TabIndex        =   2
      Top             =   1890
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
      Left            =   7110
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1575
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   7380
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   1575
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "3"
      Height          =   285
      Index           =   2
      Left            =   7650
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Ver a nivel de Auxiliares"
      Top             =   1575
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
      BackColor       =   &H00E7D6B8&
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
      Left            =   8280
      Picture         =   "FrmBalanceComparativo.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1485
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
            Picture         =   "FrmBalanceComparativo.frx":6184
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBalanceComparativo.frx":66C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmBalanceComparativo.frx":67D4
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
      Left            =   3015
      TabIndex        =   10
      Top             =   1620
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
      Left            =   9810
      TabIndex        =   14
      Top             =   720
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Balance General Comparativo"
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
Attribute VB_Name = "FrmBalanceComparativo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Posi(6) As Long, Tabla As New Collection
Dim Acomulado(2) As Variant, Vector(2) As Variant
Dim ColMov As New Collection, Mes As Integer, Sald As Variant, ColBal As New Collection, SaldA As Variant
Dim Cuentas(7) As String, ColSal As New Collection
Dim ClaseT As New ClsDatos

Private Enum Bals
        Cuen = 0
        Scue = 1
        Aux = 2
        Auxl = 3
        Desc = 4
        Ene = 5
        Feb = 6
        Mar = 7
        Abr = 8
End Enum

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        If Permisos(3) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        Call Consul_Balan
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercai�n no Autorizada ", vbCritical + vbOKOnly, "Atenci�n": Exit Sub
        PopupMenu Menur
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
    'Me.SetFocus
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
        Dim SetFoc As Object
        Dim FGFocus As VSFlexGrid
        Select Case KeyCode
               Case vbKeyB:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(Buscar) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Buscar)
               Case vbKeyI:
                    'If (Shift = 2) And (BarraOperaciones.BotonActivo(Imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Imprimir)
               
        End Select

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
        If KeyAscii = vbKeyReturn Then
            SendKeys "{TAB}"
            KeyAscii = 0
        End If
End Sub

Private Sub Form_Load()
        Call Configurar_Pantalla
        Iempresa = Empresa
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama�oLetraTitulo
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        
        CmdNivel(0).BackColor = Bcolor1
        CmdNivel(1).BackColor = Bcolor1
        CmdNivel(2).BackColor = Bcolor1
        CmdNivel(3).BackColor = Bcolor1
        
        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
        
        CobMeses.AddItem ("Enero"): CobMeses.AddItem ("Febrero")
        CobMeses.AddItem ("Marzo"): CobMeses.AddItem ("Abril")
        CobMeses.AddItem ("Mayo"): CobMeses.AddItem ("Junio")
        CobMeses.AddItem ("Julio"): CobMeses.AddItem ("Agosto")
        CobMeses.AddItem ("Septiembre"): CobMeses.AddItem ("Octubre")
        CobMeses.AddItem ("Noviembre"): CobMeses.AddItem ("Diciembre")
        
        Coba�o.Clear
        Sql = "SELECT PerAno FROM PERIODOS WHERE PerEmpr = '" & Empresa & "' Group by PerAno "
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                 Coba�o.AddItem rdoRs!PerAno
                 rdoRs.MoveNext
             Wend
        End If
        
        Call Define_Grids(FGbalance)
        Idx = 0
        Call DGRILLA
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGbalance
             .Rows = 1
             .Cols = 9
             .FixedCols = 0
             .FontName = "Arial"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .ForeColor = vbBlack
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .MergeCells = flexMergeFree
             .OutlineCol = Bals.Desc
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .TextMatrix(0, Bals.Cuen) = "Cuenta"
             .TextMatrix(0, Bals.Scue) = "Sub"
             .TextMatrix(0, Bals.Aux) = "Aux"
             .TextMatrix(0, Bals.Auxl) = "Aux 1"
             .TextMatrix(0, Bals.Desc) = "Descripci�n"
             .TextMatrix(0, Bals.Ene) = "Actual($)"
             .TextMatrix(0, Bals.Feb) = "Anterior($)"
             .TextMatrix(0, Bals.Mar) = "Variaci�n($)"
             .TextMatrix(0, Bals.Abr) = "Var %"
             .ColFormat(Bals.Ene) = "#,###.00"
             .ColFormat(Bals.Feb) = "#,###.00"
             .ColFormat(Bals.Mar) = "#,###.00"
             .ColFormat(Bals.Abr) = "#,###.00"
             .ColFormat(Bals.Scue) = "00"
             .ColFormat(Bals.Aux) = "00"
             .ColFormat(Bals.Auxl) = "00"
             .ColWidth(Bals.Cuen) = 1000
             .ColWidth(Bals.Scue) = 800
             .ColWidth(Bals.Aux) = 800
             .ColWidth(Bals.Auxl) = 800
             .ColWidth(Bals.Desc) = 4500
             .ColWidth(Bals.Ene) = 1800
             .ColWidth(Bals.Feb) = 1800
             .ColWidth(Bals.Mar) = 1500
             .ColWidth(Bals.Abr) = 900
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
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
     FGbalance.IsSubtotal(Row) = True
     FGbalance.RowOutlineLevel(Row) = lvl
End Sub

Private Sub Detalle()
    With FGbalance
         Dim SubCx As String, AuxS As String, AuxS1 As String
         Acomulado(0) = 0: Acomulado(1) = 0
         
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
             .TextMatrix(.Rows - 1, Bals.Cuen) = Fcuenta
             .TextMatrix(.Rows - 1, Bals.Desc) = Titulo
             .TextMatrix(.Rows - 1, Bals.Ene) = 0: .TextMatrix(.Rows - 1, Bals.Feb) = 0
             .TextMatrix(.Rows - 1, Bals.Scue) = SubCx: .TextMatrix(.Rows - 1, Bals.Aux) = AuxS: .TextMatrix(.Rows - 1, Bals.Auxl) = AuxS1
             Pos = .Rows - 1
             
             If Mid(Fcuenta, 3, 2) = "00" Then
                 Posi(2) = .Rows - 1: DoGroup .Rows - 1, 2
                 Vector(0) = 0
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
         .TextMatrix(Pos, Bals.Ene) = Acomulado(0): .TextMatrix(Pos, Bals.Feb) = Acomulado(1)
         
         
    End With
End Sub

Private Sub Movimientos()
        Set ColMov = Nothing
        Sald = 0: SaldA = 0
        Progres.Value = Progres.Value + 1
        Sql = "SELECT TmoAno,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And (TmoAno = " & Coba�o.Text & " Or TmoAno = " & Coba�o.Text - 1 & " ) And TmoMes <= " & Mes & " And TmoApl = '0' GROUP BY TmoAno,MovCuen,MovScue,MovAuxi,MovAuxl"
        Progres.Value = Progres.Value + 1
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                   X = Mid(Trim(rdoRs!movcuen), 1, 1)
                   If X = 2 Or X = 3 Then l = -1 Else l = 1
                   ColMov.Add Val(rdoRs!MovValr) * l, Trim(rdoRs!TmoAno) + Trim(rdoRs!movcuen) + Trim(rdoRs!movscue) + Trim(rdoRs!movauxi) + Trim(rdoRs!movauxl)
                   If X = "4" Or X = "5" Or X = "6" Or X = "7" Then
                       If rdoRs!TmoAno = Coba�o.Text Then Sald = Sald + Val(rdoRs!MovValr) Else SaldA = SaldA + Val(rdoRs!MovValr)
                   End If
                   rdoRs.MoveNext
             Wend
        End If

        Sald = Sald * -1: SaldA = SaldA * -1
        
        Progres.Value = Progres.Value + 1
        Me.Text1.Text = Sald
        
End Sub


Private Function Bus_Resulta() As Boolean

        For i = 0 To 7
           Cuentas(i) = Empty
        Next i
        
        Bus_Resulta = False
        If Sald < 0 Then A = "1" Else A = "2"
        Sql = "SELECT CarCuen,CarScue,CarAuxi,CarAuxl,CarUtil FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarUtil In ('1','2') "
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

Private Sub Consul_Balan()

        Dim Nm As Long, Th As Integer
        
        With FGbalance
             If Coba�o.Text = Empty Then MsgBox "Seleccione el A�o", vbInformation + vbOKOnly, "Atenci�n": Coba�o.SetFocus: Exit Sub
             If CobMeses.Text = Empty Then MsgBox "Seleccione el Mes", vbInformation + vbOKOnly, "Atenci�n": CobMeses.SetFocus: Exit Sub
             Progres.Min = 0: Progres.Value = 1: Progres.Max = 11
             Set ColBal = Nothing
             Set ColSaldo = Nothing
             Vector(0) = 0
             
             Nm = Coba�o.Text - 1
             h = 0: M = 0
             Sql = "SELECT * FROM PERIODOS WHERE (PerAno = " & Coba�o.Text - 1 & ") And Permes = '12' And PerApl = '0' And PerEsta = '1'"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 While Not rdoRs.EOF
                      If rdoRs!PerAno = Coba�o.Text - 1 Then h = 1 Else M = 1
                      rdoRs.MoveNext
                 Wend
                 If h = 0 Then MsgBox "No hay Saldos para generar el balance", vbInformation + vbOKOnly, "Atenci�n": Exit Sub Else Call BusCar_Saldos(Nm, 4)
             Else
                 MsgBox "No hay Saldos para generar el balance", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
             End If
             
             If Hay_Datos(Empresa, Coba�o.Text, Mes) = False Then
                 If MsgBox("No Hay informaci�n del mes seleccionado" & Chr(13) & "Desea continuar?", vbQuestion + vbYesNo, "Atenci�n") = vbNo Then Exit Sub
             End If
             
             Progres.Visible = True
             Progres.Value = Progres.Value + 1
             
             Call Movimientos
             Set ColSal = ColSaldo
             Set ColSaldo = Nothing
             Th = Mes
             Nm = Coba�o.Text - 2: Call BusCar_Saldos(Nm, 4) 'Busqueda de los Saldos
             Call Numero_Dias(Coba�o.Text, Th)
             
             Progres.Value = Progres.Value + 1
             .Rows = 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "ACTIVOS"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "1000": Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '1%' And Carcuen <> '1000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "PASIVOS"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "2000": Q3 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '2%' And Carcuen <> '2000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "PATRIMONIO"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "3000": Pq = .Rows - 1
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
             .TextMatrix(Pq, Bals.Ene) = Val(.TextMatrix(Pq, Bals.Ene)) + Sald
             .TextMatrix(Pq, Bals.Feb) = Val(.TextMatrix(Pq, Bals.Feb)) + SaldA
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "TOTAL PASIVO MAS PATRIMONIO"
             .TextMatrix(.Rows - 1, Bals.Ene) = Val(.TextMatrix(Q3, Bals.Ene)) + Val(.TextMatrix(Q4, Bals.Ene))
             .TextMatrix(.Rows - 1, Bals.Feb) = Val(.TextMatrix(Q3, Bals.Feb)) + Val(.TextMatrix(Q4, Bals.Feb))
             DoGroup .Rows - 1, 1
             .Outline (3)
             .Outline (2)
             
             If Round(Round(Val(.TextMatrix(Q2, Bals.Ene)), 2) - (Round(Val(.TextMatrix(Q3, Bals.Ene)), 2) + Round(Val(.TextMatrix(Q4, Bals.Ene)), 2)), 2) <> 0 Then MsgBox "El Informe esta descuadeado ", vbInformation + vbOKOnly, "Atenci�n"
             If Round(Round(Val(.TextMatrix(Q2, Bals.Feb)), 2) - (Round(Val(.TextMatrix(Q3, Bals.Feb)), 2) + Round(Val(.TextMatrix(Q4, Bals.Feb)), 2)), 2) <> 0 Then MsgBox "El Informe esta descuadeado ", vbInformation + vbOKOnly, "Atenci�n"
             For i = 1 To .Rows - 1
                  If i < .Rows Then
                        Select Case .RowOutlineLevel(i)
                               Case 1: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H4000&
                               Case 2: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbBlue
                               Case 3: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H40C0&
                               Case 4: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbMagenta
                               Case 5: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbRed
                        End Select
                        .TextMatrix(i, Bals.Mar) = Val(.TextMatrix(i, Bals.Ene)) - Val(.TextMatrix(i, Bals.Feb))
                        If Val(.TextMatrix(i, Bals.Feb)) <> 0 Then .TextMatrix(i, Bals.Abr) = Round(Val(.TextMatrix(i, Bals.Ene)) / Val(.TextMatrix(i, Bals.Feb)) * 100, 1) - 100 Else .TextMatrix(i, Bals.Abr) = 0
                        If Val(.TextMatrix(i, Bals.Ene)) = 0 And Val(.TextMatrix(i, Bals.Feb)) = 0 And .RowOutlineLevel(i) <> 1 And .RowOutlineLevel(i) <> 2 Then .RemoveItem i: i = i - 1
                  End If
             Next i
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
             
             If .Rows > 3 Then .SetFocus: .Select 2, Bals.Desc
                          
                          
        End With
End Sub
Private Sub LLenado(Iz As Integer)
        With FGbalance
             On Error Resume Next
             N = 0: S = 0
             N = ColSal(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
             On Error Resume Next
             S = ColSaldo(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
             If Mid(.TextMatrix(.Rows - 1, Bals.Cuen), 1, 1) = "2" Or Mid(.TextMatrix(.Rows - 1, Bals.Cuen), 1, 1) = "3" Then l = -1 Else l = 1
             
             If N <> 0 Or S <> 0 Then
                  N = N * l: S = S * l
                  .TextMatrix(.Rows - 1, Bals.Ene) = N: .TextMatrix(.Rows - 1, Bals.Feb) = S
                  .TextMatrix(Posi(2), Bals.Ene) = Val(.TextMatrix(Posi(2), Bals.Ene)) + N
                  .TextMatrix(Posi(3), Bals.Ene) = Val(.TextMatrix(Posi(3), Bals.Ene)) + N
                  
                  .TextMatrix(Posi(2), Bals.Feb) = Val(.TextMatrix(Posi(2), Bals.Feb)) + S
                  .TextMatrix(Posi(3), Bals.Feb) = Val(.TextMatrix(Posi(3), Bals.Feb)) + S
                  
                  If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), Bals.Ene) = Val(.TextMatrix(Posi(4), Bals.Ene)) + N: .TextMatrix(Posi(4), Bals.Feb) = Val(.TextMatrix(Posi(4), Bals.Feb)) + S
                  If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), Bals.Ene) = Val(.TextMatrix(Posi(5), Bals.Ene)) + N: .TextMatrix(Posi(5), Bals.Feb) = Val(.TextMatrix(Posi(5), Bals.Feb)) + S
                  Acomulado(0) = Acomulado(0) + N:: Acomulado(1) = Acomulado(1) + S
             End If
            
             On Error Resume Next
             N = 0: S = 0
             N = ColMov(Trim(Coba�o.Text) + Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
             On Error Resume Next
             S = ColMov(Trim(Coba�o.Text - 1) + Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
             If N <> 0 Or S <> 0 Then
                  .TextMatrix(.Rows - 1, Bals.Ene) = Val(.TextMatrix(.Rows - 1, Bals.Ene)) + N
                  .TextMatrix(.Rows - 1, Bals.Feb) = Val(.TextMatrix(.Rows - 1, Bals.Feb)) + S
                  
                  .TextMatrix(Posi(2), Bals.Ene) = Val(.TextMatrix(Posi(2), Bals.Ene)) + N
                  .TextMatrix(Posi(3), Bals.Ene) = Val(.TextMatrix(Posi(3), Bals.Ene)) + N
                  
                  .TextMatrix(Posi(2), Bals.Feb) = Val(.TextMatrix(Posi(2), Bals.Feb)) + S
                  .TextMatrix(Posi(3), Bals.Feb) = Val(.TextMatrix(Posi(3), Bals.Feb)) + S
                  
                  If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), Bals.Ene) = Val(.TextMatrix(Posi(4), Bals.Ene)) + N: .TextMatrix(Posi(4), Bals.Feb) = Val(.TextMatrix(Posi(4), Bals.Feb)) + S
                  If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), Bals.Ene) = Val(.TextMatrix(Posi(5), Bals.Ene)) + N: .TextMatrix(Posi(5), Bals.Feb) = Val(.TextMatrix(Posi(5), Bals.Feb)) + S
                  Acomulado(0) = Acomulado(0) + N: Acomulado(1) = Acomulado(1) + S
             End If
             ColBal.Add .Rows - 1, Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl))
             If Mid(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)), 1, 1) <> "3" And Posi(6) = 1 Then
                 If Val(.TextMatrix(.Rows - 1, Bals.Ene)) = 0 And Val(.TextMatrix(.Rows - 1, Bals.Feb)) = 0 Then .RemoveItem Pos
             End If
             
        End With
End Sub

Private Sub Imprimir_Informe(Ti As Integer)
        With FGbalance
             On Error GoTo Imprime
             Dim Mh As String, GF As String, Iw As String
             If .Rows - 1 < 2 Then MsgBox "No hay informaci�n para imprimir", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
             S = Trim(Str(nDias))
             Mh = "BALANCES GENERALES AL " + S + " DE " + UCase(Trim(Me.CobMeses.Text)) + " DE " + Trim(Coba�o.Text) + " Y " + Trim(Coba�o.Text - 1)
             
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             
             Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                        
             For i = 1 To .Rows - 1
                      If .RowHidden(i) = False Then
                             Nivel = .RowOutlineLevel(i)
                             If .TextMatrix(i, Bals.Desc) <> Empty Then
                                    If Trim(.TextMatrix(i, Bals.Scue)) = "00" Then A = Empty Else A = .TextMatrix(i, Bals.Scue)
                                    If Trim(.TextMatrix(i, Bals.Aux)) = "00" Then B = Empty Else B = .TextMatrix(i, Bals.Aux)
                                    If Trim(.TextMatrix(i, Bals.Auxl)) = "00" Then c = Empty Else c = .TextMatrix(i, Bals.Auxl)
                                    Sql = "INSERT INTO INFORME(InfCuen,InfScue,InfAuxi,InfAuxl,InfDesc,InfVal1,InfVal2,InfVal3,InfVal4,InfNivl) VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & A & "', '" & B & "','" & c & "','" & Trim(.TextMatrix(i, Bals.Desc)) & "'," & Val(.TextMatrix(i, Bals.Ene)) & "," & Val(.TextMatrix(i, Bals.Feb)) & "," & Val(.TextMatrix(i, Bals.Mar)) & "," & Val(.TextMatrix(i, Bals.Abr)) & "," & Nivel & ")"
                             Else
                                    Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
                             End If
                             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                      End If
             Next i
             Iw = "BlsCom.rpt"
             Call Transaccion(BDCommit)
                                       
             XCReporte.DiscardSavedData = True
             XCReporte.Formulas(1) = "Titulo= '" & Mh & "'"
             XCReporte.Formulas(2) = "Empresa= '" & DatosEmpresa(1) & "'"
             XCReporte.Formulas(3) = "Ano= '" & Coba�o.Text & "'"
             XCReporte.Formulas(4) = "Ano1= '" & Coba�o.Text - 1 & "'"
             X = Inf + Iw: XCReporte.ReportFileName = X
             XCReporte.Destination = crptToWindow
             XCReporte.WindowTitle = "BALANCE GENERAL COMPARATIVO"
             XCReporte.WindowMinButton = True
             XCReporte.WindowMaxButton = True
             XCReporte.WindowState = crptMaximized
             XCReporte.PrintReport
        End With
        Exit Sub
Imprime: MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"
End Sub


Private Sub llena_Utilidad(N As Variant, S As Variant)

        With FGbalance
             If Sald > 0 Then 'Utilidad (1)
                 If N <> "rr" Then .TextMatrix(N, Bals.Ene) = Sald
             Else
                 If S <> "rr" Then .TextMatrix(S, Bals.Ene) = Sald
             End If
                              
             If SaldA > 0 Then 'Utilidad (1)
                 If N <> "rr" Then .TextMatrix(N, Bals.Feb) = SaldA
             Else
                 If S <> "rr" Then .TextMatrix(S, Bals.Feb) = SaldA
             End If
        End With
        
End Sub

Private Sub Menu_Click(Index As Integer)
        Select Case Index
               Case 1: FGbalance.Outline (2)
               Case 3: FGbalance.Outline (3)
               Case 5: FGbalance.Outline (9)
        End Select
        Call Imprimir_Informe(Index)
End Sub

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGbalance.Left + 300
        FGbalance.Width = Me.Width - N
        FGbalance.Height = Me.Height - FGbalance.Top - vHeightFor
        
End Sub
