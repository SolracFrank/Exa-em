CREATE TABLE `modelovendido` (
  `Modelo` VARCHAR(50) NOT NULL,
  `NombreModelo` VARCHAR(45) NOT NULL,
  `fkcodigoVendedor` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Modelo`),
  INDEX `fk_venta_vendedor_idx` (`fkcodigoVendedor` ASC),
  CONSTRAINT `fk_venta_vendedor`
    FOREIGN KEY (`fkcodigoVendedor`)
    REFERENCES `examenp1`.`vendedor` (`codigoVendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
