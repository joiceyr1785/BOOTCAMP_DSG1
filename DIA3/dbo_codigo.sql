-- MySQL Script generated by MySQL Workbench
-- Fri Jul 26 22:10:31 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbo_codigo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbo_codigo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbo_codigo` DEFAULT CHARACTER SET utf8 ;
USE `dbo_codigo` ;

-- -----------------------------------------------------
-- Table `dbo_codigo`.`tbl_alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbo_codigo`.`tbl_alumno` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `celular` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbo_codigo`.`tbl_modulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbo_codigo`.`tbl_modulo` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbo_codigo`.`tbl_grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbo_codigo`.`tbl_grupo` (
  `id` INT NOT NULL,
  `codigo` VARCHAR(45) NULL,
  `bootcamp` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbo_codigo`.`tbl_matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbo_codigo`.`tbl_matricula` (
  `id` INT NOT NULL,
  `alumnos_id` INT NULL,
  `grupo_id` INT NULL,
  `modulo_id` VARCHAR(45) NULL,
  `tbl_alumno_id` INT NOT NULL,
  `tbl_modulo_id` INT NOT NULL,
  `tbl_grupo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tbl_matricula_tbl_alumno_idx` (`tbl_alumno_id` ASC) VISIBLE,
  INDEX `fk_tbl_matricula_tbl_modulo1_idx` (`tbl_modulo_id` ASC) VISIBLE,
  INDEX `fk_tbl_matricula_tbl_grupo1_idx` (`tbl_grupo_id` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_matricula_tbl_alumno`
    FOREIGN KEY (`tbl_alumno_id`)
    REFERENCES `dbo_codigo`.`tbl_alumno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_matricula_tbl_modulo1`
    FOREIGN KEY (`tbl_modulo_id`)
    REFERENCES `dbo_codigo`.`tbl_modulo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_matricula_tbl_grupo1`
    FOREIGN KEY (`tbl_grupo_id`)
    REFERENCES `dbo_codigo`.`tbl_grupo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
