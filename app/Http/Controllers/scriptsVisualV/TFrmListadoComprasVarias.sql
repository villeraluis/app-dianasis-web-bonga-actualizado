VERSION 5.00
Object = "{FAD0952A-804F-4061-84BA-88D0F2AA07A8}#1.0#0"; "vsflex8d.ocx"
Object = "{1C0489F8-9EFD-423D-887A-315387F18C8F}#1.0#0"; "vsflex8l.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{A087AF3B-8CED-4786-A330-7155CF20A2DC}#1.0#0"; "DianaOperaciones.ocx"
Begin VB.Form FrmListadoComprasVarias 
   BackColor       =   &H00FFFFC0&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11865
   Icon            =   "FrmListadoComprasVarias.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8520
   ScaleWidth      =   11865
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
      Left            =   10035
      Picture         =   "FrmListadoComprasVarias.frx":46B2
      Style           =   1  'Graphical
      TabIndex        =   17
      ToolTipText     =   "Exportar Datos a Hoja de Calculo.."
      Top             =   1710
      Width           =   1350
   End
   Begin VB.CommandButton CmdFijar 
      BackColor       =   &H00E7D6B8&
      Caption         =   "F"
      Height          =   285
      Left            =   945
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Fijar Columnas"
      Top             =   1755
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
      Height          =   915
      Left            =   405
      TabIndex        =   7
      Top             =   765
      Width           =   9015
      Begin VB.CommandButton CmdTercero 
         Height          =   315
         Left            =   8550
         Picture         =   "FrmListadoComprasVarias.frx":6184
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   495
         Width           =   315
      End
      Begin VB.TextBox TxtNombre 
         Enabled         =   0   'False
         Height          =   285
         Left            =   4950
         TabIndex        =   15
         Top             =   510
         Width           =   3570
      End
      Begin VB.TextBox TxtTercero 
         Enabled         =   0   'False
         Height          =   285
         Left            =   3600
         TabIndex        =   13
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
         Format          =   132251651
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
         Format          =   132251651
         CurrentDate     =   38681
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Clientes"
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
         TabIndex        =   14
         Top             =   270
         Width           =   690
      End
      Begin VB.Label LblFechai 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Inicial"
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
         Width           =   990
      End
      Begin VB.Label LblFechaf 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha Final"
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
         Width           =   900
      End
   End
   Begin Crystal.CrystalReport TreCompras 
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
      Top             =   1755
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
      Top             =   1755
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
            Picture         =   "FrmListadoComprasVarias.frx":6746
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoComprasVarias.frx":6C8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "FrmListadoComprasVarias.frx":6D96
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar Progres 
      Height          =   240
      Left            =   4005
      TabIndex        =   6
      Top             =   1755
      Visible         =   0   'False
      Width           =   5370
      _ExtentX        =   9472
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
   Begin VSFlex8DAOCtl.VSFlexGrid FGcompras 
      Height          =   6000
      Left            =   360
      TabIndex        =   2
      Top             =   2205
      Width           =   11280
      _cx             =   19897
      _cy             =   10583
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
   Begin VSFlex8LCtl.VSFlexGrid FGMovimiento 
      Height          =   1440
      Left            =   135
      TabIndex        =   16
      Top             =   5670
      Visible         =   0   'False
      Width           =   11550
      _cx             =   20373
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
      Top             =   1845
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Label LblTitle 
      BackColor       =   &H00A8753C&
      Caption         =   "      Listado Cargo a Proveedores"
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
Attribute VB_Name = "FrmListadoComprasVarias"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Mes As Integer, RegFor As Variant, vFiltro As String

Private Enum Datos
        Conse = 0
        Factura = 1
        Fecha = 2
        Proveedor = 3
        Desc = 4
        Valor = 5
        VrIva = 6
        TotalFac = 7
        Anticipo = 8
        Retencion = 9
        Total = 10
        Numero = 11
        Cedula = 12
        
End Enum
Private Enum Men
        Item = 0
        Cuenta = 1
        NombreCta = 2
        Desc = 3
        ValorDeb = 4
        ValorCre = 5
        NumCompras = 6
        
End Enum


Private Sub Configurar_Pantalla()
        X = Screen.Width
        Y = Screen.Height
        
        Me.Width = X - AnchoMenu - 100
        Me.Height = Y - TopMenu - 650
        LblTitle.Width = X - AnchoMenu - 100
        N = FGCompras.Left + 300
        FGCompras.Width = Me.Width - N
        FGCompras.Height = Me.Height - FGCompras.Top - vHeightFor
        
        
End Sub

Private Sub BarraOperaciones_BuscarRegistro(Estado As BarraDiana.ResEstado)
        With FGCompras
              If Permisos(3) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
              Progres.Value = 1: Progres.Min = 1
              Progres.Max = 10
              vFiltro = Empty
                                        
              Progres.Visible = True: Progres.Value = Progres.Value + 1
              If DTfechaI.Value > DTfechaF.Value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atención": DTfechaI.SetFocus: Exit Sub
                            
              If TxtTercero.Text <> Empty Then
                    vFiltro = " AND ComIdStProveedor = '" & TxtTercero.Text & "'"
              End If
              
              A = Empty:  M = 0: FGMovimiento.Rows = 1
              .Rows = 1
              
              Sql = "SELECT A.*,C.CliStNombreCliente,Y.*,Q.CarNomb FROM COMPRAS A " & _
                    "INNER JOIN CLIENTES C ON (A.ComIdStEmpresa = C.CliEmpr AND A.ComIdStProveedor = C.CliNit) " & _
                    "INNER JOIN TMOVIMIENTO X ON (A.ComIdStEmpresa = X.TmoEmpr AND A.ComIdInTmovimiento = X.TmoCons) " & _
                    "INNER JOIN MOVIMIENTOS Y ON (X.TmoEmpr = Y.MovEmpr AND X.TmoCons = Y.MovCons) " & _
                    "INNER JOIN CARTILLA Q ON (Y.MovEmpr = Q.CarEmpr AND Y.Movcuen = Q.CarCuen AND Y.MovScue = Q.CarScue AND " & _
                        "Y.Movauxi = Q.CarAuxi AND Y.Movauxl = Q.CarAuxl) " & _
                    "WHERE (A.ComIdStEmpresa = '" & Empresa & "' AND (A.ComIdStTipoComprobante = '" & vTipoComprobante(5) & "' ) AND " & _
                        "ComDaFechaFactura BETWEEN '" & Format(DTfechaI.Value, FormatoFecha) & "' AND '" & Format(DTfechaF.Value, FormatoFecha) & "' " & _
                        "" & vFiltro & " AND ComIdInBodega IS NULL) " & _
                    "ORDER BY ComIdInCompras"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         If A <> Trim(rdoRs!ComIdInCompras) Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Datos.Proveedor) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Datos.Cedula) = Trim("" & rdoRs!ComIdStProveedor)
                                .TextMatrix(.Rows - 1, Datos.Fecha) = Format(rdoRs!ComDaFechaFactura, "dd-mm-yyyy")
                                .TextMatrix(.Rows - 1, Datos.Numero) = Trim("" & rdoRs!ComIdInCompras)
                                .TextMatrix(.Rows - 1, Datos.Conse) = Trim("" & rdoRs!ComIdStDocumento)
                                .TextMatrix(.Rows - 1, Datos.Factura) = Trim("" & rdoRs!ComIdStDocumentoSoporte)
                                If Trim("" & rdoRs!ComStEstadoCompra) = "W" Then
                                    .TextMatrix(.Rows - 1, Datos.Desc) = "** REGISTRO ANULADO **"
                                    .TextMatrix(.Rows - 1, Datos.Anticipo) = 0
                                    .TextMatrix(.Rows - 1, Datos.Retencion) = 0
                                    .TextMatrix(.Rows - 1, Datos.Valor) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrIva) = 0
                                    .TextMatrix(.Rows - 1, Datos.TotalFac) = 0
                                    .TextMatrix(.Rows - 1, Datos.Total) = 0
                                Else
                                    .TextMatrix(.Rows - 1, Datos.Anticipo) = Val("" & rdoRs!ComInValorAnticipo)
                                    .TextMatrix(.Rows - 1, Datos.Retencion) = Val("" & rdoRs!ComInValorRetencion)
                                    .TextMatrix(.Rows - 1, Datos.Valor) = Val("" & rdoRs!ComInValorFactura)
                                    .TextMatrix(.Rows - 1, Datos.VrIva) = Val("" & rdoRs!ComInValorIva)
                                    .TextMatrix(.Rows - 1, Datos.TotalFac) = Val("" & rdoRs!ComInValorFactura) + Val("" & rdoRs!ComInValorIva)
                                    .TextMatrix(.Rows - 1, Datos.Total) = Val("" & rdoRs!ComInValor)
                                    .TextMatrix(.Rows - 1, Datos.Desc) = Trim("" & rdoRs!ComStDescripcion)
                                End If
                                
                                
                         End If
                         
                         With FGMovimiento
                              .AddItem ""
                              .TextMatrix(.Rows - 1, Men.NumCompras) = Trim("" & rdoRs!ComIdInCompras)
                              .TextMatrix(.Rows - 1, Men.Cuenta) = Trim("" & rdoRs!MovCuen) & " " & Trim("" & rdoRs!MovScue) & " " & Trim("" & rdoRs!MovAuxi) & " " & Trim("" & rdoRs!MovAuxl)
                              .TextMatrix(.Rows - 1, Men.NombreCta) = Trim("" & rdoRs!CarNomb)
                              .TextMatrix(.Rows - 1, Men.Desc) = Trim("" & rdoRs!MovDesc)
                              If Trim("" & rdoRs!ComStEstadoCompra) <> "W" Then
                                If Val("" & rdoRs!MovValr) > 0 Then
                                    .TextMatrix(.Rows - 1, Men.ValorDeb) = Val("" & rdoRs!MovValr)
                                Else
                                    .TextMatrix(.Rows - 1, Men.ValorCre) = Val("" & rdoRs!MovValr) * -1
                                End If
                              End If
                         End With
                         
                         A = Trim(rdoRs!ComIdInCompras)
                         rdoRs.MoveNext
                   Wend
              End If
                
                          
              If .Rows <= 1 Then MsgBox "No hay información para mostrar", vbInformation + vbOKOnly, "Atención": Progres.Visible = False:  Exit Sub
              
              If .Rows > 2 Then
                    .AddItem ""
                    .TextMatrix(.Rows - 1, Datos.Desc) = "TOTALES"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, Datos.Valor) = Val(.TextMatrix(.Rows - 1, Datos.Valor)) + Val(.TextMatrix(i, Datos.Valor))
                        .TextMatrix(.Rows - 1, Datos.VrIva) = Val(.TextMatrix(.Rows - 1, Datos.VrIva)) + Val(.TextMatrix(i, Datos.VrIva))
                        .TextMatrix(.Rows - 1, Datos.TotalFac) = Val(.TextMatrix(.Rows - 1, Datos.TotalFac)) + Val(.TextMatrix(i, Datos.TotalFac))
                        .TextMatrix(.Rows - 1, Datos.Anticipo) = Val(.TextMatrix(.Rows - 1, Datos.Anticipo)) + Val(.TextMatrix(i, Datos.Anticipo))
                        .TextMatrix(.Rows - 1, Datos.Retencion) = Val(.TextMatrix(.Rows - 1, Datos.Retencion)) + Val(.TextMatrix(i, Datos.Retencion))
                        .TextMatrix(.Rows - 1, Datos.Total) = Val(.TextMatrix(.Rows - 1, Datos.Total)) + Val(.TextMatrix(i, Datos.Total))
                        
                    Next i
              End If
                            
              Progres.Value = Progres.Value + 1
              Progres.Visible = False
              If .Rows > 1 Then FGCompras.SetFocus: FGCompras.Select 1, Datos.Numero
              
              
        End With
End Sub

Private Sub BarraOperaciones_ImprimirRegistro(ByVal Estado As BarraDiana.ResEstado)
        If Permisos(4) = "N" Then MsgBox "Opercaión no Autorizada ", vbCritical + vbOKOnly, "Atención": Exit Sub
        Call Imprimir_Informe
End Sub

Private Sub CmdFijar_Click()
        If CmdFijar.Caption = "F" Then
             CmdFijar.Caption = "V": FGexistencias.FixedCols = 3
        Else
             FGexistencias.FixedCols = 0: CmdFijar.Caption = "F"
        End If
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGexistencias
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
        If FGCompras.Rows - 1 <= 1 Then MsgBox "No hay información para exportar", vbInformation + vbOKOnly, "Atención": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
             FGCompras.SaveGrid ComArchivo.FileName, flexFileExcel, 3
             
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
        FGCompras.Rows = 1
End Sub

Private Sub CmdTercero_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdTercero.Picture = LoadResPicture(BotonSeleccionado.BusquedaS, vbResBitmap)
End Sub

Private Sub DTfechaF_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaF_LostFocus()
        FGCompras.Rows = 1
End Sub

Private Sub DTfechaI_KeyDown(KeyCode As Integer, Shift As Integer)
        If KeyCode = 13 Then WshShell.SendKeys "{Tab}"
End Sub

Private Sub DTfechaI_LostFocus()
        FGCompras.Rows = 1
End Sub

Private Sub FGcompras_DblClick()
        If FGCompras.Rows > 1 And Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Numero)) <> Empty Then
            
            FrmDetalleComprasVarias.LblEgreso.Caption = Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Factura))
            FrmDetalleComprasVarias.LblCliente.Caption = Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Proveedor))
            FrmDetalleComprasVarias.LblFecha.Caption = Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Fecha))
            FrmDetalleComprasVarias.LblCedula.Caption = Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Cedula))
            FrmDetalleComprasVarias.TxtPprInValor.Text = Val(FGCompras.TextMatrix(FGCompras.Row, Datos.Valor))
            FrmDetalleComprasVarias.TxtPprInValorDescuento.Text = Val(FGCompras.TextMatrix(FGCompras.Row, Datos.VrIva))
            FrmDetalleComprasVarias.TxtPprInRetefuente.Text = 0
            FrmDetalleComprasVarias.LblDescripcion.Caption = Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Desc))
                        
            X = Trim(FGCompras.TextMatrix(FGCompras.Row, Datos.Numero))
            FrmDetalleComprasVarias.FGdetalle.Visible = False
            FrmDetalleComprasVarias.FGMovimiento.Visible = True
            With FGMovimiento
                 For i = 1 To .Rows - 1
                      If X = Trim(.TextMatrix(i, Men.NumCompras)) Then
                           FrmDetalleComprasVarias.FGMovimiento.AddItem ""
                           Y1 = FrmDetalleComprasVarias.FGMovimiento.Rows - 1
                           For l = Men.Cuenta To Men.ValorCre
                                 FrmDetalleComprasVarias.FGMovimiento.TextMatrix(Y1, l) = Trim(.TextMatrix(i, l))
                           Next l
                      End If
                 Next i
            End With
            FrmDetalleComprasVarias.Show vbModal
                                    
        End If
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
        If Trim(NomVentana) <> Empty Then LblTitle.Caption = "   " + NomVentana
        
        With BarraOperaciones
              .BarUso = BaConsulta
              .Tabla = ""
              .BarBuscar = EstCancel
        End With
               
        j = 0: K = Empty
        Call Define_Grids(FGCompras)
        Idx = 0
        Call DGRILLA
        LblNit.Caption = Empty
                                
        RegFor = 1
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
                
        With FGCompras
             .Rows = 1
             .Cols = 13
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColor = ColorGrilla
             .BackColorBkg = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = &H40C0&
             .BackColorSel = &H808000
             .ForeColorSel = vbWhite
             .AllowUserResizing = flexResizeColumns
             .ExtendLastCol = False
             .OutlineCol = 0
             .ForeColorFixed = vColorFixed
             .SelectionMode = flexSelectionByRow
             .AutoSearch = flexSearchFromCursor
             .TextMatrix(0, Datos.Factura) = "No. Factura"
             .TextMatrix(0, Datos.Fecha) = "Fecha"
             .TextMatrix(0, Datos.Proveedor) = "Proveedor"
             .TextMatrix(0, Datos.Conse) = "Consecutivo"
             .TextMatrix(0, Datos.Valor) = "SubTotal"
             .TextMatrix(0, Datos.VrIva) = "Vr. Iva"
             .TextMatrix(0, Datos.TotalFac) = "Total Factura"
             .TextMatrix(0, Datos.Anticipo) = "Vr. Anticipo"
             .TextMatrix(0, Datos.Retencion) = "Vr. Retención"
             .TextMatrix(0, Datos.Total) = "Vr.a Proveedores"
             .TextMatrix(0, Datos.Numero) = "Consecutivo"
             .TextMatrix(0, Datos.Desc) = "Descripción"
             .TextMatrix(0, Datos.Cedula) = "Cedula"
             .ColFormat(Datos.Valor) = "#,###.00"
             .ColFormat(Datos.VrIva) = "#,###.00"
             .ColFormat(Datos.TotalFac) = "#,###.00"
             .ColFormat(Datos.Anticipo) = "#,###.00"
             .ColFormat(Datos.Retencion) = "#,###.00"
             .ColFormat(Datos.Total) = "#,###.00"
             .ColWidth(Datos.Factura) = 1300
             .ColWidth(Datos.Conse) = 1300
             .ColWidth(Datos.Fecha) = 1200
             .ColWidth(Datos.Proveedor) = 3500
             .ColWidth(Datos.Valor) = 1300
             .ColWidth(Datos.VrIva) = 1300
             .ColWidth(Datos.TotalFac) = 1300
             .ColWidth(Datos.Anticipo) = 1300
             .ColWidth(Datos.Retencion) = 1300
             .ColWidth(Datos.Total) = 1500
             .ColWidth(Datos.Desc) = 4000
             .FocusRect = flexFocusRaised
             .ScrollBars = flexScrollBarBoth
             .ColHidden(Datos.Numero) = True
             .ColHidden(Datos.Cedula) = True
             .ColHidden(Datos.VrIva) = False
             .ColHidden(Datos.Factura) = False
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
             .ForeColorFixed = &HC00000
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
             .TextMatrix(0, NumCompras) = "Numero"
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
             .ColWidth(NumCompras) = 1200
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
              F = Round((Screen.Width - AnchoMenu - Me.Width) / 2, 0)
              Y = Round((Screen.Height - TopMenu - Me.Height) / 2, 0)
               
              Me.Move F + AnchoMenu, Y + TopMenu, Me.Width, Me.Height
        End If
End Sub

Private Sub Imprimir_Informe()
        With FGCompras
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
                   Vn = Val(.TextMatrix(i, Datos.Valor)) + Val(.TextMatrix(i, Datos.VrIva))
                   Sql = "INSERT INTO INFORME3(InfDesc,InfDes2,infnatu,Infval1,Infval2,Infval4,Infval5,Infval6,Infval7)" & _
                         "VALUES('" & Trim(.TextMatrix(i, Datos.Proveedor)) & "','" & Trim(.TextMatrix(i, Datos.Fecha)) & "'," & _
                         "'" & Trim(.TextMatrix(i, Datos.Factura)) & "'," & Val(.TextMatrix(i, Datos.Valor)) & "," & _
                         "" & Val(.TextMatrix(i, Datos.VrIva)) & "," & Vn & "," & Val(.TextMatrix(i, Datos.Anticipo)) & ", " & _
                         "" & Val(.TextMatrix(i, Datos.Retencion)) & "," & Val(.TextMatrix(i, Datos.Total)) & ")"
                   If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             Next i
             Call Transaccion(BDCommit)
                          
             R = "FECHA DE CORTE: " & Format(DTfechaI.Value, "dd/mm/yyyy") & " HASTA " & Format(DTfechaF.Value, "dd/mm/yyyy")
             TreCompras.DiscardSavedData = True
             TreCompras.Formulas(1) = "Empresa= '" & Sigl & "'"
             TreCompras.Formulas(2) = "Parametro= '" & R & "'"
             X = Inf + "ListadoDeCompras.rpt"
             TreCompras.ReportFileName = X
             TreCompras.Destination = crptToWindow
             TreCompras.WindowTitle = "LISTADO DE CARGO A PROVEEDORES"
             TreCompras.WindowMinButton = True
             TreCompras.WindowMaxButton = True
             TreCompras.WindowState = crptMaximized
             TreCompras.PrintReport
        End With
        Exit Sub
Imprime:
   MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atención"
End Sub

