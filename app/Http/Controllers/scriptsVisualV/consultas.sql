        vTipoComprobante(0) = "7" ' ingreso a banco
        vTipoComprobante(1) = "8" ' egreso de banco
        vTipoComprobante(2) = "9" ' recibo de caja
        vTipoComprobante(3) = "10" ' egreso de caja
        vTipoComprobante(4) = "11" ' ventas
        vTipoComprobante(5) = "12" ' compras
        vTipoComprobante(6) = "13" ' devoluciones en venta
        vTipoComprobante(7) = "14" ' devoluciones en compra
        vTipoComprobante(8) = "15" ' ND cartera
        vTipoComprobante(9) = "16" ' NC cartera
        vTipoComprobante(10) = "17" ' ND proveedores
        vTipoComprobante(11) = "18" ' NC proveedores
        vTipoComprobante(12) = "19" ' Documentos Contabilizad
        vTipoComprobante(13) = "20" ' caja menor
        vTipoComprobante(14) = "21" ' nomina
        vTipoComprobante(15) = "99" ' general
        vTipoComprobante(16) = "22" ' planilla de combustible
        vTipoComprobante(17) = "25" ' Cotizaciones
        vTipoComprobante(18) = "23" ' Documento Soporte

/* ventas */
SELECT A.,F.FpaStDescripcion,C.CliStNombreCliente,
V.CliStNombreCliente AS Vendedor,X.BodStDescripcion,K.,M.PreStAbreviatura,M.PreStAbreviatura,B.*,L.scenomb,N.CarInDias 
FROM VENTAS A 
INNER JOIN FORMAPAGOS F ON(A.VenIdInFormaPago = F.FpaIdInFormaPago) 
INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)
INNER JOIN CLIENTES C ON (A.VenIdStEmpresa = C.CliEmpr AND A.VenIdStCliente = C.CliNit) 
INNER JOIN CLIENTES V ON (A.VenIdStEmpresa = V.CliEmpr AND A.VenIdStVendedor = V.CliNit) 
INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) 
INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto) 
INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa  = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion) 
LEFT OUTER JOIN SCENTROS L ON (A.VenIdStEmpresa  = L.sceempr AND A.VenStCentroCosto = L.scecent AND A.VenStSubCentroCosto = L.scecodi) 
LEFT OUTER JOIN CARTERA N 
ON (A.VenIdStEmpresa  = N.CarIdStEmpresa AND A.VenIdStComprobante = N.CarIdStComprobante AND A.VenIdInDocumento = N.CarIdInDocumento) 
WHERE (A.VenIdStEmpresa = '02' AND A.VenIdStTipoComprobante = '11' AND VenDaFechaDoc BETWEEN '2021-11-01' AND '2021-11-30' AND (VenStEstadoRegistro = 'A' or VenStEstadoRegistro = 'W') ) ORDER BY VenIdInVentas,MveInItem




If DTfechaI.Value > DTfechaF.Value Then MsgBox "Seleccione bien el intervalo de fecha", vbExclamation + vbOKOnly, "Atención": DTfechaI.SetFocus: Exit Sub
              Progres.Visible = True: Progres.Value = Progres.Value + 1
                            
              If Trim(BusVendedores.Text) <> Empty Then
                  vFiltro = " AND VenIdStVendedor = '" & Trim(BusVendedores.Text) & "'"
              End If
              
              If Trim(CobBodegas.Text) <> Empty Then
                  vFiltro = vFiltro & " AND VenIdInBodega = '" & Trim(CobBodegas.Text) & "'"
              End If
              
              If CobComprobante.Text <> Empty Then
                  vFiltro = vFiltro & " and VenIdStComprobante = '" & CobComprobante.Text & "'"
              End If
              


              If Trim(CobLineas.Text) <> Empty Then
                  vFiltro2 = " AND ProIdInLinea = '" & Trim(CobLineas.Text) & "'"
              End If
              If Trim(CobSubLineas.Text) <> Empty Then
                  vFiltro2 = vFiltro2 & " AND ProIdInSublinea = '" & Trim(CobSubLineas.Text) & "'"
              End If
              If Trim(CobMarca.Text) <> Empty Then
                  vFiltro2 = vFiltro2 & " AND ProIdInMarca = '" & Trim(CobMarca.Text) & "'"
              End If
              If Trim(CobClases.Text) <> Empty Then
                  vFiltro2 = vFiltro2 & " AND ProIdInClase = '" & Trim(CobClases.Text) & "'"
              End If
              
              .Rows = 1

              /*  */
              Sql = "SELECT A.,X.BodStDescripcion,K.,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A " & _
                    "INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)" & _
                    "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) " & _
                    "INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto " & vFiltro2 & ") " & _
                    "INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)" & _
                    "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(4) & "' AND " & _
                        "VenDaFechaDoc BETWEEN '" & Format(DTfechaI.Value, "yyyy-mm-dd") & "' AND '" & Format(DTfechaF.Value, "yyyy-mm-dd") & "' AND " & _
                        "VenStEstadoRegistro = '" & EAprobado & "' " & vFiltro & ") " & _
                    "ORDER BY VenIdInVentas,MveInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         On Error Resume Next
                         M = "-1": Ty = Trim("" & rdoRs!MveIdInProducto) & Trim("" & rdoRs!BodStDescripcion) & Trim("" & rdoRs!PreStAbreviatura)
                         M = vProductos(Ty)
                         If M = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Datos.cod) = Trim("" & rdoRs!MveIdInProducto)
                            .TextMatrix(.Rows - 1, Datos.Referencia) = Trim("" & rdoRs!ProStReferencia)
                            .TextMatrix(.Rows - 1, Datos.Bodega) = Trim("" & rdoRs!VenIdInBodega)
                            .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!MveStDescripcion)
                            .TextMatrix(.Rows - 1, Datos.Unidad) = Trim(rdoRs!PreStAbreviatura)
                            i = .Rows - 1
                            vProductos.Add .Rows - 1, Ty
                         Else
                            i = M
                         End If
                         
                         .TextMatrix(i, Datos.Cantidad) = Val(.TextMatrix(i, Datos.Cantidad)) + Val(rdoRs!MveInCantidad)
                         .TextMatrix(i, Datos.CostoTot) = Val(.TextMatrix(i, Datos.CostoTot)) + (Val(rdoRs!MveInCantidad) * Val(rdoRs!MveInConversionUnidad) * Val(rdoRs!MveInCosto))
                         .TextMatrix(i, Datos.VrVentaTot) = Val(.TextMatrix(i, Datos.VrVentaTot)) + Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo)
                   
                         rdoRs.MoveNext
                   Wend
              End If
                
              ------- DEVOLUCIONES DE PRODUCTOS
              A = Empty
              Sql = "SELECT A.,X.BodStDescripcion,K.,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A " & _
                    "INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)" & _
                    "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) " & _
                    "INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto " & vFiltro2 & ") " & _
                    "INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)" & _
                    "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND " & _
                        "VenDaFechaDoc BETWEEN '" & Format(DTfechaI.Value, "yyyy-mm-dd") & "' AND '" & Format(DTfechaF.Value, "yyyy-mm-dd") & "' AND " & _
                        "VenStEstadoRegistro = '" & EAprobado & "' " & vFiltro & ") " & _
                    "ORDER BY VenIdInVentas,MveInItem"















              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         On Error Resume Next
                         M = "-1": Ty = Trim("" & rdoRs!MveIdInProducto) & Trim("" & rdoRs!BodStDescripcion) & Trim("" & rdoRs!PreStAbreviatura)
                         M = vProductos(Ty)
                         If M = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Datos.cod) = Trim("" & rdoRs!MveIdInProducto)
                            .TextMatrix(.Rows - 1, Datos.Referencia) = Trim("" & rdoRs!ProStReferencia)
                            .TextMatrix(.Rows - 1, Datos.Bodega) = Trim("" & rdoRs!VenIdInBodega)
                            If Trim("" & rdoRs!MveStDescripcion) <> Empty Then
                                .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!MveStDescripcion)
                            Else
                                .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!ProStDescripcion)
                            End If
                            .TextMatrix(.Rows - 1, Datos.Unidad) = Trim(rdoRs!PreStAbreviatura)
                            i = .Rows - 1
                            vProductos.Add .Rows - 1, Ty
                         Else
                            i = M
                         End If
                         .TextMatrix(i, Datos.CanDevl) = Val(.TextMatrix(i, Datos.CanDevl)) + Val(rdoRs!MveInCantidad)
                         .TextMatrix(i, Datos.CostoDev) = Val(.TextMatrix(i, Datos.CostoDev)) + (Val(rdoRs!MveInCantidad) * Val(rdoRs!MveInConversionUnidad) * Val(rdoRs!MveInCosto))
                         .TextMatrix(i, Datos.VrDevol) = Val(.TextMatrix(i, Datos.VrDevol)) + Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo)
                         
                         rdoRs.MoveNext
                   Wend
              End If
                
                



              For i = 1 To .Rows - 1
                   .TextMatrix(i, Datos.CostoUni) = Val(.TextMatrix(i, Datos.CostoTot)) / Val(.TextMatrix(i, Datos.Cantidad))
                   .TextMatrix(i, Datos.VrVentaUni) = Val(.TextMatrix(i, Datos.VrVentaTot)) / Val(.TextMatrix(i, Datos.Cantidad))
                                      
    

                   If Val(.TextMatrix(i, Datos.VrDevol)) > 0 And Val(.TextMatrix(i, Datos.VrVentaTot)) > 0 Then
                       If Val(.TextMatrix(i, Datos.VrVentaTot)) >= Val(.TextMatrix(i, Datos.VrDevol)) And Val(.TextMatrix(i, Datos.CostoTot)) >= Val(.TextMatrix(i, Datos.CostoDev)) Then
                           M = Val(.TextMatrix(i, Datos.VrVentaTot)) - Val(.TextMatrix(i, Datos.VrDevol))
                           S = Val(.TextMatrix(i, Datos.CostoTot)) - Val(.TextMatrix(i, Datos.CostoDev))
                           .TextMatrix(i, Datos.Diferencia) = M - S
                           
                       Else
                            .TextMatrix(i, Datos.Diferencia) = Val(.TextMatrix(i, Datos.VrVentaTot)) - Val(.TextMatrix(i, Datos.CostoTot))
                       End If


                   Else
                       If Val(.TextMatrix(i, Datos.VrDevol)) > 0 And Val(.TextMatrix(i, Datos.VrVentaTot)) = 0 Then
                            .TextMatrix(i, Datos.Diferencia) = (Val(.TextMatrix(i, Datos.VrDevol)) - Val(.TextMatrix(i, Datos.CostoDev))) * -1
                       Else
                            .TextMatrix(i, Datos.Diferencia) = Val(.TextMatrix(i, Datos.VrVentaTot)) - Val(.TextMatrix(i, Datos.CostoTot))
                       End If
                   End If
              Next i
              
              If .Rows > 1 Then
                    .AddItem ""
                    .TextMatrix(.Rows - 1, Datos.Nombre) = "TOTALES"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    For i = 1 To .Rows - 2
                         .TextMatrix(.Rows - 1, Datos.CostoTot) = Val(.TextMatrix(.Rows - 1, Datos.CostoTot)) + Val(.TextMatrix(i, Datos.CostoTot))
                         .TextMatrix(.Rows - 1, Datos.VrVentaTot) = Val(.TextMatrix(.Rows - 1, Datos.VrVentaTot)) + Val(.TextMatrix(i, Datos.VrVentaTot))
                         .TextMatrix(.Rows - 1, Datos.Diferencia) = Val(.TextMatrix(.Rows - 1, Datos.Diferencia)) + Val(.TextMatrix(i, Datos.Diferencia))
                         .TextMatrix(.Rows - 1, Datos.CostoDev) = Val(.TextMatrix(.Rows - 1, Datos.CostoDev)) + Val(.TextMatrix(i, Datos.CostoDev))
                         .TextMatrix(.Rows - 1, Datos.VrDevol) = Val(.TextMatrix(.Rows - 1, Datos.VrDevol)) + Val(.TextMatrix(i, Datos.VrDevol))
                         
                    Next i
              End If
                          
              If .Rows <= 1 Then MsgBox "No hay información para mostrar", vbInformation + vbOKOnly, "Atención": Progres.Visible = False:  Exit Sub
                                                        
              Progres.Value = Progres.Value + 1
              Progres.Visible = False
              .BackColorFixed = vbWhite
              .ForeColorFixed = &H40C0&
              If .Rows > 1 Then
                   FGVentas.AutoSize Datos.Unidad, FGVentas.Cols - 1
                   FGVentas.AllowUserResizing = flexResizeColumns
                   FGVentas.SetFocus: FGVentas.Select 1, Datos.cod
                   Call LLenar_Existencia
              End If



              
              /* 
               ventas*/

Sql = "SELECT A.,X.BodStDescripcion,K.,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A " & _
                    "INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)" & _
                    "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) " & _
                    "INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto " & vFiltro2 & ") " & _
                    "INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)" & _
                    "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(4) & "' AND " & _
                        "VenDaFechaDoc BETWEEN '" & Format(DTfechaI.Value, "yyyy-mm-dd") & "' AND '" & Format(DTfechaF.Value, "yyyy-mm-dd") & "' AND " & _
                        "VenStEstadoRegistro = '" & EAprobado & "' " & vFiltro & ") " & _
                    "ORDER BY VenIdInVentas,MveInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         On Error Resume Next
                         M = "-1": Ty = Trim("" & rdoRs!MveIdInProducto) & Trim("" & rdoRs!BodStDescripcion) & Trim("" & rdoRs!PreStAbreviatura)
                         M = vProductos(Ty)
                         If M = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Datos.cod) = Trim("" & rdoRs!MveIdInProducto)
                            .TextMatrix(.Rows - 1, Datos.Referencia) = Trim("" & rdoRs!ProStReferencia)
                            .TextMatrix(.Rows - 1, Datos.Bodega) = Trim("" & rdoRs!VenIdInBodega)
                            .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!MveStDescripcion)
                            .TextMatrix(.Rows - 1, Datos.Unidad) = Trim(rdoRs!PreStAbreviatura)
                            i = .Rows - 1
                            vProductos.Add .Rows - 1, Ty
                         Else
                            i = M
                         End If
                         
                         .TextMatrix(i, Datos.Cantidad) = Val(.TextMatrix(i, Datos.Cantidad)) + Val(rdoRs!MveInCantidad)
                         .TextMatrix(i, Datos.CostoTot) = Val(.TextMatrix(i, Datos.CostoTot)) + (Val(rdoRs!MveInCantidad) * Val(rdoRs!MveInConversionUnidad) * Val(rdoRs!MveInCosto))
                         .TextMatrix(i, Datos.VrVentaTot) = Val(.TextMatrix(i, Datos.VrVentaTot)) + Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo)
                   
                         rdoRs.MoveNext
                   Wend
              End If


              /* otro parte */

              A = Empty
              Sql = "SELECT A.,X.BodStDescripcion,K.,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A " & _
                    "INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)" & _
                    "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) " & _
                    "INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto " & vFiltro2 & ") " & _
                    "INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)" & _
                    "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND " & _
                        "VenDaFechaDoc BETWEEN '" & Format(DTfechaI.Value, "yyyy-mm-dd") & "' AND '" & Format(DTfechaF.Value, "yyyy-mm-dd") & "' AND " & _
                        "VenStEstadoRegistro = '" & EAprobado & "' " & vFiltro & ") " & _
                    "ORDER BY VenIdInVentas,MveInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         On Error Resume Next
                         M = "-1": Ty = Trim("" & rdoRs!MveIdInProducto) & Trim("" & rdoRs!BodStDescripcion) & Trim("" & rdoRs!PreStAbreviatura)
                         M = vProductos(Ty)
                         If M = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Datos.cod) = Trim("" & rdoRs!MveIdInProducto)
                            .TextMatrix(.Rows - 1, Datos.Referencia) = Trim("" & rdoRs!ProStReferencia)
                            .TextMatrix(.Rows - 1, Datos.Bodega) = Trim("" & rdoRs!VenIdInBodega)
                            If Trim("" & rdoRs!MveStDescripcion) <> Empty Then
                                .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!MveStDescripcion)
                            Else
                                .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!ProStDescripcion)
                            End If
                            .TextMatrix(.Rows - 1, Datos.Unidad) = Trim(rdoRs!PreStAbreviatura)
                            i = .Rows - 1
                            vProductos.Add .Rows - 1, Ty
                         Else
                            i = M
                         End If
                         .TextMatrix(i, Datos.CanDevl) = Val(.TextMatrix(i, Datos.CanDevl)) + Val(rdoRs!MveInCantidad)
                         .TextMatrix(i, Datos.CostoDev) = Val(.TextMatrix(i, Datos.CostoDev)) + (Val(rdoRs!MveInCantidad) * Val(rdoRs!MveInConversionUnidad) * Val(rdoRs!MveInCosto))
                         .TextMatrix(i, Datos.VrDevol) = Val(.TextMatrix(i, Datos.VrDevol)) + Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo)
                         
                         rdoRs.MoveNext
                   Wend
              End If
/* devoluciones */


A = Empty
              Sql = "SELECT A.,X.BodStDescripcion,K.,M.PreStAbreviatura,B.ProStDescripcion,B.ProStReferencia FROM VENTAS A " & _
                    "INNER JOIN BODEGAS X ON (A.VenIdStEmpresa = X.BodIdStEmpresa AND A.VenIdInBodega = X.BodIdInBodega)" & _
                    "INNER JOIN MOVVENTAS K ON (A.VenIdInVentas = K.MveIdInVentas AND A.VenIdStEmpresa =K.MveIdStEmpresa) " & _
                    "INNER JOIN PRODUCTOS B ON (K.MveIdStEmpresa  = B.ProIdStEmpresa AND K.MveIdInProducto = B.ProIdInProducto " & vFiltro2 & ") " & _
                    "INNER JOIN PRESENTACION M ON (K.MveIdStEmpresa = M.PreIdStEmpresa AND K.MveIdInUnidadVenta = M.PreIdInPresentacion)" & _
                    "WHERE (A.VenIdStEmpresa = '" & Empresa & "' AND A.VenIdStTipoComprobante = '" & vTipoComprobante(6) & "' AND " & _
                        "VenDaFechaDoc BETWEEN '" & Format(DTfechaI.Value, "yyyy-mm-dd") & "' AND '" & Format(DTfechaF.Value, "yyyy-mm-dd") & "' AND " & _
                        "VenStEstadoRegistro = '" & EAprobado & "' " & vFiltro & ") " & _
                    "ORDER BY VenIdInVentas,MveInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         On Error Resume Next
                         M = "-1": Ty = Trim("" & rdoRs!MveIdInProducto) & Trim("" & rdoRs!BodStDescripcion) & Trim("" & rdoRs!PreStAbreviatura)
                         M = vProductos(Ty)
                         If M = "-1" Then
                            .AddItem ""
                            .TextMatrix(.Rows - 1, Datos.cod) = Trim("" & rdoRs!MveIdInProducto)
                            .TextMatrix(.Rows - 1, Datos.Referencia) = Trim("" & rdoRs!ProStReferencia)
                            .TextMatrix(.Rows - 1, Datos.Bodega) = Trim("" & rdoRs!VenIdInBodega)
                            If Trim("" & rdoRs!MveStDescripcion) <> Empty Then
                                .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!MveStDescripcion)
                            Else
                                .TextMatrix(.Rows - 1, Datos.Nombre) = Trim("" & rdoRs!ProStDescripcion)
                            End If
                            .TextMatrix(.Rows - 1, Datos.Unidad) = Trim(rdoRs!PreStAbreviatura)
                            i = .Rows - 1
                            vProductos.Add .Rows - 1, Ty
                         Else
                            i = M
                         End If
                         .TextMatrix(i, Datos.CanDevl) = Val(.TextMatrix(i, Datos.CanDevl)) + Val(rdoRs!MveInCantidad)
                         .TextMatrix(i, Datos.CostoDev) = Val(.TextMatrix(i, Datos.CostoDev)) + (Val(rdoRs!MveInCantidad) * Val(rdoRs!MveInConversionUnidad) * Val(rdoRs!MveInCosto))
                         .TextMatrix(i, Datos.VrDevol) = Val(.TextMatrix(i, Datos.VrDevol)) + Val("" & rdoRs!MveInValor) - Val("" & rdoRs!MveInValorIva) - Val("" & rdoRs!MveInValorImpoconsumo)
                         
                         rdoRs.MoveNext
                   Wend
              End If


///##################


Sql = "SELECT A.,F.FpaStDescripcion,C.CliStNombreCliente,X.BodStDescripcion,K.,M.PreStAbreviatura," & _
                    "B.ProStDescripcion,B.ProStIvaIncluido,B.ProStReferencia FROM COMPRAS A " & _
                    "INNER JOIN FORMAPAGOS F ON(A.ComIdInFormaPago = F.FpaIdInFormaPago) " & _
                    "INNER JOIN BODEGAS X ON (A.ComIdStEmpresa = X.BodIdStEmpresa AND A.ComIdInBodega = X.BodIdInBodega)" & _
                    "INNER JOIN CLIENTES C ON (A.ComIdStEmpresa = C.CliEmpr AND A.ComIdStProveedor = C.CliNit) " & _
                    "INNER JOIN MOVCOMPRAS K ON (A.ComIdInCompras = K.McoIdInCompras AND A.ComIdStEmpresa =K.McoIdStEmpresa) " & _
                    "INNER JOIN PRODUCTOS B ON (K.McoIdStEmpresa  = B.ProIdStEmpresa AND K.McoIdInProducto = B.ProIdInProducto) " & _
                    "INNER JOIN PRESENTACION M ON (B.ProIdStEmpresa  = M.PreIdStEmpresa AND K.McoIdInUnidadCompra = M.PreIdInPresentacion)" & _
                    "WHERE (A.ComIdStEmpresa = '" & Empresa & "' AND A.ComIdStTipoComprobante = '" & vTipoComprobante(5) & "' AND " & _
                        "ComDaFechaFactura BETWEEN '" & Format(DTfechaI.Value, FormatoFecha) & "' AND '" & Format(DTfechaF.Value, FormatoFecha) & "' AND " & _
                        "(ComStEstadoCompra = '" & EAprobado & "' or ComStEstadoCompra = '" & EAnulado & "') " & vFiltro & ") " & _
                    "ORDER BY ComIdInCompras,McoInItem"
              If Buscar_Res(rdoRs, Sql) = BDOk Then
                   While Not rdoRs.EOF
                         If A <> Trim(rdoRs!ComIdInCompras) Then
                                .AddItem ""
                                .TextMatrix(.Rows - 1, Datos.Proveedor) = Trim("" & rdoRs!CliStNombreCliente)
                                .TextMatrix(.Rows - 1, Datos.Factu) = Trim("" & rdoRs!ComIdStDocumentoSoporte)
                                .TextMatrix(.Rows - 1, Datos.Fecha) = Format(rdoRs!ComDaFechaFactura, "dd-mm-yyyy")
                                .TextMatrix(.Rows - 1, Datos.FormaPago) = Trim("" & rdoRs!FpaStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.numero) = Trim("" & rdoRs!ComIdStDocumento)
                                .TextMatrix(.Rows - 1, Datos.Conse) = Trim("" & rdoRs!ComIdInCompras)
                                .TextMatrix(.Rows - 1, Datos.Bodega) = Trim("" & rdoRs!BodStDescripcion)
                                .TextMatrix(.Rows - 1, Datos.Cedula) = Trim("" & rdoRs!ComIdStProveedor)
                                .TextMatrix(.Rows - 1, Datos.Estado) = Trim("" & rdoRs!ComStEstadoCompra)
                                .TextMatrix(.Rows - 1, Datos.FechaElaboracion) = Trim("" & rdoRs!ComDtFechaHora)
                                If Trim("" & rdoRs!ComStEstadoCompra) = "W" Then
                                    .TextMatrix(.Rows - 1, Datos.VrFactura) = 0
                                    .TextMatrix(.Rows - 1, Datos.Anticipo) = 0
                                    .TextMatrix(.Rows - 1, Datos.Retencion) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrIva) = 0
                                    .TextMatrix(.Rows - 1, Datos.Descuento) = 0
                                    .TextMatrix(.Rows - 1, Datos.Total) = 0
                                    .TextMatrix(.Rows - 1, Datos.PReteFuente) = 0
                                    .TextMatrix(.Rows - 1, Datos.PReteIva) = 0
                                    .TextMatrix(.Rows - 1, Datos.BaseIva) = 0
                                    .TextMatrix(.Rows - 1, Datos.BaseRete) = 0
                                    .TextMatrix(.Rows - 1, Datos.vIvaAsumido) = 0
                                    .TextMatrix(.Rows - 1, Datos.vRetencionAsumida) = 0
                                    .TextMatrix(.Rows - 1, Datos.vValorIvaAsumido) = 0
                                    .TextMatrix(.Rows - 1, Datos.VrInc) = 0
                                    .TextMatrix(.Rows - 1, Datos.Total) = 0
                                    .TextMatrix(.Rows - 1, Datos.NetoPagar) = 0
                                Else
                                    .TextMatrix(.Rows - 1, Datos.VrFactura) = Val("" & rdoRs!ComInValor)
                                    .TextMatrix(.Rows - 1, Datos.Anticipo) = Val("" & rdoRs!ComInValorAnticipo)
                                    .TextMatrix(.Rows - 1, Datos.Retencion) = Val("" & rdoRs!ComInValorRetencion)
                                    .TextMatrix(.Rows - 1, Datos.VrIva) = Val("" & rdoRs!ComInValorIva)
                                    .TextMatrix(.Rows - 1, Datos.Descuento) = Val("" & rdoRs!ComInValorDescuento)
                                    .TextMatrix(.Rows - 1, Datos.Total) = Val("" & rdoRs!ComInValor)
                                    .TextMatrix(.Rows - 1, Datos.PReteFuente) = Val("" & rdoRs!ComInPorRetefuente)
                                    .TextMatrix(.Rows - 1, Datos.PReteIva) = Val("" & rdoRs!ComInPorIva)
                                    .TextMatrix(.Rows - 1, Datos.BaseIva) = Val("" & rdoRs!ComInBaseIva)
                                    .TextMatrix(.Rows - 1, Datos.BaseRete) = Val("" & rdoRs!ComInBaseRetefuente)
                                    .TextMatrix(.Rows - 1, Datos.vIvaAsumido) = Val("" & rdoRs!ComStIvaAsumido)
                                    .TextMatrix(.Rows - 1, Datos.vRetencionAsumida) = Val("" & rdoRs!ComStRetencionAsumida)
                                    .TextMatrix(.Rows - 1, Datos.vValorIvaAsumido) = Val("" & rdoRs!ComInValorIvaAsumido)
                                    .TextMatrix(.Rows - 1, Datos.VrInc) = Val("" & rdoRs!ComInValorImpoconsumo)
                                    .TextMatrix(.Rows - 1, Datos.Total) = Val("" & rdoRs!ComInValor) + Val("" & rdoRs!ComInValorIva) + Val(.TextMatrix(.Rows - 1, Datos.VrInc)) - Val("" & rdoRs!ComInValorDescuento)
                                    If Val("" & rdoRs!ComStRetencionAsumida) = 1 Then
                                         .TextMatrix(.Rows - 1, Datos.NetoPagar) = Val("" & rdoRs!ComInValor) + Val("" & rdoRs!ComInValorIva) + Val(.TextMatrix(.Rows - 1, Datos.VrInc)) - Val("" & rdoRs!ComInValorDescuento)
                                    Else
                                         .TextMatrix(.Rows - 1, Datos.NetoPagar) = Val("" & rdoRs!ComInValor) + Val("" & rdoRs!ComInValorIva) + Val(.TextMatrix(.Rows - 1, Datos.VrInc)) - Val("" & rdoRs!ComInValorDescuento) - Val("" & rdoRs!ComInValorRetencion)
                                    End If
                                    M = M + Val(.TextMatrix(.Rows - 1, Datos.Total))
                                End If
                         End If
                         
                         With FGproductos
                              .AddItem ""
                              .TextMatrix(.Rows - 1, Producto.Nume) = Trim("" & rdoRs!ComIdInCompras)
                              .TextMatrix(.Rows - 1, Producto.cod) = Trim(rdoRs!McoIdInProducto)
                              .TextMatrix(.Rows - 1, Producto.Nombre) = Trim(rdoRs!ProStDescripcion)
                              .TextMatrix(.Rows - 1, Producto.Unidad) = Trim(rdoRs!PreStAbreviatura)
                              .TextMatrix(.Rows - 1, Producto.Cantidad) = Val(rdoRs!McoInCantidad)
                              .TextMatrix(.Rows - 1, Producto.Referencia) = Trim("" & rdoRs!ProStReferencia)
                              .TextMatrix(.Rows - 1, Producto.IVAMayorValor) = Val("" & rdoRs!McoStIvaMayorValor)
                              

                              If Trim("" & rdoRs!ComStEstadoCompra) = "W" Then
                                    .TextMatrix(.Rows - 1, Producto.Nombre) = "* REGISTRO ANULADO *"
                                    .TextMatrix(.Rows - 1, Producto.vIva) = 0
                                    .TextMatrix(.Rows - 1, Producto.vInc) = 0
                                    .TextMatrix(.Rows - 1, Producto.Costos) = 0
                                    .TextMatrix(.Rows - 1, Producto.vDsto) = 0
                                    .TextMatrix(.Rows - 1, Producto.Subtotal) = 0
                                    .TextMatrix(.Rows - 1, Producto.vTotal) = 0
                                    .TextMatrix(.Rows - 1, Producto.pIva) = 0
                                    .TextMatrix(.Rows - 1, Producto.pDsto) = 0
                              Else
                                    .TextMatrix(.Rows - 1, Producto.vIva) = Val("" & rdoRs!McoInValorIva)
                                    .TextMatrix(.Rows - 1, Producto.vInc) = Val("" & rdoRs!McoInValorImpoconsumo)
                                    .TextMatrix(.Rows - 1, Producto.Costos) = Val("" & rdoRs!McoInCosto)
                                    .TextMatrix(.Rows - 1, Producto.vDsto) = Val("" & rdoRs!McoInDescuento)
                                    .TextMatrix(.Rows - 1, Producto.Subtotal) = Round(Val("" & rdoRs!McoInCosto) * Val(rdoRs!McoInCantidad), 1)
                                    
                                    .TextMatrix(.Rows - 1, Producto.vTotal) = Val(.TextMatrix(.Rows - 1, Producto.Subtotal)) + Val(.TextMatrix(.Rows - 1, Producto.vIva)) + Val(.TextMatrix(.Rows - 1, Producto.vInc)) - Val(.TextMatrix(.Rows - 1, Producto.vDsto))
                                                                  
                                    If Val(.TextMatrix(.Rows - 1, Producto.Subtotal)) > 0 Then
                                          .TextMatrix(.Rows - 1, Producto.pIva) = Round((Val(.TextMatrix(.Rows - 1, Producto.vIva)) / (Val(.TextMatrix(.Rows - 1, Producto.Subtotal)) - Val(.TextMatrix(.Rows - 1, Producto.vDsto)))) * 100, 1)
                                    End If
                                    If Val(.TextMatrix(.Rows - 1, Producto.vDsto)) > 0 Then
                                      .TextMatrix(.Rows - 1, Producto.pDsto) = Round((Val(.TextMatrix(.Rows - 1, Producto.vDsto)) / Val(.TextMatrix(.Rows - 1, Producto.Subtotal))) * 100, 2)
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
                    .TextMatrix(.Rows - 1, Datos.Proveedor) = "TOTALES"
                    .Cell(flexcpForeColor, .Rows - 1, 0, .Rows - 1, .Cols - 1) = vbMagenta
                    For i = 1 To .Rows - 2
                        .TextMatrix(.Rows - 1, Datos.Descuento) = Val(.TextMatrix(.Rows - 1, Datos.Descuento)) + Val(.TextMatrix(i, Datos.Descuento))
                        .TextMatrix(.Rows - 1, Datos.VrFactura) = Val(.TextMatrix(.Rows - 1, VrFactura)) + Val(.TextMatrix(i, VrFactura))
                        .TextMatrix(.Rows - 1, Datos.VrIva) = Val(.TextMatrix(.Rows - 1, Datos.VrIva)) + Val(.TextMatrix(i, Datos.VrIva))
                        .TextMatrix(.Rows - 1, Datos.VrInc) = Val(.TextMatrix(.Rows - 1, Datos.VrInc)) + Val(.TextMatrix(i, Datos.VrInc))
                        .TextMatrix(.Rows - 1, Datos.Total) = Val(.TextMatrix(.Rows - 1, Datos.Total)) + Val(.TextMatrix(i, Datos.Total))
                        .TextMatrix(.Rows - 1, Datos.NetoPagar) = Val(.TextMatrix(.Rows - 1, Datos.NetoPagar)) + Val(.TextMatrix(i, Datos.NetoPagar))
                    Next i
              End If
                            
              Progres.Value = Progres.Value + 1
              Progres.Visible = False
              If .Rows > 1 Then FGCompras.SetFocus: FGCompras.Select 1, Datos.numero



              /////
              ########################




              
              Private Sub Sumar_Registros()
        With FGdetCompras
             TxtComInValorDescuento.Text = 0
             TxtComInValor.Text = 0
             TxtComInValorIvaCalculado.Text = 0
             TxtComInValorIva.Text = 0
             TxtValorTotal.Text = 0
             TxtValorINC.Text = 0
             vValorRetencionCompra = 0: vValorRetencionServicio = 0
             
             
             For i = 1 To .Rows - 1
                   TxtComInValor.Text = Val(TxtComInValor.Text) + Val(.TextMatrix(i, vDetCompra.Subtotal))
                   TxtComInValorIvaCalculado.Text = Val(TxtComInValorIvaCalculado.Text) + Val(.TextMatrix(i, vDetCompra.vIva))
                   TxtComInValorDescuento.Text = Val(TxtComInValorDescuento.Text) + Val(.TextMatrix(i, vDetCompra.vDsto))
                   TxtValorINC.Text = Val(TxtValorINC.Text) + Val(.TextMatrix(i, vDetCompra.vInc))
             Next i
                          
             Texto = TxtComInValor.Text
             Call Separador_Numerico(True): lblValor.Caption = "$ " & Texto
             
             If Val(TxtComInValorIvaCalculado.Text) > 0 Then
                  Texto = TxtComInValorIvaCalculado.Text
                  If Val(CheIVAAsumido.Value) = 1 Then
                      Texto = "0"
                      TxtComInValorIva.Text = 0
                  Else
                      TxtComInValorIva.Text = TxtComInValorIvaCalculado.Text
                  End If
             Else
                  Texto = "0"
                  TxtComInValorIva.Text = TxtComInValorIvaCalculado.Text
             End If
             Call Separador_Numerico(True): LblIva.Caption = "$ " & Texto
             
             If Val(TxtValorINC.Text) > 0 Then
                 Texto = TxtValorINC.Text
             Else
                 Texto = "0"
             End If
             Call Separador_Numerico(True): LblINC.Caption = "$ " & Texto
                          
             Texto = TxtComInValorDescuento.Text
             Call Separador_Numerico(True): lblDescuento.Caption = "$ " & Texto
       
             If Val(TxtComInValorRetencion.Text) > 0 Then
                 Texto = Val(TxtComInValorRetencion.Text)
                 If Val(CheRetefuenteAsumida.Value) = 1 Then
                      Texto = "0"
                 End If
             Else
                  Texto = "0"
             End If
             Call Separador_Numerico(True): lblRetencion.Caption = "$ " & Texto
                          
             TxtValorFactura.Text = Val(TxtComInValor.Text) + Val(TxtComInValorIvaCalculado.Text) + Val(TxtValorINC.Text) - Val(TxtComInValorDescuento.Text)
             If Val(TxtVrIVAAsumido.Text) > 0 Then
                 N = Val(TxtComInValor.Text) - Val(TxtComInValorDescuento.Text) - Val(TxtComInValorRetencion.Text) + Val(TxtVrRetefuenteAsumida.Text)
                 TxtValorFactura.Text = Val(TxtComInValor.Text) - Val(TxtComInValorDescuento.Text)
             Else
                 N = Val(TxtComInValor.Text) + Val(TxtComInValorIvaCalculado.Text) + Val(TxtValorINC.Text) - Val(TxtComInValorDescuento.Text) - Val(TxtComInValorRetencion.Text) + Val(TxtVrRetefuenteAsumida.Text)
             End If
             TxtValorTotal.Text = N 'Total para contabilizar
             Texto = Trim(Str(N))
             Call Separador_Numerico(True): lblTotal.Caption = "$ " & Texto
             Texto = TxtValorFactura.Text
             Call Separador_Numerico(True): lblTotalFactura.Caption = "$ " & Texto
                                       
        End With""'




