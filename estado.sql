-- -----------------------------------------------------
-- Table `loja`.`Estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja`.`Estado` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(50) NOT NULL,
  `UF` CHAR(2) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;