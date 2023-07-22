-- -----------------------------------------------------
-- Table `loja`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja`.`Cliente` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(80) NOT NULL,
  `CPF` CHAR(11) NOT NULL,
  `Celular` CHAR(11) NOT NULL,
  `EndLogradouro` VARCHAR(100) NOT NULL,
  `EndNumero` VARCHAR(10) NOT NULL,
  `EndMunicipio` VARCHAR(100) NOT NULL,
  `EndCEP` CHAR(8) NULL,
  `Municipio_ID` INT NULL,
  PRIMARY KEY (`ID`),
  INDEX `Municipio_ID_idx` (`Municipio_ID` ASC) VISIBLE,
  CONSTRAINT `Municipio_ID`
    FOREIGN KEY (`Municipio_ID`)
    REFERENCES `loja`.`Municipio` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;