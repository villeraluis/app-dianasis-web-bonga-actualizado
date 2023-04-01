VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form FrmPyGComparativo 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11880
   ForeColor       =   &H00008000&
   Icon            =   "FrmPyGComparativo.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   11880
   StartUpPosition =   2  'CenterScreen
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
      Left            =   7830
      Picture         =   "FrmPyGComparativo.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   20
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1575
      Width           =   1350
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGPyG 
      Height          =   6135
      Left            =   405
      TabIndex        =   2
      Top             =   1980
      Width           =   11100
      _cx             =   19579
      _cy             =   10821
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
      BackColor       =   12640511
      ForeColor       =   128
      BackColorFixed  =   4194304
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483647
      ForeColorSel    =   -2147483635
      BackColorBkg    =   8421504
      BackColorAlternate=   12640511
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
      TabIndex        =   16
      Top             =   855
      Width           =   4515
      Begin VB.ComboBox CobMeses 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   2610
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   315
         Width           =   1410
      End
      Begin VB.ComboBox Cobaño 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   900
         Style           =   2  'Dropdown List
         TabIndex        =   0
         ToolTipText     =   "Seleccione el Año..."
         Top             =   315
         Width           =   960
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
         TabIndex        =   18
         Top             =   360
         Width           =   405
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
         Left            =   405
         TabIndex        =   17
         Top             =   360
         Width           =   420
      End
   End
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   5490
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Fijar Columnas de Nombres.."
      Top             =   1665
      Width           =   255
   End
   Begin VB.CheckBox CheMes 
      BackColor       =   &H00E7D6B8&
      Caption         =   "Meses"
      Height          =   285
      Left            =   5805
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Ver Meses Ejeutados y Proyectados..."
      Top             =   1665
      Width           =   825
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGguia 
      Height          =   6135
      Left            =   10035
      TabIndex        =   13
      Top             =   1800
      Visible         =   0   'False
      Width           =   1830
      _cx             =   3228
      _cy             =   10821
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
      BackColor       =   12640511
      ForeColor       =   128
      BackColorFixed  =   4194304
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483647
      ForeColorSel    =   -2147483635
      BackColorBkg    =   8421504
      BackColorAlternate=   12640511
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
      Cols            =   3
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
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "4"
      Height          =   285
      Index           =   3
      Left            =   7470
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1665
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "1"
      Height          =   285
      Index           =   0
      Left            =   6660
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   1665
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   6930
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   1665
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "3"
      Height          =   285
      Index           =   2
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Ver a nivel de Auxiliares"
      Top             =   1665
      Width           =   285
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   6300
      TabIndex        =   10
      Text            =   "Text1"
      Top             =   1530
      Visible         =   0   'False
      Width           =   1230
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   3735
      Top             =   90
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
            Picture         =   "FrmPyGComparativo.frx":6184
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmPyGComparativo.frx":66C8
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmPyGComparativo.frx":67D4
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog ComArchivo 
      Left            =   0
      Top             =   1080
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   450
      TabIndex        =   11
      Top             =   1710
      Visible         =   0   'False
      Width           =   6180
      _ExtentX        =   10901
      _ExtentY        =   423
      _Version        =   393216
      Appearance      =   1
      Max             =   10000
   End
   Begin Crystal.CrystalReport Preporte 
      Left            =   720
      Top             =   270
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGdatos 
      Height          =   4695
      Left            =   90
      TabIndex        =   12
      Top             =   3735
      Visible         =   0   'False
      Width           =   11100
      _cx             =   19579
      _cy             =   8281
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
      ForeColor       =   128
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
   Begin MSChart20Lib.MSChart MSChart1 
      Height          =   5910
      Left            =   405
      OleObjectBlob   =   "FrmPyGComparativo.frx":6C28
      TabIndex        =   14
      Top             =   1980
      Visible         =   0   'False
      Width           =   11400
   End
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   9900
      TabIndex        =   19
      Top             =   810
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VB.Label LblDatos 
      BackColor       =   &H00800000&
      Caption         =   "      Estado de Resultado Ejecutado Vs Proyectado"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   270
      Left            =   405
      TabIndex        =   15
      Top             =   7875
      Visible         =   0   'False
      Width           =   11400
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Estado de Resultados Comparativo"
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
      TabIndex        =   9
      Top             =   250
      Width           =   12000
   End
   Begin VB.Menu MenuR 
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
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   8
      End
      Begin VB.Menu Menu 
         Caption         =   "Año Selección"
         Index           =   9
      End
   End
End
Attribute VB_Name = "FrmPyGComparativo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Posi(6) As Long, Tabla As New Collection
Dim Acomulado(25) As Variant, Vector(25) As Variant, Ix As Boolean, Dz As Boolean
Dim ColMov As New Collection, Mes As Integer, Sald As Variant, SaldA As Variant
Dim Cuentas(3) As String, ColFormato As New Collection
Dim ClaseT As New ClsDatos

Private Enum Datos
        Cuen = 0
        Scue = 1
        Aux = 2
        Auxl = 3
        Desc = 4
        EneE = 5 'ejecutado
        PenE = 6 'porcentaje del mes
        FebE = 7
        Pfeb = 8
        MarE = 9
        PMar = 10
        AbrE = 11
        Pabr = 12
        MayE = 13
        Pmay = 14
        JunE = 15
        Pjun = 16
        JulE = 17
        Pjul = 18
        AgoE = 19
        Pago = 20
        SepE = 21
        Psep = 22
        OctE = 23
        Poct = 24
        NovE = 25
        Pnov = 26
        DicE = 27
        Pdic = 28
        TotE = 29
        Ptot = 30
        EneP = 31 'Año Anterior
        AenE = 32 'porcentaje Año anterior
        FebP = 33
        Afeb = 34
        MarP = 35
        AMar = 36
        AbrP = 37
        Aabr = 38
        MayP = 39
        Amay = 40
        JunP = 41
        Ajun = 42
        JulP = 43
        Ajul = 44
        AgoP = 45
        Aago = 46
        SepP = 47
        Asep = 48
        OctP = 49
        Aoct = 50
        NovP = 51
        Anov = 52
        DicP = 53
        Adic = 54
        TotP = 55
        Atot = 56
        Vpre = 57 'Variación Absouta Presupuestada
        Cum = 58 'Cumplimiento
        Dat = 59 'datos
           
End Enum
Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = Me.FGPyG.Left + 300
        FGPyG.Width = Me.Width - N
        FGPyG.Height = Me.Height - FGPyG.Top - vHeightFor
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        If Permisos(3) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        Call Consul_PyG
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        PopupMenu Menur
End Sub

Private Sub CheMes_Click()
       If CheMes.value = 1 Then Call Mostrar_Col(False, True) Else Call Mostrar_Col(True, False)
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
            CmdFijar.Caption = "V"
            FGPyG.FixedCols = 5
        Else
            FGPyG.FixedCols = 0
            CmdFijar.Caption = "F"
        End If
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGPyG
                Select Case Index
                       Case 0
                            .Outline (4)
                            .Outline (3)
                            .Outline (2)
                            .Outline (1)
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
        If FGPyG.Rows - 1 < 2 Then MsgBox "No hay información", vbInformation + vbOKOnly, "Atención": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             Call Mostrar_Col(False, True)
             FGPyG.Outline (6)
             FGPyG.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             FGPyG.Outline (4)
             FGPyG.Outline (3)
             FGPyG.Outline (2)
             FGPyG.Outline (1)
             Call Mostrar_Col(True, False)
        End If
        Me.FGdatos.SaveGrid App.Path & "\pyg.xls", flexFileExcel
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atención"
End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub Cobaño_Click()
        FGPyG.Rows = 2
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
        FGPyG.Rows = 2
End Sub

Private Sub FGPyG_DblClick()
        
        If Trim(FGPyG.TextMatrix(FGPyG.Row, Datos.Desc)) = Empty Then Exit Sub
        LblDatos.Visible = True
        LblDatos.Caption = "          " + Trim(FGPyG.TextMatrix(FGPyG.Row, Datos.Desc))
        Dim Dibujo(11, 1 To 4)
        Dibujo(0, 1) = "Ene"
        Dibujo(1, 1) = "Feb"
        Dibujo(2, 1) = "Mar"
        Dibujo(3, 1) = "Abr"
        Dibujo(4, 1) = "May"
        Dibujo(5, 1) = "Jun"
        Dibujo(6, 1) = "Jul"
        Dibujo(7, 1) = "Ago"
        Dibujo(8, 1) = "Sep"
        Dibujo(9, 1) = "Oct"
        Dibujo(10, 1) = "Nov"
        Dibujo(11, 1) = "Dic"
        
        For J = 0 To 11
           Dibujo(J, 2) = Empty
           Dibujo(J, 3) = Empty
           Dibujo(J, 4) = Empty
           
        Next J
        
        With MSChart1
             J = 0
             For M = Datos.EneE To Datos.DicE
                 If M Mod 2 <> 0 Then
                    Row = 1
                    Dibujo(J, 2) = J
                    If Val(FGPyG.TextMatrix(FGPyG.Row, M)) <> 0 Then Dibujo(J, 3) = Round(Val(FGPyG.TextMatrix(FGPyG.Row, M)) / 1000)
                    If Val(FGPyG.TextMatrix(FGPyG.Row, M + 26)) <> 0 Then Dibujo(J, 4) = Round(Val(FGPyG.TextMatrix(FGPyG.Row, M + 26)) / 1000)
                    J = J + 1
                 End If
             Next M
             .ChartData = Dibujo
             .ColumnCount = 3
             .Column = 1
             .Column = 2
             .ColumnLabel = "Actual"
             .Column = 3
             .ColumnLabel = "Anterior "
             .ShowLegend = True
             .Visible = True
             FGPyG.Visible = False
        End With
            
  Exit Sub
Grafi:  MsgBox "No se Puede Visualizar la Opción", vbInformation + vbOKOnly, "Atención"
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        If Iempresa <> Empresa Then
           Iempresa = Empresa
           Me.BackColor = Bcolor1
           Me.Caption = Trim(Titul)
           Call Define_Grids(FGPyG)
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
        Me.CheMes.BackColor = Bcolor1
        Me.CmdFijar.BackColor = Bcolor1
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        
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
        
        Cobaño.Clear
        Sql = "SELECT PerAno FROM PERIODOS WHERE PerEmpr = '" & Empresa & "' Group by PerAno "
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                 Cobaño.AddItem rdoRs!PerAno
                 rdoRs.MoveNext
             Wend
        End If
        
        Call Define_Grids(FGPyG)
        Call Define_Grids(FGdatos)
        Idx = 0
        Call DGRILLA
        FGdatos.Cols = 40
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGPyG
             .Rows = 2
             .Cols = 60
             .FixedCols = 0
             .FixedRows = 2
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
             .MergeCells = flexMergeFixedOnly
             .OutlineCol = Datos.Desc
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpText, 0, Datos.Cuen, 1, Datos.Cuen) = "Cuenta"
             .Cell(flexcpText, 0, Datos.Scue, 1, Datos.Scue) = "Sub"
             .Cell(flexcpText, 0, Datos.Aux, 1, Datos.Aux) = "Aux"
             .Cell(flexcpText, 0, Datos.Auxl, 1, Datos.Auxl) = "Aux 1"
             .Cell(flexcpText, 0, Datos.Desc, 1, Datos.Desc) = "Descripción"
             .MergeCol(Datos.Desc) = True
             .MergeCol(Datos.Cuen) = True
             .MergeCol(Datos.Scue) = True
             .MergeCol(Datos.Aux) = True
             .MergeCol(Datos.Auxl) = True
             .ColFormat(Datos.Scue) = "00"
             .ColFormat(Datos.Aux) = "00"
             .ColFormat(Datos.Auxl) = "00"
             .ColWidth(Datos.Cuen) = 800
             .ColWidth(Datos.Scue) = 600
             .ColWidth(Datos.Aux) = 600
             .ColWidth(Datos.Auxl) = 600
             .ColWidth(Datos.Desc) = 5000
             .TextMatrix(0, Datos.EneE) = "Ene"
             .TextMatrix(0, Datos.PenE) = "Ene"
             .TextMatrix(0, Datos.EneP) = "Ene"
             .TextMatrix(0, Datos.AenE) = "Ene"
             .TextMatrix(0, Datos.FebE) = "Feb"
             .TextMatrix(0, Datos.Pfeb) = "Feb"
             .TextMatrix(0, Datos.FebP) = "Feb"
             .TextMatrix(0, Datos.Afeb) = "Feb"
             .TextMatrix(0, Datos.MarE) = "Mar"
             .TextMatrix(0, Datos.PMar) = "Mar"
             .TextMatrix(0, Datos.MarP) = "Mar"
             .TextMatrix(0, Datos.AMar) = "Mar"
             .TextMatrix(0, Datos.AbrE) = "Abr"
             .TextMatrix(0, Datos.Pabr) = "Abr"
             .TextMatrix(0, Datos.AbrP) = "Abr"
             .TextMatrix(0, Datos.Aabr) = "Abr"
             .TextMatrix(0, Datos.MayE) = "May"
             .TextMatrix(0, Datos.MayP) = "May"
             .TextMatrix(0, Datos.Pmay) = "May"
             .TextMatrix(0, Datos.Amay) = "May"
             .TextMatrix(0, Datos.JunE) = "Jun"
             .TextMatrix(0, Datos.Pjun) = "Jun"
             .TextMatrix(0, Datos.JunP) = "Jun"
             .TextMatrix(0, Datos.Ajun) = "Jun"
             .TextMatrix(0, Datos.JulE) = "Jul"
             .TextMatrix(0, Datos.Pjul) = "Jul"
             .TextMatrix(0, Datos.JulP) = "Jul"
             .TextMatrix(0, Datos.Ajul) = "Jul"
             .TextMatrix(0, Datos.AgoE) = "Ago"
             .TextMatrix(0, Datos.AgoP) = "Ago"
             .TextMatrix(0, Datos.Pago) = "Ago"
             .TextMatrix(0, Datos.Aago) = "Ago"
             .TextMatrix(0, Datos.SepE) = "Sep"
             .TextMatrix(0, Datos.Psep) = "Sep"
             .TextMatrix(0, Datos.SepP) = "Sep"
             .TextMatrix(0, Datos.Asep) = "Sep"
             .TextMatrix(0, Datos.OctE) = "Oct"
             .TextMatrix(0, Datos.Poct) = "Oct"
             .TextMatrix(0, Datos.OctP) = "Oct"
             .TextMatrix(0, Datos.Aoct) = "Oct"
             .TextMatrix(0, Datos.NovE) = "Nov"
             .TextMatrix(0, Datos.NovP) = "Nov"
             .TextMatrix(0, Datos.Pnov) = "Nov"
             .TextMatrix(0, Datos.Anov) = "Nov"
             .TextMatrix(0, Datos.DicE) = "Dic"
             .TextMatrix(0, Datos.Pdic) = "Dic"
             .TextMatrix(0, Datos.DicP) = "Dic"
             .TextMatrix(0, Datos.Adic) = "Dic"
             .TextMatrix(0, Datos.TotE) = "Acumulado"
             .TextMatrix(0, Datos.Ptot) = "Acumulado"
             .TextMatrix(0, Datos.TotP) = "Acumulado"
             .TextMatrix(0, Datos.Atot) = "Acumulado"
             .TextMatrix(1, Datos.Ptot) = "%"
             .TextMatrix(1, Datos.Atot) = "%"
             .TextMatrix(0, Datos.Vpre) = "Variación"
             .TextMatrix(1, Datos.Vpre) = "Absoluta"
             .TextMatrix(0, Datos.Cum) = "Cump"
             .TextMatrix(1, Datos.Cum) = "%"
             For K = Datos.EneE To Datos.TotE
                 If K Mod 2 <> 0 Then
                     .ColWidth(K) = 1000
                     .ColFormat(K) = "#,###.00"
                     .TextMatrix(1, K) = "Actual"
                 Else
                     .ColWidth(K) = 600
                     .ColFormat(K) = "#,###.0"
                     .TextMatrix(1, K) = "%"
                 End If
                 .ColHidden(K) = True
             Next K
            
             For K = Datos.EneP To Datos.TotP
                 If K Mod 2 <> 0 Then
                     .ColWidth(K) = 1000
                     .ColFormat(K) = "#,###.00"
                     .TextMatrix(1, K) = "Anterior"
                 Else
                     .ColWidth(K) = 600
                     .ColFormat(K) = "#,###.0"
                     .TextMatrix(1, K) = "%"
                 End If
                 .ColHidden(K) = True
             Next K
             .ColHidden(Datos.Dat) = True
             .ColHidden(Datos.TotE) = False: .ColHidden(Datos.TotP) = False
             .ColFormat(Datos.Ptot) = "#,###.0"
             .ColFormat(Datos.Atot) = "#,###.0"
             .ColFormat(Datos.Cum) = "#,###.0"
             .ColFormat(Datos.Vpre) = "#,###.00"
             .ColWidth(Datos.TotE) = 1100
             .ColWidth(Datos.TotP) = 1100
             .ColWidth(Datos.Atot) = 600
             .ColWidth(Datos.Ptot) = 600
             .ColWidth(Datos.Cum) = 700
             .ColWidth(Datos.Vpre) = 1000
             .MergeRow(0) = True
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Cell(flexcpFontBold, 0, 0, 1, .Cols - 1) = True
             .Cell(flexcpAlignment, 0, 0, 1, .Cols - 1) = flexAlignCenterCenter
        End With
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        Call BarraOperaciones.Estado_Botones
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
        If Index = 1 Or Index = 3 Then
            FGPyG.Outline (Index)
            Call Imprimir_Informe(Index)
        Else
            If Index = 5 Then FGPyG.Outline (6): Call Imprimir_Informe(6) Else Call Imprimir_Informe(Index)
        End If
        
End Sub


Sub DoGroup(Row, lvl)
     FGPyG.IsSubtotal(Row) = True
     FGPyG.RowOutlineLevel(Row) = lvl
End Sub

Private Sub Detalle()
    With FGPyG
         Dim SubCx As String, AuxS As String, AuxS1 As String
         For i = 0 To 25
              Vector(i) = 0
         Next i
         
         i = 0
         If Buscar_Res(rdoRs, Sql) = BDOk Then
            While Not rdoRs.EOF
                i = i + 1: Set ClaseT = New ClsDatos
                ClaseT.Cuenta = Trim(rdoRs!CarCuen): ClaseT.Nombre = Trim(rdoRs!CarNomb)
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
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fcuenta
             .TextMatrix(.Rows - 1, Datos.Desc) = Titulo
             .TextMatrix(.Rows - 1, Datos.EneE) = 0
             .TextMatrix(.Rows - 1, Datos.Scue) = SubCx: .TextMatrix(.Rows - 1, Datos.Aux) = AuxS: .TextMatrix(.Rows - 1, Datos.Auxl) = AuxS1
             
             Pos = .Rows - 1
             
             If Mid(Fcuenta, 3, 2) = "00" Then
                 Posi(2) = .Rows - 1: DoGroup .Rows - 1, 2
             Else
                  If SubCx = "00" Then
                      Posi(3) = .Rows - 1: DoGroup .Rows - 1, 3
                  Else
                      If AuxS = "00" Then
                           Posi(4) = .Rows - 1
                           If Hw = Hw1 Then
                                 If Hy <> "00" Then DoGroup .Rows - 1, 4
                           End If
                           Posi(5) = 0: Posi(6) = 0: Call LLenado(3)
                      Else
                           If AuxS1 = "00" Then
                                Posi(5) = .Rows - 1
                                If Ha = Hj Then
                                    If Hm <> "00" Then DoGroup .Rows - 1, 5
                                End If
                                Posi(6) = 0: Call LLenado(3)
                           Else
                                Posi(6) = 1: Call LLenado(3)
                           End If
                      End If
                  End If
             End If
         Next i
         Set Tabla = Nothing
         
         l = 0
         For K = Datos.EneE To Datos.DicE
             If K Mod 2 <> 0 Then
                 .TextMatrix(Posi(1), K) = Vector(l)
                 l = l + 1
             End If
         Next K
         .TextMatrix(Posi(1), Datos.TotE) = Vector(12)
         .TextMatrix(Posi(1), Datos.TotP) = Vector(25)
        
         l = 13
         For K = Datos.EneP To Datos.DicP
              If K Mod 2 <> 0 Then
                   .TextMatrix(Posi(1), K) = Vector(l)
                   l = l + 1
              End If
         Next K
            
         
    End With
End Sub

Private Sub Movimientos()
        Set ColMov = Nothing
        Sald = 0: SaldA = 0
        Progres.value = Progres.value + 1
        With FGdatos
             A = Empty
             .Rows = 1
             Sql = "SELECT TmoAno,TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO " & _
                   "INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons " & _
                   "WHERE (TmoEmpr ='" & Empresa & "' And (TmoAno = " & Cobaño.Text & " Or TmoAno = " & Cobaño.Text - 1 & ") And TmoMes <= " & Mes & " And TmoApl = '0') " & _
                   "GROUP BY TmoAno,TmoMes,MovCuen,MovScue,MovAuxi,MovAuxl " & _
                   "ORDER BY MovCuen,MovScue,MovAuxi,MovAuxl"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 While Not rdoRs.EOF
                       X = Mid(Trim(rdoRs!MovCuen), 1, 1)
                       
                       l = 1
                       If X = "4" Then
                           If Trim(rdoRs!MovCuen) <> "4175" Then l = -1 Else l = 1
                       End If
                       
                       If A <> Trim(rdoRs!MovCuen + rdoRs!MovScue + rdoRs!MovAuxi + rdoRs!MovAuxl) Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, 0) = Trim(rdoRs!MovCuen)
                            .TextMatrix(.Rows - 1, 1) = Trim(rdoRs!MovScue)
                            .TextMatrix(.Rows - 1, 2) = Trim(rdoRs!MovAuxi)
                            .TextMatrix(.Rows - 1, 3) = Trim(rdoRs!MovAuxl)
                            ColMov.Add .Rows - 1, Trim(rdoRs!MovCuen) + Trim(rdoRs!MovScue) + Trim(rdoRs!MovAuxi) + Trim(rdoRs!MovAuxl)
                       End If
                       If Trim(rdoRs!TmoAno) = Cobaño.Text Then
                           .TextMatrix(.Rows - 1, Val(rdoRs!TmoMes) + 3) = Val(rdoRs!MovValr) * l
                           If Val(rdoRs!TmoMes) = Mes Then Dz = True
                       Else
                           .TextMatrix(.Rows - 1, Val(rdoRs!TmoMes) + 16) = Val(rdoRs!MovValr) * l
                       End If
                                              
                       If X = "4" Or X = "5" Or X = "6" Or X = "7" Then
                          If Trim(rdoRs!TmoAno) = Cobaño.Text Then Sald = Sald + Val(rdoRs!MovValr) Else SaldA = SaldA + Val(rdoRs!MovValr)
                       End If
                       A = Trim(rdoRs!MovCuen + rdoRs!MovScue + rdoRs!MovAuxi + rdoRs!MovAuxl)
                       rdoRs.MoveNext
                 Wend
             Else
                 Ix = False
                 MsgBox "No hay información del periodo seleccionado", vbInformation + vbOKOnly, "Atención"
             End If
             Progres.value = Progres.value + 1
             Me.Text1.Text = Sald
        End With
End Sub

Private Function Bus_Resulta() As Boolean
        Cuentas(0) = Empty: Cuentas(1) = Empty: Cuentas(2) = Empty
        Bus_Resulta = False
        If Sald < 0 Then A = "1" Else A = "2"
        Sql = "SELECT CarCuen,CarScue,CarAuxi,CarAuxl FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarUtil = '" & A & "'"
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             Cuentas(0) = rdoRs!CarCuen: Cuentas(1) = rdoRs!CarScue
             Cuentas(2) = rdoRs!CarAuxi: Cuentas(3) = rdoRs!CarAuxl
             Bus_Resulta = True
        End If
        
End Function

Private Sub Consul_PyG()
        Dim Nm As Long, Q10 As Variant, Th As Integer
        On Error GoTo Salida
        
        With FGPyG
             If Cobaño.Text = Empty Then MsgBox "Seleccione el Año", vbInformation + vbOKOnly, "Atención": Cobaño.SetFocus: Exit Sub
             If CobMeses.Text = Empty Then MsgBox "Seleccione el Mes", vbInformation + vbOKOnly, "Atención": CobMeses.SetFocus: Exit Sub
             
             Call DGRILLA
             CheMes.value = 0
             Dz = False
             Set ColFormato = Nothing
             Nm = Cobaño.Text - 1
             Progres.Min = 0: Progres.value = 1
             Progres.Visible = True: Progres.Max = 100
             Ix = True
             Call Movimientos
             If Ix = False Then Exit Sub
                          
             If Dz = False Then
                  If MsgBox("No Hay información del mes seleccionado" & Chr(13) & "Desea continuar?", vbQuestion + vbYesNo, "Atención") = vbNo Then .Rows = 2: Progres.Visible = False: Exit Sub
             End If
             Th = Mes
             Call Numero_Dias(Cobaño.Text, Th)
                                       
             For i = 0 To 25
                  Acomulado(i) = 0
                  Vector(i) = 0
             Next i
                                       
             FGguia.Rows = 1
             Sql = "SELECT * FROM PARAMEPYG WHERE ParEmpr ='" & Empresa & "'"
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 While Not rdoRs.EOF
                       M = Trim(rdoRs!Pardesc):
                       Mx = Replace(M, "!", "'")
                       FGguia.AddItem Trim(rdoRs!Parcuen) & vbTab & Mx
                       ColFormato.Add FGguia.Rows - 1, Trim(rdoRs!Parcodi)
                       rdoRs.MoveNext
                 Wend
             Else
                 Progres.Visible = False
                 MsgBox "No Hay Formato para generar el estado de Resultado", vbCritical + vbOKOnly, "Atención"
                 Exit Sub
             End If
             
             Fx = FGguia.TextMatrix(ColFormato("01"), 1): Fy = FGguia.TextMatrix(ColFormato("01"), 0)
             .Rows = 2
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "VENTAS"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q10 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.value = Progres.value + 1
             For i = 0 To 25
                  Acomulado(i) = Vector(i)
             Next i
             
             Fx = FGguia.TextMatrix(ColFormato("02"), 1): Fy = FGguia.TextMatrix(ColFormato("02"), 0)
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "DEVOLUCIONES EN VENTAS"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.value = Progres.value + 1
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) - Vector(i)
             Next i
             
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "INGRESOS NETOS OPERACIONALES"
             DoGroup .Rows - 1, 1: .TextMatrix(.Rows - 1, Datos.Dat) = "1000"
             Call Llena
                       
             Fx = FGguia.TextMatrix(ColFormato("03"), 1): Fy = FGguia.TextMatrix(ColFormato("03"), 0)
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "COSTO DE VENTA"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Pq = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1: Q4 = .Rows - 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "UTILIDAD O PERDIDA BRUTA": DoGroup .Rows - 1, 1:: .TextMatrix(.Rows - 1, Datos.Dat) = "1000"
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) - Vector(i)
             Next i
             Call Llena
             
             Fx = FGguia.TextMatrix(ColFormato("04"), 1): Fy = FGguia.TextMatrix(ColFormato("04"), 0)
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "GASTOS DE ADMINISTRACION"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q1 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) - Vector(i)
             Next i
             Progres.value = Progres.value + 1
             
             Fx = FGguia.TextMatrix(ColFormato("05"), 1): Fy = FGguia.TextMatrix(ColFormato("05"), 0)
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "GASTOS DE VENTAS"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) - Vector(i)
             Next i
             Progres.value = Progres.value + 1
              
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "TOTAL GASTOS OPERACIONALES": DoGroup .Rows - 1, 1
             l = 0
             For K = Datos.EneE To Datos.DicE
                  If K Mod 2 <> 0 Then
                       .TextMatrix(.Rows - 1, K) = Val(.TextMatrix(Q1, K)) + Val(.TextMatrix(Q2, K))
                  End If
             Next K
             
             For K = Datos.EneP To Datos.DicP
                   If K Mod 2 <> 0 Then
                        .TextMatrix(.Rows - 1, K) = Val(.TextMatrix(Q1, K)) + Val(.TextMatrix(Q2, K))
                   End If
             Next K
             .TextMatrix(.Rows - 1, Datos.TotE) = Val(.TextMatrix(Q1, Datos.TotE)) + Val(.TextMatrix(Q2, Datos.TotE))
             .TextMatrix(.Rows - 1, Datos.TotP) = Val(.TextMatrix(Q1, Datos.TotP)) + Val(.TextMatrix(Q2, Datos.TotP))
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "UTILIDAD O PERDIDA OPERACIONAL": DoGroup .Rows - 1, 1:: .TextMatrix(.Rows - 1, Datos.Dat) = "1000"
             Call Llena
             
             Fx = FGguia.TextMatrix(ColFormato("06"), 1): Fy = FGguia.TextMatrix(ColFormato("06"), 0)
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "INGRESOS NO OPERACIONALES"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) + Vector(i)
             Next i
             Progres.value = Progres.value + 1
             
             Fx = FGguia.TextMatrix(ColFormato("07"), 1): Fy = FGguia.TextMatrix(ColFormato("07"), 0)
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "GASTOS NO OPERACIONALES"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.value = Progres.value + 1
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) - Vector(i)
             Next i
             
             Fx = FGguia.TextMatrix(ColFormato("08"), 1): Fy = FGguia.TextMatrix(ColFormato("08"), 0)
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "CORRECCION MONETARIA"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.value = Progres.value + 1
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) + Vector(i)
             Next i
                   
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "UTILIDAD O PERDIDA ANTES DE IMPUESTOS": DoGroup .Rows - 1, 1:: .TextMatrix(.Rows - 1, Datos.Dat) = "1000"
             Call Llena
                   
             Fx = FGguia.TextMatrix(ColFormato("09"), 1): Fy = FGguia.TextMatrix(ColFormato("09"), 0)
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "PROVISION IMPUESTOS DE RENTAS"
             .TextMatrix(.Rows - 1, Datos.Cuen) = Fy: Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' " & Fx & " ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             Call Detalle
             Progres.value = Progres.value + 1
             For i = 0 To 25
                  Acomulado(i) = Acomulado(i) - Vector(i)
             Next i
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Datos.Desc) = "UTILIDAD O PERDIDA NETA": DoGroup .Rows - 1, 1:: .TextMatrix(.Rows - 1, Datos.Dat) = "1000"
             Call Llena
                                
             For i = 2 To .Rows - 1
                  If i < .Rows Then
                        Select Case .RowOutlineLevel(i)
                               Case 1: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbBlue
                               Case 2: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H40C0&
                               Case 3: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H4000&
                               Case 4: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbMagenta
                               Case 5: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H80&
                               Case Else
                               
                        End Select
                        T = 0
                        For K = Datos.EneE To Datos.TotE
                              If K Mod 2 <> 0 Then
                                    If Val(.TextMatrix(Q10, K)) <> 0 Then .TextMatrix(i, K + 1) = Round((Val(.TextMatrix(i, K)) / Val(.TextMatrix(Q10, K))) * 100, 2)
                              End If
                              T = T + Val(.TextMatrix(i, K))
                        Next K
                        
                        For K = Datos.EneP To Datos.TotP
                              If K Mod 2 <> 0 Then
                                    If Val(.TextMatrix(Q10, K)) <> 0 Then .TextMatrix(i, K + 1) = Round((Val(.TextMatrix(i, K)) / Val(.TextMatrix(Q10, K))) * 100, 2)
                              End If
                              T = T + Val(.TextMatrix(i, K))
                        Next K
                        .TextMatrix(i, Datos.Vpre) = Val(.TextMatrix(i, Datos.TotE)) - Val(.TextMatrix(i, Datos.TotP))
                        
                        If Val(.TextMatrix(i, Datos.TotP)) <> 0 Then
                             .TextMatrix(i, Datos.Cum) = Round((Val(.TextMatrix(i, Datos.TotE)) / Val(.TextMatrix(i, Datos.TotP)) * 100), 1)
                        Else
                             .TextMatrix(i, Datos.Cum) = 0
                        End If
                        
                        If Mid(Trim(.TextMatrix(i, Datos.Cuen)), 1, 1) = "4" Or Trim(.TextMatrix(i, Datos.Dat)) = "1000" Then
                            If Val(.TextMatrix(i, Datos.TotE)) < Val(.TextMatrix(i, Datos.TotP)) Then .Cell(flexcpBackColor, i, Datos.Vpre, i, Datos.Vpre) = vbRed: .Cell(flexcpForeColor, i, Datos.Vpre, i, Datos.Vpre) = vbWhite
                        Else
                            If Val(.TextMatrix(i, Datos.TotE)) > Val(.TextMatrix(i, Datos.TotP)) Then .Cell(flexcpBackColor, i, Datos.Vpre, i, Datos.Vpre) = vbRed: .Cell(flexcpForeColor, i, Datos.Vpre, i, Datos.Vpre) = vbWhite
                        End If
                        If .RowOutlineLevel(i) <> 1 And T = 0 Then .RemoveItem i: i = i - 1
                  End If
             Next i
             .Cell(flexcpBackColor, 2, Datos.TotE, .Rows - 1, Datos.Ptot) = &HC0FFC0
             .Cell(flexcpBackColor, 2, Datos.TotP, .Rows - 1, Datos.Atot) = &HC0E0FF
             Progres.value = Progres.value + 1
             Progres.Visible = False
             .Outline (3)
             .Outline (2)
             .Outline (1)
             .AutoSize Datos.EneE, Datos.Cum
             .AllowUserResizing = flexResizeColumns
             
             If Abs(Val(.TextMatrix(.Rows - 1, Datos.TotE))) <> Abs(Sald) Or Abs(Val(.TextMatrix(.Rows - 1, Datos.TotP))) <> Abs(SaldA) Then
                   A = Trim(Str(Abs(Val(.TextMatrix(.Rows - 1, Datos.TotE))) - Abs(Sald)))
                   b = Trim(Str(Abs(Val(.TextMatrix(.Rows - 1, Datos.TotP))) - Abs(SaldA)))
                   M1 = Abs(Val(.TextMatrix(.Rows - 1, Datos.TotE))) - Abs(Sald)
                   M2 = Abs(Val(.TextMatrix(.Rows - 1, Datos.TotP))) - Abs(SaldA)
                   If Abs(M1) > 10 Or Abs(M2) > 10 Then
                        MsgBox "La Informacion esta descuadrada Consulte con el Adm del Sistema" + Chr(13) + "Diferencia Año actual " + A + " Año Anterior " + b, vbCritical + vbOKOnly, "Atención"
                   End If
             End If
             If .Rows > 2 Then .SetFocus: .Select 2, Datos.Desc
             .Redraw = True: Exit Sub
                                 
                          
        End With
        Exit Sub
Salida: Call MensajeAdministrador
End Sub
Private Sub LLenado(Iz As Integer)
        With FGPyG
             Select Case Iz
                    Case 0 'Cuenta
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Datos.Cuen)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Datos.EneE) = Val(.TextMatrix(.Rows - 1, Datos.EneE)) + N
                              .TextMatrix(Posi(2), Datos.EneE) = Val(.TextMatrix(Posi(2), Datos.EneE)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         
                    Case 1 'Subcuenta
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Datos.Cuen)) + Trim(.TextMatrix(.Rows - 1, Datos.Scue)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Datos.EneE) = Val(.TextMatrix(.Rows - 1, Datos.EneE)) + N
                              .TextMatrix(Posi(2), Datos.EneE) = Val(.TextMatrix(Posi(2), Datos.EneE)) + N
                              .TextMatrix(Posi(3), Datos.EneE) = Val(.TextMatrix(Posi(3), Datos.EneE)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                                                  
                    Case 2 'Auxiliar
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Datos.Cuen)) + Trim(.TextMatrix(.Rows - 1, Datos.Scue)) + Trim(.TextMatrix(.Rows - 1, Datos.Aux)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Datos.EneE) = Val(.TextMatrix(.Rows - 1, Datos.EneE)) + N
                              .TextMatrix(Posi(2), Datos.EneE) = Val(.TextMatrix(Posi(2), Datos.EneE)) + N
                              .TextMatrix(Posi(3), Datos.EneE) = Val(.TextMatrix(Posi(3), Datos.EneE)) + N
                              If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), Datos.EneE) = Val(.TextMatrix(Posi(4), Datos.EneE)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         
                         If Posi(6) = 1 Then
                             If Val(.TextMatrix(.Rows - 1, Datos.EneE)) = 0 Then .RemoveItem Pos
                         End If
                    Case 3 'SubAuxiliar
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Datos.Cuen)) + Trim(.TextMatrix(.Rows - 1, Datos.Scue)) + Trim(.TextMatrix(.Rows - 1, Datos.Aux)) + Trim(.TextMatrix(.Rows - 1, Datos.Auxl)))
                         If N <> "rr" Then
                              Jx = 4: T = 0: l = 0
                              For K = Datos.EneE To Datos.DicE
                                    If K Mod 2 <> 0 Then
                                        .TextMatrix(.Rows - 1, K) = Val(.TextMatrix(.Rows - 1, K)) + Val(FGdatos.TextMatrix(N, Jx))
                                        .TextMatrix(Posi(3), K) = Val(.TextMatrix(Posi(3), K)) + Val(FGdatos.TextMatrix(N, Jx))
                                        
                                        If .Rows - 1 <> Posi(4) And Posi(4) <> 0 Then .TextMatrix(Posi(4), K) = Val(.TextMatrix(Posi(4), K)) + Val(FGdatos.TextMatrix(N, Jx)): .TextMatrix(Posi(4), Datos.TotE) = Val(.TextMatrix(Posi(4), Datos.TotE)) + Val(FGdatos.TextMatrix(N, Jx))
                                        If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), K) = Val(.TextMatrix(Posi(5), K)) + Val(FGdatos.TextMatrix(N, Jx)): .TextMatrix(Posi(5), Datos.TotE) = Val(.TextMatrix(Posi(5), Datos.TotE)) + Val(FGdatos.TextMatrix(N, Jx))
                                        
                                        'Datos Acomulados
                                        .TextMatrix(.Rows - 1, Datos.TotE) = Val(.TextMatrix(.Rows - 1, Datos.TotE)) + Val(FGdatos.TextMatrix(N, Jx))
                                        .TextMatrix(Posi(3), Datos.TotE) = Val(.TextMatrix(Posi(3), Datos.TotE)) + Val(FGdatos.TextMatrix(N, Jx))
                                        
                                        Vector(l) = Vector(l) + Val(FGdatos.TextMatrix(N, Jx))
                                        Vector(12) = Vector(12) + Val(FGdatos.TextMatrix(N, Jx))
                                        Jx = Jx + 1
                                        T = T + Val(FGdatos.TextMatrix(N, Jx))
                                        l = l + 1
                                    End If
                              Next K
                              
                              Jx = 17: l = 13
                              For K = Datos.EneP To Datos.DicP
                                    If K Mod 2 <> 0 Then
                                        .TextMatrix(.Rows - 1, K) = Val(.TextMatrix(.Rows - 1, K)) + Val(FGdatos.TextMatrix(N, Jx))
                                        .TextMatrix(Posi(3), K) = Val(.TextMatrix(Posi(3), K)) + Val(FGdatos.TextMatrix(N, Jx))
                                        If .Rows - 1 <> Posi(4) And Posi(4) <> 0 Then .TextMatrix(Posi(4), K) = Val(.TextMatrix(Posi(4), K)) + Val(FGdatos.TextMatrix(N, Jx)): .TextMatrix(Posi(4), Datos.TotP) = Val(.TextMatrix(Posi(4), Datos.TotP)) + Val(FGdatos.TextMatrix(N, Jx))
                                        If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), K) = Val(.TextMatrix(Posi(5), K)) + Val(FGdatos.TextMatrix(N, Jx)): .TextMatrix(Posi(5), Datos.TotP) = Val(.TextMatrix(Posi(5), Datos.TotP)) + Val(FGdatos.TextMatrix(N, Jx))
                                        
                                        'Datos Acomulados
                                        .TextMatrix(.Rows - 1, Datos.TotP) = Val(.TextMatrix(.Rows - 1, Datos.TotP)) + Val(FGdatos.TextMatrix(N, Jx))
                                        .TextMatrix(Posi(3), Datos.TotP) = Val(.TextMatrix(Posi(3), Datos.TotP)) + Val(FGdatos.TextMatrix(N, Jx))
                                        
                                        Vector(l) = Vector(l) + Val(FGdatos.TextMatrix(N, Jx))
                                        Vector(25) = Vector(25) + Val(FGdatos.TextMatrix(N, Jx))
                                        Jx = Jx + 1
                                        T = T + Val(FGdatos.TextMatrix(N, Jx))
                                        l = l + 1
                                    End If
                              Next K
                         End If
                         If Posi(6) = 1 Then
                             If T = 0 Then .RemoveItem Pos
                         End If
                                         
             End Select
        End With
End Sub

Private Sub Imprimir_Informe(Ti As Integer)
        With FGPyG
             On Error GoTo Imprime
             Dim Mh As String, GF As String, Iw As String, Jb As String, Ns As String
             
             If .Rows - 1 < 2 Then MsgBox "No hay información para imprimir", vbInformation + vbOKOnly, "Atención": Exit Sub
             
             S = Trim(Str(nDias))
             Mh = UCase("Por el periodo del 1 de Enero A " + S + " de " + CobMeses.Text + " de los años " + Trim(Cobaño.Text) + " y " + Trim(Cobaño.Text - 1))
                                      
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             
             Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                          
             For i = 2 To .Rows - 1
                 Nivel = .RowOutlineLevel(i)
                 If .RowHidden(i) = False Then
                       If Ti = 9 Then
                            If Trim(.TextMatrix(i, Datos.Desc)) = Empty Then
                                 Sql = "INSERT INTO INFORME (InfDesc,InfNivl) VALUES ('', " & Nivel & ") "
                            Else
                                 Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal1,InfVal2,InfVal3,InfVal4,InfVal5,InfVal6,InfVal7,InfVal8,InfVal9,InfVa10,InfVa11,InfVa12,InfVa13,InfNivl) VALUES ('" & .TextMatrix(i, Datos.Cuen) & "','" & Trim(.TextMatrix(i, Datos.Desc)) & "'," & Val(.TextMatrix(i, Datos.EneE)) & "," & Val(.TextMatrix(i, Datos.FebE)) & "," & Val(.TextMatrix(i, Datos.MarE)) & "," & Val(.TextMatrix(i, Datos.AbrE)) & "," & Val(.TextMatrix(i, Datos.MayE)) & "," & Val(.TextMatrix(i, Datos.JunE)) & " " & _
                                 "," & Val(.TextMatrix(i, Datos.JulE)) & "," & Val(.TextMatrix(i, Datos.AgoE)) & "," & Val(.TextMatrix(i, Datos.SepE)) & "," & Val(.TextMatrix(i, Datos.OctE)) & "," & Val(.TextMatrix(i, Datos.NovE)) & "," & Val(.TextMatrix(i, Datos.DicE)) & "," & Val(.TextMatrix(i, Datos.TotE)) & "," & Nivel & ")"
                            End If
                       Else
                            If Trim(.TextMatrix(i, Datos.Desc)) = Empty Then
                                 Sql = "INSERT INTO INFORME (InfDesc,InfNivl) VALUES ('', " & Nivel & ") "
                            Else
                                 Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal1,InfVal2,InfVal3,InfVal4,InfVal5,InfVal6,InfNivl) VALUES ('" & .TextMatrix(i, Datos.Cuen) & "','" & Trim(.TextMatrix(i, Datos.Desc)) & "'," & Val(.TextMatrix(i, Datos.TotE)) & "," & Val(.TextMatrix(i, Datos.Ptot)) & "," & Val(.TextMatrix(i, Datos.TotP)) & "," & Val(.TextMatrix(i, Datos.Atot)) & "," & Val(.TextMatrix(i, Datos.Vpre)) & "," & Val(.TextMatrix(i, Datos.Cum)) & "," & Nivel & ")"
                            End If
                       End If
                       If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                       M = 0
                 End If
             Next i
             Select Case Ti
                    Case 1: Iw = "PyGcom.rpt"
                    Case 9: Iw = "PyGMes.rpt": Mh = "ESTADO DE RESULTADO DEL AÑO " + Cobaño.Text
                    Case Else: Iw = "PyGcom1.rpt"
             End Select
             
'             Mh = "ESTADO DE RESULTADO COMPARATIVO EJECUTADO VS PRESUPUESTO A CORTE DE " & UCase(CobMeses.Text) & " DEL " & Cobaño.Text
             Call Transaccion(BDCommit)
             s2 = Trim(Cobaño.Text): S3 = Trim(Cobaño.Text - 1)
             Preporte.DiscardSavedData = True
             Preporte.Formulas(1) = "Titulo= '" & Mh & "'"
             Preporte.Formulas(2) = "Empresa= '" & DatosEmpresa(1) & "'"
             Preporte.Formulas(3) = "Ano= '" & s2 & "'"
             Preporte.Formulas(4) = "Ano1= '" & S3 & "'"
             X = Inf + Iw: Preporte.ReportFileName = X
             Preporte.Destination = crptToWindow
             Preporte.WindowTitle = "ESTADOS DE RESULTADOS"
             Preporte.WindowMinButton = True
             Preporte.WindowMaxButton = True
             Preporte.WindowState = crptMaximized
             Preporte.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atención"

End Sub

Private Sub Llena()
        With FGPyG
             l = 0
             For K = Datos.EneE To Datos.DicE
                  If K Mod 2 <> 0 Then
                       .TextMatrix(.Rows - 1, K) = Acomulado(l)
                       l = l + 1
                  End If
             Next K
             
             l = 13
             For K = Datos.EneP To Datos.DicP
                   If K Mod 2 <> 0 Then
                       .TextMatrix(.Rows - 1, K) = Acomulado(l)
                       l = l + 1
                   End If
             Next K
             .TextMatrix(.Rows - 1, Datos.TotE) = Acomulado(12)
             .TextMatrix(.Rows - 1, Datos.TotP) = Acomulado(25)
        
        End With
End Sub

Private Sub Mostrar_Col(Xy As Boolean, Xz As Boolean)
      Dim Np As Integer
      With FGPyG
           If Xy = False Then
                i = 1
                For K = Datos.EneE To Datos.TotE
                    If K Mod 2 <> 0 Then
                        If Mes >= i Then
                            .ColHidden(K) = False
                            .ColHidden(K + 1) = False
                            If Xz = True Then .ColHidden(K + 26) = False: .ColHidden(K + 27) = False 'Exportar
                        Else
                            .ColHidden(K) = True
                            .ColHidden(K + 1) = True
                             If Xz = True Then .ColHidden(K + 26) = True: .ColHidden(K + 27) = True 'Exportar
                        End If
                        i = i + 1
                    End If
                Next K
                .ColHidden(Datos.TotE) = False
                .ColHidden(Datos.Atot) = False
                .ColHidden(Datos.TotP) = False
                .ColHidden(Datos.Ptot) = False
           Else
                For K = Datos.EneE To Datos.TotE 'Ocultar Columnas
                    If K Mod 2 <> 0 Then
                         .ColHidden(K) = True
                         .ColHidden(K + 1) = True
                         .ColHidden(K + 26) = True: .ColHidden(K + 27) = True 'Exportar
                    End If
                Next K
                .ColHidden(Datos.TotE) = False
                .ColHidden(Datos.Atot) = False
                .ColHidden(Datos.TotP) = False
                .ColHidden(Datos.Ptot) = False
           End If
      End With
End Sub

Private Sub MSChart1_DblClick()
        FGPyG.Visible = True
        MSChart1.Visible = False
End Sub

