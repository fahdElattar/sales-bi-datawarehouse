-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ComptoirED
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ComptoirED
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ComptoirED` DEFAULT CHARACTER SET utf8 ;
USE `ComptoirED` ;

-- -----------------------------------------------------
-- Table `ComptoirED`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComptoirED`.`Client` (
  `code_client` VARCHAR(5) NOT NULL,
  `societe` VARCHAR(40) NULL,
  `contact` VARCHAR(30) NULL,
  `fonction` VARCHAR(30) NULL,
  `adresse` VARCHAR(60) NULL,
  `ville` VARCHAR(15) NULL,
  `region` VARCHAR(15) NULL,
  `code_postal` VARCHAR(10) NULL,
  `pays` VARCHAR(15) NULL,
  `telephone` VARCHAR(24) NULL,
  `fax` VARCHAR(24) NULL,
  PRIMARY KEY (`code_client`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComptoirED`.`Produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComptoirED`.`Produit` (
  `ref_produit` INT NOT NULL,
  `nom_produit` VARCHAR(40) NULL,
  `quantite_par_unite` VARCHAR(30) NULL,
  `prix_unitaire` DECIMAL NULL,
  `unites_en_stock` INT NULL,
  `unites_commandees` INT NULL,
  `indisponible` TINYINT NULL,
  `nom_categorie` VARCHAR(25) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`ref_produit`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComptoirED`.`Temps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComptoirED`.`Temps` (
  `date` DATETIME NOT NULL,
  `mois` INT NULL,
  `annee` INT NULL,
  PRIMARY KEY (`date`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComptoirED`.`Ventes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComptoirED`.`Ventes` (
  `id_ventes` INT NOT NULL,
  `Client_code_client` VARCHAR(5) NOT NULL,
  `Temps_date` DATETIME NOT NULL,
  `Produit_ref_produit` INT NOT NULL,
  `quantite` INT(11) NULL,
  `remise` FLOAT NULL,
  PRIMARY KEY (`id_ventes`),
  INDEX `fk_Ventes_Client_idx` (`Client_code_client` ASC) VISIBLE,
  INDEX `fk_Ventes_Temps1_idx` (`Temps_date` ASC) VISIBLE,
  INDEX `fk_Ventes_Produit1_idx` (`Produit_ref_produit` ASC) VISIBLE,
  CONSTRAINT `fk_Ventes_Client`
    FOREIGN KEY (`Client_code_client`)
    REFERENCES `ComptoirED`.`Client` (`code_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventes_Temps1`
    FOREIGN KEY (`Temps_date`)
    REFERENCES `ComptoirED`.`Temps` (`date`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventes_Produit1`
    FOREIGN KEY (`Produit_ref_produit`)
    REFERENCES `ComptoirED`.`Produit` (`ref_produit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
