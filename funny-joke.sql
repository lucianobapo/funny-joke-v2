-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Dez-2016 às 06:38
-- Versão do servidor: 5.6.32-1+deb.sury.org~xenial+0.1
-- PHP Version: 7.0.13-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funny-joke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cep` int(10) UNSIGNED NOT NULL,
  `logradouro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `obs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_data` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cost_allocates`
--

CREATE TABLE `cost_allocates` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_superior` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cost_allocate_shared_stat`
--

CREATE TABLE `cost_allocate_shared_stat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cost_allocate_id` int(10) UNSIGNED NOT NULL,
  `shared_stat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document_data` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_orders`
--

CREATE TABLE `item_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `cost_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantidade` double(8,2) NOT NULL,
  `valor_unitario` double(8,2) NOT NULL,
  `desconto_unitario` double(8,2) DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_order_shared_stat`
--

CREATE TABLE `item_order_shared_stat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `shared_stat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mandantes`
--

CREATE TABLE `mandantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_18_200700_create_shared_currencies_table', 1),
(4, '2015_04_18_200710_create_shared_order_types_table', 1),
(5, '2015_04_18_200720_create_shared_order_payments_table', 1),
(6, '2015_04_18_200730_create_shared_unit_of_measures_table', 1),
(7, '2015_04_18_200740_create_cost_allocates_table', 1),
(8, '2015_04_18_200801_create_products_table', 1),
(9, '2015_04_18_200830_create_partners_table', 1),
(10, '2015_04_18_200831_create_addresses_table', 1),
(11, '2015_04_18_200840_create_orders_table', 1),
(12, '2015_04_18_202954_create_item_orders_table', 1),
(13, '2015_04_18_213022_create_shared_stats_table', 1),
(14, '2015_04_19_100000_create_product_shared_stat_table', 1),
(15, '2015_04_19_100005_create_product_group_shared_stat_table', 1),
(16, '2015_04_19_100010_create_cost_allocate_shared_stat_table', 1),
(17, '2015_04_19_100020_create_partner_shared_stat_table', 1),
(18, '2015_04_19_100030_create_order_shared_stat_table', 1),
(19, '2015_04_19_100040_create_item_order_shared_stat_table', 1),
(20, '2015_05_25_215140_create_contacts_table', 1),
(21, '2015_05_28_064748_create_traffic_table', 1),
(22, '2015_06_05_020939_create_product_groups_table', 1),
(23, '2015_06_05_030000_create_product_product_group_table', 1),
(24, '2015_06_05_165426_create_documents_table', 1),
(25, '2015_06_08_021727_create_partner_groups_table', 1),
(26, '2015_06_08_030000_create_partner_partner_group_table', 1),
(27, '2015_06_17_142406_create_order_confirmations_table', 1),
(28, '2015_08_05_202053_create_attachments_table', 1),
(29, '2015_09_09_140804_create_orders_indexes', 1),
(30, '2015_09_09_140904_create_partners_indexes', 1),
(31, '2015_09_09_141004_create_addresses_indexes', 1),
(32, '2015_09_09_141014_create_documents_indexes', 1),
(33, '2015_09_09_141104_create_item_orders_indexes', 1),
(34, '2015_09_09_141204_create_products_indexes', 1),
(35, '2015_09_09_141304_create_cost_allocates_indexes', 1),
(36, '2015_09_09_141404_create_attachments_indexes', 1),
(37, '2015_09_09_200000_create_contacts_indexes', 1),
(38, '2015_09_09_200100_create_product_groups_indexes', 1),
(39, '2015_09_09_200200_create_partner_groups_indexes', 1),
(40, '2015_09_09_200300_create_order_confirmations_indexes', 1),
(41, '2016_01_01_010000_create_products_relations', 1),
(42, '2016_01_01_100000_create_partners_relations', 1),
(43, '2016_01_01_100005_create_addresses_relations', 1),
(44, '2016_01_01_100006_create_contacts_relations', 1),
(45, '2016_01_01_100007_create_documents_relations', 1),
(46, '2016_01_01_100010_create_orders_relations', 1),
(47, '2016_01_01_100020_create_item_orders_relations', 1),
(48, '2016_01_01_100030_create_product_shared_stat_relations', 1),
(49, '2016_01_01_100040_create_cost_allocate_shared_stat_relations', 1),
(50, '2016_01_01_100050_create_partner_shared_stat_relations', 1),
(51, '2016_01_01_100060_create_order_shared_stat_relations', 1),
(52, '2016_01_01_100070_create_item_order_shared_stat_relations', 1),
(53, '2016_01_01_100080_create_product_product_group_relations', 1),
(54, '2016_01_01_100090_create_partner_partner_group_relations', 1),
(55, '2016_01_01_100100_create_order_confirmations_relations', 1),
(56, '2016_01_01_100200_create_attachments_relations', 1),
(57, '2016_06_08_203000_create_summaries_table', 1),
(58, '2016_06_08_203010_create_summaries_indexes', 1),
(59, '2016_06_08_303000_create_summary_product_contents_table', 1),
(60, '2016_06_08_303010_create_summary_product_contents_indexes', 1),
(61, '2016_06_08_303020_create_summary_product_contents_relations', 1),
(62, '2016_11_16_100000_create_mandantes_table', 1),
(63, '2016_12_07_100000_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner_id` int(10) UNSIGNED DEFAULT NULL,
  `address_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `posted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valor_total` double(8,2) DEFAULT NULL,
  `desconto_total` double(8,2) DEFAULT NULL,
  `troco` double(8,2) DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observacao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_confirmations`
--

CREATE TABLE `order_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `posted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_shared_stat`
--

CREATE TABLE `order_shared_stat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `shared_stat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_nascimento` timestamp NULL DEFAULT NULL,
  `observacao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partner_groups`
--

CREATE TABLE `partner_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grupo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partner_partner_group`
--

CREATE TABLE `partner_partner_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `partner_id` int(10) UNSIGNED NOT NULL,
  `partner_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `partner_shared_stat`
--

CREATE TABLE `partner_shared_stat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `partner_id` int(10) UNSIGNED NOT NULL,
  `shared_stat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramProfileImageSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramProfileImageX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramProfileImageY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramFirstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramNameSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramNameColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramNameX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paramNameY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file11` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file12` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file13` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file14` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file15` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `deleted_at`, `mandante`, `title`, `description`, `paramProfileImageSize`, `paramProfileImageX`, `paramProfileImageY`, `paramName`, `paramFirstName`, `paramNameSize`, `paramNameColor`, `paramNameX`, `paramNameY`, `file`, `file1`, `file2`, `file3`, `file4`, `file5`, `file6`, `file7`, `file8`, `file9`, `file10`, `file11`, `file12`, `file13`, `file14`, `file15`) VALUES
(2, '2016-12-10 17:10:38', '2016-12-11 03:35:46', '2016-12-11 03:35:46', 'testesdivertidos', 'Testando teste legal', 'descrição vai aqui bla bla bla', '116x116', '10', '20', '', '1', '11', 'ffffff', '270', '230', 'https://s3-sa-east-1.amazonaws.com/testes-divertidos/jokes/fa5f41e801eab9217b25f98661a6b997.jpg', 'https://s3-sa-east-1.amazonaws.com/testes-divertidos/jokes/fa5f41e801eab9217b25f98661a6b997.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '2016-12-10 22:28:08', '2016-12-11 04:57:49', '2016-12-11 04:57:49', 'testesdivertidos', 'teste2', '', '', '', '', '1', '1', '', '', '', '', '69af23a273ffef5fe598e7631eb5bd27.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2016-12-11 05:12:20', '2016-12-11 05:12:20', NULL, 'testesdivertidos', 'Qual super-herói você seria?', 'Nossa #nome! Imagina quanta coisa irada você poderia fazer com esses poderes!!! Compartilhe e veja quais poderes os seus amigos teriam... =)', '165x165', '34', '79', '1', '1', '38', '343434', '24', '14', '7886b27f9a34ac4e4fa26e0e3e1b2a16.jpg', '960fedee81e965e5a8569d4398558c06.jpg', '3cfd142b435b53dd209757bf2c99115d.jpg', '78822aabc7f81a3ea4a1d520b711ab0a.jpg', '61162a7c59573faf7d153b2fb12535b2.jpg', '22219f9b6964cb3188a49c7b1bb1cd78.jpg', '40f0f0022d570e9a280bc5e644d43f0f.jpg', 'c12f93628d3fa7da93beef35f2e6c541.jpg', '6e585fc06129f8011778e363cbdfd0b4.jpg', 'd028c047e5ae83215c372324ecd9ff1a.jpg', '95bf406464a57d382dc15352215d44d2.jpg', 'f64fbf6539518578c3bbbb9a9a5d83e5.jpg', '8e34c0546259b8caa48d95c9a381acec.jpg', 'bc4df6fcbc074b24eded32f4c6346d48.jpg', 'f37daeb729572b6fb1f24b9d23694d77.jpg', 'b871950cf7613d875e0bd86defacff01.jpg'),
(5, '2016-12-11 06:03:55', '2016-12-11 06:03:55', NULL, 'testesdivertidos', 'Qual será a cor da sua CB1000R?', 'Essa será a cor da sua maquina, #nome! Agora você só precisa convidar a turma para dar um rolé! Gostou #nome? Compartilhe com seus amigos!', '147x147', '10', '10', '1', '1', '30', 'FAFAFA', '378', '7', '279a20b27237cade34d8ca46e78ba186.jpg', 'b56995a1445dc782681a86c4c81c8e6b.jpg', '4097a680790635b0d1962b615cd4db8d.jpg', '966a95982ed64e2db105525aaebb9996.jpg', 'ee6ee8412e6f0bc0584cbf368931a1db.jpg', '76f42a638b47535f4016be6dcff87357.jpg', '476331d0c1456afaab336cab01fac2d1.jpg', '2dde38d5dcff8c6cfb5ccd7425611db9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2016-12-11 06:12:55', '2016-12-11 06:12:55', NULL, 'testesdivertidos', 'Qual é o seu perfil amoroso?', 'Você é uma pessoal completamente irresistível #nome, sem falar das suas inúmeras qualidade. Compartilhe e vejo o perfil amoroso de seus amigos!', '233x233', '27', '79', '1', '1', '43', 'F1FF0C', '410', '22', '079bc61dfa899d50b2ea973bfe4383cf.jpg', '9db22f3db888ca6419d0a8ec006744d6.jpg', '5acc0fbeed926e7f234dec6ce2a5fb11.jpg', '21ac59714e4e9a5ddeb87e00bad9a962.jpg', 'b7a38d5005b339990d1e26e8861a4b26.jpg', '5f733fdd8de66689e3691792728b301d.jpg', 'ba93d2b5c6d38265940ef306faa94d81.jpg', '12c71c89d7b701d6289b92596f2e7d0f.jpg', '5ac2a6b68dbe986cbb37a349bef9aa14.jpg', '4bebf4602cf23bfa879ea4417ffe2687.jpg', '2e27463b91865232268aa3c46bd9145a.jpg', 'e8c912b66f84931cf1f3988ff569f4f7.jpg', '302224cc17696bfc74bc656e9b116423.jpg', 'b02727d3fcb0579895d5f5bb9f925866.jpg', '2e722ffd0da4c097c8c80da4d011ab7b.jpg', '091c8913b49796dcdb5b987f09cc9e45.jpg'),
(7, '2016-12-11 06:32:19', '2016-12-11 06:32:19', NULL, 'testesdivertidos', 'O que você procura em sua vida?', 'Então é isso que você procura, #nome? Você está no caminho certo, não desista que com certeza você encontrará! hehehe', '203x203', '17', '48', '1', '1', '33', 'ffffff', '368', '120', 'eb55191b0d7684a9150a9302ce5cc769.jpg', '5aca8e29ecb410227c6fc856e8cc9dc7.jpg', '4c11849f80e9cf4c2185c4e9f43a9a87.jpg', '02053fe634f5e10aaed41f375a918982.jpg', '7f6e2f541d5aa906ede79666825bb3d8.jpg', '33dc3b257e74363954ff6f514156c78d.jpg', 'cc98060a8c04064c9de0d6bcfb394ade.jpg', '505b2d5989c30c108c4cb07462d32f32.jpg', '7f051366b4e3855fd65e2b88e9762f09.jpg', '75fd045b45d3da5160272f87b6da052c.jpg', '215c3d34b4f3a74d5721fea6dcb45d46.jpg', '4daa73c654ff15a3b20d9fbdc8e511b9.jpg', 'ff5e61e548d1d2b619ad59633706c8dd.jpg', 'c46fe30ac75c17ddf03a2e03ff8c49df.jpg', '46fec4cd70d6924fe04902a89ff2eee2.jpg', 'e1ed1a38308fe12b9d5dda5578ad2dd6.jpg'),
(8, '2016-12-11 20:17:35', '2016-12-11 20:17:35', NULL, 'testesdivertidos', 'Quantos filhos você terá?', 'Família é uma das melhores coisas desse mundo, e com esses filhos aí melhor ainda em, @nome? hehehe Compartilhe se gostou!', '150x150', '267', '104', '', '', '', '', '', '', 'c98598b6791ec43fd193049d3514bc99.png', '7d8a4e3c9bb229154b92aba123ca932a.jpg', '76a420f8f32a3a7dedfd0ce01275160b.jpg', '5389c3f8db7f3db79dd6e08b0619a485.jpg', '493179c3838bf70b08689a8c6020ec27.jpg', '7bd202fbcdf3180c2abffcd14318cada.jpg', '76a420f8f32a3a7dedfd0ce01275160b.jpg', 'eb2388f66ecc2e5b4b49eabd5ce2333f.jpg', '5d3b47f18faed59565ec3b1ec2ad9a83.jpg', '8957563c92be8434653142f1e1283cb9.jpg', '79d1464dacc33809204c14673a768198.jpg', '3e53ce842c7408c7047541eb03d596cd.jpg', 'ecb3200fa7470afc260ea711884b72ca.jpg', 'd180c6086bf6da8c6376bf2baea1f9fa.jpg', '53f8856739e5fe67015bb3f221ddb2bf.jpg', '1320bc6c58495a7a0ec4cea22795a67d.jpg'),
(9, '2016-12-11 20:44:23', '2016-12-11 20:44:23', NULL, 'testesdivertidos', 'Safadômetro - Qual seu nível de anjo e vagabundo?', 'Esse é seu nível de anjo e vagabundo, #nome! hehehe. Gostou? Compartilhe e veja o resultado dos seus amigos!', '174x174', '18', '23', '1', '1', '50', 'ffffff', '208', '85', '2dc3cdcec4bbb3b8133211a788f555f2.jpg', 'd59435125a7f63b7b0aa933d1f23f8c3.jpg', '39e2642626e05a33778fa4d06b54c3af.jpg', '2c93c620f87859664eaf5c33c1f1625c.jpg', '4c8c177527ec27fdb35efe0995c05628.jpg', '77cd3b088ca4480607b2b85da2dc0339.jpg', '4ac7a330ab429722016b61d44483ea69.jpg', '9ac3d3fde499af652037edbe4fe2fcea.jpg', '27c1251a0c61497ab7716039a051686f.jpg', 'a32edbdc8398f1195c7fa3c9685a2380.jpg', 'bb9b27a39d753de37a70fb36581ed1c6.jpg', 'fa5f41e801eab9217b25f98661a6b997.jpg', '0ef595f23b4eba00dfd8893a9693a7de.jpg', '4c8c177527ec27fdb35efe0995c05628.jpg', '1b4fd3dd9466bb13bfb8b678e7d658fb.jpg', '843c065502ec149a9f8e3ef69ee3a57d.jpg'),
(10, '2016-12-11 20:52:04', '2016-12-11 20:52:04', NULL, 'testesdivertidos', 'Com qual sentimento você está hoje?', 'Isso é o que você está sentindo hoje, #nome! Lembre-se de viver um dia de cada vez e aproveitar o máximo cada um deles! Gostou? Compartilhe com seus amigos!', '174x174', '28', '37', '1', '1', '45', 'ffffff', '28', '217', '4e8511ebe6313756db3f1d1068cacede.jpg', '8d81bf32e9fb3668e6cdcfb5d587768f.jpg', '7607f7ae5c54dd96cb2cbd01d1954437.jpg', '30429c3a6bb4f9d9100ec05fc5ff8a58.jpg', 'cc205e1d9d73f297c605c059e7643657.jpg', 'b0345e3fa7acc0a694b3236ef5b0b90d.jpg', '75eb23caf13b63f060f7970abc45db8c.jpg', 'd12856eb5a0eff6a3ccc82c8a291afe1.jpg', '0c3ade86b71d5a089facf1bfc4d66076.jpg', '44becf370c9529f18010027cddcdbfda.jpg', '8bdd250fe0a1ae3a0a942ea35130cf03.jpg', 'f4df3f6dfb50c4a6048f405d05c58acf.jpg', NULL, NULL, NULL, NULL),
(11, '2016-12-11 21:04:46', '2016-12-11 21:04:46', NULL, 'testesdivertidos', 'Qual arma você usaria em um apocalipse zumbi?', 'Nossa! Agora você vai detonar todos os zumbis, em #nome?!! hehehe. Compartilhe e veja o resultado dos seus amigos!', '150x150', '28', '106', '1', '1', '30', 'ffffff', '183', '225', '3affee4a354ebd242b75d5f8c18c80d0.jpg', '7543e187c8898b971a8a8c050f1e3f98.jpg', '4d148582a28f4263985994eb5632aad5.jpg', '61eda37c2d6b865a22a509079bea9a70.jpg', '9e190d8dd8238b680e5a7cbbf15bc4e9.jpg', 'b81eae1967ba89785d8c0ff17c0a76c4.jpg', '4d611c76500ffdda92b2978c78a1a63d.jpg', '76cc39d7de76ac61ae86bba7b61c3164.jpg', '5af368f0e9682d70551447311afd8234.jpg', '712f907703b0c0a1dfbff42fb396d850.jpg', '3bb19faee1bbcae4eda13312d7fc5baf.jpg', '5dde89c040e49df5f6bf0f7cfdb38273.jpg', NULL, NULL, NULL, NULL),
(12, '2016-12-11 22:48:40', '2016-12-11 22:48:40', NULL, 'testesdivertidos', 'Qual jogador do São Paulo você seria?', 'Gostou da sua posição, #nome? Você agora é oficialmente jogador do São Paulo FC. hehehe. Compartilhe e veja o resultado dos seus amigos.', '145x145', '64', '49', '1', '1', '30', '000000', '68', '191', '777475e140e0058544c4602c0cd2d6e2.jpg', 'fb8d7a21a5d8307526d9feb6314adc12.jpg', 'fa04d2229c2d45e6e501803212ce3e29.jpg', '66dc85077809a04c25d196ae650f5382.jpg', 'c8d4763c891c14099fbde102c8fd7a89.jpg', '44d1d1adfdcd3d5037e73cc5593f538c.jpg', '6a893d696f2783fb5a6b5f6e0d719d15.jpg', 'c1a74e14c1a62efb926524db32b38bc0.jpg', 'c1a74e14c1a62efb926524db32b38bc0.jpg', '2f6739147883631ecb937779b89c99a2.jpg', '2f6739147883631ecb937779b89c99a2.jpg', 'c60845983ede1078f360c525ec5231fd.jpg', NULL, NULL, NULL, NULL),
(13, '2016-12-11 23:07:26', '2016-12-11 23:07:26', NULL, 'testesdivertidos', 'Qual atriz famosa do cinema você seria?', 'Nos palcos da fama você seria ela. O que achou do resultado, #nome? Compartilhe com suas amigas e veja o resultado delas!', '170x170', '44', '74', '1', '1', '30', 'ffffff', '45', '40', 'eb0c7e129c6ddddd8f3fd7bedef28c79.jpg', 'dc08a787558326c349a9906028bacb37.jpg', 'a05e9375b32245adfcffb05dd840cd14.jpg', '8b45332ca46af7012699d5ea68ed08a0.jpg', '48ec35e0ef3be2f0d4652bb179220a6f.jpg', 'a205ea473efd8e622a195f28b7ae0a40.jpg', '268170238efce57ce866ac48733950f0.jpg', 'fb2cbc581843999f296e52a3ade7d78b.jpg', 'fbdf9f4c8cc934a6f7be1281ec3ed9bb.jpg', '3fdb050f10c2601af57a5f13fd54995d.jpg', '02b3c08511330b977fe7077666404daf.jpg', 'cbf9334bcfb94d30c4f9d671dcf64fff.jpg', 'a0b9499dc8de11eb5b1205871c001c7e.jpg', '90e8d3a702d1d973a84a905786e51bfb.jpg', 'e2674ae4db36bfb2e498ab05dbd481ca.jpg', 'd1a7747be26755a347d4a35d6adb6c65.jpg'),
(14, '2016-12-11 23:56:54', '2016-12-11 23:56:54', NULL, 'testesdivertidos', 'Porque seu nome seria notícia no jornal da record?', 'Essa é sua manchete no jornal da Record, #nome! hehehe. Gostou? Compartilhe e veja o resultado de seus amigos!', '172x172', '257', '13', '1', '1', '18', 'E7EFFE', '511', '290', '8fe2d8b8e328d6a82c207120af6db588.jpg', 'a744e13f6bc3abd6313846aa4776a4e0.jpg', 'ee788ed23cc367365f4a5b4b8767dcec.jpg', '17998a7beae2d5bf099712218b6cf7d9.jpg', '4d538e1484cc6569fbf7f5d0b7156356.jpg', '97bb371d9b74c4400bf5d86fae7fd5c7.jpg', 'da07c9707c1c9f70045f20120a142131.jpg', '4cc328040f7ca9b11bcc4d9e66726e84.jpg', '0e483d2695c1fd7e5e1fc1ef96123b16.jpg', '7144ba5f54b1ea951c2815d473971cfb.jpg', 'e0419e6c0afb11a8eddb3accbab39819.jpg', 'c36207bb1aa66775e6bdf7ca1230c2c7.jpg', '40c702fbad8130b56142aedb5dbdb02c.jpg', 'c8d6a77b81eccfed105766925fa7e937.jpg', '3a295a6c10ebe770532afa151861cdfb.jpg', 'd755acd9f4850759e22edabf6f22493e.jpg'),
(15, '2016-12-12 00:25:49', '2016-12-12 00:25:49', NULL, 'testesdivertidos', 'No que você é bom ruim e excelente?', 'Nossa, #nome! Você tem ótimas caracteristicas! hahaha. Compartilhe com seus amigos e veja o resultados deles! hehe', '149x149', '21', '42', '1', '1', '30', '32323A', '20', '7', '8a4bcf5bcb5dec0b53445e85a80fa5d4.png', '9b34e04e4df2f3053aa1895abd9bd8b5.jpg', '542b2684227549ec8bef4e53d6d87899.jpg', 'beceb9cf68d0d0806074dd161c16b3f7.jpg', '59306ff588c1ac9997d348358f28a848.jpg', '18204cd1e2be085254cc8de6aa1ea78f.jpg', 'e795ddce65f1f12bf1815d71b79c7038.jpg', 'dd409c83c6d974e035caa0ed95637fa4.jpg', '5ecc05754d2793fb2e8fa0651b6dd62e.jpg', 'c5ec69479e952adbe1b9a77b4949c533.jpg', '130bdc4b332cf91b2e9b16783c539acb.jpg', 'c7fd5563c1c43b6f105232bc05c7194d.jpg', '288ccd135280f12027fd780622404c77.jpg', 'f539673bac3c9a24f2909c0851ec0bda.jpg', '83892a3ee5e972177111e02dd7e13884.jpg', 'd721f9b6f055a95b48cbb98756f8f237.jpg'),
(16, '2016-12-12 00:39:34', '2016-12-12 00:39:34', NULL, 'testesdivertidos', 'Qual jogador do Flamengo você seria?', 'No mengão você jogaria nessa posição, #nome! Pronto para ser um dos melhores? hehehe. Compartilhe e veja a posição dos seus amigos!', '146x146', '62', '49', '1', '1', '28', 'FCFBF9', '60', '200', '723e9627a5fa61d79a1e8f59c79dd7d9.jpg', 'cdb18692ef3bd241c7f155147b2fb62f.jpg', 'b2a39e9221ac3ad3d6c3b1d475338936.jpg', '6656d660323d535a7af38339e98b431c.jpg', 'c0697539f57bc9d6d49ee9d4229db3a7.jpg', '7a5d1ed6d17726d2d105eb6065842c23.jpg', '485e65faf73aa5d9fbcc8b8d3b17a259.jpg', '04c8321d7ed20f0ce9e3ea51486fd469.jpg', '8057dd2ef343e82e3f32f3cdf971791e.jpg', 'fb883995f519d18b44a8a610219b3278.jpg', '315b8dafedc4ad314f3888504f650f4d.jpg', '2519e49f3175b22b6d5edf2dfb5566cd.jpg', NULL, NULL, NULL, NULL),
(17, '2016-12-12 02:18:16', '2016-12-13 15:54:10', '2016-12-13 15:54:10', 'testesdivertidos', 'Você é popular no Facebook?', 'Essa é sua popularidade dentro da maior rede social do mungo, #nome! hehehe. Gostou? Compartilhe!', '198x198', '28', '20', '1', '1', '38', 'ffffff', '33', '225', '8834e614391af9ba44f0e6e888de06e2.jpg', '8834e614391af9ba44f0e6e888de06e2.jpg', 'ee17817591dbeffbb78737c968225dfe.jpg', 'c52ab5e3e7042d0888c8d50a5060e462.jpg', '7473c05fa6bad791c0bf15129b1714be.jpg', '138ec08237d2282085a850679a910e71.jpg', '6e60c01984fbf977660ea0e9c5f3c6cb.jpg', '863733f318f0138721700d7d8d2fdfa3.jpg', 'b76605f1af94e7972652530f01db0a1f.jpg', 'ca7e1501dc1199873c19a1999f668bef.jpg', 'c1e671bce794629eecd59ca0da5c977c.jpg', 'ecf889b45b7c055c4aaff19ce333b060.jpg', '8a78e5bf17a8c6c7838d4df3f11e2763.jpg', '3389fd25359ecee47048f5fe4b6e6320.jpg', '13cf5dd85ca55b0b60f66c24944e6656.jpg', 'bf8d480a77c074804ab9158cc1c3c195.jpg'),
(18, '2016-12-12 02:24:39', '2016-12-12 02:24:39', NULL, 'testesdivertidos', 'Você é de Exatas ou Humanas?', 'Olha só #nome, não é atoa essa sua personalidade, em?! hehehe. Gostou? Compartilhe para ver o resultado dos seus amigos!', '172x172', '260', '110', '1', '1', '34', '000000', '259', '281', '4108946602c92a351442fcda8293cdff.jpg', '4ce944a47427a9ccd7d33d9c724e5992.jpg', '32e22f922da95d5731f56fdca82716ec.jpg', 'bcf4d922dd83d29521d8a88577e5487f.jpg', '261959cb12d348c0e6cb1f9a8ba0b4ee.jpg', 'edee5ee1599f1f17c8dca1d168d34266.jpg', '5523ff220af5d99c5848b1dd6137820f.jpg', '248dcdd705a535466875f2b358f60e90.jpg', '7ba3038f150ed9ec8ea6a409b1b90aa8.jpg', '591c5d78970090083bf7bc853aa48260.jpg', '149974a32360b87d4cec4f528c3c43f9.jpg', '4ec82e49ddd034e00d46798959f8049b.jpg', '43a218e8a1d95a0ed93b658583a0f368.jpg', 'c8704f6175b784fc014762365baf30be.jpg', '3d34f63067b3974f4a713406d5d5953b.jpg', NULL),
(19, '2016-12-12 05:14:38', '2016-12-12 05:14:38', NULL, 'testesdivertidos', 'Mensagem do dia #1', 'Essa é sua mensagem do dia! Gostou #nome? Compartilhe com seus amigos, com certeza alguém precisa ler!', '180x180', '477', '93', '1', '1', '25', 'FEF9F5', '187', '322', 'ae67ab697e8fbe824c5e4e521a557ff4.jpg', '31b497fdc757d42ae40eb5b15842d7e1.jpg', '2bf6cf81abd0ae36ffbb43cf7d2ee816.jpg', 'aacd120417c21048e31c6a371d75c159.jpg', '07efbc882998de9f981baaf1db1935d2.jpg', '568203bf03930858d85f8dd28308f6f9.jpg', 'e051c7fad22980724616abebf61f2f86.jpg', '8bdef28c2ce671cd9a53a955d6c91d82.jpg', '3f31a75ef38627d1b407f32ae40427f7.jpg', '9e061564b80c1e6b14bc7f062f304c20.jpg', '949fb997ca2150b3ce51264786b29190.jpg', 'b0cf2e8310c0e822e8609a35ec05dc41.jpg', '606a3b5c279338a58381a7e10c85b331.jpg', '02ca2494c2cc620ece833686739c71aa.jpg', '40daf18ad4cba01ce3794bf7cecfca6f.jpg', '435b32f07b4dbb742b5762c78f346363.jpg'),
(20, '2016-12-12 09:34:02', '2016-12-12 09:34:02', NULL, 'testesdivertidos', 'Qual a primeira coisa que um homem pensa ao te ver?', 'Nossa, você realmente é uma mulher incrível, #nome! hehe. Compartilhe e veja o resultado das suas amigas!', '184x184', '474', '27', '1', '1', '32', '2D2A33', '483', '211', 'af0d04aa96163dfbd0b2da6369529d4b.jpg', 'b5027fb0208baf0ad29dfef5671409aa.jpg', '770d40d5cdb383b1d870f85635a6da42.jpg', 'ba38318509c56cd8a99839d766d492c5.jpg', '6301c8f33d7022d50bfe91d158be3e4d.jpg', 'bc317297edb38f410b60895e828cb948.jpg', '6b68b0a5386e5880503001d88c3e20c5.jpg', 'e04b4ab10ebccd1c6ecf311881f4719d.jpg', 'e9cd3353a2a3a1aa0bcd40cba5515b37.jpg', 'de668e47f46636d6a52fa5c41f35c8c6.jpg', '893cca88bf062ef2c683f05d1bf57269.jpg', '0d2e03a31dd761562d86fa887f5c5f3c.jpg', 'a0969268d205be5c3bfac0fa220840b8.jpg', '0953dbb3d788c1cb790e4b48a147a39e.jpg', '8d14d2c05316c688ecdc7e0b288ccf4e.jpg', '1dc3ddff7bf6f8b546f1028673f2e816.jpg'),
(21, '2016-12-12 09:40:05', '2016-12-12 09:40:05', NULL, 'testesdivertidos', 'Qual mensagem Deus escreveu pra você?', 'Que linda mensagem Deus preparou para você, #nome! Deus é perfeito e sabe de todas as coisas! Gostou #nome? Então compartilhe!', '118x118', '91', '57', '1', '1', '27', '4A4855', '333', '95', 'c759c048ea097870c791983994e5c494.jpg', '7c117c575591e2a1186a7525a589990a.jpg', 'a5a25c32c2bc870997dbc4dc8345cdc7.jpg', '3d6c360755d6d58b0c12db7a5552afc8.jpg', '2f68f85700a9ae51f681a36f76ca0a17.jpg', 'd9adcc22035dec13d5b356060ac017f5.jpg', 'ebd65630017a928454b2112174a57687.jpg', 'fde08690357d4765e2d48feb47191b82.jpg', '0de86b791049369642448855fc1467ec.jpg', '40afc36ffeacd7b3e3b1dcd3286f6a61.jpg', '71c6e6fde93870ea5504f5c7e2d2d606.jpg', 'ccdbda452576e24a48fcb772faa5f9fe.jpg', NULL, NULL, NULL, NULL),
(22, '2016-12-12 09:46:13', '2016-12-12 09:46:13', NULL, 'testesdivertidos', 'Qual jogador famoso quer casar com você?', 'Ele esta louco por você, #nome! É sua hora de arrumar um bom partido! hehehe. Gostou? Compartilhe e veja o resultado de suas amigas!', '132x132', '122', '37', '1', '1', '27', '39393B', '378', '211', '9b6fff0f3ae1800e6f28d75e6cb993ef.jpg', 'd9245de234327792c6f9e9267e9bdb1d.jpg', '06732fb2274c1bca594d957f578c2f95.jpg', '84be912761a3efecbc1ea204b3377ecc.jpg', 'a567af1264e6ab182f0c0dd21479a30d.jpg', '91d1c4dc4d0797b77719adef55128104.jpg', '95a55e8e3463bae524749edc79566eff.jpg', '3d4e8b3b665bb42b6d7d69745123ed66.jpg', 'adb5cd7c835a6ec7b9aa8c6492249abe.jpg', '7c0ffbc85f6c2332dfc1838370c7d255.jpg', 'e3b5ed54c057c5fc87b3e42fa8fc5424.jpg', 'beef5a9266fedf47b7b0591df70bbdf0.jpg', '09016808973aab1a20fca3cfe7220678.jpg', '209384e705e13a99ccdecdcfaaaf9450.jpg', NULL, NULL),
(23, '2016-12-13 15:58:45', '2016-12-13 15:58:45', NULL, 'testesdivertidos', 'Você é popular no Facebook?', 'Olha só #nome, não é atoa essa sua personalidade, em?! hehehe. Gostou? Compartilhe para ver o resultado dos seus amigos!', '198x198', '28', '20', '1', '1', '40', 'ffffff', '34', '222', '9025364622d9bc32242e2edaa00d10c6.jpg', '8834e614391af9ba44f0e6e888de06e2.jpg', 'ee17817591dbeffbb78737c968225dfe.jpg', 'c52ab5e3e7042d0888c8d50a5060e462.jpg', '7473c05fa6bad791c0bf15129b1714be.jpg', '138ec08237d2282085a850679a910e71.jpg', '6e60c01984fbf977660ea0e9c5f3c6cb.jpg', '863733f318f0138721700d7d8d2fdfa3.jpg', 'b76605f1af94e7972652530f01db0a1f.jpg', 'ca7e1501dc1199873c19a1999f668bef.jpg', 'c1e671bce794629eecd59ca0da5c977c.jpg', 'ecf889b45b7c055c4aaff19ce333b060.jpg', '8a78e5bf17a8c6c7838d4df3f11e2763.jpg', '3389fd25359ecee47048f5fe4b6e6320.jpg', '13cf5dd85ca55b0b60f66c24944e6656.jpg', 'bf8d480a77c074804ab9158cc1c3c195.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `uom_id` int(10) UNSIGNED DEFAULT NULL,
  `cost_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_fiscal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_barra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promocao` tinyint(1) NOT NULL DEFAULT '0',
  `estoque` tinyint(1) NOT NULL DEFAULT '0',
  `estoque_minimo` int(10) UNSIGNED DEFAULT NULL,
  `valorUnitVenda` double(8,2) DEFAULT NULL,
  `valorUnitVendaPromocao` double(8,2) DEFAULT NULL,
  `valorUnitCompra` double(8,2) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_groups`
--

CREATE TABLE `product_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grupo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_group_shared_stat`
--

CREATE TABLE `product_group_shared_stat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_group_id` int(10) UNSIGNED NOT NULL,
  `shared_stat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_product_group`
--

CREATE TABLE `product_product_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_shared_stat`
--

CREATE TABLE `product_shared_stat` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `shared_stat_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `shared_currencies`
--

CREATE TABLE `shared_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nome_universal` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `shared_order_payments`
--

CREATE TABLE `shared_order_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `pagamento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `shared_order_types`
--

CREATE TABLE `shared_order_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `shared_stats`
--

CREATE TABLE `shared_stats` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `shared_unit_of_measures`
--

CREATE TABLE `shared_unit_of_measures` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `uom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `summaries`
--

CREATE TABLE `summaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `summary_product_contents`
--

CREATE TABLE `summary_product_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `summary_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock_quantity` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `traffic`
--

CREATE TABLE `traffic` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remote_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_info` text COLLATE utf8_unicode_ci,
  `server_info` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `mandante` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1481263108-no-reply@ilhanet.com',
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'laravel',
  `provider_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `deleted_at`, `role_id`, `mandante`, `name`, `avatar`, `password`, `username`, `email`, `provider`, `provider_id`, `activation_code`, `active`, `remember_token`) VALUES
(4, '2016-12-20 19:04:08', '2016-12-20 19:04:08', NULL, NULL, 'ilhanet', 'Luciano Porto', 'https://graph.facebook.com/v2.8/994947347290534/picture?type=normal', NULL, NULL, 'luciano.bapo@gmail.com', 'facebook', '994947347290534', NULL, NULL, NULL),
(5, '2016-12-20 19:26:33', '2016-12-23 03:39:07', NULL, NULL, 'ilhanet', 'Wellington Melo', 'https://graph.facebook.com/v2.8/1112198602176094/picture?type=normal', NULL, NULL, 'suporte.wellingtonmelo@gmail.com', 'facebook', '1112198602176094', NULL, NULL, 'PZFvZVopbHruae4bENcSC0FyYtufwLifaXxstzlbnmxutitalJO9if05vM7s'),
(6, '2016-12-20 20:17:34', '2016-12-21 21:47:54', '2016-12-21 21:47:54', NULL, 'ilhanet', 'Juvenildo Junior', 'https://graph.facebook.com/v2.8/1867325606823825/picture?type=normal', NULL, NULL, 'wellingtonmeloweb@gmail.com', 'facebook', '1867325606823825', NULL, NULL, NULL),
(7, '2016-12-20 21:12:20', '2016-12-21 21:48:16', '2016-12-21 21:48:16', NULL, 'ilhanet', 'Eduardo Gusso', 'https://graph.facebook.com/v2.8/162305550913897/picture?type=normal', NULL, NULL, '1481263108-no-reply@ilhanet.com', 'facebook', '162305550913897', NULL, NULL, NULL),
(8, '2016-12-20 21:28:48', '2016-12-21 21:48:20', '2016-12-21 21:48:20', NULL, 'ilhanet', 'MMcosturas Monalisa', 'https://graph.facebook.com/v2.8/834286890035237/picture?type=normal', NULL, NULL, 'mmcosturas@hotmail.com', 'facebook', '834286890035237', NULL, NULL, 'Dd01RhWU405fsyK4D1gT0cuqrUI3No4cYBohrkrnGhHPud7b1t03Pe3QkOdy'),
(9, '2016-12-20 22:10:28', '2016-12-21 21:48:30', '2016-12-21 21:48:30', NULL, 'ilhanet', 'Monalisa Melo', 'https://graph.facebook.com/v2.8/907075419418413/picture?type=normal', NULL, NULL, 'monalisamelomcz@hotmail.com', 'facebook', '907075419418413', NULL, NULL, NULL),
(17, '2016-12-22 01:24:57', '2016-12-22 10:15:41', '2016-12-22 10:15:41', NULL, 'ilhanet', 'Janaína Amanda', 'https://graph.facebook.com/v2.8/1186231051492428/picture?type=normal', NULL, NULL, 'janaina_amanda_schneider@hotmail.com', 'facebook', '1186231051492428', NULL, NULL, NULL),
(29, '2016-12-22 22:58:10', '2016-12-22 22:58:10', NULL, NULL, 'ilhanet', 'Miguel Figueiredo', 'https://graph.facebook.com/v2.8/1345883578769135/picture?type=normal', NULL, NULL, 'miguel.figueiredo96@gmail.com', 'facebook', '1345883578769135', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_partner_id_index` (`partner_id`),
  ADD KEY `addresses_mandante_index` (`mandante`),
  ADD KEY `addresses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_order_id_index` (`order_id`),
  ADD KEY `attachments_mandante_index` (`mandante`),
  ADD KEY `attachments_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_partner_id_index` (`partner_id`),
  ADD KEY `contacts_mandante_index` (`mandante`),
  ADD KEY `contacts_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `cost_allocates`
--
ALTER TABLE `cost_allocates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cost_allocates_mandante_index` (`mandante`),
  ADD KEY `cost_allocates_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `cost_allocate_shared_stat`
--
ALTER TABLE `cost_allocate_shared_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cost_allocate_shared_stat_cost_allocate_id_index` (`cost_allocate_id`),
  ADD KEY `cost_allocate_shared_stat_shared_stat_id_index` (`shared_stat_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_partner_id_index` (`partner_id`),
  ADD KEY `documents_mandante_index` (`mandante`),
  ADD KEY `documents_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `item_orders`
--
ALTER TABLE `item_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_orders_order_id_index` (`order_id`),
  ADD KEY `item_orders_cost_id_index` (`cost_id`),
  ADD KEY `item_orders_product_id_index` (`product_id`),
  ADD KEY `item_orders_currency_id_index` (`currency_id`),
  ADD KEY `item_orders_mandante_index` (`mandante`),
  ADD KEY `item_orders_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `item_order_shared_stat`
--
ALTER TABLE `item_order_shared_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_order_shared_stat_item_id_index` (`item_id`),
  ADD KEY `item_order_shared_stat_shared_stat_id_index` (`shared_stat_id`);

--
-- Indexes for table `mandantes`
--
ALTER TABLE `mandantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mandantes_mandante_index` (`mandante`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_partner_id_index` (`partner_id`),
  ADD KEY `orders_address_id_index` (`address_id`),
  ADD KEY `orders_currency_id_index` (`currency_id`),
  ADD KEY `orders_type_id_index` (`type_id`),
  ADD KEY `orders_payment_id_index` (`payment_id`),
  ADD KEY `orders_posted_at_index` (`posted_at`),
  ADD KEY `orders_mandante_index` (`mandante`),
  ADD KEY `orders_old_id_index` (`old_id`),
  ADD KEY `orders_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `order_confirmations`
--
ALTER TABLE `order_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_confirmations_order_id_index` (`order_id`),
  ADD KEY `order_confirmations_mandante_index` (`mandante`),
  ADD KEY `order_confirmations_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `order_shared_stat`
--
ALTER TABLE `order_shared_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_shared_stat_order_id_index` (`order_id`),
  ADD KEY `order_shared_stat_shared_stat_id_index` (`shared_stat_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partners_user_id_index` (`user_id`),
  ADD KEY `partners_mandante_index` (`mandante`),
  ADD KEY `partners_old_id_index` (`old_id`),
  ADD KEY `partners_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `partner_groups`
--
ALTER TABLE `partner_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_groups_mandante_index` (`mandante`),
  ADD KEY `partner_groups_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `partner_partner_group`
--
ALTER TABLE `partner_partner_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_partner_group_partner_id_index` (`partner_id`),
  ADD KEY `partner_partner_group_partner_group_id_index` (`partner_group_id`);

--
-- Indexes for table `partner_shared_stat`
--
ALTER TABLE `partner_shared_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_shared_stat_partner_id_index` (`partner_id`),
  ADD KEY `partner_shared_stat_shared_stat_id_index` (`shared_stat_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_mandante_index` (`mandante`),
  ADD KEY `posts_title_index` (`title`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_uom_id_index` (`uom_id`),
  ADD KEY `products_cost_id_index` (`cost_id`),
  ADD KEY `products_mandante_index` (`mandante`),
  ADD KEY `products_old_id_index` (`old_id`),
  ADD KEY `products_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `product_groups`
--
ALTER TABLE `product_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_groups_mandante_index` (`mandante`),
  ADD KEY `product_groups_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `product_group_shared_stat`
--
ALTER TABLE `product_group_shared_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_group_shared_stat_product_group_id_index` (`product_group_id`),
  ADD KEY `product_group_shared_stat_shared_stat_id_index` (`shared_stat_id`);

--
-- Indexes for table `product_product_group`
--
ALTER TABLE `product_product_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_product_group_product_id_index` (`product_id`),
  ADD KEY `product_product_group_product_group_id_index` (`product_group_id`);

--
-- Indexes for table `product_shared_stat`
--
ALTER TABLE `product_shared_stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_shared_stat_product_id_index` (`product_id`),
  ADD KEY `product_shared_stat_shared_stat_id_index` (`shared_stat_id`);

--
-- Indexes for table `shared_currencies`
--
ALTER TABLE `shared_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shared_order_payments`
--
ALTER TABLE `shared_order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shared_order_payments_pagamento_index` (`pagamento`);

--
-- Indexes for table `shared_order_types`
--
ALTER TABLE `shared_order_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shared_order_types_tipo_index` (`tipo`);

--
-- Indexes for table `shared_stats`
--
ALTER TABLE `shared_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shared_stats_status_index` (`status`);

--
-- Indexes for table `shared_unit_of_measures`
--
ALTER TABLE `shared_unit_of_measures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `summaries`
--
ALTER TABLE `summaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `summaries_mandante_index` (`mandante`),
  ADD KEY `summaries_start_date_index` (`start_date`),
  ADD KEY `summaries_end_date_index` (`end_date`),
  ADD KEY `summaries_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `summary_product_contents`
--
ALTER TABLE `summary_product_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `summary_product_contents_summary_id_index` (`summary_id`),
  ADD KEY `summary_product_contents_product_id_index` (`product_id`),
  ADD KEY `summary_product_contents_mandante_index` (`mandante`),
  ADD KEY `summary_product_contents_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_provider_id_unique` (`provider_id`),
  ADD KEY `users_role_id_index` (`role_id`),
  ADD KEY `users_mandante_index` (`mandante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cost_allocates`
--
ALTER TABLE `cost_allocates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cost_allocate_shared_stat`
--
ALTER TABLE `cost_allocate_shared_stat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_orders`
--
ALTER TABLE `item_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_order_shared_stat`
--
ALTER TABLE `item_order_shared_stat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandantes`
--
ALTER TABLE `mandantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_confirmations`
--
ALTER TABLE `order_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_shared_stat`
--
ALTER TABLE `order_shared_stat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partner_groups`
--
ALTER TABLE `partner_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partner_partner_group`
--
ALTER TABLE `partner_partner_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partner_shared_stat`
--
ALTER TABLE `partner_shared_stat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_groups`
--
ALTER TABLE `product_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_group_shared_stat`
--
ALTER TABLE `product_group_shared_stat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_product_group`
--
ALTER TABLE `product_product_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_shared_stat`
--
ALTER TABLE `product_shared_stat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shared_currencies`
--
ALTER TABLE `shared_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shared_order_payments`
--
ALTER TABLE `shared_order_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shared_order_types`
--
ALTER TABLE `shared_order_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shared_stats`
--
ALTER TABLE `shared_stats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shared_unit_of_measures`
--
ALTER TABLE `shared_unit_of_measures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `summaries`
--
ALTER TABLE `summaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `summary_product_contents`
--
ALTER TABLE `summary_product_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);

--
-- Limitadores para a tabela `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Limitadores para a tabela `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);

--
-- Limitadores para a tabela `cost_allocate_shared_stat`
--
ALTER TABLE `cost_allocate_shared_stat`
  ADD CONSTRAINT `cost_allocate_shared_stat_cost_allocate_id_foreign` FOREIGN KEY (`cost_allocate_id`) REFERENCES `cost_allocates` (`id`),
  ADD CONSTRAINT `cost_allocate_shared_stat_shared_stat_id_foreign` FOREIGN KEY (`shared_stat_id`) REFERENCES `shared_stats` (`id`);

--
-- Limitadores para a tabela `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);

--
-- Limitadores para a tabela `item_orders`
--
ALTER TABLE `item_orders`
  ADD CONSTRAINT `item_orders_cost_id_foreign` FOREIGN KEY (`cost_id`) REFERENCES `cost_allocates` (`id`),
  ADD CONSTRAINT `item_orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `shared_currencies` (`id`),
  ADD CONSTRAINT `item_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `item_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `item_order_shared_stat`
--
ALTER TABLE `item_order_shared_stat`
  ADD CONSTRAINT `item_order_shared_stat_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item_orders` (`id`),
  ADD CONSTRAINT `item_order_shared_stat_shared_stat_id_foreign` FOREIGN KEY (`shared_stat_id`) REFERENCES `shared_stats` (`id`);

--
-- Limitadores para a tabela `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `shared_currencies` (`id`),
  ADD CONSTRAINT `orders_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `shared_order_payments` (`id`),
  ADD CONSTRAINT `orders_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `shared_order_types` (`id`);

--
-- Limitadores para a tabela `order_confirmations`
--
ALTER TABLE `order_confirmations`
  ADD CONSTRAINT `order_confirmations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Limitadores para a tabela `order_shared_stat`
--
ALTER TABLE `order_shared_stat`
  ADD CONSTRAINT `order_shared_stat_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_shared_stat_shared_stat_id_foreign` FOREIGN KEY (`shared_stat_id`) REFERENCES `shared_stats` (`id`);

--
-- Limitadores para a tabela `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `partner_partner_group`
--
ALTER TABLE `partner_partner_group`
  ADD CONSTRAINT `partner_partner_group_partner_group_id_foreign` FOREIGN KEY (`partner_group_id`) REFERENCES `partner_groups` (`id`),
  ADD CONSTRAINT `partner_partner_group_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);

--
-- Limitadores para a tabela `partner_shared_stat`
--
ALTER TABLE `partner_shared_stat`
  ADD CONSTRAINT `partner_shared_stat_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`),
  ADD CONSTRAINT `partner_shared_stat_shared_stat_id_foreign` FOREIGN KEY (`shared_stat_id`) REFERENCES `shared_stats` (`id`);

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cost_id_foreign` FOREIGN KEY (`cost_id`) REFERENCES `cost_allocates` (`id`),
  ADD CONSTRAINT `products_uom_id_foreign` FOREIGN KEY (`uom_id`) REFERENCES `shared_unit_of_measures` (`id`);

--
-- Limitadores para a tabela `product_product_group`
--
ALTER TABLE `product_product_group`
  ADD CONSTRAINT `product_product_group_product_group_id_foreign` FOREIGN KEY (`product_group_id`) REFERENCES `product_groups` (`id`),
  ADD CONSTRAINT `product_product_group_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `product_shared_stat`
--
ALTER TABLE `product_shared_stat`
  ADD CONSTRAINT `product_shared_stat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_shared_stat_shared_stat_id_foreign` FOREIGN KEY (`shared_stat_id`) REFERENCES `shared_stats` (`id`);

--
-- Limitadores para a tabela `summary_product_contents`
--
ALTER TABLE `summary_product_contents`
  ADD CONSTRAINT `summary_product_contents_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `summary_product_contents_summary_id_foreign` FOREIGN KEY (`summary_id`) REFERENCES `summaries` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
