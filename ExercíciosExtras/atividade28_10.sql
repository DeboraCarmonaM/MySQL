-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_cidade_das__carnes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cidade_das__carnes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cidade_das__carnes` DEFAULT CHARACTER SET utf8 ;
USE `db_cidade_das__carnes` ;

-- -----------------------------------------------------
-- Table `db_cidade_das__carnes`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das__carnes`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `tipo_carne` VARCHAR(45) NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_cidade_das__carnes`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das__carnes`.`tb_produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `preco` INT NULL,
  `qtd_estoque` INT NULL,
  `disponibilidade` ENUM("sim", "não") NULL,
  `qtd_max_compra` INT NULL,
  `tb_categoria_id_categoria` INT NOT NULL,
  PRIMARY KEY (`id_produto`, `tb_categoria_id_categoria`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
