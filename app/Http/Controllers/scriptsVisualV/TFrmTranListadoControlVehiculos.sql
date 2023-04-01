VERSION 5.00
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Begin VB.Form FrmTranListadoControlVehiculos 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8670
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   11910
   Icon            =   "FrmTranListadoControlVehiculos.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8670
   ScaleWidth      =   11910
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00FFFFFF&
      Caption         =   "F"
      Height          =   240
      Left            =   270
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "Fijar Columnas"
      Top             =   1845
      Width           =   285
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6810
      Left            =   180
      TabIndex        =   8
      Top             =   1800
      Width           =   11670
      _ExtentX        =   20585
      _ExtentY        =   12012
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Informaci�n Mensual"
      TabPicture(0)   =   "FrmTranListadoControlVehiculos.frx":46B2
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FGmovimientos"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Informaci�n Anual"
      TabPicture(1)   =   "FrmTranListadoControlVehiculos.frx":46CE
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "FGdatos"
      Tab(1).ControlCount=   1
      Begin VSFlex8LCtl.VSFlexGrid FGmovimientos 
         Height          =   1455
         Left            =   90
         TabIndex        =   9
         Top             =   540
         Width           =   11505
         _cx             =   20294
         _cy             =   2566
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
         BackColor       =   12648384
         ForeColor       =   -2147483640
         BackColorFixed  =   -2147483633
         ForeColorFixed  =   -2147483630
         BackColorSel    =   -2147483635
         ForeColorSel    =   -2147483634
         BackColorBkg    =   -2147483636
         BackColorAlternate=   12648384
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
         Cols            =   10
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

      
      Begin VSFlex8LCtl.VSFlexGrid FGdatos 
         Height          =   1455
         Left            =   -74910
         TabIndex        =   10
         Top             =   540
         Width           =   11505
         _cx             =   20294
         _cy             =   2566
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
         BackColor       =   12648384
         ForeColor       =   -2147483640
         BackColorFixed  =   -2147483633
         ForeColorFixed  =   -2147483630
         BackColorSel    =   -2147483635
         ForeColorSel    =   -2147483634
         BackColorBkg    =   -2147483636
         BackColorAlternate=   12648384
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
         Cols            =   10
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
   End
   Begin VB.Frame FrameFiltro 
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
      Left            =   225
      TabIndex        =   0
      Top             =   855
      Width           =   3705
      Begin VB.ComboBox Coba�o 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   585
         Style           =   2  'Dropdown List
         TabIndex        =   2
         ToolTipText     =   "Seleccione el A�o..."
         Top             =   270
         Width           =   960
      End
      Begin VB.ComboBox CobMeses 
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   2115
         Style           =   2  'Dropdown List
         TabIndex        =   1
         ToolTipText     =   "Seleccione el mes"
         Top             =   270
         Width           =   1410
      End
      Begin VB.Label Label1 
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
         Left            =   1665
         TabIndex        =   4
         Top             =   315
         Width           =   405
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "A�o:"
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
         Left            =   135
         TabIndex        =   3
         Top             =   315
         Width           =   375
      End
   End
   Begin MSComctlLib.ImageList ImageList2 
      Left            =   9630
      Top             =   1035
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   10
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":46EA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":4C2E
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":4D3A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":518E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":55E0
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":5EBA
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":762C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":7BC6
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":9F48
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmTranListadoControlVehiculos.frx":A95A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   285
      Left            =   7020
      TabIndex        =   6
      Top             =   1035
      Visible         =   0   'False
      Width           =   4290
      _ExtentX        =   7567
      _ExtentY        =   503
      _Version        =   393216
      Appearance      =   1
      Max             =   10000
      Scrolling       =   1
   End
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   4725
      TabIndex        =   7
      Top             =   720
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin Crystal.CrystalReport ReporMasivas 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComDlg.CommonDialog ComArchivo 
      Left            =   0
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "   Cuadre de Vehiculos"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Left            =   0
      TabIndex        =   5
      Top             =   270
      Width           =   12000
   End
   Begin VB.Menu MenuR 
      Caption         =   "Opciones"
      Visible         =   0   'False
      Begin VB.Menu Menu 
         Caption         =   "Informaci�n Mensual"
         Index           =   1
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu Menu 
         Caption         =   "Informaci�n Anual"
         Index           =   3
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   4
      End
   End
End
Attribute VB_Name = "FrmTranListadoControlVehiculos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Enum Datos
        Sel
        Placa
        CedulaProp
        Propietario
        EstadoVeh
        IDempresa
        IDconcepto
        VrPlanilla
        VrAportes
        VrSobrante
        VrFaltante
        CarteraVieja
        CarteraMes
        Planilla
        Paquete
        VrControl1
        VrControl2
        VrControl3
        VrControl4
        VrSegSocial
        VrPrestaciones
        VrParafiscales
        VrOtros
        PaquePlanilla
        DiaHabilitaPaq
        FondoReposicion
        Dia1 = 26
        Dia31 = 56
End Enum

Private Enum Anual
        Sel
        Placa
        CedulaProp
        Propietario
        EstadoVeh
        IDempresa
        IDconcepto
        EneP  ' Valor Planilla (7 EL NUMERAL)
        FebP
        MarP
        AbrP
        MayP
        JunP
        JulP
        AgoP
        SepP
        OctP
        NovP
        DicP
        TotP
        
        AenE  ' Valor Aporte (20 EL NUMERAL)
        Afeb
        AMar
        Aabr
        Amay
        Ajun
        Ajul
        Aago
        Asep
        Aoct
        Anov
        Adic
        Atot '34
                   
End Enum


Dim vMes As Integer, vGeneracion As Boolean, vDiaOperacionVeh As Integer

Private Sub DGRILLA()
        On Error GoTo Salida
        
        With FGmovimientos
             .Rows = 1
             .Cols = 57
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColor = &HC00000
             .GridLines = flexGridFlat
             .FocusRect = flexFocusRaised
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .FixedCols = 0
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .Editable = flexEDKbd
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .GridLines = flexGridNone
             .AllowUserResizing = flexResizeBoth
             .ExtendLastCol = False
             .SelectionMode = flexSelectionByRow
             .Editable = flexEDNone
             .TextMatrix(0, Datos.Propietario) = "Propietario"
             .TextMatrix(0, Datos.Placa) = "Placa"
             .TextMatrix(0, Datos.IDconcepto) = "IDConcepto"
             .TextMatrix(0, Datos.VrAportes) = "Vr. Aportes"
             .TextMatrix(0, Datos.VrPlanilla) = "Vr. Planilla"
             .TextMatrix(0, Datos.DiaHabilitaPaq) = "Habilita Paq."
             .TextMatrix(0, Datos.CedulaProp) = "Cedula"
             .TextMatrix(0, Datos.EstadoVeh) = "Estado"
             .TextMatrix(0, Datos.PaquePlanilla) = "Paq. Planilla"
             .TextMatrix(0, Datos.FondoReposicion) = "Fondo Repos."
             .TextMatrix(0, Datos.Paquete) = "Paquete"
             .TextMatrix(0, Datos.Planilla) = "Planilla"
             .TextMatrix(0, Datos.IDconcepto) = "IDConcepto"
             .TextMatrix(0, Datos.IDempresa) = "Empresa"
             .TextMatrix(0, Datos.VrParafiscales) = "Vr. Parafiscales"
             .TextMatrix(0, Datos.VrPrestaciones) = "Vr. Prestaciones"
             .TextMatrix(0, Datos.VrSegSocial) = "Vr. Seg. Social"
             .TextMatrix(0, Datos.VrOtros) = "Vr. Otros Aportes"
             .TextMatrix(0, Datos.VrControl1) = "Vr. Control Uno"
             .TextMatrix(0, Datos.VrControl2) = "Vr. Control Dos"
             .TextMatrix(0, Datos.VrControl3) = "Vr. Control Tres"
             .TextMatrix(0, Datos.VrControl4) = "Vr. Control Cuatro"
             .TextMatrix(0, Datos.VrFaltante) = "Vr. Cartera"
             .TextMatrix(0, Datos.VrSobrante) = "Vr. Sobrante"
             .TextMatrix(0, Datos.CarteraVieja) = "Saldo Cartera 2016"
             .TextMatrix(0, Datos.CarteraMes) = "Vr. Cartera Filtro"
                  
             .TextMatrix(0, Datos.Sel) = "No."
             .ColFormat(Datos.VrAportes) = "#,###"
             .ColFormat(Datos.VrOtros) = "#,###"
             .ColFormat(Datos.VrParafiscales) = "#,###"
             .ColFormat(Datos.CarteraVieja) = "#,###"
             .ColFormat(Datos.VrSegSocial) = "#,###"
             .ColFormat(Datos.VrPrestaciones) = "#,###"
             .ColFormat(Datos.VrPlanilla) = "#,###"
             .ColFormat(Datos.VrSobrante) = "#,###"
             .ColFormat(Datos.CarteraMes) = "#,###"
             .ColFormat(Datos.VrFaltante) = "#,###"
             .ColFormat(Datos.VrControl1) = "#,###"
             .ColFormat(Datos.VrControl2) = "#,###"
             .ColFormat(Datos.VrControl3) = "#,###"
             .ColFormat(Datos.VrControl4) = "#,###"
             .TextMatrix(0, Datos.Dia1) = "Dia 1"
             J = 1
             For K = Datos.Dia1 To Datos.Dia31
                  .TextMatrix(0, K) = "Dia " & J
                  J = J + 1
                  .ColDataType(K) = flexDTBoolean
             Next K
             .ColDataType(Datos.PaquePlanilla) = flexDTBoolean
             .ColDataType(Datos.FondoReposicion) = flexDTBoolean
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .Editable = flexEDKbd
             .ColHidden(Datos.IDconcepto) = True
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .Editable = flexEDNone
             .ColHidden(Datos.Sel) = False
             .ColHidden(Datos.Propietario) = False
             .ColHidden(Datos.EstadoVeh) = False
             .ColHidden(Datos.Paquete) = True
             .ColHidden(Datos.Planilla) = True
             .ColHidden(Datos.CedulaProp) = True
             .ColHidden(Datos.DiaHabilitaPaq) = True
             .ColComboList(Datos.IDempresa) = "|#01;MONTERIANA S.A.S|#02;INTERCARIBE S.A.|#03;EXPREVIENSA|#04;ECERETE S.A.|#05;SOTRACOR S.A."
             .ColComboList(Datos.EstadoVeh) = "|#0;ACTIVO|#1;INACTIVO|#2;RETIRADO|#3;TALLER|#4;CREADO"
             .ExplorerBar = flexExSortShowAndMove
        End With
               
               
        With FGdatos
             .Rows = 2
             .FixedRows = 2
             .Cols = 34
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColor = &HC00000
             .GridLines = flexGridFlat
             .FocusRect = flexFocusRaised
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .FixedCols = 0
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .MergeCells = flexMergeFixedOnly
             .Cell(flexcpFontBold, 0, 0, 0, .Cols - 1) = True
             .Editable = flexEDKbd
             .SelectionMode = flexSelectionByRow
             .ScrollBars = flexScrollBarBoth
             .GridLines = flexGridNone
             .AllowUserResizing = flexResizeBoth
             .ExtendLastCol = False
             .SelectionMode = flexSelectionByRow
             .Editable = flexEDNone
             .TextMatrix(0, Anual.Propietario) = "Propietario"
             .TextMatrix(1, Anual.Propietario) = "Propietario"
             
             .TextMatrix(0, Anual.Placa) = "Placa"
             .TextMatrix(1, Anual.Placa) = "Placa"
             
             .TextMatrix(0, Anual.IDconcepto) = "IDConcepto"
             .TextMatrix(1, Anual.IDconcepto) = "IDConcepto"
             
             .TextMatrix(0, Anual.CedulaProp) = "Cedula"
             .TextMatrix(1, Anual.CedulaProp) = "Cedula"
             
             .TextMatrix(0, Anual.EstadoVeh) = "Estado"
             .TextMatrix(1, Anual.EstadoVeh) = "Estado"
             
             .TextMatrix(0, Anual.IDempresa) = "Empresa"
             .TextMatrix(1, Anual.IDempresa) = "Empresa"
             
             .TextMatrix(0, Anual.Sel) = "No."
             .TextMatrix(1, Anual.Sel) = "No."
             
             .Cell(flexcpText, 0, Anual.EneP, 0, Anual.TotP) = "Vr. Planillas"
             .Cell(flexcpText, 0, Anual.AenE, 0, Anual.Atot) = "Vr. Aportes"
             .TextMatrix(1, Anual.EneP) = "Ene"
             .TextMatrix(1, Anual.AenE) = "Ene"
             
             .TextMatrix(1, Anual.FebP) = "Feb"
             .TextMatrix(1, Anual.Afeb) = "Feb"
                                       
             .TextMatrix(1, Anual.MarP) = "Mar"
             .TextMatrix(1, Anual.AMar) = "Mar"
                          
             .TextMatrix(1, Anual.AbrP) = "Abr"
             .TextMatrix(1, Anual.Aabr) = "Abr"
             
             .TextMatrix(1, Anual.MayP) = "May"
             .TextMatrix(1, Anual.Amay) = "May"
                          
             .TextMatrix(1, Anual.JunP) = "Jun"
             .TextMatrix(1, Anual.Ajun) = "Jun"
             
             .TextMatrix(1, Anual.JulP) = "Jul"
             .TextMatrix(1, Anual.Ajul) = "Jul"
             
             .TextMatrix(1, Anual.AgoP) = "Ago"
             .TextMatrix(1, Anual.Aago) = "Ago"
             
             .TextMatrix(1, Anual.SepP) = "Sep"
             .TextMatrix(1, Anual.Asep) = "Sep"
                          
             .TextMatrix(1, Anual.OctP) = "Oct"
             .TextMatrix(1, Anual.Aoct) = "Oct"
             
             .TextMatrix(1, Anual.NovP) = "Nov"
             .TextMatrix(1, Anual.Anov) = "Nov"
             
             .TextMatrix(1, Anual.DicP) = "Dic"
             .TextMatrix(1, Anual.Adic) = "Dic"
             .TextMatrix(1, Anual.TotP) = "Acumulado"
             .TextMatrix(1, Anual.Atot) = "Acumulado"
             .MergeCells = flexMergeFixedOnly
             .MergeRow(0) = True
             .MergeCol(Anual.Placa) = True
             .MergeCol(Anual.Sel) = True
             .MergeCol(Anual.Propietario) = True
             .MergeCol(Anual.IDconcepto) = True
             .MergeCol(Anual.IDempresa) = True
             .MergeCol(Anual.CedulaProp) = True
             .MergeCol(Anual.EstadoVeh) = True
             
             For K = Anual.EneP To Anual.Atot
                  .ColFormat(K) = "#,###"
                  .ColWidth(K) = 1000
             Next K
             .Cell(flexcpAlignment, 0, 0, 1, .Cols - 1) = flexAlignCenterCenter
             .Cell(flexcpFontBold, 0, 0, 1, .Cols - 1) = True
             .Editable = flexEDKbd
             .ColHidden(Anual.IDconcepto) = True
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             .AutoSearch = flexSearchFromCursor
             .Editable = flexEDNone
             .ColHidden(Anual.Sel) = False
             .ColHidden(Anual.Propietario) = False
             .ColHidden(Anual.EstadoVeh) = False
             .ColComboList(Anual.IDempresa) = "|#01;MONTERIANA S.A.S|#02;INTERCARIBE S.A.|#03;EXPREVIENSA|#04;ECERETE S.A.|#05;SOTRACOR S.A."
             .ColComboList(Anual.EstadoVeh) = "|#0;ACTIVO|#1;INACTIVO|#2;RETIRADO|#3;TALLER|#4;CREADO"
             .ExplorerBar = flexExSortShowAndMove
        End With
        Exit Sub
Salida:

End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        If Coba�o.Text = Empty Then MsgBox "Se�or usuario seleccione el A�o", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        If CobMeses.Text = Empty Then MsgBox "Se�or usuario seleccione el Mes", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
        Call Consultar_Informacion
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        PopupMenu Menur
        
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
            CmdFijar.Caption = "V"
            FGmovimientos.FixedCols = 4
            FGdatos.FixedCols = 4
        Else
            CmdFijar.Caption = "F"
            FGmovimientos.FixedCols = 0
            FGdatos.FixedCols = 0
        End If
End Sub

Private Sub Coba�o_Click()
        FGmovimientos.Rows = 1
        FGdatos.Rows = 2
End Sub

Private Sub CobMeses_Click()
        Select Case CobMeses.Text
               Case "Enero": vMes = 1
               Case "Febrero": vMes = 2
               Case "Marzo": vMes = 3
               Case "Abril": vMes = 4
               Case "Mayo": vMes = 5
               Case "Junio": vMes = 6
               Case "Julio": vMes = 7
               Case "Agosto": vMes = 8
               Case "Septiembre": vMes = 9
               Case "Octubre": vMes = 10
               Case "Noviembre": vMes = 11
               Case "Diciembre": vMes = 12
        End Select
        FGmovimientos.Rows = 1: FGdatos.Rows = 2
End Sub

Private Sub Form_Activate()
         Call AsignarPermisos_Usuarios(Me)
End Sub

Private Sub Form_Load()
        
        Call DGRILLA
        Call Obtener_FechaServidor
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = Tama�oLetraTitulo
        LblTitle.Height = 315
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "   " + NomVentana
        Me.Caption = Trim(Titul)
        Call Configurar_Pantalla
        
        CobMeses.AddItem ("Enero"): CobMeses.AddItem ("Febrero")
        CobMeses.AddItem ("Marzo"): CobMeses.AddItem ("Abril")
        CobMeses.AddItem ("Mayo"): CobMeses.AddItem ("Junio")
        CobMeses.AddItem ("Julio"): CobMeses.AddItem ("Agosto")
        CobMeses.AddItem ("Septiembre"): CobMeses.AddItem ("Octubre")
        CobMeses.AddItem ("Noviembre"): CobMeses.AddItem ("Diciembre")
        
        Select Case Month(FechaServidor)
               Case 1: CobMeses.Text = "Enero": vMes = 1
               Case 2: CobMeses.Text = "Febrero": vMes = 2
               Case 3: CobMeses.Text = "Marzo": vMes = 3
               Case 4: CobMeses.Text = "Abril": vMes = 4
               Case 5: CobMeses.Text = "Mayo": vMes = 5
               Case 6: CobMeses.Text = "Junio": vMes = 6
               Case 7: CobMeses.Text = "Julio": vMes = 7
               Case 8: CobMeses.Text = "Agosto": vMes = 8
               Case 9: CobMeses.Text = "Septiembre": vMes = 9
               Case 10: CobMeses.Text = "Octubre": vMes = 10
               Case 11: CobMeses.Text = "Noviembre": vMes = 11
               Case 12: CobMeses.Text = "Diciembre": vMes = 12
        End Select
        

        For K = 2017 To Year(FechaServidor)
            Coba�o.AddItem K
            If K = Year(FechaServidor) Then Coba�o.Text = K
        Next K
        

        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
        SSTab1.Tab = 0
        FGdatos.Visible = False
                
End Sub

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        
        N = Me.SSTab1.Left + 300
        SSTab1.Width = Me.Width - N
        SSTab1.Height = Me.Height - SSTab1.Top - vHeightFor
        
        FGmovimientos.Left = 90: Me.FGmovimientos.Top = 540
        FGmovimientos.Width = SSTab1.Width - Me.FGmovimientos.Left - 100
        FGmovimientos.Height = SSTab1.Height - FGmovimientos.Top - 100
        
        FGdatos.Left = 90: Me.FGdatos.Top = 540
        FGdatos.Width = SSTab1.Width - Me.FGdatos.Left - 100
        FGdatos.Height = SSTab1.Height - FGdatos.Top - 100
               
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub tbrToolBar_ButtonClick(ByVal Button As MSComctlLib.Button)
        On Error GoTo Mas
        
        Select Case Button.Key
               Case "Consulta"
                    Progres.value = 1: Progres.Min = 1
                    Progres.Max = 10
                    Progres.Visible = True: Progres.value = Progres.value + 1
                    Progres.Visible = True
                    Call Consultar_Informacion
                    Progres.Visible = False
               Case "Salir"
                    Unload Me
        End Select
   Exit Sub
Mas: MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atenci�n"
End Sub

Private Sub Consultar_Informacion()
        On Error GoTo Salida
        Dim vColVehiculos As New Collection
        
        Set vColVehiculos = Nothing
        vAno = Me.Coba�o.Text
        vGeneracion = True
        Progres.Max = 10: Progres.Min = 1: Progres.value = 1: Progres.Visible = True
        
        
       With FGmovimientos
             Progres.value = Progres.value + 1
             .Rows = 1
             Sql = "SELECT A.*,B.VpoIdStPropietario,C.CliStNombreCliente,D.VehStEstado FROM TRANCONTROLVEHICULOS A " & _
                   "INNER JOIN TRANVEHICULOS D ON (A.CovIdStEmpresa = D.VehIdStEmpresa AND A.CovIdStPlaca = D.VehIdStPlaca) " & _
                   "INNER JOIN TRANVEHICULOPROPIETARIOS B ON (D.VehIdStEmpresa = B.VpoIdStEmpresa AND D.VehIdStPlaca = B.VpoIdStPlacaVehiculo AND B.VpoStPrincipal ='1') " & _
                   "INNER JOIN CLIENTES C ON (B.VpoIdStEmpresa = C.cliempr AND B.VpoIdStPropietario = C.clinit) " & _
                   "WHERE CovInAno = " & vAno & " AND CovInMes = " & vMes
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 Progres.value = Progres.value + 1
                 While Not rdoRs.EOF
                       .AddItem ""
                       .TextMatrix(.Rows - 1, Datos.IDempresa) = Trim("" & rdoRs!CovIdStEmpresa)
                       .TextMatrix(.Rows - 1, Datos.Placa) = Trim("" & rdoRs!CovIdStPlaca)
                       
                       .TextMatrix(.Rows - 1, Datos.CedulaProp) = Trim("" & rdoRs!VpoIdStPropietario)
                       .TextMatrix(.Rows - 1, Datos.Propietario) = Trim("" & rdoRs!CliStNombreCliente)
                       .TextMatrix(.Rows - 1, Datos.EstadoVeh) = Val("" & rdoRs!VehStEstado)
                       
                       
                       .TextMatrix(.Rows - 1, Datos.VrPlanilla) = Val("" & rdoRs!CovInValorPlanilla)
                       .TextMatrix(.Rows - 1, Datos.VrAportes) = Val("" & rdoRs!CovInValorAportes)
                       .TextMatrix(.Rows - 1, Datos.VrSegSocial) = Val("" & rdoRs!CovInAporteSegSocial)
                       .TextMatrix(.Rows - 1, Datos.VrPrestaciones) = Val("" & rdoRs!CovInAportePrestaciones)
                       .TextMatrix(.Rows - 1, Datos.VrParafiscales) = Val("" & rdoRs!CovInAporteParafiscales)
                       .TextMatrix(.Rows - 1, Datos.VrOtros) = Val("" & rdoRs!CovInOtrosAportes)
                       .TextMatrix(.Rows - 1, Datos.VrControl1) = Val("" & rdoRs!CovInControlUno)
                       .TextMatrix(.Rows - 1, Datos.VrControl2) = Val("" & rdoRs!CovInControlDos)
                       .TextMatrix(.Rows - 1, Datos.VrControl3) = Val("" & rdoRs!CovInControlTres)
                       .TextMatrix(.Rows - 1, Datos.VrControl4) = Val("" & rdoRs!CovInControlCuatro)
                       .TextMatrix(.Rows - 1, Datos.VrSobrante) = Val("" & rdoRs!CovInValorSobrante)
                       .TextMatrix(.Rows - 1, Datos.VrFaltante) = Val("" & rdoRs!CovInValorFaltante)
                       .TextMatrix(.Rows - 1, Datos.CarteraVieja) = Val("" & rdoRs!CovInControlSeis) 'guarda la cartera de 2016
                       .TextMatrix(.Rows - 1, Datos.CarteraMes) = Val("" & rdoRs!CovInFaltanteIntervalo)  'cartera intervalo
                       
                       .TextMatrix(.Rows - 1, Datos.PaquePlanilla) = Trim("" & rdoRs!CovStPaquetePlanilla)
                       .TextMatrix(.Rows - 1, Datos.DiaHabilitaPaq) = Trim("" & rdoRs!CovInDiaHabilitaPaquete)
                       .TextMatrix(.Rows - 1, Datos.FondoReposicion) = Val("" & rdoRs!CovInControlSiete)
                       
                       .TextMatrix(.Rows - 1, Datos.Dia1) = Trim("" & rdoRs!CovStDia1)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 1) = Val("" & rdoRs!CovStDia2)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 2) = Val("" & rdoRs!CovStDia3)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 3) = Val("" & rdoRs!CovStDia4)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 4) = Val("" & rdoRs!CovStDia5)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 5) = Val("" & rdoRs!CovStDia6)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 6) = Val("" & rdoRs!CovStDia7)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 7) = Val("" & rdoRs!CovStDia8)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 8) = Val("" & rdoRs!CovStDia9)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 9) = Val("" & rdoRs!CovStDia10)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 10) = Val("" & rdoRs!CovStDia11)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 11) = Val("" & rdoRs!CovStDia12)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 12) = Val("" & rdoRs!CovStDia13)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 13) = Val("" & rdoRs!CovStDia14)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 14) = Val("" & rdoRs!CovStDia15)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 15) = Val("" & rdoRs!CovStDia16)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 16) = Val("" & rdoRs!CovStDia17)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 17) = Val("" & rdoRs!CovStDia18)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 18) = Val("" & rdoRs!CovStDia19)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 19) = Val("" & rdoRs!CovStDia20)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 20) = Val("" & rdoRs!CovStDia21)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 21) = Val("" & rdoRs!CovStDia22)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 22) = Val("" & rdoRs!CovStDia23)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 23) = Val("" & rdoRs!CovStDia24)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 24) = Val("" & rdoRs!CovStDia25)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 25) = Val("" & rdoRs!CovStDia26)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 26) = Val("" & rdoRs!CovStDia27)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 27) = Val("" & rdoRs!CovStDia28)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 28) = Val("" & rdoRs!CovStDia29)
                       .TextMatrix(.Rows - 1, Datos.Dia1 + 29) = Val("" & rdoRs!CovStDia30)
                       .TextMatrix(.Rows - 1, Datos.Dia31) = Trim("" & rdoRs!CovStDia31)
                       .TextMatrix(.Rows - 1, Datos.Sel) = .Rows - 1
                       .Cell(flexcpBackColor, .Rows - 1, Datos.VrControl1, .Rows - 1, Datos.VrControl4) = &HC0FFC0
                       
                       If vMes = Month(FechaServidor) Then
                       
                            If Day(FechaServidor) <= 10 Then
                                If (Val(.TextMatrix(.Rows - 1, Datos.VrAportes)) + Val(.TextMatrix(.Rows - 1, Datos.VrSobrante))) < (Val(.TextMatrix(.Rows - 1, Datos.VrControl1)) + Val(.TextMatrix(.Rows - 1, Datos.VrFaltante))) Then
                                      .Cell(flexcpBackColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbRed
                                      .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbWhite
                                End If
                            Else
                                If Day(FechaServidor) <= 15 Then
                                    If (Val(.TextMatrix(.Rows - 1, Datos.VrAportes)) + Val(.TextMatrix(.Rows - 1, Datos.VrSobrante))) < (Val(.TextMatrix(.Rows - 1, Datos.VrControl2)) + Val(.TextMatrix(.Rows - 1, Datos.VrFaltante))) Then
                                        .Cell(flexcpBackColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbRed
                                        .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbWhite
                                    End If
                                Else
                                    If Day(FechaServidor) <= 20 Then
                                        If (Val(.TextMatrix(.Rows - 1, Datos.VrAportes)) + Val(.TextMatrix(.Rows - 1, Datos.VrSobrante))) < (Val(.TextMatrix(.Rows - 1, Datos.VrControl3)) + Val(.TextMatrix(.Rows - 1, Datos.VrFaltante))) Then
                                            .Cell(flexcpBackColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbRed
                                            .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbWhite
                                        End If
                                    Else
                                        If (Val(.TextMatrix(.Rows - 1, Datos.VrAportes)) + Val(.TextMatrix(.Rows - 1, Datos.VrSobrante))) < (Val(.TextMatrix(.Rows - 1, Datos.VrControl4)) + Val(.TextMatrix(.Rows - 1, Datos.VrFaltante))) Then
                                            .Cell(flexcpBackColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbRed
                                            .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbWhite
                                        End If
                                    End If
                                End If
                            End If
                       End If

                                              
                       rdoRs.MoveNext
                 Wend
                 .AddItem ""
                 .TextMatrix(.Rows - 1, Datos.IDempresa) = Trim("TOTALES")
                 For i = 1 To .Rows - 2
                       .TextMatrix(.Rows - 1, Datos.VrPlanilla) = Val(.TextMatrix(.Rows - 1, Datos.VrPlanilla)) + Val(.TextMatrix(i, Datos.VrPlanilla))
                       .TextMatrix(.Rows - 1, Datos.VrAportes) = Val(.TextMatrix(.Rows - 1, Datos.VrAportes)) + Val(.TextMatrix(i, Datos.VrAportes))
                       .TextMatrix(.Rows - 1, Datos.VrSobrante) = Val(.TextMatrix(.Rows - 1, Datos.VrSobrante)) + Val(.TextMatrix(i, Datos.VrSobrante))
                       .TextMatrix(.Rows - 1, Datos.VrFaltante) = Val(.TextMatrix(.Rows - 1, Datos.VrFaltante)) + Val(.TextMatrix(i, Datos.VrFaltante))
                       
                       .TextMatrix(.Rows - 1, Datos.VrControl1) = Val(.TextMatrix(.Rows - 1, Datos.VrControl1)) + Val(.TextMatrix(i, Datos.VrControl1))
                       .TextMatrix(.Rows - 1, Datos.VrControl2) = Val(.TextMatrix(.Rows - 1, Datos.VrControl2)) + Val(.TextMatrix(i, Datos.VrControl2))
                       .TextMatrix(.Rows - 1, Datos.VrControl3) = Val(.TextMatrix(.Rows - 1, Datos.VrControl3)) + Val(.TextMatrix(i, Datos.VrControl3))
                       .TextMatrix(.Rows - 1, Datos.VrControl4) = Val(.TextMatrix(.Rows - 1, Datos.VrControl4)) + Val(.TextMatrix(i, Datos.VrControl4))
                       
                       .TextMatrix(.Rows - 1, Datos.VrOtros) = Val(.TextMatrix(.Rows - 1, Datos.VrOtros)) + Val(.TextMatrix(i, Datos.VrOtros))
                       .TextMatrix(.Rows - 1, Datos.VrParafiscales) = Val(.TextMatrix(.Rows - 1, Datos.VrParafiscales)) + Val(.TextMatrix(i, Datos.VrParafiscales))
                       .TextMatrix(.Rows - 1, Datos.VrSegSocial) = Val(.TextMatrix(.Rows - 1, Datos.VrSegSocial)) + Val(.TextMatrix(i, Datos.VrSegSocial))
                       .TextMatrix(.Rows - 1, Datos.VrPrestaciones) = Val(.TextMatrix(.Rows - 1, Datos.VrPrestaciones)) + Val(.TextMatrix(i, Datos.VrPrestaciones))
                       
                       .TextMatrix(.Rows - 1, Datos.CarteraVieja) = Val(.TextMatrix(.Rows - 1, Datos.CarteraVieja)) + Val(.TextMatrix(i, Datos.CarteraVieja))
                       .TextMatrix(.Rows - 1, Datos.CarteraMes) = Val(.TextMatrix(.Rows - 1, Datos.CarteraMes)) + Val(.TextMatrix(i, Datos.CarteraMes))
                       
                       
                 Next i
                 .Cell(flexcpFontSize, .Rows - 1, 0, .Rows - 1, .Cols - 1) = 9
                 .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                 .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                 Progres.value = Progres.value + 1
                 
                              
             End If
             .ColHidden(Datos.IDconcepto) = True
             .AutoSize 0, .Cols - 1
             .AllowUserResizing = flexResizeColumns
             SSTab1.Tab = 0: Me.FGdatos.Visible = False
        End With
        
        With FGdatos
             Progres.value = Progres.value + 1
             .Rows = 2
             Sql = "SELECT A.CovInValorPlanilla,A.CovInValorAportes,A.CovInMes,A.CovIdStEmpresa,A.CovIdStPlaca,B.VpoIdStPropietario,C.CliStNombreCliente,D.VehStEstado FROM TRANCONTROLVEHICULOS A " & _
                   "INNER JOIN TRANVEHICULOS D ON (A.CovIdStEmpresa = D.VehIdStEmpresa AND A.CovIdStPlaca = D.VehIdStPlaca) " & _
                   "INNER JOIN TRANVEHICULOPROPIETARIOS B ON (D.VehIdStEmpresa = B.VpoIdStEmpresa AND D.VehIdStPlaca = B.VpoIdStPlacaVehiculo AND B.VpoStPrincipal ='1') " & _
                   "INNER JOIN CLIENTES C ON (B.VpoIdStEmpresa = C.cliempr AND B.VpoIdStPropietario = C.clinit) " & _
                   "WHERE CovInAno = " & vAno & ""
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                 Progres.value = Progres.value + 1
                 While Not rdoRs.EOF
                       X = Trim("" & rdoRs!CovIdStEmpresa) & "-" & Trim("" & rdoRs!CovIdStPlaca)
                       p = Val("" & rdoRs!CovInMes) + 6 'MES DE SELECCION DE PLANILLA
                       A = Val("" & rdoRs!CovInMes) + 19 'MES DE SELECCION DE APORTES

                       
                            
                       On Error Resume Next
                       M = "-1"
                       M = vColVehiculos(X)
                       If M = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Anual.IDempresa) = Trim("" & rdoRs!CovIdStEmpresa)
                            .TextMatrix(.Rows - 1, Anual.Placa) = Trim("" & rdoRs!CovIdStPlaca)
                            .TextMatrix(.Rows - 1, Anual.CedulaProp) = Trim("" & rdoRs!VpoIdStPropietario)
                            .TextMatrix(.Rows - 1, Anual.Propietario) = Trim("" & rdoRs!CliStNombreCliente)
                            .TextMatrix(.Rows - 1, Anual.EstadoVeh) = Val("" & rdoRs!VehStEstado)
                            
                            .TextMatrix(.Rows - 1, p) = Val("" & rdoRs!CovInValorPlanilla)
                            .TextMatrix(.Rows - 1, A) = Val("" & rdoRs!CovInValorAportes)
                            .TextMatrix(.Rows - 1, Anual.Sel) = .Rows - 1
                            vColVehiculos.Add .Rows - 1, X
                       Else
                            .TextMatrix(M, p) = Val(.TextMatrix(M, p)) + Val("" & rdoRs!CovInValorPlanilla)
                            .TextMatrix(M, A) = Val(.TextMatrix(M, A)) + Val("" & rdoRs!CovInValorAportes)
                       End If
                       rdoRs.MoveNext
                 Wend
                 

                 .AddItem ""
                 .TextMatrix(.Rows - 1, Datos.IDempresa) = Trim("TOTALES")
                 For i = 2 To .Rows - 2
                       For K = Anual.EneP To Anual.DicP
                             .TextMatrix(i, Anual.TotP) = Val(.TextMatrix(i, Anual.TotP)) + Val(.TextMatrix(i, K))
                       Next K
                       
                       For K = Anual.AenE To Anual.Adic
                             .TextMatrix(i, Anual.Atot) = Val(.TextMatrix(i, Anual.Atot)) + Val(.TextMatrix(i, K))
                       Next K
                       
                       For J = Anual.EneP To Anual.Atot
                             .TextMatrix(.Rows - 1, J) = Val(.TextMatrix(.Rows - 1, J)) + Val(.TextMatrix(i, J))
                       Next J
                 Next i
                 .Cell(flexcpFontSize, .Rows - 1, 0, .Rows - 1, .Cols - 1) = 9
                 .Cell(flexcpFontBold, .Rows - 1, 0, .Rows - 1, .Cols - 1) = True
                 .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                 .Cell(flexcpBackColor, 2, Anual.EneP, .Rows - 1, Anual.DicP) = &HFEFDE0
                 .Cell(flexcpBackColor, 2, Anual.AenE, .Rows - 1, Anual.Adic) = &HC0FFC0
                 
                 Progres.value = Progres.value + 1
                 .ColHidden(Datos.IDconcepto) = True
                 .AutoSize 0, .Cols - 1
                 .AllowUserResizing = flexResizeColumns
                 Progres.value = Progres.value + 1
                 
             End If
             Me.Progres.Visible = False
        
        End With
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub Menu_Click(Index As Integer)
        On Error GoTo Salida
        
        Select Case Index
               Case 1:
                    If FGmovimientos.Rows - 1 < 1 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                    ComArchivo.CancelError = False
                    ComArchivo.Flags = cdlOFNHideReadOnly
                    ComArchivo.DefaultExt = "xls"
                    ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
                    ComArchivo.ShowSave
                    If ComArchivo.FileName <> Empty Then
                         FGmovimientos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                    End If
               Case 3:
                    If FGdatos.Rows - 1 < 3 Then MsgBox "No hay informaci�n para exportar", vbInformation + vbOKOnly, "Atenci�n": Exit Sub
                    ComArchivo.CancelError = False
                    ComArchivo.Flags = cdlOFNHideReadOnly
                    ComArchivo.DefaultExt = "xls"
                    ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
                    ComArchivo.ShowSave
                    If ComArchivo.FileName <> Empty Then
                         FGdatos.SaveGrid ComArchivo.FileName, flexFileExcel, 3
                    End If
        End Select
          
        
        Exit Sub
Salida: MsgBox "Se�or usuario el archivo en excel se encuentra abierto", vbInformation + vbOKOnly, "Atenci�n"
        
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)
        If Me.SSTab1.Tab = 0 Then
             FGdatos.Visible = False
             FGmovimientos.Visible = True
        Else
            FGdatos.Visible = True
            FGmovimientos.Visible = False
        End If
End Sub

