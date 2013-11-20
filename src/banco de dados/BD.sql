SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `heroku_05556a141e9fdf2` DEFAULT CHARACTER SET utf8 ;
USE `heroku_05556a141e9fdf2` ;

-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`afiliacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`afiliacao` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`afiliacao` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`regiaoadministrativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`regiaoadministrativa` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`regiaoadministrativa` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(60) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`usuario` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`usuario` (
  `id_usuario` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `email_unb` VARCHAR(45) NOT NULL ,
  `nome` VARCHAR(60) NOT NULL ,
  `cpf` VARCHAR(11) NOT NULL ,
  PRIMARY KEY (`id_usuario`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`perfil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`perfil` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`perfil` (
  `perfil_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `usuario_id_usuario` INT(10) UNSIGNED NOT NULL ,
  `regiaoAdministrativa_id` INT(10) UNSIGNED NOT NULL ,
  `afiliacao_id` INT(10) UNSIGNED NOT NULL ,
  `senha` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL ,
  `emailAlternativo` VARCHAR(45) NOT NULL ,
  `foto` VARCHAR(64) NOT NULL ,
  `dataNascimento` DATE NULL DEFAULT NULL ,
  `descricao` VARCHAR(255) NULL DEFAULT NULL ,
  `cep` VARCHAR(8) NOT NULL ,
  `fumante` TINYINT(1) NOT NULL ,
  `dividirGasolina` TINYINT(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`perfil_id`) ,
  INDEX `afiliacao_id` (`afiliacao_id` ASC) ,
  INDEX `regiaoAdministrativa_id` (`regiaoAdministrativa_id` ASC) ,
  INDEX `usuario_id_usuario` (`usuario_id_usuario` ASC) ,
  CONSTRAINT `perfil_ibfk_1`
    FOREIGN KEY (`afiliacao_id` )
    REFERENCES `heroku_05556a141e9fdf2`.`afiliacao` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `perfil_ibfk_2`
    FOREIGN KEY (`regiaoAdministrativa_id` )
    REFERENCES `heroku_05556a141e9fdf2`.`regiaoadministrativa` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `perfil_ibfk_3`
    FOREIGN KEY (`usuario_id_usuario` )
    REFERENCES `heroku_05556a141e9fdf2`.`usuario` (`id_usuario` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`carro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`carro` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`carro` (
  `placaVeiculo` VARCHAR(7) NOT NULL ,
  `perfil_id` INT(10) UNSIGNED NOT NULL ,
  `modelo` VARCHAR(30) NOT NULL ,
  `num_vagas` INT(10) UNSIGNED NULL DEFAULT NULL ,
  PRIMARY KEY (`placaVeiculo`) ,
  INDEX `perfil_id` (`perfil_id` ASC) ,
  CONSTRAINT `carro_ibfk_1`
    FOREIGN KEY (`perfil_id` )
    REFERENCES `heroku_05556a141e9fdf2`.`perfil` (`perfil_id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`estilosmusicais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`estilosmusicais` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`estilosmusicais` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `nome` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`estilosmusicais_has_usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`estilosmusicais_has_usuario` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`estilosmusicais_has_usuario` (
  `estilosMusicais_id` INT(10) UNSIGNED NOT NULL ,
  `perfil_id` INT(10) UNSIGNED NOT NULL ,
  PRIMARY KEY (`estilosMusicais_id`, `perfil_id`) ,
  INDEX `perfil_id` (`perfil_id` ASC) ,
  CONSTRAINT `estilosmusicais_has_usuario_ibfk_1`
    FOREIGN KEY (`estilosMusicais_id` )
    REFERENCES `heroku_05556a141e9fdf2`.`estilosmusicais` (`id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `estilosmusicais_has_usuario_ibfk_2`
    FOREIGN KEY (`perfil_id` )
    REFERENCES `heroku_05556a141e9fdf2`.`perfil` (`perfil_id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `heroku_05556a141e9fdf2`.`rede_social`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `heroku_05556a141e9fdf2`.`rede_social` ;

CREATE  TABLE IF NOT EXISTS `heroku_05556a141e9fdf2`.`rede_social` (
  `perfil_id` INT(10) UNSIGNED NOT NULL ,
  `link` VARCHAR(45) NULL DEFAULT NULL ,
  INDEX `perfil_id` (`perfil_id` ASC) ,
  CONSTRAINT `rede_social_ibfk_1`
    FOREIGN KEY (`perfil_id` )
    REFERENCES `heroku_05556a141e9fdf2`.`perfil` (`perfil_id` )
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `heroku_05556a141e9fdf2` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
