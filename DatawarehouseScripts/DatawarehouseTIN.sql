SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `ProyectoTIN` ;
CREATE SCHEMA IF NOT EXISTS `ProyectoTIN` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ProyectoTIN` ;

-- -----------------------------------------------------
-- Table `ProyectoTIN`.`projects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`projects` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`projects` (
  `project_id` INT NOT NULL,
  `date_registered` DATE NULL,
  `project_long_name` VARCHAR(45) NULL,
  `developers_count` INT NULL,
  `description` VARCHAR(300) NULL,
  PRIMARY KEY (`project_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_sources`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_sources` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_sources` (
  `projects_project_id` INT NOT NULL,
  `project_source_id` INT NOT NULL,
  `project_source_name` VARCHAR(45) NULL,
  `project_source_url` VARCHAR(45) NULL,
  PRIMARY KEY (`projects_project_id`, `project_source_id`),
  INDEX `fk_project_sources_projects1_idx` (`projects_project_id` ASC),
  CONSTRAINT `fk_project_sources_projects1`
    FOREIGN KEY (`projects_project_id`)
    REFERENCES `ProyectoTIN`.`projects` (`project_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_intended_audiences`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_intended_audiences` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_intended_audiences` (
  `projects_project_id` INT NOT NULL,
  `project_intended_audience_id` INT NOT NULL,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `date_collected` DATE NULL,
  PRIMARY KEY (`projects_project_id`, `project_intended_audience_id`),
  INDEX `fk_project_intended_audiences_projects1_idx` (`projects_project_id` ASC),
  CONSTRAINT `fk_project_intended_audiences_projects1`
    FOREIGN KEY (`projects_project_id`)
    REFERENCES `ProyectoTIN`.`projects` (`project_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_programming_languages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_programming_languages` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_programming_languages` (
  `projects_project_id` INT NOT NULL,
  `project_programming_language_id` INT NOT NULL,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `date_collected` DATE NULL,
  PRIMARY KEY (`projects_project_id`, `project_programming_language_id`),
  INDEX `fk_project_programming_languages_projects1_idx` (`projects_project_id` ASC),
  CONSTRAINT `fk_project_programming_languages_projects1`
    FOREIGN KEY (`projects_project_id`)
    REFERENCES `ProyectoTIN`.`projects` (`project_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_date`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_date` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_date` (
  `projects_project_id` INT NOT NULL,
  `project_date_id` INT NOT NULL,
  `date_registered` VARCHAR(45) NULL,
  `date_collected` DATE NULL,
  PRIMARY KEY (`projects_project_id`, `project_date_id`),
  INDEX `fk_project_date_projects_idx` (`projects_project_id` ASC),
  CONSTRAINT `fk_project_date_projects`
    FOREIGN KEY (`projects_project_id`)
    REFERENCES `ProyectoTIN`.`projects` (`project_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_licenses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_licenses` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_licenses` (
  `projects_project_id` INT NOT NULL,
  `project_license_id` INT NOT NULL,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `date_collected` VARCHAR(45) NULL,
  PRIMARY KEY (`projects_project_id`, `project_license_id`),
  INDEX `fk_project_licenses_projects1_idx` (`projects_project_id` ASC),
  CONSTRAINT `fk_project_licenses_projects1`
    FOREIGN KEY (`projects_project_id`)
    REFERENCES `ProyectoTIN`.`projects` (`project_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProyectoTIN`.`project_operating_systems`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ProyectoTIN`.`project_operating_systems` ;

CREATE TABLE IF NOT EXISTS `ProyectoTIN`.`project_operating_systems` (
  `projects_project_id` INT NOT NULL,
  `project_operating_system_id` INT NOT NULL,
  `code` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `date_collected` DATE NULL,
  PRIMARY KEY (`projects_project_id`, `project_operating_system_id`),
  INDEX `fk_project_operating_systems_projects1_idx` (`projects_project_id` ASC),
  CONSTRAINT `fk_project_operating_systems_projects1`
    FOREIGN KEY (`projects_project_id`)
    REFERENCES `ProyectoTIN`.`projects` (`project_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
