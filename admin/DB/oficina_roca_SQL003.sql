-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema chris872_oficina
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema chris872_oficina
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chris872_oficina` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci ;
USE `chris872_oficina` ;

-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbLogin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbLogin` (
  `idLogin` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `senha` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `nivelAcesso` INT(11) NOT NULL,
  PRIMARY KEY (`idLogin`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbAdministrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbAdministrador` (
  `idAdministrador` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `cpf` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `rg` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idLogin` INT(11) NOT NULL,
  PRIMARY KEY (`idAdministrador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbCartao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbCartao` (
  `idCartao` INT(11) NOT NULL AUTO_INCREMENT,
  `numeroCartao` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  PRIMARY KEY (`idCartao`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbCategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbCategoria` (
  `idCategoria` INT(11) NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `title` VARCHAR(500) NULL,
  `descricao` VARCHAR(200) NULL,
  `texto` TEXT NOT NULL,
  `imagem` VARCHAR(45) NULL,
  `time` VARCHAR(45) NULL,
  `dataCadastro` DATETIME NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbStatus` (
  `idStatus` INT(11) NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  PRIMARY KEY (`idStatus`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbPedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbPedidos` (
  `idPedido` INT(11) NOT NULL AUTO_INCREMENT,
  `dataEmissao` DATE NOT NULL,
  `quantidade` INT(11) NOT NULL,
  `valorTotal` DOUBLE NOT NULL,
  `dataEntrega` DATE NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idStatus` INT(11) NOT NULL,
  PRIMARY KEY (`idPedido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbCliente` (
  `idCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `cpf` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `dataNascimento` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idPedido` INT(11) NOT NULL,
  `idCartao` INT(11) NOT NULL,
  `idLogin` INT(11) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbDdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbDdd` (
  `idDdd` INT(11) NOT NULL,
  `ddd` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  PRIMARY KEY (`idDdd`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbUf`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbUf` (
  `idUf` INT(11) NOT NULL AUTO_INCREMENT,
  `uf` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  PRIMARY KEY (`idUf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbMunicipio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbMunicipio` (
  `idMunicipio` INT(11) NOT NULL AUTO_INCREMENT,
  `municipio` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `idUf` INT(11) NOT NULL,
  PRIMARY KEY (`idMunicipio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbEndereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbEndereco` (
  `idEndereco` INT(11) NOT NULL,
  `endereco` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `bairro` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `logradouro` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `cidade` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `complemento` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `idMunicipio` INT(11) NOT NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbEnderecoAdministrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbEnderecoAdministrador` (
  `idEnderecoAdministrador` INT(11) NOT NULL AUTO_INCREMENT,
  `idEndereco` INT(11) NOT NULL,
  `idAdministrador` INT(11) NOT NULL,
  PRIMARY KEY (`idEnderecoAdministrador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbEnderecoCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbEnderecoCliente` (
  `idEnderecoCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `idEndereco` INT(11) NOT NULL,
  `idCliente` INT(11) NOT NULL,
  PRIMARY KEY (`idEnderecoCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbImages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbImages` (
  `idtbImagesProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeImagem` TEXT CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`idtbImagesProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbProdutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbProdutos` (
  `idProdutos` INT(11) NOT NULL AUTO_INCREMENT,
  `referencia` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `nomeProduto` VARCHAR(200) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `cor` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `precoAtacado` DOUBLE NULL DEFAULT NULL,
  `precoVarejo` DOUBLE NOT NULL,
  `estoque` INT(11) NOT NULL,
  `descricao_Produto` TEXT CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `prazo_Entrega` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `dataCadastro` DATETIME NOT NULL,
  `idCategoria` INT(11) NOT NULL,
  PRIMARY KEY (`idProdutos`))
ENGINE = InnoDB
AUTO_INCREMENT = 174
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbImagemProduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbImagemProduto` (
  `idtbImagemProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `idtbImagesProduto` INT(11) NOT NULL,
  `idProdutos` INT(11) NOT NULL,
  PRIMARY KEY (`idtbImagemProduto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbPedidoProdutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbPedidoProdutos` (
  `idPedidoProdutos` INT(11) NOT NULL AUTO_INCREMENT,
  `idProdutos` INT(11) NOT NULL,
  `idPedido` INT(11) NOT NULL,
  PRIMARY KEY (`idPedidoProdutos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbTipoTelefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTipoTelefone` (
  `idTipoTelefone` INT(11) NOT NULL AUTO_INCREMENT,
  `tipoTelefone` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  PRIMARY KEY (`idTipoTelefone`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbTelefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTelefone` (
  `idTelefone` INT(11) NOT NULL AUTO_INCREMENT,
  `telefone` VARCHAR(45) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL,
  `idTipoTelefone` INT(11) NOT NULL,
  `idDdd` INT(11) NOT NULL,
  PRIMARY KEY (`idTelefone`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbTelefoneAdministrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTelefoneAdministrador` (
  `idTelefoneAdministrador` INT(11) NOT NULL AUTO_INCREMENT,
  `idTelefone` INT(11) NOT NULL,
  `idAdministrador` INT(11) NOT NULL,
  PRIMARY KEY (`idTelefoneAdministrador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbTelefoneCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbTelefoneCliente` (
  `idTelefoneCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `idCliente` INT(11) NOT NULL,
  `idTelefone` INT(11) NOT NULL,
  PRIMARY KEY (`idTelefoneCliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbDetalheProduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbDetalheProduto` (
  `idDetalheProduto` INT(11) NOT NULL AUTO_INCREMENT,
  `cod_NCM` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `EAN_cod_Barras` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `altura_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `largura_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `comprimento` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `profundidade_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `peso_Produto` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `altura_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `largura_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `comprimento_Embalagem` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `profundidade_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `peso_Embalagem` VARCHAR(50) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `infor_Limpeza_Produto` TEXT CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `infor_Assistencia_Tec_Garantia` TEXT CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `materia_Produto` VARCHAR(200) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL,
  `immetro` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `idade_Recomendada` VARCHAR(100) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL,
  `dataCadastro` DATETIME NOT NULL,
  PRIMARY KEY (`idDetalheProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `chris872_oficina`.`tbProdutosDetalheProduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chris872_oficina`.`tbProdutosDetalheProduto` (
  `idProdutosDetalheProduto` INT NOT NULL AUTO_INCREMENT,
  `idProdutos` INT(11) NOT NULL,
  `tbDidDetalheProduto` INT(11) NOT NULL,
  PRIMARY KEY (`idProdutosDetalheProduto`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
