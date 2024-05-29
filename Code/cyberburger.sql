-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Maio-2024 às 03:54
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cyberburger`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_admin`
--

CREATE TABLE `tab_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `nome_user` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tab_admin`
--

INSERT INTO `tab_admin` (`id`, `nome_completo`, `nome_user`, `senha`) VALUES
(10, 'Administrador Padrão', 'admin', 'ADMIN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_categorias`
--

CREATE TABLE `tab_categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `nome_imagem` varchar(255) NOT NULL,
  `apresentar` varchar(10) NOT NULL,
  `ativo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tab_categorias`
--

INSERT INTO `tab_categorias` (`id`, `titulo`, `nome_imagem`, `apresentar`, `ativo`) VALUES
(26, 'Hamburguer', 'Categoria_836.jpg', 'Sim', 'Sim'),
(27, 'Pizza', 'Categoria_71.jpg', 'Sim', 'Sim'),
(28, 'Refrigerante ', 'Categoria_25.jpg', 'Sim', 'Sim'),
(29, 'Sobremesa', 'Categoria_997.jpg', 'Sim', 'Sim'),
(31, 'Misto Quente', 'Categoria_344.jpg', 'Sim', 'Sim'),
(32, 'Batata Frita', 'Categoria_25.jpg', 'Sim', 'Sim'),
(33, 'Frango Frito', 'Categoria_651.jpg', 'Sim', 'Sim'),
(34, 'Pastel', 'Categoria_551.jpg', 'Sim', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_comidas`
--

CREATE TABLE `tab_comidas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `nome_imagem` varchar(255) NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `apresentar` varchar(10) NOT NULL,
  `ativo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tab_comidas`
--

INSERT INTO `tab_comidas` (`id`, `titulo`, `descricao`, `preco`, `nome_imagem`, `categoria_id`, `apresentar`, `ativo`) VALUES
(7, 'JAVABURGUER', 'O JavaBurguer é composto por pão brioche com toque de café, hambúrguer de 180g de carne Angus, queijo cheddar derretido, molho de café e barbecue, bacon crocante, cebola caramelizada, rúcula e tomate, acompanhado de batatas rústicas com dip de maionese de café.', 32.00, 'Comida_494.jpg', 26, 'Sim', 'Sim'),
(10, 'PYZZACODE', 'A PYZZACODE é uma pizza que combina a tradição italiana com um toque moderno, ideal para quem busca uma refeição saborosa e de qualidade. Cada fatia oferece uma mistura harmoniosa de ingredientes frescos e sabores intensos, perfeita para compartilhar com amigos e familiares ou para desfrutar em momentos de descontração.', 45.00, 'Comida_847.jpg', 27, 'Sim', 'Sim'),
(11, 'CNASHARPA', 'O CNASHARPA é um misto quente aprimorado, combinando a simplicidade dos ingredientes tradicionais com a adição do bacon crocante, que eleva o sabor. Ideal para um lanche rápido e saboroso, oferece uma experiência reconfortante e deliciosa.', 10.00, 'Comida_930.jpg', 31, 'Sim', 'Sim'),
(12, 'FRYSCRIPT', 'O FRYSCRIPT é um balde generoso com 9 coxas de frango suculentas e crocantes, marinadas em um blend especial de temperos e fritas até a perfeição dourada. Cada coxa oferece um sabor irresistível, com um exterior crocante e um interior macio e suculento, proporcionando uma experiência de sabor que agrada a todos.', 40.00, 'Comida_769.jpg', 33, 'Sim', 'Sim'),
(13, 'PASTACK', 'O PASTACK é um pastel clássico e irresistível, recheado com uma combinação suculenta de carne moída bem temperada e azeitonas, tudo envolto em uma massa crocante e deliciosa. Perfeito para um lanche rápido, ele oferece uma experiência de sabor rica e satisfatória, que agrada a todos os paladares.', 8.00, 'Comida_231.jpg', 34, 'Sim', 'Sim'),
(14, '.BATATAS', 'As .BATATAS são batatas fritas clássicas, preparadas com batatas frescas e fritas até atingirem a perfeição dourada e crocante. Servidas quentes e temperadas na medida certa, são o acompanhamento perfeito para qualquer refeição ou um lanche delicioso por si só.', 12.00, 'Comida_422.jpg', 32, 'Sim', 'Sim'),
(15, 'Refrigerantes', 'Refrigerantes 2L', 13.00, 'Comida_528.jpg', 28, 'Sim', 'Sim'),
(16, 'COOKIEBYTE', 'O COOKIEBYTE é uma sobremesa deliciosa e indulgente, perfeita para quem adora uma combinação clássica de cookie com chocolate. Com uma textura crocante por fora e macia por dentro, cada mordida é uma explosão de sabor. Servido quente com uma bola de sorvete de baunilha e finalizado com nozes picadas e calda de chocolate, é a sobremesa ideal para finalizar qualquer refeição com chave de ouro.', 18.00, 'Comidas169.jpg', 29, 'Sim', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_pedido`
--

CREATE TABLE `tab_pedido` (
  `id` int(10) UNSIGNED NOT NULL,
  `comida` varchar(150) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `data_pedido` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `nome_cliente` varchar(150) NOT NULL,
  `cliente_contato` varchar(20) NOT NULL,
  `cliente_endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tab_pedido`
--

INSERT INTO `tab_pedido` (`id`, `comida`, `preco`, `quantidade`, `total`, `data_pedido`, `status`, `nome_cliente`, `cliente_contato`, `cliente_endereco`) VALUES
(7, 'Refrigerantes', 13.00, 1, 13.00, '2024-05-28 22:04:20', '', 'Thiago Anderson', '558355555555', 'Rua Exemplo'),
(8, 'COOKIEBYTE', 18.00, 1, 18.00, '2024-05-28 22:04:20', '', 'Thiago Anderson', '558355555555', 'Rua Exemplo'),
(9, 'JAVABURGUER', 32.00, 1, 32.00, '2024-05-28 22:04:20', '', 'Thiago Anderson', '558355555555', 'Rua Exemplo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tab_admin`
--
ALTER TABLE `tab_admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tab_categorias`
--
ALTER TABLE `tab_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tab_comidas`
--
ALTER TABLE `tab_comidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tab_pedido`
--
ALTER TABLE `tab_pedido`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tab_admin`
--
ALTER TABLE `tab_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tab_categorias`
--
ALTER TABLE `tab_categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `tab_comidas`
--
ALTER TABLE `tab_comidas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tab_pedido`
--
ALTER TABLE `tab_pedido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
