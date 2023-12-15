CREATE TABLE `gamer`.`articulos` (
  `sku` INT UNSIGNED NOT NULL,
  `descripcion` VARCHAR(255) NULL DEFAULT 'sin descripcion',
  `precio` DECIMAL(10,2) NULL,
  `peso` INT NULL,
  `fecha_alta` DATE NOT NULL,
  PRIMARY KEY (`sku`),
  UNIQUE INDEX `sku_UNIQUE` (`sku` ASC) VISIBLE
);

CREATE TABLE `gamer`.`clientes` (
  `nro_clientes` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_apellido` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `dni` INT UNSIGNED NOT NULL,
  `domicilio` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`nro_clientes`)
  );

CREATE TABLE `gamer`.`vendedores` (
  `legalo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre_apellido` VARCHAR(255) NOT NULL,
  `email_vdor` VARCHAR(255) NOT NULL,
  `nacionalidad` VARCHAR(45) NOT NULL,
  `domicilio` VARCHAR(255) NULL,
  PRIMARY KEY (`legalo`)
);

CREATE TABLE `gamer`.`pedidos` (
  `id_pedido` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha_pedido` DATE NOT NULL,
  `nro_cliente` INT UNSIGNED NOT NULL,
  `qty_sku` INT NOT NULL,
  PRIMARY KEY (`id_pedido`),
  CONSTRAINT `fk_pedido_cliente` FOREIGN KEY (`nro_cliente`) REFERENCES `gamer`.`clientes` (`nro_clientes`)
);

CREATE TABLE `facturas` (
  `nro_Facturas` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(255) NULL,
  `monto` DECIMAL(10,2),
  `fecha_emision` DATETIME NOT NULL,
  PRIMARY KEY (`nro_Facturas`),
  UNIQUE INDEX `nro_Facturas_UNIQUE` (`nro_Facturas` ASC) VISIBLE
);