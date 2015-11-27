-- MySQL Workbench Synchronization
-- Generated: 2015-11-07 02:45
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Cristiano

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER SCHEMA `chris872_oficina`  DEFAULT CHARACTER SET latin1  DEFAULT COLLATE latin1_general_ci ;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbCliente` (
  `idCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `dataNascimento` VARCHAR(45) NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idPedido` INT(11) NOT NULL,
  `idCartao` INT(11) NOT NULL,
  `idLogin` INT(11) NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `fk_tbCliente_tbPedidos1_idx` (`idPedido` ASC),
  INDEX `fk_tbCliente_tbLogin1_idx` (`idLogin` ASC),
  INDEX `fk_tbCliente_tbCartao1_idx` (`idCartao` ASC),
  CONSTRAINT `fk_tbCliente_tbPedidos1`
    FOREIGN KEY (`idPedido`)
    REFERENCES `chris872_oficina`.`tbPedidos` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbLogin1`
    FOREIGN KEY (`idLogin`)
    REFERENCES `chris872_oficina`.`tbLogin` (`idLogin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbCliente_tbCartao1`
    FOREIGN KEY (`idCartao`)
    REFERENCES `chris872_oficina`.`tbCartao` (`idCartao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbAdministrador` (
  `idAdministrador` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `rg` VARCHAR(45) NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idLogin` INT(11) NOT NULL,
  PRIMARY KEY (`idAdministrador`),
  INDEX `fk_tbAdministrador_tbLogin1_idx` (`idLogin` ASC),
  CONSTRAINT `fk_tbAdministrador_tbLogin1`
    FOREIGN KEY (`idLogin`)
    REFERENCES `chris872_oficina`.`tbLogin` (`idLogin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbLogin` (
  `idLogin` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `nivelAcesso` INT(11) NOT NULL,
  PRIMARY KEY (`idLogin`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbPedidos` (
  `idPedido` INT(11) NOT NULL AUTO_INCREMENT,
  `dataEmissao` DATE NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `valorTotal` DOUBLE NOT NULL,
  `dataEntrega` DATE NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idStatus` INT(11) NOT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `fk_tbPedidos_tbStatus1_idx` (`idStatus` ASC),
  CONSTRAINT `fk_tbPedidos_tbStatus1`
    FOREIGN KEY (`idStatus`)
    REFERENCES `chris872_oficina`.`tbStatus` (`idStatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbProdutos` (
  `idProdutos` INT(11) NOT NULL AUTO_INCREMENT,
  `referencia` VARCHAR(45) NOT NULL,
  `nomeProduto` VARCHAR(200) NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `cor` VARCHAR(100) NOT NULL,
  `precoDindaSemImposto` DOUBLE NOT NULL,
  `precoAtacado` DOUBLE NULL DEFAULT NULL,
  `precoVarejo` DOUBLE NOT NULL,
  `estoque` INT(11) NOT NULL,
  `cod_NCM` VARCHAR(100) NULL DEFAULT NULL,
  `EAN_cod_Barras` VARCHAR(100) NULL DEFAULT NULL,
  `altura_Produto` VARCHAR(50) NOT NULL,
  `largura_Produto` VARCHAR(50) NOT NULL,
  `comprimento` VARCHAR(100) NOT NULL,
  `profundidade_Produto` VARCHAR(50) NULL DEFAULT NULL,
  `peso_Produto` VARCHAR(50) NOT NULL,
  `altura_Embalagem` VARCHAR(50) NOT NULL,
  `largura_Embalagem` VARCHAR(50) NOT NULL,
  `comprimento_Embalagem` VARCHAR(100) NOT NULL,
  `profundidade_Embalagem` VARCHAR(50) NULL DEFAULT NULL,
  `peso_Embalagem` VARCHAR(50) NOT NULL,
  `descricao_Produto` TEXT NULL DEFAULT NULL,
  `infor_Limpeza_Produto` TEXT NOT NULL,
  `infor_Assistencia_Tec_Garantia` TEXT NULL DEFAULT NULL,
  `materia_Produto` VARCHAR(200) NOT NULL,
  `prazo_Entrega` VARCHAR(50) NOT NULL,
  `immetro` VARCHAR(100) NULL DEFAULT NULL,
  `idade_Recomendada` VARCHAR(100) NULL DEFAULT NULL,
  `idCategoria` INT(11) NOT NULL,
  PRIMARY KEY (`idProdutos`),
  INDEX `fk_tbProdutos_tbCategoria1_idx` (`idCategoria` ASC),
  CONSTRAINT `fk_tbProdutos_tbCategoria1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `chris872_oficina`.`tbCategoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTelefone` (
  `idTelefone` INT(11) NOT NULL AUTO_INCREMENT,
  `telefone` VARCHAR(45) NOT NULL,
  `idTipoTelefone` INT(11) NOT NULL,
  `idDdd` INT(11) NOT NULL,
  PRIMARY KEY (`idTelefone`),
  INDEX `fk_tbTelefone_tbTipoTelefone1_idx` (`idTipoTelefone` ASC),
  INDEX `fk_tbTelefone_tbDdd1_idx` (`idDdd` ASC),
  CONSTRAINT `fk_tbTelefone_tbTipoTelefone1`
    FOREIGN KEY (`idTipoTelefone`)
    REFERENCES `chris872_oficina`.`tbTipoTelefone` (`idTipoTelefone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbTelefone_tbDdd1`
    FOREIGN KEY (`idDdd`)
    REFERENCES `chris872_oficina`.`tbDdd` (`idDdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbEndereco` (
  `idEndereco` INT(11) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `logradouro` VARCHAR(45) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `complemento` VARCHAR(45) NOT NULL,
  `idMunicipio` INT(11) NOT NULL,
  PRIMARY KEY (`idEndereco`),
  INDEX `fk_tbEndereco_tbMunicipio1_idx` (`idMunicipio` ASC),
  CONSTRAINT `fk_tbEndereco_tbMunicipio1`
    FOREIGN KEY (`idMunicipio`)
    REFERENCES `chris872_oficina`.`tbMunicipio` (`idMunicipio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTelefoneCliente` (
  `idTelefoneCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `idCliente` INT(11) NOT NULL,
  `idTelefone` INT(11) NOT NULL,
  PRIMARY KEY (`idTelefoneCliente`),
  INDEX `fk_tbTelefoneCliente_tbCliente_idx` (`idCliente` ASC),
  INDEX `fk_tbTelefoneCliente_tbTelefone1_idx` (`idTelefone` ASC),
  CONSTRAINT `fk_tbTelefoneCliente_tbCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `chris872_oficina`.`tbCliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbTelefoneCliente_tbTelefone1`
    FOREIGN KEY (`idTelefone`)
    REFERENCES `chris872_oficina`.`tbTelefone` (`idTelefone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTipoTelefone` (
  `idTipoTelefone` INT(11) NOT NULL AUTO_INCREMENT,
  `tipoTelefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoTelefone`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbDdd` (
  `idDdd` INT(11) NOT NULL,
  `ddd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDdd`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTelefoneAdministrador` (
  `idTelefoneAdministrador` INT(11) NOT NULL AUTO_INCREMENT,
  `idTelefone` INT(11) NOT NULL,
  `idAdministrador` INT(11) NOT NULL,
  PRIMARY KEY (`idTelefoneAdministrador`),
  INDEX `fk_tbTelefoneAdministrador_tbTelefone1_idx` (`idTelefone` ASC),
  INDEX `fk_tbTelefoneAdministrador_tbAdministrador1_idx` (`idAdministrador` ASC),
  CONSTRAINT `fk_tbTelefoneAdministrador_tbTelefone1`
    FOREIGN KEY (`idTelefone`)
    REFERENCES `chris872_oficina`.`tbTelefone` (`idTelefone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbTelefoneAdministrador_tbAdministrador1`
    FOREIGN KEY (`idAdministrador`)
    REFERENCES `chris872_oficina`.`tbAdministrador` (`idAdministrador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbUf` (
  `idUf` INT(11) NOT NULL AUTO_INCREMENT,
  `uf` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbMunicipio` (
  `idMunicipio` INT(11) NOT NULL AUTO_INCREMENT,
  `municipio` VARCHAR(45) NOT NULL,
  `idUf` INT(11) NOT NULL,
  PRIMARY KEY (`idMunicipio`),
  INDEX `fk_tbMunicipio_tbUf1_idx` (`idUf` ASC),
  CONSTRAINT `fk_tbMunicipio_tbUf1`
    FOREIGN KEY (`idUf`)
    REFERENCES `chris872_oficina`.`tbUf` (`idUf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbCategoria` (
  `idCategoria` INT(11) NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbStatus` (
  `idStatus` INT(11) NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStatus`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbEnderecoCliente` (
  `idEnderecoCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `idEndereco` INT(11) NOT NULL,
  `idCliente` INT(11) NOT NULL,
  PRIMARY KEY (`idEnderecoCliente`),
  INDEX `fk_tbEnderecoCliente_tbEndereco1_idx` (`idEndereco` ASC),
  INDEX `fk_tbEnderecoCliente_tbCliente1_idx` (`idCliente` ASC),
  CONSTRAINT `fk_tbEnderecoCliente_tbEndereco1`
    FOREIGN KEY (`idEndereco`)
    REFERENCES `chris872_oficina`.`tbEndereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbEnderecoCliente_tbCliente1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `chris872_oficina`.`tbCliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbEnderecoAdministrador` (
  `idEnderecoAdministrador` INT(11) NOT NULL AUTO_INCREMENT,
  `idEndereco` INT(11) NOT NULL,
  `idAdministrador` INT(11) NOT NULL,
  PRIMARY KEY (`idEnderecoAdministrador`),
  INDEX `fk_tbEnderecoAdministrador_tbEndereco1_idx` (`idEndereco` ASC),
  INDEX `fk_tbEnderecoAdministrador_tbAdministrador1_idx` (`idAdministrador` ASC),
  CONSTRAINT `fk_tbEnderecoAdministrador_tbEndereco1`
    FOREIGN KEY (`idEndereco`)
    REFERENCES `chris872_oficina`.`tbEndereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbEnderecoAdministrador_tbAdministrador1`
    FOREIGN KEY (`idAdministrador`)
    REFERENCES `chris872_oficina`.`tbAdministrador` (`idAdministrador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbPedidoProdutos` (
  `idPedidoProdutos` INT(11) NOT NULL AUTO_INCREMENT,
  `idProdutos` INT(11) NOT NULL,
  `idPedido` INT(11) NOT NULL,
  PRIMARY KEY (`idPedidoProdutos`),
  INDEX `fk_tbPedidoProdutos_tbProdutos1_idx` (`idProdutos` ASC),
  INDEX `fk_tbPedidoProdutos_tbPedidos1_idx` (`idPedido` ASC),
  CONSTRAINT `fk_tbPedidoProdutos_tbProdutos1`
    FOREIGN KEY (`idProdutos`)
    REFERENCES `chris872_oficina`.`tbProdutos` (`idProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbPedidoProdutos_tbPedidos1`
    FOREIGN KEY (`idPedido`)
    REFERENCES `chris872_oficina`.`tbPedidos` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;

CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbCartao` (
  `idCartao` INT(11) NOT NULL AUTO_INCREMENT,
  `numeroCartao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCartao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
