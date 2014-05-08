SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `ProyectoTIN` ;
CREATE SCHEMA IF NOT EXISTS `ProyectoTIN` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ProyectoTIN` ;

-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_sources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_sources` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_sources` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `project_source_name` VARCHAR(45) NULL,
  `project_source_url` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_intended_audiences`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_intended_audiences` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_intended_audiences` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_programming_languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_programming_languages` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_programming_languages` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_date`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_date` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_date` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_registered` TIMESTAMP NULL,
  `day` INT NULL,
  `month` INT NULL,
  `year` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_licenses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_licenses` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_licenses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_operating_systems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_operating_systems` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_operating_systems` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`projects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`projects` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`projects` (
  `project_id` INT NOT NULL AUTO_INCREMENT,
  `project_long_name` VARCHAR(45) NULL,
  `developers_count` INT NULL,
  `description` VARCHAR(300) NULL,
  `project_date_id` INT NOT NULL,
  `project_sources_id` INT NOT NULL,
  `project_licenses_id` INT NOT NULL,
  `project_intended_audiences_id` INT NOT NULL,
  `project_programming_languages_id` INT NOT NULL,
  `project_operating_systems_id` INT NOT NULL,
  PRIMARY KEY (`project_id`),
  INDEX `fk_projects_project_date_idx` (`project_date_id` ASC),
  INDEX `fk_projects_project_sources1_idx` (`project_sources_id` ASC),
  INDEX `fk_projects_project_licenses1_idx` (`project_licenses_id` ASC),
  INDEX `fk_projects_project_intended_audiences1_idx` (`project_intended_audiences_id` ASC),
  INDEX `fk_projects_project_programming_languages1_idx` (`project_programming_languages_id` ASC),
  INDEX `fk_projects_project_operating_systems1_idx` (`project_operating_systems_id` ASC),
  CONSTRAINT `fk_projects_project_date`
    FOREIGN KEY (`project_date_id`)
    REFERENCES `ProyectoTIN`.`project_date` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_project_sources1`
    FOREIGN KEY (`project_sources_id`)
    REFERENCES `ProyectoTIN`.`project_sources` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_project_licenses1`
    FOREIGN KEY (`project_licenses_id`)
    REFERENCES `ProyectoTIN`.`project_licenses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_project_intended_audiences1`
    FOREIGN KEY (`project_intended_audiences_id`)
    REFERENCES `ProyectoTIN`.`project_intended_audiences` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_project_programming_languages1`
    FOREIGN KEY (`project_programming_languages_id`)
    REFERENCES `ProyectoTIN`.`project_programming_languages` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_project_operating_systems1`
    FOREIGN KEY (`project_operating_systems_id`)
    REFERENCES `ProyectoTIN`.`project_operating_systems` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
