-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Mar-2021 às 17:33
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mediateca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorialivro`
--

CREATE TABLE `categorialivro` (
  `idcat` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `id_subcat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorialivro`
--

INSERT INTO `categorialivro` (`idcat`, `nome`, `id_subcat`) VALUES
(1, 'Religião', NULL),
(2, 'Modelagem ', NULL),
(3, 'Programacao avancada', 3),
(4, 'Aplicacoes web', 2),
(5, 'Estatisticas', 2),
(6, 'Python', 2),
(7, 'Php avancada', 4),
(8, 'HTML 5', NULL),
(9, 'Base de dados', 2),
(10, 'Engenharia de Sistemas', 3),
(11, 'Informatica', 2),
(17, 'Infantil? ', 1),
(18, 'Drama? ', 1),
(19, 'Ação?', 1),
(20, 'Comedia', 1),
(21, 'Aventura', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `Id` int(11) NOT NULL,
  `Sender` int(11) NOT NULL,
  `Reciever` int(11) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversations`
--

CREATE TABLE `conversations` (
  `Id` int(11) NOT NULL,
  `MainUser` int(11) NOT NULL,
  `OtherUser` int(11) NOT NULL,
  `Unread` varchar(1) NOT NULL DEFAULT 'n',
  `Modification` timestamp NOT NULL DEFAULT current_timestamp(),
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `fkcategoria` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descricao` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponivel` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fk_subcategoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idcurso`, `nome`, `fkcategoria`, `foto`, `descricao`, `disponivel`, `fk_subcategoria`) VALUES
(145, 'O poder da ação', 1, 'images/41BZRzELoYL._SX340_BO1,204,203,200_.jpg', 'uploads/y2mate.com - Resenha do Livro O PODER DA AÇÃO l Paulo Vieira_480p.mp4', '1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursoaudio`
--

CREATE TABLE `cursoaudio` (
  `idcursoaudio` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `fkcategoria` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descricao` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponivel` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fk_subcategoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursoaudio`
--

INSERT INTO `cursoaudio` (`idcursoaudio`, `nome`, `fkcategoria`, `foto`, `descricao`, `disponivel`, `fk_subcategoria`) VALUES
(136, 'O poder da ação', 1, 'images/41BZRzELoYL._SX340_BO1,204,203,200_.jpg', 'Bom', '1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursovideo`
--

CREATE TABLE `cursovideo` (
  `idcursovideo` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `fkcategoria` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descricao` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponivel` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fk_subcategoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursovideo`
--

INSERT INTO `cursovideo` (`idcursovideo`, `nome`, `fkcategoria`, `foto`, `descricao`, `disponivel`, `fk_subcategoria`) VALUES
(137, 'delcio delcio', 1, 'images/1.jpg', 'a', '1', 1),
(138, 'HN', 1, 'images/1.jpg', 'J', '1', 1),
(139, 'delcio delcio', 1, 'images/ff.PNG', 'a', '1', 1),
(140, 'delcio delcio', 1, 'images/Around-the-World-in-Eighty-Days.jpg', 'a', '1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ep`
--

CREATE TABLE `ep` (
  `id_ep` int(10) NOT NULL,
  `id_curso` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descricao` mediumtext DEFAULT NULL,
  `tamanho` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nome_arquivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ep`
--

INSERT INTO `ep` (`id_ep`, `id_curso`, `titulo`, `descricao`, `tamanho`, `tipo`, `nome_arquivo`) VALUES
(87, 123, '', NULL, NULL, 'imagem/41BZRzELoYL._SX340_BO1,204,203,200_.jpg', NULL),
(88, 123, 'Delcio delciocena', NULL, NULL, 'imagem/41BZRzELoYL._SX340_BO1,204,203,200_.jpg', NULL),
(89, 123, 'Delcio delciocena', NULL, NULL, 'images/41BZRzELoYL._SX340_BO1,204,203,200_.jpg', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `epaudio`
--

CREATE TABLE `epaudio` (
  `id_epauio` int(10) NOT NULL,
  `id_cursoaudio` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descricao` mediumtext DEFAULT NULL,
  `tamanho` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nome_arquivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `epaudio`
--

INSERT INTO `epaudio` (`id_epauio`, `id_cursoaudio`, `titulo`, `descricao`, `tamanho`, `tipo`, `nome_arquivo`) VALUES
(100, 136, NULL, NULL, NULL, NULL, 'uploads/AUDIOLIVRO - O Teatro Americana, a indústria cultural e a mídia audiobook - AUDIOLIVROS e AUDIOBOOKS - Universidade Falada.mp3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `epvideo`
--

CREATE TABLE `epvideo` (
  `id_video` int(10) NOT NULL,
  `id_cursovideo` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descricao` mediumtext DEFAULT NULL,
  `tamanho` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nome_arquivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `epvideo`
--

INSERT INTO `epvideo` (`id_video`, `id_cursovideo`, `titulo`, `descricao`, `tamanho`, `tipo`, `nome_arquivo`) VALUES
(101, 137, NULL, NULL, NULL, NULL, 'uploads/me.mp4'),
(102, 138, NULL, NULL, NULL, NULL, 'uploads/me.mp4'),
(103, 139, NULL, NULL, NULL, NULL, 'uploads/me.mp4'),
(104, 140, NULL, NULL, NULL, NULL, 'uploads/y2mate.com - Awesome CSS Search Box Using Only HTML & CSS_480p.mp4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `idgenero` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`idgenero`, `nome`) VALUES
(1, 'Masculino'),
(2, 'Feminino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `geral`
--

CREATE TABLE `geral` (
  `idcurso` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `fkcategoria` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nomrarquivo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `descricao` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponivel` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fktipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `geral`
--

INSERT INTO `geral` (`idcurso`, `nome`, `fkcategoria`, `foto`, `nomrarquivo`, `descricao`, `disponivel`, `fktipo`) VALUES
(152, 'pramodya', 1, 'images/3.jpg', 'uploads/Deu com a pleura.mp3', 'a', '1', 5),
(154, 'pramodya', 1, 'images/4.jpg', 'uploads/Historia.mp3', 'a', '1', 4),
(156, 'pramodya', 1, 'images/amim.jpg', 'uploads/5.pdf', 'a', '1', 5),
(157, 'pramodya', 1, 'images/amim.jpg', 'uploads/5.pdf', 'a', '1', 5),
(158, 'pramodya', 1, 'images/51TeoeMDSBL._SX355_BO1,204,203,200_.jpg', 'uploads/Fire Gang Cypher.mp4', 'a', '1', 3),
(159, 'introdução a filosofia', 1, 'images/introducao-a-filosofia - Copia.jpg', 'uploads/introdução a filosofia.mp3', 'Bom', '1', 4),
(160, 'Fall on me', 1, 'images/5.jpg', 'uploads/Andrea Bocelli, Matteo Bocelli - Fall On Me.mp4', 'Me', '1', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imgs`
--

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `idlivro` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `fkcategoria` int(11) NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `descricao` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponivel` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fk_subcategoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`idlivro`, `nome`, `fkcategoria`, `foto`, `descricao`, `disponivel`, `fk_subcategoria`) VALUES
(168, 'Java 8', 1, 'images/product1.jpg', '', '1', 1),
(169, 'Html 5', 11, 'images/product2.jpg', 'Bom', '1', 1),
(170, 'PHP 6', 11, 'images/product3.jpg', 'Bom', '1', 4),
(171, 'Jquery', 11, 'images/product4.jpg', 'Bom', '1', 8),
(172, 'Asp.Net', 10, 'images/product5.jpg', 'Bom', '1', 1),
(173, 'Ajax 3', 11, 'images/product6.jpg', '', '0', 8),
(174, 'O poder da ação 2', 1, 'images/product4.jpg', '', '1', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_tokens`
--

CREATE TABLE `login_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`) VALUES
(26, 52, '31060fd229a99307228e272226ca3fb81cbf8fdc'),
(27, 61, '018955fbda353f5090d1b0cf35903b44a40e975e'),
(28, 52, '466d6e2545e29ae7c0d3e1256371ebd698f94779'),
(29, 52, '147305322a19f3d4836fbb4b06504fa2f45dbb74');

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `messages`
--

INSERT INTO `messages` (`id`, `receiver`, `sender`, `body`) VALUES
(29, 55, 52, 'Oi'),
(30, 54, 52, 'sd'),
(31, 53, 52, 'ddd'),
(32, 55, 52, 'h'),
(33, 55, 52, 'gf'),
(34, 61, 52, 'hey'),
(35, 53, 52, 'DDD');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelacesso`
--

CREATE TABLE `nivelacesso` (
  `idnivel` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `nivelacesso`
--

INSERT INTO `nivelacesso` (`idnivel`, `nome`) VALUES
(1, 'admin'),
(2, 'normaluser');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(11) NOT NULL,
  `n_id` bigint(11) NOT NULL,
  `de_id` bigint(11) NOT NULL,
  `para_id` bigint(11) NOT NULL,
  `tiponote_id` bigint(11) NOT NULL,
  `tiponote` varchar(100) NOT NULL,
  `visto` int(11) NOT NULL DEFAULT 0,
  `tempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pdf`
--

CREATE TABLE `pdf` (
  `idpdf` int(10) NOT NULL,
  `id_livro` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descricao` mediumtext DEFAULT NULL,
  `tamanho` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nome_arquivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pdf`
--

INSERT INTO `pdf` (`idpdf`, `id_livro`, `titulo`, `descricao`, `tamanho`, `tipo`, `nome_arquivo`) VALUES
(124, 168, NULL, NULL, NULL, NULL, 'uploads/1.pdf'),
(125, 169, NULL, NULL, NULL, NULL, 'uploads/2.pdf'),
(126, 170, NULL, NULL, NULL, NULL, 'uploads/3.pdf'),
(127, 171, NULL, NULL, NULL, NULL, 'uploads/4.pdf'),
(128, 172, NULL, NULL, NULL, NULL, 'uploads/5.pdf'),
(129, 173, NULL, NULL, NULL, NULL, 'uploads/6.pdf'),
(130, 174, NULL, NULL, NULL, NULL, 'uploads/O-Poder-da-Acao.pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `idpessoa` int(11) NOT NULL,
  `nomecompleto` varchar(1000) NOT NULL,
  `seguidores` int(100) NOT NULL DEFAULT 0,
  `fotodeperfil` varchar(300) DEFAULT NULL,
  `fotodecapa` varchar(300) DEFAULT NULL,
  `escola` varchar(1000) DEFAULT NULL,
  `trabalho` varchar(1000) DEFAULT NULL,
  `pais` varchar(1000) DEFAULT NULL,
  `aniversario` datetime DEFAULT NULL,
  `verificar` int(11) DEFAULT 0,
  `bio` varchar(1000) DEFAULT NULL,
  `fkgenero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`idpessoa`, `nomecompleto`, `seguidores`, `fotodeperfil`, `fotodecapa`, `escola`, `trabalho`, `pais`, `aniversario`, `verificar`, `bio`, `fkgenero`) VALUES
(151, 'Delcio delciocena', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1),
(152, 'bernardopedro', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1),
(153, 'isabel', 0, 'female.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 2),
(154, 'janilso Jorge', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1),
(155, 'Nlandu Manuel', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1),
(156, 'Cesar mendes', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1),
(157, 'Ivander Bizerra', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1),
(158, 'isaac Martins', 0, 'male.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguidores`
--

CREATE TABLE `seguidores` (
  `id` bigint(11) NOT NULL,
  `uf_one` bigint(11) NOT NULL,
  `uf_two` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL,
  `nome_subcategoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`id_subcategoria`, `nome_subcategoria`) VALUES
(1, 'C'),
(2, 'C#'),
(3, 'C++'),
(4, 'php'),
(5, 'java'),
(6, 'python'),
(7, 'html'),
(8, 'Javascript');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nome`) VALUES
(3, 'Video'),
(4, 'Audio'),
(5, 'Pdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `main_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `entrada` datetime DEFAULT NULL,
  `saida` datetime DEFAULT NULL,
  `tentativaslogin` int(11) NOT NULL DEFAULT 0,
  `aSetup` int(11) NOT NULL DEFAULT 0,
  `online` int(11) NOT NULL DEFAULT 0,
  `fkpessoa` int(11) NOT NULL,
  `fknivel` int(11) DEFAULT NULL,
  `disponivel` varchar(2) CHARACTER SET latin1 NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Secure` bigint(11) NOT NULL,
  `Creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`main_id`, `username`, `email`, `senha`, `entrada`, `saida`, `tentativaslogin`, `aSetup`, `online`, `fkpessoa`, `fknivel`, `disponivel`, `Token`, `Secure`, `Creation`) VALUES
(52, 'delciocena', 'Delciocena@gmail.com', '$2y$10$IGd3edmPCnGTxsrNmFGBPOIZdMTnUrtznCDl1auhEk1DmDOA2N8lm', '2021-03-16 12:49:14', NULL, 0, 0, 1, 151, 1, '1', '', 0, '0000-00-00 00:00:00'),
(53, 'bernardo', 'bernardo@gmail.com', '$2y$10$ILO2ZFSABpWFb8eNBNNs4OZAPGkERckuagJovApOnQXCWbf6ElNii', '2021-02-24 12:52:41', NULL, 0, 0, 1, 152, 1, '0', '', 0, '0000-00-00 00:00:00'),
(54, 'isabel', 'isabel@gmail.com', '$2y$10$KVWrw5dJJvfRE5JTsoT30e74V2LmabRdvN9w.apBHpdaqMWmL/A7O', NULL, NULL, 0, 0, 0, 153, 2, '0', '', 0, '0000-00-00 00:00:00'),
(55, 'jorge', 'jorge@gmail.com', '$2y$10$hYTo42UtcGV7RYigO2vWSeKJ9kSYMbbH2/MW5h3LpgHit2qAfl6.y', '2021-02-24 13:47:37', NULL, 0, 0, 1, 154, 2, '0', '', 0, '0000-00-00 00:00:00'),
(56, 'nlandu', 'nlandumanuel@gmail.com', '$2y$10$DKIDmx.XCfB6gFDV0O/m6u1cci/TCYz3V99fTcUbIGLAyNoRswgIK', NULL, NULL, 0, 0, 0, 155, 2, '1', '', 0, '0000-00-00 00:00:00'),
(57, 'delciofelix', 'delciofelix12@gmail.com', '$2y$10$kNyTbesh4befi0crSHFkF.53eBW73mADHUbZGifYLiMDsr6D4NFx6', '2021-02-11 10:26:18', NULL, 0, 0, 1, 156, 2, '1', '', 0, '0000-00-00 00:00:00'),
(61, 'ivanderbizerra', 'ivander@gmail.com', '$2y$10$iYXzQutYmX0D.zsCLpqqjO8CqMUP/tOVEgSUhpHnUH55uy01bWWHK', '2021-03-04 09:37:57', NULL, 0, 0, 1, 157, 2, '1', '', 0, '0000-00-00 00:00:00'),
(62, 'isaac', 'isaac@gmail.com', '$2y$10$iiJIsNUVM0j9J9p8UBUg/eiMwEtKqbL8tMFq4oJTHLOAPy4fpmtHu', NULL, NULL, 0, 0, 0, 158, 2, '1', '', 0, '0000-00-00 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorialivro`
--
ALTER TABLE `categorialivro`
  ADD PRIMARY KEY (`idcat`),
  ADD KEY `categorias_ibfk_1` (`id_subcat`);

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idcurso`),
  ADD KEY `fk_catlivro` (`fkcategoria`);

--
-- Índices para tabela `cursoaudio`
--
ALTER TABLE `cursoaudio`
  ADD PRIMARY KEY (`idcursoaudio`),
  ADD KEY `fk_catlivro` (`fkcategoria`);

--
-- Índices para tabela `cursovideo`
--
ALTER TABLE `cursovideo`
  ADD PRIMARY KEY (`idcursovideo`),
  ADD KEY `fk_catlivro` (`fkcategoria`);

--
-- Índices para tabela `ep`
--
ALTER TABLE `ep`
  ADD PRIMARY KEY (`id_ep`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices para tabela `epaudio`
--
ALTER TABLE `epaudio`
  ADD PRIMARY KEY (`id_epauio`),
  ADD KEY `id_cursoaudio` (`id_cursoaudio`);

--
-- Índices para tabela `epvideo`
--
ALTER TABLE `epvideo`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `id_cursovideo` (`id_cursovideo`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idgenero`);

--
-- Índices para tabela `geral`
--
ALTER TABLE `geral`
  ADD PRIMARY KEY (`idcurso`),
  ADD KEY `fk_catlivro` (`fkcategoria`),
  ADD KEY `fk_tip` (`fktipo`);

--
-- Índices para tabela `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`idlivro`),
  ADD KEY `fk_catlivro` (`fkcategoria`);

--
-- Índices para tabela `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `nivelacesso`
--
ALTER TABLE `nivelacesso`
  ADD PRIMARY KEY (`idnivel`);

--
-- Índices para tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`idpdf`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`idpessoa`),
  ADD KEY `generoid` (`fkgenero`);

--
-- Índices para tabela `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`main_id`),
  ADD KEY `pessoa_id_fk` (`fkpessoa`),
  ADD KEY `fknivel` (`fknivel`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorialivro`
--
ALTER TABLE `categorialivro`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conversations`
--
ALTER TABLE `conversations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de tabela `cursoaudio`
--
ALTER TABLE `cursoaudio`
  MODIFY `idcursoaudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de tabela `cursovideo`
--
ALTER TABLE `cursovideo`
  MODIFY `idcursovideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de tabela `ep`
--
ALTER TABLE `ep`
  MODIFY `id_ep` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `epaudio`
--
ALTER TABLE `epaudio`
  MODIFY `id_epauio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `epvideo`
--
ALTER TABLE `epvideo`
  MODIFY `id_video` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `idgenero` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `geral`
--
ALTER TABLE `geral`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de tabela `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `idlivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de tabela `login_tokens`
--
ALTER TABLE `login_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `nivelacesso`
--
ALTER TABLE `nivelacesso`
  MODIFY `idnivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `pdf`
--
ALTER TABLE `pdf`
  MODIFY `idpdf` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `idpessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de tabela `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `categorialivro`
--
ALTER TABLE `categorialivro`
  ADD CONSTRAINT `categorialirvros_ibfk_1` FOREIGN KEY (`id_subcat`) REFERENCES `subcategorias` (`id_subcategoria`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `cursoa_ibfk_1` FOREIGN KEY (`fkcategoria`) REFERENCES `categorialivro` (`idcat`);

--
-- Limitadores para a tabela `cursoaudio`
--
ALTER TABLE `cursoaudio`
  ADD CONSTRAINT `cursoaudios_ibfk_1` FOREIGN KEY (`fkcategoria`) REFERENCES `categorialivro` (`idcat`);

--
-- Limitadores para a tabela `cursovideo`
--
ALTER TABLE `cursovideo`
  ADD CONSTRAINT `cursoavideos_ibfk_1` FOREIGN KEY (`fkcategoria`) REFERENCES `categorialivro` (`idcat`);

--
-- Limitadores para a tabela `ep`
--
ALTER TABLE `ep`
  ADD CONSTRAINT `eps_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`idcurso`);

--
-- Limitadores para a tabela `epaudio`
--
ALTER TABLE `epaudio`
  ADD CONSTRAINT `epaudios_ibfk_1` FOREIGN KEY (`id_cursoaudio`) REFERENCES `cursoaudio` (`idcursoaudio`);

--
-- Limitadores para a tabela `epvideo`
--
ALTER TABLE `epvideo`
  ADD CONSTRAINT `epvideos_ibfk_1` FOREIGN KEY (`id_cursovideo`) REFERENCES `cursovideo` (`idcursovideo`);

--
-- Limitadores para a tabela `geral`
--
ALTER TABLE `geral`
  ADD CONSTRAINT `geral_ibfk_1` FOREIGN KEY (`fkcategoria`) REFERENCES `categorialivro` (`idcat`),
  ADD CONSTRAINT `geral_ibfk_2` FOREIGN KEY (`fktipo`) REFERENCES `tipo` (`idtipo`);

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `livrosff_ibfk_1` FOREIGN KEY (`fkcategoria`) REFERENCES `categorialivro` (`idcat`);

--
-- Limitadores para a tabela `pdf`
--
ALTER TABLE `pdf`
  ADD CONSTRAINT `livropdf_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livros` (`idlivro`);

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `pessoas_ibfk_1` FOREIGN KEY (`fkgenero`) REFERENCES `genero` (`idgenero`);

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fkpessoa`) REFERENCES `pessoa` (`idpessoa`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`fknivel`) REFERENCES `nivelacesso` (`idnivel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
