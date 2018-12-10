-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: db_bugs_bunny
-- ------------------------------------------------------
-- Server version	5.6.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_banca`
--

DROP TABLE IF EXISTS `tbl_banca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_banca` (
  `idBanca` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idBanca`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banca`
--

LOCK TABLES `tbl_banca` WRITE;
/*!40000 ALTER TABLE `tbl_banca` DISABLE KEYS */;
INSERT INTO `tbl_banca` VALUES (11,'Paulista','arquivos/31dc48141cf97e6b1352cd964ef2824c.jpg','       Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras.\r\nApós alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                      ',1),(12,'Ruas das Rosas','arquivos/034e0676a6b7b01e26b3c58d75067380.jpeg','Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras.\r\nApós alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                             ',1);
/*!40000 ALTER TABLE `tbl_banca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_banca_principal`
--

DROP TABLE IF EXISTS `tbl_banca_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_banca_principal` (
  `idBancaPrincipal` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idBancaPrincipal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banca_principal`
--

LOCK TABLES `tbl_banca_principal` WRITE;
/*!40000 ALTER TABLE `tbl_banca_principal` DISABLE KEYS */;
INSERT INTO `tbl_banca_principal` VALUES (9,'arquivos/0044dac9e6ea75302e01e97cde289978.jpg','       Após alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                      ',1);
/*!40000 ALTER TABLE `tbl_banca_principal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(45) NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (1,'terror','filmes de dar medo',1),(2,'romance','filmes de paixões',1);
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_celebridade`
--

DROP TABLE IF EXISTS `tbl_celebridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_celebridade` (
  `idCelebridade` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCelebridade` varchar(45) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idCelebridade`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_celebridade`
--

LOCK TABLES `tbl_celebridade` WRITE;
/*!40000 ALTER TABLE `tbl_celebridade` DISABLE KEYS */;
INSERT INTO `tbl_celebridade` VALUES (17,'lulu','arquivos/401a839ffc35d0331782b2b7f0436579.jpg',1);
/*!40000 ALTER TABLE `tbl_celebridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conteudo_celebridade`
--

DROP TABLE IF EXISTS `tbl_conteudo_celebridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_conteudo_celebridade` (
  `idConteudoCelebridade` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `texto` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `idCelebridade` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idConteudoCelebridade`),
  KEY `idCelebridade_idx` (`idCelebridade`),
  CONSTRAINT `idCelebridade` FOREIGN KEY (`idCelebridade`) REFERENCES `tbl_celebridade` (`idCelebridade`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conteudo_celebridade`
--

LOCK TABLES `tbl_conteudo_celebridade` WRITE;
/*!40000 ALTER TABLE `tbl_conteudo_celebridade` DISABLE KEYS */;
INSERT INTO `tbl_conteudo_celebridade` VALUES (32,'infancia de lulu','           Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras.\r\nApós alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                  ','arquivos/29649e774c868d164dd0bc8d41bb96d8.jpg','arquivos/1cb745860c5a52636eaad74fee7bc631.jpg',17,1),(33,'Assalto ao banco','Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras.\r\nApós alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                             ','arquivos/0204c22f2f9890e14f0357a3f30e992f.jpeg','arquivos/0a0aaefb5c6426899ed262dc5f12cb5c.jpg',17,1);
/*!40000 ALTER TABLE `tbl_conteudo_celebridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_destaque`
--

DROP TABLE IF EXISTS `tbl_destaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_destaque` (
  `idDestaque` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idDestaque`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_destaque`
--

LOCK TABLES `tbl_destaque` WRITE;
/*!40000 ALTER TABLE `tbl_destaque` DISABLE KEYS */;
INSERT INTO `tbl_destaque` VALUES (8,'Roubo de avião','Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras.\r\nApós alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                             ','arquivos/fdade1ea6656bcc6210c1cd0f7263e83.jpg',1),(9,'celular mais caro do mundo','Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras.\r\nApós alguns segundos, as partículas das cinzas começaram a se agitar a ponto de queimarem.                                             ','arquivos/00e9b4579bddac3fda9ed58711c1e98c.jpg',1);
/*!40000 ALTER TABLE `tbl_destaque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fale_conosco`
--

DROP TABLE IF EXISTS `tbl_fale_conosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fale_conosco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `profissao` varchar(30) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `homePage` varchar(100) DEFAULT NULL,
  `linkFacebook` varchar(100) DEFAULT NULL,
  `informacoesProduto` varchar(100) DEFAULT NULL,
  `critica` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fale_conosco`
--

LOCK TABLES `tbl_fale_conosco` WRITE;
/*!40000 ALTER TABLE `tbl_fale_conosco` DISABLE KEYS */;
INSERT INTO `tbl_fale_conosco` VALUES (12,'John','(134)1324-5245','(545)45454-5454','m','Programador','john@le','homepage','http://localhost/leonardo/bugsBunny/modulo_1/CMS/admFaleConosco.php#','daora','aaaa'),(13,'teste do marcel','1231233132','1231233132-','m','alguma coisa','teste@teste.com','http://www.uol.com.br','http://www.uol.com.br/teste','teste','sdf sdf sdf');
/*!40000 ALTER TABLE `tbl_fale_conosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_niveis`
--

DROP TABLE IF EXISTS `tbl_niveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_niveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_niveis`
--

LOCK TABLES `tbl_niveis` WRITE;
/*!40000 ALTER TABLE `tbl_niveis` DISABLE KEYS */;
INSERT INTO `tbl_niveis` VALUES (27,'Administrador','                                faz tudinho                                                                         ',0),(29,'Cataloguista','atualiza as paginas                                             ',0),(30,'teste do marcel 666','                                sdf dsf dsf                                                                           ',1);
/*!40000 ALTER TABLE `tbl_niveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preco_produto`
--

DROP TABLE IF EXISTS `tbl_preco_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preco_produto` (
  `idPrecoProduto` int(11) NOT NULL AUTO_INCREMENT,
  `idProduto` int(11) NOT NULL,
  `preco` double NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `promocao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPrecoProduto`),
  KEY `idProduto_idx` (`idProduto`),
  CONSTRAINT `idProduto` FOREIGN KEY (`idProduto`) REFERENCES `tbl_produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preco_produto`
--

LOCK TABLES `tbl_preco_produto` WRITE;
/*!40000 ALTER TABLE `tbl_preco_produto` DISABLE KEYS */;
INSERT INTO `tbl_preco_produto` VALUES (1,2,100,'2018-11-21','2018-11-22','0'),(2,2,90,'2018-11-22',NULL,'1'),(3,3,1000,'2018-11-10','2018-11-20','0'),(4,3,100,'2018-11-20','2018-11-21','0'),(5,3,1000,'2018-11-21','2018-11-22','0'),(6,3,100,'2018-11-22',NULL,'1'),(7,4,100,'2000-01-01','2018-11-22','0'),(8,4,1000,'2018-11-22','2018-11-02','0'),(9,4,500,'2018-11-02',NULL,'1'),(10,5,1000,'2000-01-01',NULL,'0');
/*!40000 ALTER TABLE `tbl_preco_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `foto` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `acesso` int(11) DEFAULT NULL,
  `idSubCategoria` int(11) NOT NULL,
  `sinopse` text NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `idSubCategoria_idx` (`idSubCategoria`),
  CONSTRAINT `idSubCategoria` FOREIGN KEY (`idSubCategoria`) REFERENCES `tbl_subcategoria` (`idSubCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (2,'rock','dfaadsfad     \r\n                    ','arquivos/9be0de321a2ae9461dfcd23ae005a79e.jpg',1,4,3,'Tengo en esta historia algo que confesar'),(3,'show','   safasdfsd                 \r\n                    ','arquivos/6d9849aad702afee01bf7b68d5012310.jpg',1,6,1,'No me conociste nunca de verdad'),(4,'galileu','                trtrtrtrtr    \r\n                    ','arquivos/8157f09d4c9df7dfa24c7874ee9e0047.jpg',1,1,3,'No eres tú, no eres tú, no eres tú, soy yo (soy yo)'),(5,'teen','ruim dms','arquivos/888102000832f7c885f5beb01a3e228e.jpg',1,6,2,'                 Sem o while tem como, sem loop não tem como, a não ser que faça um por um, o que não faz sentido, use o foreach.   \r\n                    ');
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sobre`
--

DROP TABLE IF EXISTS `tbl_sobre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sobre` (
  `idSobre` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idSobre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sobre`
--

LOCK TABLES `tbl_sobre` WRITE;
/*!40000 ALTER TABLE `tbl_sobre` DISABLE KEYS */;
INSERT INTO `tbl_sobre` VALUES (6,'Primeira Banca','arquivos/c2894103a1f5d9e1dae9693182e84625.jpg',' Pousou em meio às rochas. Suas asas se fecharam, seu corpo começava a se esfriar. O peso dos anos fazia suas penas se esfarelarem e sua chama amiudar. Percebeu que era a hora da partida. Olhou                                            ',1),(7,'Abordagem Inicial','arquivos/b512221336185af9d3b0619f1872e920.png','      para o céu estrelado, morrer era uma das leis da natureza, mas nem por isso era algo bom. Guinchou fracamente, seu fogo apagou, seu corpo caiu no chão e se transformou em cinzas negras                                      ',1);
/*!40000 ALTER TABLE `tbl_sobre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subcategoria`
--

DROP TABLE IF EXISTS `tbl_subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_subcategoria` (
  `idSubCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeSubCategoria` varchar(45) NOT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `idCategoria` int(11) NOT NULL,
  PRIMARY KEY (`idSubCategoria`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `tbl_subcategoria_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `tbl_categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subcategoria`
--

LOCK TABLES `tbl_subcategoria` WRITE;
/*!40000 ALTER TABLE `tbl_subcategoria` DISABLE KEYS */;
INSERT INTO `tbl_subcategoria` VALUES (1,'romance dramático','rmance com morte',1,2),(2,'romance terror','romance co toque de morte sangrenta',1,2),(3,'terror sangrento','terror zaodo',1,1),(4,'terror espirito','terror com demonio',1,1);
/*!40000 ALTER TABLE `tbl_subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `idNivel` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `idNivel_idx` (`idNivel`),
  CONSTRAINT `idNivel` FOREIGN KEY (`idNivel`) REFERENCES `tbl_niveis` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'Leonardo','leo@gmail','123',27,1),(5,'Joana','a','a',27,1),(6,'marcel NT','marcel@gmail.com','123123',30,1);
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10 11:20:41
