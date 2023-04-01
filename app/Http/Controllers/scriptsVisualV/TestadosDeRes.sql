SELECT MovCuen,MovScue,MovAuxi,MovAuxl,MovCent,MovScen,MovNit,Sum(MovValr) As MovValr,B.CliStNombreCliente 
FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON (TmoEmpr = MovEmpr And TmoCons = MovCons) 
LEFT OUTER JOIN CLIENTES B ON (MovEmpr = CliEmpr And MovNit = Clinit) 
WHERE (TmoEmpr ='02' And TmoAno = 2021 And TmoMes <= 6 And TmoApl = '0' ) 
GROUP BY MovCuen,MovScue,MovAuxi,MovAuxl,MovCent,MovScen,MovNit,CliStNombreCliente

X = Mid(rdoRs!MovCuen, 1, 1)
If X = "4" Or X = "5" Or X = "6" Or X = "7" Then N = 0 Else N = 1
If rdoRs!MovValr <> 0 And N = 0 Then
    .AddItem ""
    .TextMatrix(.Rows - 1, Dat.Ppri) = Mid(rdoRs!MovCuen, 1, 1) + "000"
    .TextMatrix(.Rows - 1, Dat.Psec) = Mid(rdoRs!MovCuen, 1, 2) + "00"
    .TextMatrix(.Rows - 1, Dat.Cuen) = rdoRs!MovCuen
    .TextMatrix(.Rows - 1, Dat.Scue) = rdoRs!MovScue
    .TextMatrix(.Rows - 1, Dat.Aux) = rdoRs!MovAuxi
    .TextMatrix(.Rows - 1, Dat.Auxl) = rdoRs!MovAuxl
    .TextMatrix(.Rows - 1, Dat.Nit) = Trim("" & rdoRs!MovNit)
    .TextMatrix(.Rows - 1, Dat.Desc) = Trim("" & rdoRs!CliStNombreCliente)
    .TextMatrix(.Rows - 1, Dat.Cen) = Trim("" & rdoRs!MovCent)
    .TextMatrix(.Rows - 1, Dat.Subc) = Trim("" & rdoRs!MovScen)
    .TextMatrix(.Rows - 1, Dat.SalA) = rdoRs!MovValr
End If
rdoRs.MoveNext

/* este es el metodo de el informe de estado de resultados comparativos */

Dim Iempresa As String, Idx As Integer
Dim Pos As Long, Posi(6) As Long, Tabla As New Collection
Dim Acomulado(2) As Variant, Vector(2) As Variant, Ix As Boolean
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

Private Sub CheSaldo_Click()
        FGPyG.Rows = 1
End Sub

Private Sub CmdBuscar_Click()
        If FGPyG.Rows < 2 Then MsgBox "No hay información para buscar", vbExclamation + vbOKOnly, "Atención": Exit Sub
        If CobCampos.Text = Empty Then MsgBox "Seleccione la Columna por la cual desea buscar", vbInformation + vbOKOnly, "Atención": CobCampos.SetFocus: Exit Sub
        If Trim(TxtBusqueda.Text) = Empty Then MsgBox "Digite la información a buscar", vbInformation + vbOKOnly, "Atención": TxtBusqueda.SetFocus: Exit Sub
        RegIni = RegFor
        If Buscar_datos(FGPyG, Trim(TxtBusqueda.Text), ColN) = True Then
            RegFor = RegIni
        Else
            MsgBox "No hay información para mostrar de acuerdo a los parametros seleccionados", vbExclamation + vbOKOnly, "Atención"
            RegFor = 1
        End If

End Sub

Private Sub CmdBuscar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        CmdBuscar.Picture = LoadResPicture(BotonSeleccionado.ConsultarS, vbResBitmap)
End Sub

Private Sub CmdNivel_Click(Index As Integer)
            With FGPyG
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
        If FGPyG.Rows - 1 < 2 Then MsgBox "No hay información", vbInformation + vbOKOnly, "Atención": Exit Sub
        ComArchivo.CancelError = False
        ComArchivo.Flags = cdlOFNHideReadOnly
        ComArchivo.DefaultExt = "xls"
        ComArchivo.Filter = "Archivos de Excel (*.xls)|*.xls"
        ComArchivo.ShowSave
        If ComArchivo.FileName <> Empty Then
            FGPyG.Outline (6)
            FGPyG.SaveGrid ComArchivo.FileName, flexFileExcel, 3
            FGPyG.Outline (4)
            FGPyG.Outline (3)
            FGPyG.Outline (2)
        End If
        Exit Sub
Mt: MsgBox "Consultar con el Adm. del Sistema", vbCritical + vbOKOnly, "Atención"
End Sub

Private Sub Cmdplano_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.ExportarS, vbResBitmap)
End Sub

Private Sub Cobaño_Click()
        FGPyG.Rows = 1
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
        FGPyG.Rows = 1
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
               Case vbKeyF2:
                     On Error Resume Next: Call CmdBuscar_Click
               Case vbKeyF1
                    On Error Resume Next: CobCampos.SetFocus
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
        Idx = 3
        Call DGRILLA
        
        CobCampos.Clear
        CobCampos.AddItem "CUENTA CONTABLE"
        CobCampos.AddItem "DESCRIPCION"
        CobCampos.AddItem "VALOR"
        
        Screen.MousePointer = vbDefault
End Sub

Private Sub DGRILLA()
        With FGPyG
             .Rows = 1
             .Cols = 7
             .FixedCols = 0
             .FontName = "Tahoma"
             .FontSize = 8
             .GridLines = flexGridNone
             .BackColorBkg = &H80000018
             .BackColor = ColorGrilla
             .BackColorFixed = vbWhite
             .ForeColorFixed = vbBlue
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
             .TextMatrix(0, Bals.Desc) = "Descripción"
             .TextMatrix(0, Bals.Vls) = "Valor ($)"
             .TextMatrix(0, Bals.CodC) = "Cuenta Contable"
             .ColFormat(Bals.Vls) = "#,###.00"
             .ColFormat(Bals.Scue) = "00"
             .ColFormat(Bals.Aux) = "00"
             .ColFormat(Bals.Auxl) = "00"
             .ColWidth(Bals.Cuen) = 1000
             .ColWidth(Bals.Scue) = 800
             .ColWidth(Bals.Aux) = 800
             .ColWidth(Bals.Auxl) = 800
             .ColWidth(Bals.Desc) = 5000
             .ColWidth(Bals.Vls) = 2000
             .FocusRect = flexFocusRaised
             .OutlineBar = flexOutlineBarComplete
             .Cell(flexcpAlignment, 0, 0, 0, .Cols - 1) = flexAlignCenterCenter
             .ColHidden(Bals.CodC) = True
        End With
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        Cmdplano.Picture = LoadResPicture(BotonSeleccionado.Exportar, vbResBitmap)
        CmdBuscar.Picture = LoadResPicture(BotonSeleccionado.Consultar, vbResBitmap)
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
           Call Imprimir_Informe(Index)
        Else
            If Index = 5 And Me.OptAgrupa(0).Value = True Then
               Call Imprimir_Informe(3)
            Else
                Call Imprimir_Informe(Index)
            End If
        End If
End Sub

Private Sub OptAgrupa_Click(Index As Integer)
        FGPyG.Rows = 1
        Idx = Index
End Sub

Private Sub OptMes_Click(Index As Integer)
            FGPyG.Rows = 1
End Sub

Private Sub tbrToolBar_ButtonClick(ByVal Button As MSComctlLib.Button)
   On Error GoTo Mas
   Select Case Button.Key
          Case "Aceptar"
               With FGPyG
                    
               End With
          Case "Salir"
               Unload Me
   End Select
   Exit Sub
Mas:    MsgBox "Consultar con el Administrador del Sistema", vbCritical + vbOKOnly, "Atención"
End Sub
Private Sub PrintSelection(FG As VSFlexGrid, Row1&, Col1&, Row2&, Col2&)
        'save current settings
        Dim hl%, tr&, lc&, rd%
        hl = FG.HighLight: tr = FG.TopRow: lc = FG.LeftCol: rd = FG.Redraw
        FG.HighLight = 0
        FG.GridLines = flexGridNone
        FG.Redraw = flexRDNone
        
        
        
        
    
        ' hide non-selected rows and columns

'        'Dim i
'        For i = fg.FixedRows To fg.Rows – 1
'             If i < Row1 Or i > Row2 Then fg.RowHidden(i) = True
'        Next
'
'        For i = fg.FixedCols To fg.Cols – 1
'           If i < Col1 Or i > Col2 Then fg.ColHidden(i) = True
'
'        Next

    

    ' scroll to top left corner

    FG.TopRow = FG.FixedRows
    FG.LeftCol = FG.FixedCols
    'print visible area
    FG.PrintGrid
    
    ' restore control
    FG.RowHidden(-1) = False
    FG.ColHidden(-1) = False
    FG.TopRow = tr: FG.LeftCol = lc: FG.HighLight = hl
    FG.Redraw = rd
    FG.GridLines = flexGridFlat
  End Sub
Sub DoGroup(Row, lvl)
     FGPyG.IsSubtotal(Row) = True
     FGPyG.RowOutlineLevel(Row) = lvl
End Sub

Private Sub Detalle()
        With FGPyG
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
                 .TextMatrix(.Rows - 1, Bals.Vls) = 0
                 Select Case Idx
                        Case 1: .TextMatrix(.Rows - 1, Bals.Scue) = SubCx
                        Case 2: .TextMatrix(.Rows - 1, Bals.Scue) = SubCx: .TextMatrix(.Rows - 1, Bals.Aux) = AuxS
                        Case 3: .TextMatrix(.Rows - 1, Bals.Scue) = SubCx: .TextMatrix(.Rows - 1, Bals.Aux) = AuxS: .TextMatrix(.Rows - 1, Bals.Auxl) = AuxS1
                 End Select
                 Pos = .Rows - 1
                 
                 If Mid(Fcuenta, 3, 2) = "00" Then
                     Posi(2) = .Rows - 1: DoGroup .Rows - 1, 2
                     Vector(0) = 0
                     ColBal.Add .Rows - 1, Trim(Fcuenta)
                 Else
                      Select Case Idx
                             Case 0: Call LLenado(0) 'Cuentas
                             Case 1
                                  If SubCx = "00" Then
                                        Posi(3) = .Rows - 1: DoGroup .Rows - 1, 3
                                  Else
                                        Call LLenado(1)
                                  End If
                             Case 2
                                  If SubCx = "00" Then
                                        Posi(3) = .Rows - 1: DoGroup .Rows - 1, 3
                                  Else
                                        If AuxS = "00" Then
                                             Posi(4) = .Rows - 1
                                             If Hw = Hw1 Then
                                                  If Hy <> "00" Then DoGroup .Rows - 1, 4
                                             End If
                                             Posi(6) = 0: Call LLenado(2)
                                        Else
                                             Posi(6) = 1: Call LLenado(2)
                                        End If
                                  End If
                             Case 3
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
        If OptMes(0).Value = True Then
             Select Case Idx
                    /* Case 0: Sql = "SELECT MovCuen,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes <= " & Mes & " And TmoApl = '0' GROUP BY MovCuen"
                    Case 1: Sql = "SELECT MovCuen,MovScue,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes <= " & Mes & " And TmoApl = '0' GROUP BY MovCuen, MovScue"
                    Case 2: Sql = "SELECT MovCuen,MovScue,MovAuxi,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes <= " & Mes & " And TmoApl = '0' GROUP BY MovCuen, MovScue,MovAuxi" */
                    Case 3: Sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes <= " & Mes & " And TmoApl = '0' GROUP BY MovCuen, MovScue,MovAuxi,MovAuxl"
             End Select
        Else
             Select Case Idx
                   /*  Case 0: Sql = "SELECT MovCuen,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes = " & Mes & " And TmoApl = '0' GROUP BY MovCuen"
                    Case 1: Sql = "SELECT MovCuen,MovScue,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes = " & Mes & " And TmoApl = '0' GROUP BY MovCuen,MovScue"
                    Case 2: Sql = "SELECT MovCuen,MovScue,MovAuxi,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes = " & Mes & " And TmoApl = '0' GROUP BY MovCuen,MovScue,MovAuxi" */
                    Case 3: Sql = "SELECT MovCuen,MovScue,MovAuxi,MovAuxl,Sum(MovValr)as MovValr FROM TMOVIMIENTO INNER JOIN MOVIMIENTOS ON TmoEmpr = MovEmpr And TmoCons = MovCons WHERE TmoEmpr ='" & Empresa & "' And TmoAno = " & Cobaño.Text & " And TmoMes = " & Mes & " And TmoApl = '0' GROUP BY MovCuen,MovScue,MovAuxi,MovAuxl"
             End Select
        End If
        
        If Buscar_Res(rdoRs, Sql) = BDOk Then
             While Not rdoRs.EOF
                   Select Case Idx
                   /*        Case 0: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!MovCuen)
                          Case 1: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!MovCuen) + Trim(rdoRs!MovScue)
                          Case 2: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!MovCuen) + Trim(rdoRs!MovScue) + Trim(rdoRs!MovAuxi) */
                          Case 3: ColMov.Add Val(rdoRs!MovValr), Trim(rdoRs!MovCuen) + Trim(rdoRs!MovScue) + Trim(rdoRs!MovAuxi) + Trim(rdoRs!MovAuxl)
                   End Select
                   X = Mid(Trim(rdoRs!MovCuen), 1, 1)
                   If X = "4" Or X = "5" Or X = "6" Or X = "7" Then Sald = Sald + Val(rdoRs!MovValr)
                   rdoRs.MoveNext
             Wend
        Else
            Ix = False
            MsgBox "No hay información del periodo seleccionado", vbInformation + vbOKOnly, "Atención"
        End If
        Progres.Value = Progres.Value + 1
        Me.Text1.Text = Sald
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
        Dim Nm As Long, Q10 As Variant
        
        On Error GoTo Salida
        
        With FGPyG
             If Cobaño.Text = Empty Then MsgBox "Seleccione el Año", vbInformation + vbOKOnly, "Atención": Cobaño.SetFocus: Exit Sub
             If CobMeses.Text = Empty Then MsgBox "Seleccione el Mes", vbInformation + vbOKOnly, "Atención": CobMeses.SetFocus: Exit Sub
             
             Set ColBal = Nothing
             Nm = Cobaño.Text - 1
             Progres.Min = 0: Progres.Value = 1
             Progres.Visible = True: Progres.Max = 10
             Ix = True
             Call Movimientos
             If Ix = False Then Exit Sub
             
             .Rows = 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "PERDIDA DEL EJERCICIO"
             Q10 = .Rows - 1: DoGroup .Rows - 1, 1
             


             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "INGRESOS"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "4000": Q2 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '4%' And CarScue = '00' And Carcuen <> '4000' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '4%' And CarAuxi = '00' And Carcuen <> '4000' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '4%' And CarAuxl = '00' And Carcuen <> '4000' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '4%' And Carcuen <> '4000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1



             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "GASTOS"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "5000": Q3 = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '5%' And CarScue = '00' And Carcuen <> '5000' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '5%' And CarAuxi = '00' And Carcuen <> '5000' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '5%' And CarAuxl = '00' And Carcuen <> '5000' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '5%' And Carcuen <> '5000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1



             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "COSTO DE VENTA"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "6000": Pq = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1: Q4 = .Rows - 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '6%' And CarScue = '00' And Carcuen <> '6000' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '6%' And CarAuxi = '00' And Carcuen <> '6000' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '6%' And CarAuxl = '00' And Carcuen <> '6000' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '6%' And Carcuen <> '6000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .AddItem "": DoGroup .Rows - 1, 1
             .AddItem "": .TextMatrix(.Rows - 1, Bals.Desc) = "COSTOS DE PRODUCCION"
             .TextMatrix(.Rows - 1, Bals.Cuen) = "7000": Pq = .Rows - 1
             Posi(1) = .Rows - 1: DoGroup .Rows - 1, 1: Q4 = .Rows - 1
             Select Case Idx
                    Case 0: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '7%' And CarScue = '00' And Carcuen <> '7000' ORDER BY CarCuen"
                    Case 1: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '7%' And CarAuxi = '00' And Carcuen <> '7000' ORDER BY CarCuen,CarScue"
                    Case 2: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '7%' And CarAuxl = '00' And Carcuen <> '7000' ORDER BY CarCuen,CarScue,CarAuxi"
                    Case 3: Sql = "SELECT * FROM CARTILLA WHERE CarEmpr = '" & Empresa & "' And CarCuen Like '7%' And Carcuen <> '7000' ORDER BY CarCuen,CarScue,CarAuxi,CarAuxl"
             End Select
             Call Detalle
             Progres.Value = Progres.Value + 1
             
             .TextMatrix(Q10, Bals.Vls) = Sald
             If Sald <= 0 Then .TextMatrix(Q10, Bals.Desc) = "UTILIDAD DEL EJERCICIO"
             Progres.Value = Progres.Value + 1
             .Outline (3)
             .Outline (2)

             For i = 1 To .Rows - 1
                  If i < .Rows Then
                        Select Case .RowOutlineLevel(i)
                               Case 1: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H4000&
                               Case 2: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbBlue
                               Case 3: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H40C0&
                               Case 4: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = vbMagenta
                               Case 5: .Cell(flexcpForeColor, i, 0, i, .Cols - 1) = &H80&
                        End Select
                        If Trim(.TextMatrix(i, Bals.Desc)) <> Empty And Val(.TextMatrix(i, Bals.Vls)) = 0 And .RowOutlineLevel(i) <> -1 Then .RemoveItem i: i = i - 1
                        
                        .TextMatrix(i, Bals.CodC) = Trim(.TextMatrix(i, Bals.Cuen) & .TextMatrix(i, Bals.Scue) & .TextMatrix(i, Bals.Aux) & .TextMatrix(i, Bals.Auxl))
                  End If
             Next i
             
             For i = 1 To .Rows - 1  'Se multiplica por -1 los ingresos para que queden positivos
                  If i < .Rows Then
                        If Val(.TextMatrix(i, Bals.Cuen)) < 5000 Then .TextMatrix(i, Bals.Vls) = Val(.TextMatrix(i, Bals.Vls)) * -1
                  End If
             Next i
             
             If .Rows > 2 Then .SetFocus: .Select 1, Bals.Desc
             Progres.Value = Progres.Value + 1
             Progres.Visible = False
             
                          
                          
        End With
        
        Exit Sub
Salida:         Call MensajeAdministrador
End Sub

Private Sub LLenado(Iz As Integer)
        With FGPyG
             Select Case Iz
                    Case 0 'Cuenta
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         
                    Case 1 'Subcuenta
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                                                  
                    Case 2 'Auxiliar
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(4) Then .TextMatrix(Posi(4), Bals.Vls) = Val(.TextMatrix(Posi(4), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         
                         If Posi(6) = 1 Then
                             If Val(.TextMatrix(.Rows - 1, Bals.Vls)) = 0 Then .RemoveItem Pos
                         End If
                    Case 3 'SubAuxiliar
                         On Error Resume Next
                         N = "rr"
                         N = ColMov(Trim(.TextMatrix(.Rows - 1, Bals.Cuen)) + Trim(.TextMatrix(.Rows - 1, Bals.Scue)) + Trim(.TextMatrix(.Rows - 1, Bals.Aux)) + Trim(.TextMatrix(.Rows - 1, Bals.Auxl)))
                         If N <> "rr" Then
                              .TextMatrix(.Rows - 1, Bals.Vls) = Val(.TextMatrix(.Rows - 1, Bals.Vls)) + N
                              .TextMatrix(Posi(2), Bals.Vls) = Val(.TextMatrix(Posi(2), Bals.Vls)) + N
                              .TextMatrix(Posi(3), Bals.Vls) = Val(.TextMatrix(Posi(3), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(4) And Posi(4) <> 0 Then .TextMatrix(Posi(4), Bals.Vls) = Val(.TextMatrix(Posi(4), Bals.Vls)) + N
                              If .Rows - 1 <> Posi(5) And Posi(5) <> 0 Then .TextMatrix(Posi(5), Bals.Vls) = Val(.TextMatrix(Posi(5), Bals.Vls)) + N
                              Acomulado(0) = Acomulado(0) + N
                         End If
                         If Posi(6) = 1 Then
                             If Val(.TextMatrix(.Rows - 1, Bals.Vls)) = 0 Then .RemoveItem Pos
                         End If
             End Select
        End With
End Sub'

Private Sub Imprimir_Informe(Ti As Integer)
        With FGPyG
             On Error GoTo Imprime
             Dim Mh As String, GF As String, Iw As String
             If .Rows - 1 < 2 Then MsgBox "No hay información para imprimir", vbInformation + vbOKOnly, "Atención": Exit Sub
             If OptMes(0).Value = True Then
                  Mh = "ESTADOS DE RESULTADOS A " + UCase(Trim(Me.CobMeses.Text)) + " DE " + Trim(Cobaño.Text)
             Else
                  Mh = "ESTADOS DE RESULTADOS DE " + UCase(Trim(Me.CobMeses.Text)) + " DE " + Trim(Cobaño.Text)
             End If
                         
             Call Transaccion(BDBegin)
             Sql = "DELETE FROM INFORME"
             If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
             M = -1: Ax = Empty
             
             Select Case Ti
                    Case 1, 3
                            If Ti = 1 Then .Outline (2) Else .Outline (3)
                            Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
                            If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                            For i = 1 To .Rows - 1
                                 Nivel = .RowOutlineLevel(i)
                                 If .RowHidden(i) = False Then
                                       If Trim(.TextMatrix(i, Bals.Desc)) = Empty Then
                                            Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
                                       Else
                                            If Nivel = 1 Then
                                                Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal1) " & _
                                                      "VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & Trim(.TextMatrix(i, Bals.Desc)) & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                            Else
                                                If Nivel = 2 Then
                                                    Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal2) " & _
                                                          "VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & "     " + Trim(.TextMatrix(i, Bals.Desc)) & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                                Else
                                                    Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal2) " & _
                                                          "VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & "          " + Trim(.TextMatrix(i, Bals.Desc)) & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                                End If
                                            End If
                                       End If
                                       If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                                       M = 0
                                 End If
                            Next i
                            If DatosEmpresa(13) = Empty Then Iw = "pygdet.rpt" Else Iw = "pygdet_revisor.rpt"
                            
                  Case 5, 7
                        Sql = "INSERT INTO INFORME (InfDesc) VALUES ('') "
                        If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                        
                        lj = 0: lm = 0
                        If Ti = 5 Then .Outline (9)
                        For i = 1 To .Rows - 1
                              If .RowHidden(i) = False Then
                                     Nivel = .RowOutlineLevel(i)
                                     Select Case Nivel
                                            Case 1
                                                 If Trim(.TextMatrix(i, Bals.Desc)) <> Empty Then
                                                    Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal1) VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & Trim(.TextMatrix(i, Bals.Desc)) & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                                 Else
                                                     Sql = "INSERT INTO INFORME(InfDesc) VALUES ('')"
                                                 End If
                                                 If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub:
                                            Case 2
                                                 Sql = "INSERT INTO INFORME(InfDesc) VALUES ('')"
                                                 If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub

                                                 Sql = "INSERT INTO INFORME(InfCuen,InfDesc,InfVal3) " & _
                                                       "VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & "     " + Trim(.TextMatrix(i, Bals.Desc)) & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                                 If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                                                 lj = 1
                                            Case Else
                                                 If Trim(.TextMatrix(i, Bals.Scue)) = "00" Then A = Empty Else A = .TextMatrix(i, Bals.Scue)
                                                 If Trim(.TextMatrix(i, Bals.Aux)) = "00" Then b = Empty Else b = .TextMatrix(i, Bals.Aux)
                                                 If Trim(.TextMatrix(i, Bals.Auxl)) = "00" Then C = Empty Else C = .TextMatrix(i, Bals.Auxl)
                                                 Xm = Trim(.TextMatrix(i, Bals.Cuen)) + Trim(.TextMatrix(i, Bals.Scue)) + Trim(.TextMatrix(i, Bals.Aux)) + Trim(.TextMatrix(i, Bals.Auxl))
                                                 If Xm <> Ax Then
                                                        Select Case Nivel
                                                               Case 3
                                                                     If OptAgrupa(2).Value = True Or OptAgrupa(3).Value = True Then
                                                                           Sql = "INSERT INTO INFORME(InfDesc) VALUES ('')"
                                                                           If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                                                                     End If
                                                                     f = "        " + Trim(.TextMatrix(i, Bals.Desc))
                                                               Case 4: f = "           " + Trim(.TextMatrix(i, Bals.Desc))
                                                               Case 5: f = "              " + Trim(.TextMatrix(i, Bals.Desc))
                                                               Case Else
                                                                    If OptAgrupa(1).Value = True Then
                                                                       f = "              " + Trim(.TextMatrix(i, Bals.Desc))
                                                                    Else
                                                                        If OptAgrupa(2).Value = True Then f = "                  " + Trim(.TextMatrix(i, Bals.Desc)) Else f = "                      " + Trim(.TextMatrix(i, Bals.Desc))
                                                                    End If
                                                        End Select
                                                         
                                                        If Nivel = 3 Then
                                                             Sql = "INSERT INTO INFORME(InfCuen,InfScue,InfAuxi,InfAuxl,InfDesc,InfVal2) " & _
                                                                   "VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & A & "', '" & b & "','" & C & "'," & _
                                                                   "'" & f & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                                        Else
                                                             Sql = "INSERT INTO INFORME(InfCuen,InfScue,InfAuxi,InfAuxl,InfDesc,InfVal4) " & _
                                                                   "VALUES ('" & .TextMatrix(i, Bals.Cuen) & "','" & A & "', '" & b & "','" & C & "'," & _
                                                                   "'" & f & "'," & Val(.TextMatrix(i, Bals.Vls)) & ")"
                                                        End If
                                                        If Ejecutar_Sql(Sql) <> BDOk Then Call Transaccion(BDRollback): Exit Sub
                                                 End If
                                                 lj = 1: lm = 1
                                     End Select
                                     
                              End If
                              Ax = Trim(.TextMatrix(i, Bals.Cuen)) + Trim(.TextMatrix(i, Bals.Scue)) + Trim(.TextMatrix(i, Bals.Aux)) + Trim(.TextMatrix(i, Bals.Auxl))
                    Next i
                    If DatosEmpresa(13) = Empty Then
                        If lj = 0 Then Iw = "PyGdet.rpt" Else Iw = "PyGdet1.rpt"
                    Else
                        If lj = 0 Then Iw = "PyGdet_revisor.rpt" Else Iw = "PyGdet1_revisor.rpt"
                    End If
             End Select
             Call Transaccion(BDCommit)
             TRF = "TP." & DatosEmpresa(14)
             TCO = "TP." & DatosEmpresa(9)
             Y = "Nit: " & DatosEmpresa(0)
             
             Preporte.DiscardSavedData = True
             Preporte.Formulas(1) = "Titulo= '" & Mh & "'"
             Preporte.Formulas(2) = "Empresa= '" & Sigl & "'"
             Preporte.Formulas(3) = "Gerente= '" & DatosEmpresa(6) & "'"
             Preporte.Formulas(4) = "Contador= '" & DatosEmpresa(8) & "'"
             Preporte.Formulas(5) = "TContador= '" & TCO & "'"
             Preporte.Formulas(6) = "Nitempresa= '" & Y & "'"
             
             If DatosEmpresa(13) <> Empty Then
                 Preporte.Formulas(6) = "RevisorFiscal= '" & DatosEmpresa(13) & "'"
                 Preporte.Formulas(7) = "TRevisor= '" & TRF & "'"
             End If
             
             
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


