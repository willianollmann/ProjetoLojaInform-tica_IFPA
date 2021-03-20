-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2020 às 16:08
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_info_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(5) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `sobrenome`, `cpf`, `endereco`, `telefone`, `email`) VALUES
(1, 'LUIS FERNANDO', 'MARTENEXEN', '212313', 'Rua Acesso 8', '93991538204', 'ferdinand-master@hotmail.com'),
(2, 'LUIS FERNANDO', 'MARTENEXEN', '01580734286', 'Rua Acesso 8', '93991538204', 'ferdinand-master@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `desktops`
--

CREATE TABLE `desktops` (
  `id_desktop` int(5) NOT NULL,
  `fabricante` varchar(20) NOT NULL,
  `cpu` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `hd` varchar(20) NOT NULL,
  `preco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `desktops`
--

INSERT INTO `desktops` (`id_desktop`, `fabricante`, `cpu`, `ram`, `hd`, `preco`) VALUES
(1, 'INTEL', 'I5', '8', '500', '500,00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dispositivos`
--

CREATE TABLE `dispositivos` (
  `id_dispositivo` int(5) NOT NULL,
  `dispositivo` varchar(20) NOT NULL,
  `fabricante` varchar(20) NOT NULL,
  `ram` varchar(10) NOT NULL,
  `hd` varchar(5) NOT NULL,
  `quantidade` varchar(5) NOT NULL,
  `preco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(5) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `login` varchar(12) NOT NULL,
  `senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome`, `sobrenome`, `cargo`, `email`, `login`, `senha`) VALUES
(5, 'LUIS FERNANDO', 'MARTENEXEN', 'GERENTE', 'ferdinand-master@hotmail.com', 'ADMIN', '12345678'),
(6, 'LUIS FERNANDO', 'MARTENEXEN', 's', 'ferdinand-master@hotmail.com', 's', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `laptops`
--

CREATE TABLE `laptops` (
  `id_laptop` int(5) NOT NULL,
  `fabricante` varchar(20) NOT NULL,
  `cpu` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `hd` varchar(20) NOT NULL,
  `tela` varchar(20) NOT NULL,
  `preco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `laptops`
--

INSERT INTO `laptops` (`id_laptop`, `fabricante`, `cpu`, `ram`, `hd`, `tela`, `preco`) VALUES
(1, 'INTEL', 'I5', '8', '500', '12', '500,00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prints`
--

CREATE TABLE `prints` (
  `id_print` int(5) NOT NULL,
  `abastecimento` varchar(20) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `preco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `prints`
--

INSERT INTO `prints` (`id_print`, `abastecimento`, `categoria`, `preco`) VALUES
(1, 'Janto de Tinta', 'Multifuncional', '500,00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(5) NOT NULL,
  `cliente` varchar(70) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `desktop` varchar(20) NOT NULL,
  `data` varchar(20) NOT NULL,
  `preco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `cliente`, `funcionario`, `desktop`, `data`, `preco`) VALUES
(13, '1', '', '', '30/08/2020', '2500,00'),
(14, '2', '', '#', '30/08/2020', 'das'),
(15, '2', '', '', '30/08/2020', '2500,00'),
(16, '1', '', '', '30/08/2020', '2500,00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `desktops`
--
ALTER TABLE `desktops`
  ADD PRIMARY KEY (`id_desktop`);

--
-- Índices para tabela `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD PRIMARY KEY (`id_dispositivo`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Índices para tabela `prints`
--
ALTER TABLE `prints`
  ADD PRIMARY KEY (`id_print`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `desktops`
--
ALTER TABLE `desktops`
  MODIFY `id_desktop` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `dispositivos`
--
ALTER TABLE `dispositivos`
  MODIFY `id_dispositivo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id_laptop` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `prints`
--
ALTER TABLE `prints`
  MODIFY `id_print` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_venda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
