CREATE TABLE `trimeste` (
  `idTrimeste` INT NULL AUTO_INCREMENT,
  `UnidadesEnero` INT NOT NULL,
  `UnidadesFebrero` INT NOT NULL,
  `UnidadesMarzo` INT NOT NULL,
  `fkModelo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTrimeste`),
  INDEX `fk_trimestre_modelo_idx` (`fkModelo` ASC) ,
  CONSTRAINT `fk_trimestre_modelo`
    FOREIGN KEY (`fkModelo`)
    REFERENCES `examenp1`.`modelovendido` (`Modelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
