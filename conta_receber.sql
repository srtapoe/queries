-- -----------------------------------------------------
-- Table `loja`.`ContaReceber`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja`.`ContaReceber` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Cliente_ID` INT NULL,
  `FaturaVendaID` INT NULL,
  `DataConta` DATE NOT NULL,
  `DataVencimento` DATE NOT NULL,
  `Valor` DECIMAL(18,2) NOT NULL,
  `Situação` ENUM('1', '2', '3') NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `Cliente_ID_idx` (`Cliente_ID` ASC) VISIBLE,
  CONSTRAINT `Cliente_ID`
    FOREIGN KEY (`Cliente_ID`)
    REFERENCES `loja`.`Cliente` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;