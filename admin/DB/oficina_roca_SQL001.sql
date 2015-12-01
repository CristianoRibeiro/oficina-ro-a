-- MySQL Workbench Synchronization
-- Generated: 2015-12-01 01:10
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Cristiano

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `chris872_oficina`.`tbCliente` 
DROP FOREIGN KEY `fk_tbCliente_tbPedidos1`,
DROP FOREIGN KEY `fk_tbCliente_tbLogin1`,
DROP FOREIGN KEY `fk_tbCliente_tbCartao1`;

ALTER TABLE `chris872_oficina`.`tbAdministrador` 
DROP FOREIGN KEY `fk_tbAdministrador_tbLogin1`;

ALTER TABLE `chris872_oficina`.`tbPedidos` 
DROP FOREIGN KEY `fk_tbPedidos_tbStatus1`;

ALTER TABLE `chris872_oficina`.`tbProdutos` 
DROP FOREIGN KEY `fk_tbProdutos_tbCategoria1`;

ALTER TABLE `chris872_oficina`.`tbTelefone` 
DROP FOREIGN KEY `fk_tbTelefone_tbTipoTelefone1`,
DROP FOREIGN KEY `fk_tbTelefone_tbDdd1`;

ALTER TABLE `chris872_oficina`.`tbEndereco` 
DROP FOREIGN KEY `fk_tbEndereco_tbMunicipio1`;

ALTER TABLE `chris872_oficina`.`tbTelefoneCliente` 
DROP FOREIGN KEY `fk_tbTelefoneCliente_tbCliente`,
DROP FOREIGN KEY `fk_tbTelefoneCliente_tbTelefone1`;

ALTER TABLE `chris872_oficina`.`tbTelefoneAdministrador` 
DROP FOREIGN KEY `fk_tbTelefoneAdministrador_tbTelefone1`,
DROP FOREIGN KEY `fk_tbTelefoneAdministrador_tbAdministrador1`;

ALTER TABLE `chris872_oficina`.`tbMunicipio` 
DROP FOREIGN KEY `fk_tbMunicipio_tbUf1`;

ALTER TABLE `chris872_oficina`.`tbEnderecoCliente` 
DROP FOREIGN KEY `fk_tbEnderecoCliente_tbEndereco1`,
DROP FOREIGN KEY `fk_tbEnderecoCliente_tbCliente1`;

ALTER TABLE `chris872_oficina`.`tbEnderecoAdministrador` 
DROP FOREIGN KEY `fk_tbEnderecoAdministrador_tbEndereco1`,
DROP FOREIGN KEY `fk_tbEnderecoAdministrador_tbAdministrador1`;

ALTER TABLE `chris872_oficina`.`tbPedidoProdutos` 
DROP FOREIGN KEY `fk_tbPedidoProdutos_tbProdutos1`,
DROP FOREIGN KEY `fk_tbPedidoProdutos_tbPedidos1`;

ALTER TABLE `chris872_oficina`.`tbCliente` 
DROP COLUMN `idLogin`,
DROP COLUMN `idCartao`,
DROP COLUMN `idPedido`,
ADD COLUMN `idPedido` INT(11) NOT NULL AFTER `dataCadastro`,
ADD COLUMN `idCartao` INT(11) NOT NULL AFTER `idPedido`,
ADD COLUMN `idLogin` INT(11) NOT NULL AFTER `idCartao`,
ADD INDEX `fk_tbCliente_tbPedidos1_idx` (`idPedido` ASC),
ADD INDEX `fk_tbCliente_tbLogin1_idx` (`idLogin` ASC),
ADD INDEX `fk_tbCliente_tbCartao1_idx` (`idCartao` ASC),
DROP INDEX `fk_tbCliente_tbCartao1_idx` ,
DROP INDEX `fk_tbCliente_tbLogin1_idx` ,
DROP INDEX `fk_tbCliente_tbPedidos1_idx` ;

ALTER TABLE `chris872_oficina`.`tbAdministrador` 
DROP COLUMN `idLogin`,
ADD COLUMN `idLogin` INT(11) NOT NULL AFTER `dataCadastro`,
ADD INDEX `fk_tbAdministrador_tbLogin1_idx` (`idLogin` ASC),
DROP INDEX `fk_tbAdministrador_tbLogin1_idx` ;

ALTER TABLE `chris872_oficina`.`tbPedidos` 
DROP COLUMN `idStatus`,
ADD COLUMN `idStatus` INT(11) NOT NULL AFTER `dataCadastro`,
ADD INDEX `fk_tbPedidos_tbStatus1_idx` (`idStatus` ASC),
DROP INDEX `fk_tbPedidos_tbStatus1_idx` ;

ALTER TABLE `chris872_oficina`.`tbProdutos` 
DROP COLUMN `idCategoria`,
CHANGE COLUMN `dataCadastro` `dataCadastro` DATETIME NOT NULL AFTER `idade_Recomendada`,
ADD COLUMN `idCategoria` INT(11) NOT NULL AFTER `dataCadastro`,
ADD INDEX `fk_tbProdutos_tbCategoria1_idx` (`idCategoria` ASC),
DROP INDEX `fk_tbProdutos_tbCategoria1_idx` ;

ALTER TABLE `chris872_oficina`.`tbTelefone` 
DROP COLUMN `idDdd`,
DROP COLUMN `idTipoTelefone`,
ADD COLUMN `idTipoTelefone` INT(11) NOT NULL AFTER `telefone`,
ADD COLUMN `idDdd` INT(11) NOT NULL AFTER `idTipoTelefone`,
ADD INDEX `fk_tbTelefone_tbTipoTelefone1_idx` (`idTipoTelefone` ASC),
ADD INDEX `fk_tbTelefone_tbDdd1_idx` (`idDdd` ASC),
DROP INDEX `fk_tbTelefone_tbDdd1_idx` ,
DROP INDEX `fk_tbTelefone_tbTipoTelefone1_idx` ;

ALTER TABLE `chris872_oficina`.`tbEndereco` 
DROP COLUMN `idMunicipio`,
ADD COLUMN `idMunicipio` INT(11) NOT NULL AFTER `complemento`,
ADD INDEX `fk_tbEndereco_tbMunicipio1_idx` (`idMunicipio` ASC),
DROP INDEX `fk_tbEndereco_tbMunicipio1_idx` ;

ALTER TABLE `chris872_oficina`.`tbTelefoneCliente` 
DROP COLUMN `idTelefone`,
DROP COLUMN `idCliente`,
ADD COLUMN `idCliente` INT(11) NOT NULL AFTER `idTelefoneCliente`,
ADD COLUMN `idTelefone` INT(11) NOT NULL AFTER `idCliente`,
ADD INDEX `fk_tbTelefoneCliente_tbCliente_idx` (`idCliente` ASC),
ADD INDEX `fk_tbTelefoneCliente_tbTelefone1_idx` (`idTelefone` ASC),
DROP INDEX `fk_tbTelefoneCliente_tbTelefone1_idx` ,
DROP INDEX `fk_tbTelefoneCliente_tbCliente_idx` ;

ALTER TABLE `chris872_oficina`.`tbTelefoneAdministrador` 
DROP COLUMN `idAdministrador`,
DROP COLUMN `idTelefone`,
ADD COLUMN `idTelefone` INT(11) NOT NULL AFTER `idTelefoneAdministrador`,
ADD COLUMN `idAdministrador` INT(11) NOT NULL AFTER `idTelefone`,
ADD INDEX `fk_tbTelefoneAdministrador_tbTelefone1_idx` (`idTelefone` ASC),
ADD INDEX `fk_tbTelefoneAdministrador_tbAdministrador1_idx` (`idAdministrador` ASC),
DROP INDEX `fk_tbTelefoneAdministrador_tbAdministrador1_idx` ,
DROP INDEX `fk_tbTelefoneAdministrador_tbTelefone1_idx` ;

ALTER TABLE `chris872_oficina`.`tbMunicipio` 
DROP COLUMN `idUf`,
ADD COLUMN `idUf` INT(11) NOT NULL AFTER `municipio`,
ADD INDEX `fk_tbMunicipio_tbUf1_idx` (`idUf` ASC),
DROP INDEX `fk_tbMunicipio_tbUf1_idx` ;

ALTER TABLE `chris872_oficina`.`tbCategoria` 
ADD COLUMN `referencia` VARCHAR(45) NOT NULL AFTER `idCategoria`;

ALTER TABLE `chris872_oficina`.`tbEnderecoCliente` 
DROP COLUMN `idCliente`,
DROP COLUMN `idEndereco`,
ADD COLUMN `idEndereco` INT(11) NOT NULL AFTER `idEnderecoCliente`,
ADD COLUMN `idCliente` INT(11) NOT NULL AFTER `idEndereco`,
ADD INDEX `fk_tbEnderecoCliente_tbEndereco1_idx` (`idEndereco` ASC),
ADD INDEX `fk_tbEnderecoCliente_tbCliente1_idx` (`idCliente` ASC),
DROP INDEX `fk_tbEnderecoCliente_tbCliente1_idx` ,
DROP INDEX `fk_tbEnderecoCliente_tbEndereco1_idx` ;

ALTER TABLE `chris872_oficina`.`tbEnderecoAdministrador` 
DROP COLUMN `idAdministrador`,
DROP COLUMN `idEndereco`,
ADD COLUMN `idEndereco` INT(11) NOT NULL AFTER `idEnderecoAdministrador`,
ADD COLUMN `idAdministrador` INT(11) NOT NULL AFTER `idEndereco`,
ADD INDEX `fk_tbEnderecoAdministrador_tbEndereco1_idx` (`idEndereco` ASC),
ADD INDEX `fk_tbEnderecoAdministrador_tbAdministrador1_idx` (`idAdministrador` ASC),
DROP INDEX `fk_tbEnderecoAdministrador_tbAdministrador1_idx` ,
DROP INDEX `fk_tbEnderecoAdministrador_tbEndereco1_idx` ;

ALTER TABLE `chris872_oficina`.`tbPedidoProdutos` 
DROP COLUMN `idPedido`,
DROP COLUMN `idProdutos`,
ADD COLUMN `idProdutos` INT(11) NOT NULL AFTER `idPedidoProdutos`,
ADD COLUMN `idPedido` INT(11) NOT NULL AFTER `idProdutos`,
ADD INDEX `fk_tbPedidoProdutos_tbProdutos1_idx` (`idProdutos` ASC),
ADD INDEX `fk_tbPedidoProdutos_tbPedidos1_idx` (`idPedido` ASC),
DROP INDEX `fk_tbPedidoProdutos_tbPedidos1_idx` ,
DROP INDEX `fk_tbPedidoProdutos_tbProdutos1_idx` ;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbImages` (
  `idtbImagesProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeImagem` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`idtbImagesProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbImagemProduto` (
  `idtbImagemProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `idtbImagesProduto` INT(11) NOT NULL,
  `idProdutos` INT(11) NOT NULL,
  PRIMARY KEY (`idtbImagemProduto`),
  INDEX `fk_tbImagemProduto_tbImages1_idx` (`idtbImagesProduto` ASC),
  INDEX `fk_tbImagemProduto_tbProdutos1_idx` (`idProdutos` ASC),
  CONSTRAINT `fk_tbImagemProduto_tbImages1`
    FOREIGN KEY (`idtbImagesProduto`)
    REFERENCES `chris872_oficina`.`tbImages` (`idtbImagesProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbImagemProduto_tbProdutos1`
    FOREIGN KEY (`idProdutos`)
    REFERENCES `chris872_oficina`.`tbProdutos` (`idProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

ALTER TABLE `chris872_oficina`.`tbCliente` 
ADD CONSTRAINT `fk_tbCliente_tbPedidos1`
  FOREIGN KEY (`idPedido`)
  REFERENCES `chris872_oficina`.`tbPedidos` (`idPedido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbCliente_tbLogin1`
  FOREIGN KEY (`idLogin`)
  REFERENCES `chris872_oficina`.`tbLogin` (`idLogin`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbCliente_tbCartao1`
  FOREIGN KEY (`idCartao`)
  REFERENCES `chris872_oficina`.`tbCartao` (`idCartao`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbAdministrador` 
ADD CONSTRAINT `fk_tbAdministrador_tbLogin1`
  FOREIGN KEY (`idLogin`)
  REFERENCES `chris872_oficina`.`tbLogin` (`idLogin`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbPedidos` 
ADD CONSTRAINT `fk_tbPedidos_tbStatus1`
  FOREIGN KEY (`idStatus`)
  REFERENCES `chris872_oficina`.`tbStatus` (`idStatus`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbProdutos` 
ADD CONSTRAINT `fk_tbProdutos_tbCategoria1`
  FOREIGN KEY (`idCategoria`)
  REFERENCES `chris872_oficina`.`tbCategoria` (`idCategoria`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbTelefone` 
ADD CONSTRAINT `fk_tbTelefone_tbTipoTelefone1`
  FOREIGN KEY (`idTipoTelefone`)
  REFERENCES `chris872_oficina`.`tbTipoTelefone` (`idTipoTelefone`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbTelefone_tbDdd1`
  FOREIGN KEY (`idDdd`)
  REFERENCES `chris872_oficina`.`tbDdd` (`idDdd`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbEndereco` 
ADD CONSTRAINT `fk_tbEndereco_tbMunicipio1`
  FOREIGN KEY (`idMunicipio`)
  REFERENCES `chris872_oficina`.`tbMunicipio` (`idMunicipio`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbTelefoneCliente` 
ADD CONSTRAINT `fk_tbTelefoneCliente_tbCliente`
  FOREIGN KEY (`idCliente`)
  REFERENCES `chris872_oficina`.`tbCliente` (`idCliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbTelefoneCliente_tbTelefone1`
  FOREIGN KEY (`idTelefone`)
  REFERENCES `chris872_oficina`.`tbTelefone` (`idTelefone`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbTelefoneAdministrador` 
ADD CONSTRAINT `fk_tbTelefoneAdministrador_tbTelefone1`
  FOREIGN KEY (`idTelefone`)
  REFERENCES `chris872_oficina`.`tbTelefone` (`idTelefone`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbTelefoneAdministrador_tbAdministrador1`
  FOREIGN KEY (`idAdministrador`)
  REFERENCES `chris872_oficina`.`tbAdministrador` (`idAdministrador`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbMunicipio` 
ADD CONSTRAINT `fk_tbMunicipio_tbUf1`
  FOREIGN KEY (`idUf`)
  REFERENCES `chris872_oficina`.`tbUf` (`idUf`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbEnderecoCliente` 
ADD CONSTRAINT `fk_tbEnderecoCliente_tbEndereco1`
  FOREIGN KEY (`idEndereco`)
  REFERENCES `chris872_oficina`.`tbEndereco` (`idEndereco`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbEnderecoCliente_tbCliente1`
  FOREIGN KEY (`idCliente`)
  REFERENCES `chris872_oficina`.`tbCliente` (`idCliente`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbEnderecoAdministrador` 
ADD CONSTRAINT `fk_tbEnderecoAdministrador_tbEndereco1`
  FOREIGN KEY (`idEndereco`)
  REFERENCES `chris872_oficina`.`tbEndereco` (`idEndereco`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbEnderecoAdministrador_tbAdministrador1`
  FOREIGN KEY (`idAdministrador`)
  REFERENCES `chris872_oficina`.`tbAdministrador` (`idAdministrador`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `chris872_oficina`.`tbPedidoProdutos` 
ADD CONSTRAINT `fk_tbPedidoProdutos_tbProdutos1`
  FOREIGN KEY (`idProdutos`)
  REFERENCES `chris872_oficina`.`tbProdutos` (`idProdutos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbPedidoProdutos_tbPedidos1`
  FOREIGN KEY (`idPedido`)
  REFERENCES `chris872_oficina`.`tbPedidos` (`idPedido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
