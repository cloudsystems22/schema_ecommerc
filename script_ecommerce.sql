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
CREATE SCHEMA IF NOT EXISTS `icar` DEFAULT CHARACTER SET utf8 ;
USE `icar` ;

-- -----------------------------------------------------
-- Table `icar`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `icar`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(250) NOT NULL,
  `rg` VARCHAR(9) NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `logradouro` VARCHAR(45) NULL,
  `numero` VARCHAR(5) NULL,
  `bairro` VARCHAR(45) NULL,
  `cep` VARCHAR(15) NULL,
  `cidade` VARCHAR(45) NULL,
  `uf` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- INSERT CLIENTES
-- -----------------------------------------------------
INSERT INTO `icar`.`Cliente`(`nome`,`rg`,`cpf`,`logradouro`,`numero`,`bairro`,`cep`,`cidade`,`uf`,`email`) VALUES('Clarice Gabriela Analu Almada', '459958689', '23561167373', 'Rua Nova', '646', 'Jardim Santo Inácio', '69306610', 'Cabo de Santo Agostinho', 'PE', 'clarice@publiout.com.br');
INSERT INTO `icar`.`Cliente`(`nome`,`rg`,`cpf`,`logradouro`,`numero`,`bairro`,`cep`,`cidade`,`uf`,`email`) VALUES('Mateus Raimundo Caio Costa', '377314092', '59213164580', 'Rua Melvim Jones', '476', 'São Pedro', '69306610', 'Cabo de Santo Agostinho', 'RR', 'mmateusraimundocaiocosta@publiout.com.br');
INSERT INTO `icar`.`Cliente`(`nome`,`rg`,`cpf`,`logradouro`,`numero`,`bairro`,`cep`,`cidade`,`uf`,`email`) VALUES('Renan Theo Marcos Vinicius Rocha', '239341375', '13502048622', 'Servidão Palmito', '466', 'Campeche', '88065095', 'Florianópolis', 'SC', 'renantheomarcosviniciusrocha-87@cruiser.com.br');
INSERT INTO `icar`.`Cliente`(`nome`,`rg`,`cpf`,`logradouro`,`numero`,`bairro`,`cep`,`cidade`,`uf`,`email`) VALUES('Danilo Ian Campos', '110763592', '48569515308', 'Rua Paulina', '978', 'Senador Camará', '21843655', 'Rio de Janeiro', 'RJ', 'daniloiancampos__daniloiancampos@renatoseguros.com');


-- -----------------------------------------------------
-- Table `icar`.`Carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `icar`.`Carro` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `modelo` VARCHAR(150) NOT NULL,
  `marca` VARCHAR(105) NOT NULL,
  `ano` INT NOT NULL,
  `renavan` VARCHAR(15) NOT NULL UNIQUE,
  `placa` VARCHAR(45) NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `preco_aluguel` DECIMAL(10,3) NOT NULL,
  `preco_compra` DECIMAL(10,3) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- INSERT MODELOS DE CARROS
-- -----------------------------------------------------
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('Tico', 'Daewoo', 1994, '70125016574', 'NEX-0281', 'Cinza', 197.56, 22130.80);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('J2 1.4 16V 5p Mec.', 'JAC', 2012, '03025273722', 'HWW-9773', 'Vermelho', 189.70, 32130.30);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('Engesa 4x4 2.5/4.1', 'Engesa', 1985, '13434833683', 'JHS-4984', 'Preto', 176.40, 23450.50);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('Gran Voyager LE 2.5', 'Plymouth', 1992, '00147059739', 'BLY-0582', 'Amarelo', 188.90, 15679.10);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('Courier CLX 1.4i 16V', 'Ford', 1998, '31150027389', 'MXF-5310', 'Branco', 196.90, 45123.80);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('Punto EL/ELX', 'Fiat', 1995, '37380046589', 'NFA-5477', 'Verde', 114.43, 33412.70);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('550 1.8 16V Turbo 170cv Aut.', 'MG', 2010, '72307473713', 'KAJ-4052', 'Amarelo', 154.20, 22130.80);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('AUMARK 3.5 - 11ST 2.8 4x2 TB Diesel', 'Foton', 2014, '54536850533', 'MVU-3482', 'Branco', 140.56, 36130.80);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('Discovery ES 3.9 V8', 'Land Rover', 1996, '92421302196', 'IKE-8364', 'Marrom', 167.99, 33541.10);
INSERT INTO `icar`.`carro`(`modelo`,`marca`,`ano`,`renavan`,`placa`,`cor`,`preco_aluguel`,`preco_compra`) VALUES('535iA 3.0 24V 306cv Bi-Turbo', 'BMW', 2010, '24641643478', 'KDE-3992', 'Branco', 133.91, 18765.00);


-- -----------------------------------------------------
-- Table `icar`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `icar`.`pedido` (
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
