VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Object = "{8B1596DD-B10E-4E63-9FAD-EF1063DE32CF}#1.0#0"; "DianaCombo.ocx"
Begin VB.Form FrmListadoEgresodeBancos 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12675
   Icon            =   "FrmListadoEgresodeBancos.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   12675
   StartUpPosition =   2  'CenterScreen
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
      Height          =   420
      Left            =   10080
      Picture         =   "FrmListadoEgresodeBancos.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   18
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1665
      Width           =   1350
   End
   Begin VSFlex8LCtl.VSFlexGrid FGMovimiento 
      Height          =   1440
      Left            =   360
      TabIndex        =   17
      Top             =   6795
      Visible         =   0   'False
      Width           =   11640
      _cx             =   20532
      _cy             =   2540
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGdetalle 
      Height          =   1740
      Left            =   360
      TabIndex        =   13
      Top             =   5040
      Visible         =   0   'False
      Width           =   11625
      _cx             =   20505
      _cy             =   3069
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
      BackColor       =   16777152
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   16777152
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
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   945
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Fijar Columnas"
      Top             =   2520
      Visible         =   0   'False
      Width           =   255
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
      Height          =   1635
      Left            =   360
      TabIndex        =   7
      Top             =   765
      Width           =   9060
      Begin VB.CommandButton CmdTercero 
         Height          =   315
         Left            =   8550
         Picture         =   "FrmListadoEgresodeBancos.frx":6184
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   495
         Width           =   315
      End
      Begin VB.TextBox TxtNombre 
         Enabled         =   0   'False
         Height          =   285
         Left            =   4950
         TabIndex        =   16
         Top             =   510
         Width           =   3570
      End
      Begin VB.TextBox TxtTercero 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3600
         TabIndex        =   14
         Top             =   510
         Width           =   1320
      End
      Begin MSComCtl2.DTPicker DTfechaI 
         Height          =   315
         Left            =   405
         TabIndex        =   0
         Top             =   495
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         CalendarBackColor=   16777215
         CalendarForeColor=   0
         CalendarTitleBackColor=   16777088
         CalendarTitleForeColor=   0
         CalendarTrailingForeColor=   -2147483632
         CustomFormat    =   "dd-MM-yyyy"
         Format          =   142671875
         CurrentDate     =   38681
      End
      Begin MSComCtl2.DTPicker DTfechaF 
         Height          =   315
         Left            =   1935
         TabIndex        =   1
         Top             =   495
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         CalendarBackColor=   16777215
         CalendarForeColor=   0
         CalendarTitleBackColor=   16777088
         CalendarTitleForeColor=   0
         CalendarTrailingForeColor=   -2147483632
         CustomFormat    =   "dd-MM-yyyy"
         Format          =   142671875
         CurrentDate     =   38681
      End
      Begin DianaCombo.Combox CobComprobante 
         Height          =   405
         Left            =   3555
         TabIndex        =   20
         Top             =   1080
         Width           =   4230
         _ExtentX        =   7461
         _ExtentY        =   714
         CobWidth        =   2985
         TexWidth        =   1095
         TexVisible      =   0   'False
         Bloqueado       =   -1  'True
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Comprobante"
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
         Left            =   3600
         TabIndex        =   21
         Top             =   900
         Width           =   1140
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Proveedores"
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
         Left            =   3600
         TabIndex        =   15
         Top             =   270
         Width           =   1080
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Inicial:"
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
         TabIndex        =   12
         Top             =   270
         Width           =   1035
      End
      Begin VB.Label LblFechaf 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Final:"
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
         Left            =   1935
         TabIndex        =   11
         Top             =   270
         Width           =   945
      End
   End
   Begin Crystal.CrystalReport RptReciboCaja 
      Left            =   135
      Top             =   900
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "1"
      Height          =   285
      Index           =   0
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Ver a Nivel de Cuentas.."
      Top             =   2520
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.CommandButton CmdNivel 
      BackColor       =   &H00E7D6B8&
      Caption         =   "2"
      Height          =   285
      Index           =   1
      Left            =   630
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Ver a Nivel de Subcuentas"
      Top             =   2520
      Visible         =   0   'False
      Width           =   285
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
            Picture         =   "FrmListadoEgresodeBancos.frx":6746
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoEgresodeBancos.frx":6C8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoEgresodeBancos.frx":6D96
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   6390
      TabIndex        =   6
      Top             =   360
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
   Begin BarraDiana.BarraOperaciones BarraOperaciones 
      Height          =   945
      Left            =   9945
      TabIndex        =   8
      Top             =   675
      Width           =   1755
      _ExtentX        =   10160
      _ExtentY        =   1931
      BarUso          =   2
   End
   Begin VSFlex8DAOCtl.VSFlexGrid FGegreso 
      Height          =   2175
      Left            =   360
      TabIndex        =   2
      Top             =   2835
      Width           =   11640
      _cx             =   20532
      _cy             =   3836
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
   Begin VB.Label LblNit 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "NIt"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   225
      Left            =   1485
      TabIndex        =   9
      Top             =   2610
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Listado de Egreso de Bancos"
      BeginProperty Font 
         Name            =   "Arial"
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
      TabIndex        =   5
      Top             =   250
      Width           =   12000
   End
   Begin VB.Menu Menur 
      Caption         =   "Opciones"
      Visible         =   0   'False
      Begin VB.Menu Menu 
         Caption         =   "Nivel Dos"
         Index           =   1
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   2
      End
      Begin VB.Menu Menu 
         Caption         =   "Detallado"
         Index           =   3
      End
      Begin VB.Menu Menu 
         Caption         =   "-"
         Index           =   4
      End
      Begin VB.Menu Menu 
         Caption         =   "Pantalla"
         Index           =   5
      End
   End
End
Attribute VB_Name = "FrmListadoEgresodeBancos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String

Private Enum Datos
        numero
        Comprobante
        Fecha
        Cliente
        Descri
        VrPago
        VrRetefuente
        VrDescuento
        VrExcedentes
        VrTotal
        Bancos
        CtaBancaria
        Cheque
        Cedula
        Conse
        TipoEgreso
        SwCheque
        Beneficiario
        Formato
        Estado
        FechaElaboracion
        Tipo
        ConsConta
End Enum

Private Enum Detalle
        NumE
        Cod
        Factura
        DescriPago
        Fecha
        Valor
        Proveedor
        Nombre
        Centro
End Enum

Private Enum Men
        Item = 0
        Cuenta = 1
        NombreCta = 2
        Desc = 3
        ValorDeb = 4
        ValorCre = 5
        NumeroEgre = 6
        
End Enum

Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGegreso.Left + 300
        FGegreso.Width = Me.Width - N
        FGegreso.Height = Me.Height - FGegreso.Top - vHeightFor
        
        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        On Error GoTo Salida
        With FGegreso
              If Permisos(3) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
              Progres.Value = 1: Progres.Min = 1
              Progres.Max = 10
              vFiltro = Empty
                                        
              Progres.Visible = True: Progres.Value = Progres.Value + 1
              If DTfechaI.Value > DTfechaF.Value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atención": DTfechaI.SetFocus: Exit Sub
              If DateDiff("d", Me.DTfechaF.Value, Me.DTfechaI.Value) > 90 Then
                    MsgBox "Seleccione bien el intervalo de fecha maximo 90 dias" & Chr(13) & "entre la fecha inicial y la fecha final", vbExclamation + vbOKOnly, "Atención": DTfechaI.SetFocus: Exit Sub
              End If
                            
              If TxtTercero.Text <> Empty Then
                    vFiltro = " AND PprIdStProveedor = '" & TxtTercero.Text & "'"
              End If
              
              If CobComprobante.Text <> Empty Then
                  vFiltro = vFiltro & " and PprIdStComprobante = '" & CobComprobante.Text & "'"
              End If
              
              A = Empty:  M = 0: B = Empty: D = Empty
              .Rows = 1
              FGdetalle.Rows = 1: FGMovimiento.Rows = 1
                            
              Sql = "SELECT A.*,C.CliStNombreCliente,K.*,B.BanStDescripcion,T.EtaStDescripcion,L.PrvStFactura,L.PrvDaFechaCompra,L.PrvIdStCentroCosto,L.PrvIdStSubcentroCosto, " & _
                    "L.PrvIdStDocumento,R.CbaStDescripcion,R.CbaStFormato,Y.*,Q.CarNomb,S.comnomb,Z.CliStNombreCliente AS NomProveedor FROM PAGOS A " & _
                    "INNER JOIN CLIENTES C ON (A.PprIdStEmpresa = C.CliEmpr AND A.PprIdStProveedor = C.CliNit) " & _
                    "INNER JOIN BANCOS B ON (A.PprIdStEmpresa = B.BanStEmpresa AND A.PprIdInBanco = B.BanIdInBanco ) " & _
                    "INNER JOIN CUENTASBANCARIAS R ON (A.PprIdStEmpresa = R.CbaIdStEmpresa AND A.PprIdInBanco = R.CbaIdInBanco AND " & _
                       "A.PprIdInCuentaBanco = R.CbaIdInCuentaBanco) " & _
                    "INNER JOIN ESTADOS T ON (A.PprStEstadoPago = T.EtaIdStEstado) " & _
                    "LEFT OUTER JOIN MOVPAGOS K ON (A.PprIdStEmpresa =K.MprIdStEmpresa AND A.PprIdStComprobante =K.MprIdStComprobante AND " & _
                    "A.PprIdInDocumento = K.MprIdInDocumento) " & _
                    "LEFT OUTER JOIN PROVEEDORES L ON (K.MprIdStEmpresa = L.PrvIdStEmpresa AND K.MprIdStComprobanteCompra= L.PrvIdStComprobante AND " & _
                    "K.MprIdStDocumentoCompra = L.PrvIdStDocumento) " & _
                    "INNER JOIN TMOVIMIENTO X ON (A.PprIdStEmpresa = X.TmoEmpr AND A.PprInTmoviento = X.TmoCons) " & _
                    "INNER JOIN MOVIMIENTOS Y ON (X.TmoEmpr = Y.MovEmpr AND X.TmoCons = Y.MovCons) " & _
                    "INNER JOIN CARTILLA Q ON (Y.MovEmpr = Q.CarEmpr AND Y.Movcuen = Q.CarCuen AND Y.MovScue = Q.CarScue AND " & _
                                "Y.Movauxi = Q.CarAuxi AND Y.Movauxl = Q.CarAuxl) " & _
                    "INNER JOIN COMPROBANTES S ON (A.PprIdStEmpresa = S.comempr AND A.PprIdStComprobante = S.comcodi) " & _
                    "LEFT OUTER JOIN CLIENTES Z ON (K.MprIdStEmpresa = Z.CliEmpr AND K.MprIdStProveedor = Z.CliNit) " & _
                    "WHERE (A.PprIdStEmpresa = '" & Empresa & "' AND A.PprIdStTipoComprobante = '" & vTipoComprobante(1) & "' AND " & _
                        "PprDaFechaPago BETWEEN '" & Format(DTfechaI.Value, FormatoFecha) & "' AND '" & Format(DTfechaF.Value, FormatoFecha) & "' " & vFiltro & ") " & _
                    "ORDER BY ObjectID,MprInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                                     
                   While Not rdoRs.EOF
                         If A <> Trim(rdoRs!ObjectID) Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Datos.Cliente) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Datos.Comprobante) = Trim("" & rdoRs!comnomb)
                                .TextMatrix(.Rows - 1, Datos.Fecha) = Format(rdoRs!PprDaFechaPago, "dd-mm-yyyy")
                                .TextMatrix(.Rows - 1, Datos.numero) = Trim("" & rdoRs!PprIdInDocumento)
                                .TextMatrix(.Rows - 1, Datos.Conse) = Trim("" & rdoRs!ObjectID)
                                .TextMatrix(.Rows - 1, Datos.Cedula) = Trim("" & rdoRs!PprIdStProveedor)
                                .TextMatrix(.Rows - 1, Datos.Estado) = Trim("" & rdoRs!PprStEstadoPago)
                                .TextMatrix(.Rows - 1, Datos.FechaElaboracion) = Trim("" & rdoRs!PprDtFechaHora)
                                .TextMatrix(.Rows - 1, Datos.Tipo) = Trim("" & rdoRs!PprIdStEmpresaMandante)
                                .TextMatrix(.Rows - 1, Datos.ConsConta) = Trim("" & rdoRs!PprInTmoviento)
                                If Trim("" & rdoRs!PprStEstadoPago) = "W" Then
                                    .TextMatrix(.Rows - 1, Datos.Descri) = "** REGISTRO ANULADO **"
                                    .TextMatrix(.Rows - 1, Datos.VrPago) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrRetefuente) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrDescuento) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrExcedentes) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrTotal) = 0
                                Else
                                    .TextMatrix(.Rows - 1, Datos.Descri) = Trim("" & rdoRs!PprStDescripcion)
                                    .TextMatrix(.Rows - 1, Datos.VrPago) = Val("" & rdoRs!PprInValor)
                                    .TextMatrix(.Rows - 1, Datos.VrRetefuente) = Val("" & rdoRs!PprInRetefuente)
                                    .TextMatrix(.Rows - 1, Datos.VrDescuento) = Val("" & rdoRs!PprInDescuento)
                                    .TextMatrix(.Rows - 1, Datos.VrExcedentes) = Val("" & rdoRs!PprInExcedentes)
                                    .TextMatrix(.Rows - 1, Datos.VrTotal) = Val("" & rdoRs!PprInValor) - Val("" & rdoRs!PprInDescuento) - Val("" & rdoRs!PprInRetefuente) + Val("" & rdoRs!PprInExcedentes)
                                End If
                                .TextMatrix(.Rows - 1, Datos.Bancos) = Trim("" & rdoRs!BanStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.CtaBancaria) = Trim("" & rdoRs!CbaStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.Cheque) = Trim("" & rdoRs!PprInNumeroCheque)
                                .TextMatrix(.Rows - 1, Datos.SwCheque) = Trim("" & rdoRs!PprStSwCheque)
                                .TextMatrix(.Rows - 1, Datos.TipoEgreso) = Val("" & rdoRs!PprInTipoPago)
                                .TextMatrix(.Rows - 1, Datos.Formato) = Trim("" & rdoRs!CbaStFormato)
                                If Trim("" & rdoRs!PprStNombreCheque) = Empty Then
                                    .TextMatrix(.Rows - 1, Datos.Beneficiario) = Trim("" & rdoRs!CliStNombreCliente)
                                Else
                                    .TextMatrix(.Rows - 1, Datos.Beneficiario) = Trim("" & rdoRs!PprStNombreCheque)
                                End If
                         End If
                         
                         If Val("" & rdoRs!PprInTipoPago) = 0 Then
                            If B <> Trim(rdoRs!ObjectID) & Trim("" & rdoRs!MprInItem) Then
                                 With FGdetalle
                                      .AddItem ""
                                      .TextMatrix(.Rows - 1, Detalle.NumE) = Trim("" & rdoRs!ObjectID)
                                      .TextMatrix(.Rows - 1, Detalle.Fecha) = Trim("" & rdoRs!PrvDaFechaCompra)
                                      .TextMatrix(.Rows - 1, Detalle.DescriPago) = Trim("" & rdoRs!MprStDescripcion)
                                      .TextMatrix(.Rows - 1, Detalle.Proveedor) = Trim("" & rdoRs!MprIdStProveedor)
                                      .TextMatrix(.Rows - 1, Detalle.Nombre) = Trim("" & rdoRs!NomProveedor)
                                      .TextMatrix(.Rows - 1, Detalle.Centro) = Trim("" & rdoRs!PrvIdStCentroCosto) & Trim("" & rdoRs!PrvIdStSubcentroCosto)
                                      If Trim("" & rdoRs!PrvStFactura) <> Empty Then
                                           .TextMatrix(.Rows - 1, Detalle.Factura) = Trim("" & rdoRs!PrvStFactura)
                                      Else
                                           .TextMatrix(.Rows - 1, Detalle.Factura) = Trim("" & rdoRs!PrvIdStDocumento)
                                      End If
                                      If Trim("" & rdoRs!PprStEstadoPago) = "W" Then
                                          .TextMatrix(.Rows - 1, Detalle.Valor) = 0
                                      Else
                                          .TextMatrix(.Rows - 1, Detalle.Valor) = Val("" & rdoRs!MprInValor)
                                      End If
                                 End With
                            End If
                         Else
                             With FGMovimiento
                                  .AddItem ""
                                  .TextMatrix(.Rows - 1, Men.NumeroEgre) = Trim("" & rdoRs!ObjectID)
                                  .TextMatrix(.Rows - 1, Men.Cuenta) = Trim("" & rdoRs!movcuen) & " " & Trim("" & rdoRs!movscue) & " " & Trim("" & rdoRs!movauxi) & " " & Trim("" & rdoRs!movauxl)
                                  .TextMatrix(.Rows - 1, Men.NombreCta) = Trim("" & rdoRs!carnomb)
                                  .TextMatrix(.Rows - 1, Men.Desc) = Trim("" & rdoRs!MovDesc)
                                  If Val("" & rdoRs!MovValr) > 0 Then
                                       .TextMatrix(.Rows - 1, Men.ValorDeb) = Val("" & rdoRs!MovValr)
                                  Else
                                       .TextMatrix(.Rows - 1, Men.ValorCre) = Val("" & rdoRs!MovValr) * -1
                                  End If
                             End With
                         End If
                         B = Trim(rdoRs!ObjectID) & Trim("" & rdoRs!MprInItem)
                         C = Trim(rdoRs!ObjectID) & Trim("" & rdoRs!MprInItem)
                         A = Trim(rdoRs!ObjectID)
                         rdoRs.MoveNext
                   Wend
              End If
                
                          
              If .Rows <= 1 Then MsgBox "No hay información para mostrar", vbInformation + vbOKOnly, "Atención": Progres.Visible = False:  Exit Sub
              
              If .Rows > 2 Then
                    .AddItem ""
                    .TextMatrix(.Rows - 1, Datos.Cliente) = "TOTALES"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, Datos.VrRetefuente) = Val(.TextMatrix(.Rows - 1, Datos.VrRetefuente)) + Val(.TextMatrix(i, Datos.VrRetefuente))
                        .TextMatrix(.Rows - 1, Datos.VrPago) = Val(.TextMatrix(.Rows - 1, VrPago)) + Val(.TextMatrix(i, VrPago))
                        .TextMatrix(.Rows - 1, Datos.VrDescuento) = Val(.TextMatrix(.Rows - 1, Datos.VrDescuento)) + Val(.TextMatrix(i, Datos.VrDescuento))
                        .TextMatrix(.Rows - 1, Datos.VrExcedentes) = Val(.TextMatrix(.Rows - 1, Datos.VrExcedentes)) + Val(.TextMatrix(i, Datos.VrExcedentes))
                        .TextMatrix(.Rows - 1, Datos.VrTotal) = Val(.TextMatrix(.Rows - 1, Datos.VrTotal)) + Val(.TextMatrix(i, Datos.VrTotal))
                        
                    Next i
              End If
                            
              Progres.Value = Progres.Value + 1
              Progres.Visible = False
              If .Rows > 1 Then FGegreso.SetFocus: FGegreso.Select 1, Datos.numero
              
              
        End With
        Exit Sub
Salida: Call MensajeAdministrador
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        Call Imprimir_Informe
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
             CmdFijar.Caption = "V": FGExistencias.FixedCols = 3
        Else
             FGExistencias.FixedCols = 0: CmdFijar.Caption = "F"
        End If
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGExistencias
                Select Case Index
                       Case 0
                            .Outline (4)
                            .Outline (3)
                            .Outline (2)
                            .Outline (1)
                       Case 1
                            .Outline (4)
                            .Outline (3)
                            .Outline (2)
                       Case 2
                           .Outline (3)
                           .Outline (4)
                           .Outline (5)
                       Case 3
                           .Outline (5)
                           .Outline (6)
                           .Outline (8)
                           
                End Select
           
           End With
End Sub

Private Sub Cmdplano_Click()
        On Error GoTo Mt
        If FGegreso.Rows - 1 <= 1 Then MsgBox "No hay información para exportar", vbInformation + vbOKOnly, "Atención": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGegreso.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atención"

End Sub


Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub CmdTercero_Click()
        Set Informe = New ColInfo
        Informe.Add "CliStNombreCliente", "NOMBRE", 5000
        Informe.Add "Nit", "Nit o Cedula ", 1500
        Sql = "SELECT Concat(CliNit,' ') As Nit,CliStNombreCliente FROM CLIENTES WHERE CliEmpr = '" & Empresa & "' ORDER BY CliStNombreCliente"
        If Buscar_Info(Informe, Sql) = BDOk Then
             TxtTercero.Text = Trim(Informe.Item("Nit").Valor)
             TxtNombre.Text = Trim(Informe.Item("CliStNombreCliente").Valor)
        Else
             LblNit.Caption = Empty
             TxtTercero.Text = Empty
             TxtNombre.Text = Empty
        End If
        FGegreso.Rows = 1: FGdetalle.Rows = 1
End Sub

Private Sub CmdTercero_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdTercero.Picture = LoadResPicture(BotonSeleccionado.BusquedaS, vbResBitmap)
End Sub

Private Sub CobComprobante_Retorno()
        FGegreso.Rows = 1: FGdetalle.Rows = 1
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGegreso.Rows = 1: FGdetalle.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGegreso.Rows = 1: FGdetalle.Rows = 1
End Sub

Private Sub FGegreso_DblClick()
        On Error GoTo Salida
        
        If FGegreso.Rows > 1 And Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.numero)) <> Empty Then
            FrmDetalleListadoEgresoBanco.LblEgreso.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.numero))
            FrmDetalleListadoEgresoBanco.LblCliente.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Cliente))
            FrmDetalleListadoEgresoBanco.LblFecha.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Fecha))
            FrmDetalleListadoEgresoBanco.LblCedula.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Cedula))
            FrmDetalleListadoEgresoBanco.TxtPprInValor.Text = Val(FGegreso.TextMatrix(FGegreso.Row, Datos.VrPago))
            FrmDetalleListadoEgresoBanco.TxtPprInValorDescuento.Text = Val(FGegreso.TextMatrix(FGegreso.Row, Datos.VrDescuento))
            FrmDetalleListadoEgresoBanco.TxtPprInRetefuente.Text = Val(FGegreso.TextMatrix(FGegreso.Row, Datos.VrRetefuente))
            FrmDetalleListadoEgresoBanco.LblBanco.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Bancos))
            FrmDetalleListadoEgresoBanco.LblCheque.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Cheque))
            FrmDetalleListadoEgresoBanco.TxtSwCheque.Text = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.SwCheque))
            FrmDetalleListadoEgresoBanco.LblDescripcion.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Descri))
            FrmDetalleListadoEgresoBanco.TxtPprInExcedentes.Text = Val(FGegreso.TextMatrix(FGegreso.Row, Datos.VrExcedentes))
            FrmDetalleListadoEgresoBanco.lblCuentaBanco.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.CtaBancaria))
            FrmDetalleListadoEgresoBanco.LblBeneficiarioCheque.Caption = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Beneficiario))
            FrmDetalleListadoEgresoBanco.Txtformato.Text = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Formato))
            FrmDetalleListadoEgresoBanco.TxtTipoEgreso.Text = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.TipoEgreso))
            FrmDetalleListadoEgresoBanco.TxtTipo.Text = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Tipo))
            FrmDetalleListadoEgresoBanco.TxtTMovimiento.Text = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.ConsConta))
            FrmDetalleListadoEgresoBanco.TxtNomComprobante.Text = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Comprobante))
            X = Trim(FGegreso.TextMatrix(FGegreso.Row, Datos.Conse))
            W1 = Val(FGegreso.TextMatrix(FGegreso.Row, Datos.TipoEgreso))
            
            If W1 = 0 Then
                FrmDetalleListadoEgresoBanco.TxtSwCartera.Text = 1
                FrmDetalleListadoEgresoBanco.FGdetalle.Visible = True
                FrmDetalleListadoEgresoBanco.FGMovimiento.Visible = False
                With FGdetalle
                     For i = 1 To .Rows - 1
                           If X = Trim(.TextMatrix(i, Detalle.NumE)) Then
                                FrmDetalleListadoEgresoBanco.FGdetalle.AddItem ""
                                Y1 = FrmDetalleListadoEgresoBanco.FGdetalle.Rows - 1
                                For l = Detalle.Cod To Detalle.Centro
                                      FrmDetalleListadoEgresoBanco.FGdetalle.TextMatrix(Y1, l) = Trim(.TextMatrix(i, l))
                                Next l
                                                        
                           End If
                     Next i
                     FrmDetalleListadoEgresoBanco.FGdetalle.ColHidden(Detalle.Factura) = False
                     FrmDetalleListadoEgresoBanco.FGdetalle.ColHidden(Detalle.Fecha) = False
                End With
            Else
                FrmDetalleListadoEgresoBanco.TxtSwCartera.Text = 0
                FrmDetalleListadoEgresoBanco.FGdetalle.Visible = False
                FrmDetalleListadoEgresoBanco.FGMovimiento.Visible = True
                With FGMovimiento
                     For i = 1 To .Rows - 1
                          If X = Trim(.TextMatrix(i, Men.NumeroEgre)) Then
                               FrmDetalleListadoEgresoBanco.FGMovimiento.AddItem ""
                               Y1 = FrmDetalleListadoEgresoBanco.FGMovimiento.Rows - 1
                               For l = Men.Cuenta To Men.ValorCre
                                     FrmDetalleListadoEgresoBanco.FGMovimiento.TextMatrix(Y1, l) = Trim(.TextMatrix(i, l))
                               Next l
                          End If
                     Next i
                End With
            End If
            
            FrmDetalleListadoEgresoBanco.Show vbModal
        End If
        Exit Sub
Salida:         Call MensajeAdministrador
End Sub

Private Sub Form_Activate()
        On Error Resume Next
        Call AsignarPermisos_Usuarios(Me)
        LblPeriodo.Caption = "Periodo Activo: " + NombreMes(vPeriodoInv(1)) + " - " + Trim(Str(vPeriodoInv(0)))
                
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
        Dim SetFoc As Object
        Dim FGFocus As VSFlexGrid
        Select Case KeyCode
               Case vbKeyB:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(Buscar) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(Buscar)
               Case vbKeyI:
                    If (Shift = 2) And (BarraOperaciones.BotonActivo(imprimir) = True) Then On Error Resume Next: Call BarraOperaciones.OperacionesBotones(imprimir)
               
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
        Call Obtener_FechaServidor
        DTfechaI.Value = FechaServidor
        DTfechaF.Value = FechaServidor
        
        Me.BackColor = Bcolor1
        Me.Caption = Trim(Titul)
        LblTitle.BackColor = Bfcolor
        LblTitle.ForeColor = Fcolor1
        LblTitle.Font = TipoLetraTitulo: LblTitle.FontBold = NegLetraTitulo: LblTitle.FontSize = TamañoLetraTitulo
        LblTitle.Height = 315
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "     " + NomVentana
        
        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
               
        With CobComprobante
             .Enabled = True
             .CobWidth = 4800
             .TexWidth = 500
             .TexVisible = True
             .ColCamposGL.Add 0, "Código", "comcodi", adChar, 1000, True
             .ColCamposGL.Add 1, "Descripción", "comnomb", adVarChar, 4000, False
             .ColRet = 1
             .Sql = "SELECT * FROM COMPROBANTES WHERE Comempr = '" & Empresa & "' And ComStTipoMov = '" & vTipoComprobante(1) & "'"
             .ColForeingKey.Add "comcodi", "", adChar
             .CampoNul = True
        End With
       
        J = 0: K = Empty
        Call Define_Grids(FGegreso)
        Idx = 0
        Call DGRILLA
        LblNit.Caption = Empty
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
                
        With FGegreso
             .Rows = 1
             .Cols = 24
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Comprobante) = "Comprobante"
             .TextMatrix(0, Datos.Cliente) = "Proveedor"
             .TextMatrix(0, Datos.VrPago) = "Valor"
             .TextMatrix(0, Datos.VrDescuento) = "Descuento"
             .TextMatrix(0, Datos.VrRetefuente) = "Retefuente"
             .TextMatrix(0, Datos.VrExcedentes) = "Excedentes"
             .TextMatrix(0, Datos.VrTotal) = "Total Egreso"
             .TextMatrix(0, Datos.numero) = "Número"
             .TextMatrix(0, Datos.Descri) = "Descripción"
             .TextMatrix(0, Datos.Bancos) = "Bancos"
             .TextMatrix(0, Datos.CtaBancaria) = "Cuenta Bancaria"
             .TextMatrix(0, Datos.Cheque) = "No. Cheque"
             .TextMatrix(0, Datos.TipoEgreso) = "Tipo egreso"
             .TextMatrix(0, Datos.SwCheque) = "Cheque/Traslado"
             .TextMatrix(0, Datos.Beneficiario) = "Beneficiario"
             .TextMatrix(0, Datos.Formato) = "formato"
             .TextMatrix(0, Datos.Estado) = "Estado"
             .TextMatrix(0, Datos.FechaElaboracion) = "Fecha Elabor"
             
             .ColFormat(Datos.VrPago) = "#,###.00"
             .ColFormat(Datos.VrDescuento) = "#,###.00"
             .ColFormat(Datos.VrRetefuente) = "#,###.00"
             .ColFormat(Datos.VrExcedentes) = "#,###.00"
             .ColFormat(Datos.VrTotal) = "#,###.00"
             .ColWidth(Datos.numero) = 1200
             .ColWidth(Datos.Comprobante) = 2500
             .ColWidth(Datos.Fecha) = 1200
             .ColWidth(Datos.Cliente) = 3200
             .ColWidth(Datos.VrPago) = 1300
             .ColWidth(Datos.VrDescuento) = 1200
             .ColWidth(Datos.VrRetefuente) = 1200
             .ColWidth(Datos.VrExcedentes) = 1200
             .ColWidth(Datos.VrTotal) = 1200
             .ColWidth(Datos.Descri) = 3000
             .ColWidth(Datos.Bancos) = 1800
             .ColWidth(Datos.CtaBancaria) = 2000
             .ColWidth(Datos.Cheque) = 1500
             .ColWidth(Datos.Estado) = 1500
             .ColWidth(Datos.FechaElaboracion) = 1500
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .ColHidden(Datos.Cedula) = True
             .ColHidden(Datos.Conse) = True
             .ColHidden(Datos.TipoEgreso) = True
             .ColHidden(Datos.SwCheque) = True
             .ColHidden(Datos.Beneficiario) = True
             .ColHidden(Datos.Formato) = True
             .ColHidden(Datos.Tipo) = True
             .ColHidden(Datos.ConsConta) = True
             If vGrupoUsuario <> "ADMS" And vGrupoUsuario <> "GERE" Then
                 .ColHidden(Datos.FechaElaboracion) = True
             End If
             .ColComboList(Datos.Estado) = "|#C;Creado|#A;Aprobado|#W;Anulado"
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
        
        With FGdetalle
             .Rows = 1
             .Cols = 9
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = &HFFFFC0
             .BackColorBkg = &HFFFFC0
             .BackColorFixed = vbWhite
             .ForeColorFixed = vColorFixed
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .TextMatrix(0, Detalle.Cod) = "Código"
             .TextMatrix(0, Detalle.DescriPago) = "Descripción"
             .TextMatrix(0, Detalle.Fecha) = "Fecha"
             .TextMatrix(0, Detalle.Factura) = "Factura"
             .TextMatrix(0, Detalle.Valor) = "Valor"
             .TextMatrix(0, Detalle.NumE) = "Item"
             .ColFormat(Detalle.Valor) = "#,###.00"
             .ColWidth(Detalle.DescriPago) = 3500
             .ColWidth(Detalle.Cod) = 1000
             .ColWidth(Detalle.Valor) = 1200
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
        
        With FGMovimiento
             .Rows = 1
             .Cols = 7
             .FontName = "Arial"
             .FontSize = 8
             .Font.Bold = False
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .BackColorSel = &HA8753C
             .BackColorBkg = &H80000018
             .TextStyleFixed = flexTextFlat
             .ForeColorFixed = vColorFixed
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
             .TextMatrix(0, Men.Cuenta) = "Cuenta"
             .TextMatrix(0, Men.Desc) = "Descripcion"
             .TextMatrix(0, Men.ValorCre) = "Valor Credito"
             .TextMatrix(0, Men.NombreCta) = "Nombre"
             .TextMatrix(0, NumeroEgre) = "Numero"
             .TextMatrix(0, Men.ValorDeb) = "Valor Debito"
             .ColWidth(Men.Item) = 700
             .ColWidth(Men.Desc) = 3000
             .ColWidth(Men.Cuenta) = 1500
             .ColWidth(Men.NombreCta) = 2000
             .ColWidth(Men.ValorDeb) = 1300
             .ColWidth(Men.ValorCre) = 1300
             .ColFormat(Men.ValorDeb) = "##,###.00"
             .ColFormat(Men.ValorCre) = "##,###.00"
             .ColWidth(Men.NombreCta) = 1800
             .ColWidth(NumeroEgre) = 1200
             .Editable = flexEDNone
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Editable = False
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
        End With
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Call BarraOperaciones.Estado_Botones
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        CmdTercero.Picture = LoadResPicture(BotonSeleccionado.Busqueda, vbResBitmap)
End Sub

Private Sub Form_Resize()
        On Error Resume Next
        If Screen.Width >= 15360 And Screen.Height >= 10800 Then
              f = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move f + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Imprimir_Informe()
        With FGegreso
             On Error GoTo Imprime
             
             Dim Mh As String, GF As String, Iw As String
             If .Rows = 1 Then MsgBox "No hay información para imprimir", vbInformation + vbOKOnly, "Atención": Exit Sub
                                                                                          
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME3"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             N = 0
             If .Rows = 2 Then N = 1 Else N = .Rows - 2
             For i = 1 To N
                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,infnatu,Infval1,Infval2,Infval4,Infval6,Infval5)" & _
                         "VALUES('" & Trim(.TextMatrix(i, Datos.Cliente)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
                         "'" & Trim(.TextMatrix(i, Datos.numero)) & "'," & Val(.TextMatrix(i, Datos.VrPago)) & "," & _
                         "" & Val(.TextMatrix(i, Datos.VrDescuento)) & "," & Val(.TextMatrix(i, Datos.VrRetefuente)) & "," & Val(.TextMatrix(i, Datos.VrTotal)) & "," & _
                         "" & Val(.TextMatrix(i, Datos.VrExcedentes)) & ")"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)
                          
             R = "FECHA DE CORTE: " & Format(DTfechaI.Value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.Value, "dd/mm/yyyy")
             RptReciboCaja.DiscardSavedData = True
             RptReciboCaja.Formulas(1) = "Empresa= '" & DatosEmpresa(1) & "'"
             RptReciboCaja.Formulas(2) = "Parametro= '" & R & "'"
             X = Inf + "ListadoEgresoBancos.rpt"
             RptReciboCaja.ReportFileName = X
             RptReciboCaja.Destination = crptToWindow
             RptReciboCaja.WindowTitle = "LISTADO EGRESO DE BANCOS"
             RptReciboCaja.WindowMinButton = True
             RptReciboCaja.WindowMaxButton = True
             RptReciboCaja.WindowState = crptMaximized
             RptReciboCaja.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atención"

End Sub

