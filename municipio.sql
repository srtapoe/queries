-- -----------------------------------------------------
-- Table `loja`.`Municipio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja`.`Municipio` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Estado_ID` INT NULL,
  `Nome` VARCHAR(80) NOT NULL,
  `CodIBGE` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `Estado_ID_idx` (`Estado_ID` ASC) VISIBLE,
  CONSTRAINT `Estado_ID`
    FOREIGN KEY (`Estado_ID`)
    REFERENCES `loja`.`Estado` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
