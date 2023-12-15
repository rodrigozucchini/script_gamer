--  CREATE TABLE `gamer`.`clientes_articulos` (
--  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
--  `nro_clientes` INT UNSIGNED NOT NULL,
--  `sku` INT UNSIGNED NOT NULL,
--  PRIMARY KEY (`id`),
--  CONSTRAINT `fk_cliente` FOREIGN KEY (`nro_clientes`) REFERENCES `gamer`.`clientes` (`nro_clientes`),
--  CONSTRAINT `fk_articulo` FOREIGN KEY (`sku`) REFERENCES `gamer`.`articulos` (`sku`)
--);

--CREATE TABLE `gamer`.`vendedores_articulos` (
--  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
--  `vendedor_legajo` INT UNSIGNED NOT NULL,
--  `articulo_sku` INT UNSIGNED NOT NULL,
--  PRIMARY KEY (`id`),
--  CONSTRAINT `fk_va_vendedor` FOREIGN KEY (`vendedor_legajo`) REFERENCES `gamer`.`vendedores` (`legalo`),
--  CONSTRAINT `fk_va_articulo` FOREIGN KEY (`articulo_sku`) REFERENCES `gamer`.`articulos` (`sku`)
--);

-- CREATE TABLE `gamer`.`pedidos_articulos` (
--  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
--  `id_pedido` INT UNSIGNED NOT NULL,
--  `sku` INT UNSIGNED NOT NULL,
--  `cantidad` INT NOT NULL,
--  PRIMARY KEY (`id`),
--  CONSTRAINT `fk_pa_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `gamer`.`pedidos` (`id_pedido`),
--  CONSTRAINT `fk_pa_articulo` FOREIGN KEY (`sku`) REFERENCES `gamer`.`articulos` (`sku`)
-- );

--DELIMITER //

--CREATE TRIGGER calcular_monto_factura
--BEFORE INSERT ON facturas
--FOR EACH ROW
--BEGIN
--    DECLARE monto_total DECIMAL(10,2);

--    SELECT SUM(pa.qty_sku * a.precio)
--    INTO monto_total
--    FROM pedidos_articulos pa
--    JOIN articulos a ON pa.sku = a.sku
--    WHERE pa.id_pedido IN (
--        SELECT p.id_pedido
--        FROM pedidos p
--        WHERE p.nro_Facturas = NEW.nro_Facturas
--    );

--    SET NEW.monto = monto_total;
--END;

--//

--DELIMITER ;