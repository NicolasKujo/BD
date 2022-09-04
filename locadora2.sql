-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Set-2022 às 18:38
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadora2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `cod` int(9) NOT NULL,
  `categoriaid` varchar(40) DEFAULT NULL,
  `valor_km` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`cod`, `categoriaid`, `valor_km`) VALUES
(1, 'basico', '0.49'),
(2, 'utilitario', '0.51'),
(3, 'luxo', '0.53'),
(4, 'especial', '0.55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria2022`
--

CREATE TABLE `categoria2022` (
  `cod` int(9) NOT NULL,
  `categoriaid` varchar(40) DEFAULT NULL,
  `valor_km` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria2022`
--

INSERT INTO `categoria2022` (`cod`, `categoriaid`, `valor_km`) VALUES
(1, 'basico', '0.59'),
(2, 'utilitario', '0.61'),
(3, 'luxo', '0.64'),
(4, 'especial', '0.66');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` int(9) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `ende` varchar(60) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `DataNasc` date DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `ende`, `tel`, `cidade`, `DataNasc`, `sexo`) VALUES
(123456780, 'Ana Maria Gomes', 'Av. Fco. Glicério - 1240 - Ap.13', '19991233322', 'Campinas', '1970-12-08', 'F'),
(123456781, 'Paulo José Soares', 'R. 23 de Maio - 805', '11991223456', 'São Paulo', '1984-11-10', 'M'),
(123456789, 'José da Silva', 'R. da Boa Morte - 123', '19991234567', 'Piracicaba', '1955-01-13', 'M'),
(123456798, 'Jaqueline Fonseca', 'R. XV de Novembro', '19994101234', 'Valinhos', '1968-11-20', 'F'),
(123456799, 'Antônio Carlos Sobrinho', 'R. Suaçuna - 13', '19999101234', 'Campinas', '1970-09-11', 'M'),
(123549800, 'Maria Antônia Rodrigues', 'Av. da Saudade - 1280', '19991235567', 'Campinas', '1974-08-07', 'F'),
(123764598, 'Roberta de Sá', 'R. 13 de Maio-899', '19991230800', 'Campinas', '1952-10-09', 'F'),
(128799480, 'Pedro de Oliveira', 'R. do Comércio - 38', '1998113500', 'Limeira', '1950-10-08', 'M'),
(129345678, 'Marcelo Nogueira', 'Av. Moraes Sales - 1027', '19991244488', 'Campinas', '1968-03-28', 'M'),
(129778946, 'Paulo Albuquerque', 'R. da Candelária - 1390', '11992246699', 'São Paulo', '1981-02-25', 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `combustivel`
--

CREATE TABLE `combustivel` (
  `cod` char(1) NOT NULL,
  `combid` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `combustivel`
--

INSERT INTO `combustivel` (`cod`, `combid`) VALUES
('a', 'alcool'),
('d', 'Diesel'),
('f', 'flex'),
('g', 'gasolina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `cod` int(9) NOT NULL,
  `deptoid` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`cod`, `deptoid`) VALUES
(1, 'atendimento'),
(2, 'administrativo'),
(3, 'financeiro'),
(4, 'diretoria'),
(5, 'copa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `matricula` int(9) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `depto` int(1) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `admissão` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula`, `nome`, `depto`, `salario`, `admissão`) VALUES
(1001, 'Francisco de Oliveira', 1, '1980.00', '0000-00-00'),
(1002, 'Ana Maria Andrade', 2, '3200.00', '0000-00-00'),
(1003, 'Antônio Andrade de Oliveira', 3, '4800.00', '0000-00-00'),
(1004, 'Maria Abelarda da Silva', 5, '937.00', '0000-00-00'),
(1005, 'Manoel Trindade', 4, '7850.50', '0000-00-00'),
(1006, 'Alexandre Barbosa', 1, '1980.00', '0000-00-00'),
(1007, 'Rosana Campoy', 2, '3020.00', '0000-00-00'),
(1008, 'Janaína Albuquerque', 3, '4500.00', '0000-00-00'),
(1009, 'Roberto Silva Junior', 1, '1991.00', '0000-00-00'),
(1010, 'Carlos Eduardo Siqueira', 4, '7890.00', '0000-00-00'),
(1011, 'Heitor Sampaio', 1, '3795.00', '0000-00-00'),
(1012, 'Célia Menezes', 1, '2178.00', '0000-00-00'),
(1013, 'José Alves Costa', 1, '1815.00', '0000-00-00'),
(1014, 'Arlinda Medeiros', 5, '937.00', '0000-00-00'),
(1015, 'Josefina Sarmento', 4, '6789.00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario2022`
--

CREATE TABLE `funcionario2022` (
  `matricula` int(9) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `depto` int(1) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `admissão` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario2022`
--

INSERT INTO `funcionario2022` (`matricula`, `nome`, `depto`, `salario`, `admissão`) VALUES
(1001, 'Francisco de Oliveira', 1, '2178.00', '0000-00-00'),
(1002, 'Ana Maria Andrade', 2, '3520.00', '0000-00-00'),
(1003, 'Antônio Andrade de Oliveira', 3, '5280.00', '0000-00-00'),
(1004, 'Maria Abelarda da Silva', 5, '1030.70', '0000-00-00'),
(1005, 'Manoel Trindade', 4, '8635.55', '0000-00-00'),
(1006, 'Alexandre Barbosa', 1, '2178.00', '0000-00-00'),
(1007, 'Rosana Campoy', 2, '3322.00', '0000-00-00'),
(1008, 'Janaína Albuquerque', 3, '4950.00', '0000-00-00'),
(1009, 'Roberto Silva Junior', 1, '2190.10', '0000-00-00'),
(1010, 'Carlos Eduardo Siqueira', 4, '8679.00', '0000-00-00'),
(1011, 'Heitor Sampaio', 1, '4174.50', '0000-00-00'),
(1012, 'Célia Menezes', 1, '2395.80', '0000-00-00'),
(1013, 'José Alves Costa', 1, '1996.50', '0000-00-00'),
(1014, 'Arlinda Medeiros', 5, '1030.70', '0000-00-00'),
(1015, 'Josefina Sarmento', 4, '7467.90', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `num_os` int(10) NOT NULL,
  `mat_func` int(4) NOT NULL,
  `cpf_cliente` int(9) NOT NULL,
  `plac_veiculo` varchar(7) NOT NULL,
  `km_retirada` decimal(8,2) NOT NULL,
  `km_devolução` decimal(8,2) NOT NULL,
  `data_devolução` date NOT NULL,
  `data_retirada` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `os`
--

INSERT INTO `os` (`num_os`, `mat_func`, `cpf_cliente`, `plac_veiculo`, `km_retirada`, `km_devolução`, `data_devolução`, `data_retirada`, `status`) VALUES
(1, 1001, 123456780, 'AWV1234', '1800.59', '2010.89', '2021-01-03', '2021-01-05', 1),
(2, 1011, 123456798, 'Awv1323', '10000.00', '15000.00', '2021-01-03', '2021-01-19', 1),
(3, 1009, 123456799, 'Adx1473', '8528.00', '9002.00', '2021-01-10', '2021-01-20', 1),
(4, 1006, 123456789, 'Aqw1234', '10000.00', '12345.00', '2021-01-10', '2021-01-20', 1),
(5, 1012, 123549800, 'AZX3273', '34580.00', '39508.00', '2021-02-02', '2021-02-10', 1),
(6, 1001, 129778946, 'ABW4007', '60050.00', '63083.00', '2021-02-05', '2021-02-15', 1),
(7, 1006, 129345678, 'AWS2365', '4058.23', '4555.55', '2021-02-06', '2021-02-10', 1),
(8, 1012, 128799480, 'AQX3451', '60038.00', '6200.15', '2021-01-01', '2021-01-08', 1),
(9, 1012, 123764598, 'ADE3456', '12058.00', '19000.00', '2021-01-01', '2021-01-10', 1),
(10, 1013, 123456781, 'ACZ3243', '10000.00', '13580.00', '2021-05-01', '2021-05-05', 1),
(11, 1001, 123456780, 'ABW4007', '3500.00', '3900.00', '0000-00-00', '0000-00-00', 1);

--
-- Acionadores `os`
--
DELIMITER $$
CREATE TRIGGER `tr_alocação` AFTER INSERT ON `os` FOR EACH ROW UPDATE veiculo SET status_alocado = 1 
WHERE veiculo.placa = NEW.plac_veiculo
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(8) NOT NULL,
  `marca` varchar(15) DEFAULT NULL,
  `modelo` varchar(15) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `comb` char(1) DEFAULT NULL,
  `cat` int(1) DEFAULT NULL,
  `status_alocado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `marca`, `modelo`, `cor`, `ano`, `comb`, `cat`, `status_alocado`) VALUES
('ABW4007', 'VW', 'Jetta', 'Preto', 2022, 'F', 3, 1),
('ACZ3243', 'VW', 'Fusca', 'Rosa', 1956, 'G', 4, NULL),
('ADE3456', 'Chevrolet', 'Camaro', 'Amarelo', 2022, 'G', 4, NULL),
('ADW2456', 'VW', 'Gol', 'Vermelho', 2021, 'A', 1, NULL),
('ADX1473', 'Ford', 'Ka', 'Branco', 2021, 'A', 1, NULL),
('AQW1234', 'Ford', 'Fusion', 'Preto', 2022, 'F', 3, NULL),
('AQX3451', 'Porsche', 'Carrera', 'Preto', 2022, 'G', 4, NULL),
('AQY2005', 'Chevrolet', 'S10', 'Branco', 2022, 'D', 2, NULL),
('ASX3232', 'Ford', 'Ka', 'Marrom', 2022, 'F', 1, NULL),
('AVX4003', 'VW', 'Amarok', 'Preto', 2022, 'D', 2, NULL),
('AWQ3703', 'Chevrolet', 'Omega', 'Preto', 2022, 'G', 3, NULL),
('AWS2365', 'Chevrolet', 'Cruze', 'Azul', 2022, 'F', 3, NULL),
('AWV1234', 'Fiat', 'Palio', 'Branco', 2021, 'F', 1, NULL),
('AWV1323', 'VW', 'Gol', 'Branco', 2022, 'F', 1, NULL),
('AWY4546', 'Fiat', 'Fiorino', 'Branco', 2021, 'A', 2, NULL),
('AZX3273', 'VW', 'Fox', 'Azul', 2021, 'F', 1, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `combustivel`
--
ALTER TABLE `combustivel`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices para tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`num_os`),
  ADD KEY `mat_func` (`mat_func`),
  ADD KEY `cpf_cliente` (`cpf_cliente`),
  ADD KEY `plac_veiculo` (`plac_veiculo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `os_ibfk_1` FOREIGN KEY (`mat_func`) REFERENCES `funcionario` (`matricula`),
  ADD CONSTRAINT `os_ibfk_2` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `os_ibfk_3` FOREIGN KEY (`plac_veiculo`) REFERENCES `veiculo` (`placa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
