-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(250) NOT NULL,
  `rg` VARCHAR(9) NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `logradouro` VARCHAR(45) NULL,
  `numero` VARCHAR(5) NULL,
  `bairro` VARCHAR(45) NULL,
  `cep` VARCHAR(15) NULL,
  `cidade` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `modelo` VARCHAR(150) NOT NULL,
  `marca` VARCHAR(105) NOT NULL,
  `ano` INT NOT NULL,
  `preco_aluguel` DECIMAL(10,3) NOT NULL,
  `preco_compra` DECIMAL(10,3) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATETIME NOT NULL,
  `diarias` INT NULL,
  `valortotal` DECIMAL(10,3) NOT NULL,
  `tipo` ENUM('Aluguel', 'Compra') NOT NULL,
  `Cliente_id` INT NOT NULL,
  `Carro_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pedido_Cliente_idx` (`Cliente_id` ASC) VISIBLE,
  INDEX `fk_pedido_Carro1_idx` (`Carro_id` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_Cliente`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `mydb`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_Carro1`
    FOREIGN KEY (`Carro_id`)
    REFERENCES `mydb`.`Carro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
