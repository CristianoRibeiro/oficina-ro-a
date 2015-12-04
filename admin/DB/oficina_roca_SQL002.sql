-- MySQL Workbench Synchronization
-- Generated: 2015-12-04 02:44
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Cristiano Ribeiro

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `chris872_oficina`.`tbCategoria` 
ADD COLUMN `title` VARCHAR(500) NULL DEFAULT NULL AFTER `categoria`,
ADD COLUMN `descricao` VARCHAR(200) NULL DEFAULT NULL AFTER `title`,
ADD COLUMN `texto` TEXT NOT NULL AFTER `descricao`,
ADD COLUMN `imagem` VARCHAR(45) NULL DEFAULT NULL AFTER `texto`,
ADD COLUMN `time` VARCHAR(45) NULL DEFAULT NULL AFTER `imagem`,
ADD COLUMN `dataCadastro` DATETIME NOT NULL AFTER `time`;

ALTER TABLE `chris872_oficina`.`tbProdutos` 
DROP COLUMN `idade_Recomendada`,
DROP COLUMN `immetro`,
DROP COLUMN `materia_Produto`,
DROP COLUMN `infor_Assistencia_Tec_Garantia`,
DROP COLUMN `infor_Limpeza_Produto`,
DROP COLUMN `peso_Embalagem`,
DROP COLUMN `profundidade_Embalagem`,
DROP COLUMN `comprimento_Embalagem`,
DROP COLUMN `largura_Embalagem`,
DROP COLUMN `altura_Embalagem`,
DROP COLUMN `peso_Produto`,
DROP COLUMN `profundidade_Produto`,
DROP COLUMN `comprimento`,
DROP COLUMN `largura_Produto`,
DROP COLUMN `altura_Produto`,
DROP COLUMN `EAN_cod_Barras`,
DROP COLUMN `cod_NCM`,
DROP COLUMN `precoDindaSemImposto`;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbDetalheProduto` (
  `idDetalheProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `cod_NCM` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `EAN_cod_Barras` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `altura_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `largura_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `comprimento` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `profundidade_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `peso_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `altura_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `largura_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `comprimento_Embalagem` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `profundidade_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `peso_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `infor_Limpeza_Produto` TEXT CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `infor_Assistencia_Tec_Garantia` TEXT CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `materia_Produto` VARCHAR(200) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `immetro` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `idade_Recomendada` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `dataCadastro` DATETIME NOT NULL,
  PRIMARY KEY (`idDetalheProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbProdutosDetalheProduto` (
  `idProdutosDetalheProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `idProdutos` INT(11) NOT NULL,
  `tbDidDetalheProduto` INT(11) NOT NULL,
  PRIMARY KEY (`idProdutosDetalheProduto`),
  INDEX `fk_tbProdutosDetalheProduto_tbProdutos1_idx` (`idProdutos` ASC),
  INDEX `fk_tbProdutosDetalheProduto_tbDetalheProduto1_idx` (`tbDidDetalheProduto` ASC),
  CONSTRAINT `fk_tbProdutosDetalheProduto_tbProdutos1`
    FOREIGN KEY (`idProdutos`)
    REFERENCES `chris872_oficina`.`tbProdutos` (`idProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbProdutosDetalheProduto_tbDetalheProduto1`
    FOREIGN KEY (`tbDidDetalheProduto`)
    REFERENCES `chris872_oficina`.`tbDetalheProduto` (`idDetalheProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
