-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 14:23:14
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `betatips`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crops`
--

CREATE TABLE `crops` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `file_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `crops`
--

INSERT INTO `crops` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `file_image`) VALUES
(1, 'ESPARRAGO', '2023-03-03 19:23:00', '2023-03-03 19:48:38', NULL, 'crops\\March2023\\AzLXq88fxvAJQMVE9TDz.jpg'),
(2, 'ARANDANO', '2023-05-20 13:17:17', '2023-05-20 05:00:00', NULL, NULL),
(3, 'UVA', '2023-05-20 13:21:04', '2023-05-20 13:21:04', NULL, NULL),
(4, 'MANDARINA', '2023-05-20 13:21:51', '2023-05-20 13:21:51', NULL, NULL),
(5, 'GRANADO', '2023-03-03 19:23:00', '2023-03-03 19:51:01', NULL, 'crops\\March2023\\4eInuhYudUvxxZ2hKDwD.jpg'),
(6, 'PALTOS', '2023-03-03 19:23:00', '2023-03-03 19:53:56', NULL, 'crops\\March2023\\cugkApLqmESGCo2opyHJ.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(28, 4, 'file_image', 'image', 'File Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'id_crops', 'text', 'Id Crops', 0, 1, 1, 1, 1, 1, '{}', 3),
(32, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(33, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(34, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(35, 5, 'labor_belongsto_crop_relationship', 'relationship', 'crops', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Cultivo\",\"table\":\"crops\",\"type\":\"belongsTo\",\"column\":\"id_crops\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(36, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 7, 'fullname', 'text', 'Fullname', 0, 1, 1, 1, 1, 1, '{}', 2),
(38, 7, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{}', 3),
(39, 7, 'doc_num', 'text', 'Doc Num', 0, 1, 1, 1, 1, 1, '{}', 4),
(40, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(41, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(42, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(43, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 8, 'id_labors', 'text', 'Id Labors', 0, 1, 1, 1, 1, 1, '{}', 3),
(45, 8, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 4),
(46, 8, 'blobVideo', 'media_picker', 'BlobVideo', 0, 1, 1, 1, 1, 1, '{}', 5),
(47, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(48, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(49, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(50, 8, 'group_belongsto_labor_relationship', 'relationship', 'labors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Labors\",\"table\":\"labors\",\"type\":\"belongsTo\",\"column\":\"id_labors\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(51, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 9, 'labor_id', 'text', 'Labor Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(53, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(54, 9, 'description', 'markdown_editor', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(55, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(56, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(57, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(58, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(59, 9, 'implement_belongsto_labor_relationship', 'relationship', 'labors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Labors\",\"table\":\"labors\",\"type\":\"belongsTo\",\"column\":\"labor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(60, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 10, 'implement_id', 'text', 'Implement Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(62, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(63, 10, 'des_danger', 'text', 'Des Danger', 0, 1, 1, 1, 1, 1, '{}', 5),
(64, 10, 'des_info', 'text', 'Des Info', 0, 1, 1, 1, 1, 1, '{}', 6),
(65, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(66, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(67, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9),
(68, 10, 'job_belongsto_implement_relationship', 'relationship', 'implements', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Implement\",\"table\":\"implements\",\"type\":\"belongsTo\",\"column\":\"implement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(69, 10, 'des_medida_control', 'text', 'Des Medida Control', 0, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `display_name_singular` varchar(191) NOT NULL,
  `display_name_plural` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `model_name` varchar(191) DEFAULT NULL,
  `policy_name` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(4, 'crops', 'crops', 'Cultivo', 'Cultivos', NULL, 'App\\Cultivo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-03 19:22:58', '2023-03-03 19:33:51'),
(5, 'labors', 'labors', 'Labor', 'Labores', NULL, 'App\\Labors', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-03 19:59:22', '2023-03-03 20:01:40'),
(7, 'employes', 'employes', 'Trabajador', 'Trabajadores', NULL, 'App\\Employes', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-03-03 20:02:14', '2023-03-03 20:02:14'),
(8, 'groups', 'groups', 'ATS', 'ATS', NULL, 'App\\Group', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-03 23:15:05', '2023-03-03 23:20:07'),
(9, 'implements', 'implementos', 'Implemento', 'Implementos', NULL, 'App\\Implement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-06 18:20:33', '2023-03-06 18:23:22'),
(10, 'job', 'job', 'Tarea', 'Tareas', NULL, 'App\\Job', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-06 18:22:44', '2023-05-22 19:48:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employes`
--

CREATE TABLE `employes` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `doc_num` varchar(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employes`
--

INSERT INTO `employes` (`id`, `fullname`, `code`, `doc_num`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'RAMON BERNARDO AGUADO APAZA', '436039', '71788430', '2023-03-03 20:02:39', '2023-03-03 20:02:39', NULL),
(2, 'SERGIO BERNARDO BERROCAL RAMOS', '458174', '72105840', '2023-03-03 23:11:09', '2023-03-03 23:11:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employes_checked`
--

CREATE TABLE `employes_checked` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_employe` int(11) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `is_checked` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employes_checked`
--

INSERT INTO `employes_checked` (`id`, `id_employe`, `id_group`, `is_checked`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, b'1', '2023-03-03 20:49:24', '2023-03-03 20:49:24', NULL),
(2, 1, 4, b'1', '2023-03-03 21:00:16', '2023-03-03 21:00:16', NULL),
(3, 1, 30, b'1', '2023-05-22 18:07:01', '2023-05-22 18:07:01', NULL),
(4, 2, 30, b'1', '2023-05-22 18:07:01', '2023-05-22 18:07:01', NULL),
(5, 1, 31, b'1', '2023-05-22 18:24:27', '2023-05-22 18:24:27', NULL),
(6, 2, 31, b'1', '2023-05-22 18:24:27', '2023-05-22 18:24:27', NULL),
(7, 1, 32, b'1', '2023-05-22 18:25:20', '2023-05-22 18:25:20', NULL),
(8, 2, 32, b'1', '2023-05-22 18:25:20', '2023-05-22 18:25:20', NULL),
(9, 1, 33, b'1', '2023-05-22 18:26:20', '2023-05-22 18:26:20', NULL),
(10, 2, 33, b'1', '2023-05-22 18:26:20', '2023-05-22 18:26:20', NULL),
(11, 1, 34, b'1', '2023-05-22 18:44:57', '2023-05-22 18:44:57', NULL),
(12, 2, 34, b'1', '2023-05-22 18:44:57', '2023-05-22 18:44:57', NULL),
(13, 1, 35, b'1', '2023-05-22 18:47:24', '2023-05-22 18:47:24', NULL),
(14, 2, 35, b'1', '2023-05-22 18:47:24', '2023-05-22 18:47:24', NULL),
(15, 1, 36, b'1', '2023-05-22 18:51:20', '2023-05-22 18:51:20', NULL),
(16, 2, 36, b'1', '2023-05-22 18:51:20', '2023-05-22 18:51:20', NULL),
(17, 1, 37, b'1', '2023-05-22 18:54:14', '2023-05-22 18:54:14', NULL),
(18, 2, 37, b'1', '2023-05-22 18:54:14', '2023-05-22 18:54:14', NULL),
(19, 1, 38, b'1', '2023-05-22 18:55:31', '2023-05-22 18:55:31', NULL),
(20, 2, 38, b'1', '2023-05-22 18:55:31', '2023-05-22 18:55:31', NULL),
(21, 1, 40, b'1', '2023-05-22 19:00:39', '2023-05-22 19:00:39', NULL),
(22, 2, 40, b'1', '2023-05-22 19:00:39', '2023-05-22 19:00:39', NULL),
(23, 1, 41, b'1', '2023-05-22 19:02:46', '2023-05-22 19:02:46', NULL),
(24, 2, 41, b'1', '2023-05-22 19:02:46', '2023-05-22 19:02:46', NULL),
(25, 1, 42, b'1', '2023-05-22 19:14:24', '2023-05-22 19:14:24', NULL),
(26, 2, 42, b'1', '2023-05-22 19:14:24', '2023-05-22 19:14:24', NULL),
(27, 1, 43, b'1', '2023-05-22 19:14:39', '2023-05-22 19:14:39', NULL),
(28, 2, 43, b'1', '2023-05-22 19:14:39', '2023-05-22 19:14:39', NULL),
(29, 1, 44, b'1', '2023-05-22 21:00:45', '2023-05-22 21:00:45', NULL),
(30, 2, 44, b'1', '2023-05-22 21:00:45', '2023-05-22 21:00:45', NULL),
(31, 1, 45, b'1', '2023-05-22 21:01:18', '2023-05-22 21:01:18', NULL),
(32, 2, 45, b'1', '2023-05-22 21:01:18', '2023-05-22 21:01:18', NULL),
(33, 1, 46, b'1', '2023-05-22 21:10:01', '2023-05-22 21:10:01', NULL),
(34, 2, 46, b'1', '2023-05-22 21:10:01', '2023-05-22 21:10:01', NULL),
(35, 1, 47, b'1', '2023-05-22 21:10:25', '2023-05-22 21:10:25', NULL),
(36, 2, 47, b'1', '2023-05-22 21:10:25', '2023-05-22 21:10:25', NULL),
(37, 1, 48, b'1', '2023-05-22 21:11:02', '2023-05-22 21:11:02', NULL),
(38, 2, 48, b'1', '2023-05-22 21:11:02', '2023-05-22 21:11:02', NULL),
(39, 1, 49, b'1', '2023-05-22 21:11:16', '2023-05-22 21:11:16', NULL),
(40, 2, 49, b'1', '2023-05-22 21:11:16', '2023-05-22 21:11:16', NULL),
(41, 1, 50, b'1', '2023-05-22 21:16:32', '2023-05-22 21:16:32', NULL),
(42, 2, 50, b'1', '2023-05-22 21:16:32', '2023-05-22 21:16:32', NULL),
(43, 1, 51, b'1', '2023-05-22 21:16:39', '2023-05-22 21:16:39', NULL),
(44, 2, 51, b'1', '2023-05-22 21:16:39', '2023-05-22 21:16:39', NULL),
(45, 1, 52, b'1', '2023-05-22 21:16:51', '2023-05-22 21:16:51', NULL),
(46, 2, 52, b'1', '2023-05-22 21:16:51', '2023-05-22 21:16:51', NULL),
(47, 1, 53, b'1', '2023-05-22 21:16:59', '2023-05-22 21:16:59', NULL),
(48, 2, 53, b'1', '2023-05-22 21:16:59', '2023-05-22 21:16:59', NULL),
(49, 1, 54, b'1', '2023-05-22 21:17:34', '2023-05-22 21:17:34', NULL),
(50, 2, 54, b'1', '2023-05-22 21:17:34', '2023-05-22 21:17:34', NULL),
(51, 1, 55, b'1', '2023-05-22 21:18:02', '2023-05-22 21:18:02', NULL),
(52, 2, 55, b'1', '2023-05-22 21:18:02', '2023-05-22 21:18:02', NULL),
(53, 1, 56, b'1', '2023-05-22 21:18:38', '2023-05-22 21:18:38', NULL),
(54, 2, 56, b'1', '2023-05-22 21:18:38', '2023-05-22 21:18:38', NULL),
(55, 1, 57, b'1', '2023-05-22 21:19:05', '2023-05-22 21:19:05', NULL),
(56, 2, 57, b'1', '2023-05-22 21:19:05', '2023-05-22 21:19:05', NULL),
(57, 1, 58, b'1', '2023-05-22 21:19:33', '2023-05-22 21:19:33', NULL),
(58, 2, 58, b'1', '2023-05-22 21:19:33', '2023-05-22 21:19:33', NULL),
(59, 1, 59, b'1', '2023-05-22 21:31:07', '2023-05-22 21:31:07', NULL),
(60, 2, 59, b'1', '2023-05-22 21:31:07', '2023-05-22 21:31:07', NULL),
(61, 1, 60, b'1', '2023-05-22 21:31:42', '2023-05-22 21:31:42', NULL),
(62, 2, 60, b'1', '2023-05-22 21:31:42', '2023-05-22 21:31:42', NULL),
(63, 1, 61, b'1', '2023-05-22 22:18:41', '2023-05-22 22:18:41', NULL),
(64, 2, 61, b'1', '2023-05-22 22:18:41', '2023-05-22 22:18:41', NULL),
(65, 1, 62, b'1', '2023-05-22 22:19:19', '2023-05-22 22:19:19', NULL),
(66, 2, 62, b'1', '2023-05-22 22:19:19', '2023-05-22 22:19:19', NULL),
(67, 1, 63, b'1', '2023-05-22 22:19:41', '2023-05-22 22:19:41', NULL),
(68, 2, 63, b'1', '2023-05-22 22:19:41', '2023-05-22 22:19:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_labors` int(11) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `blobVideo` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `id_labors`, `video`, `blobVideo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, '1677801600.mp4', 0x5b6f626a65637420426c6f625d, '2023-03-03 20:49:24', '2023-03-03 20:49:24', NULL),
(3, 1, '1677801600.mp4', 0x5b6f626a65637420426c6f625d, '2023-03-03 20:56:52', '2023-03-03 20:56:52', NULL),
(4, 1, '1677801600.mp4', 0x5b6f626a65637420426c6f625d, '2023-03-03 21:00:16', '2023-03-03 21:00:16', NULL),
(5, 1, NULL, NULL, '2023-03-04 22:09:50', '2023-03-04 22:09:50', NULL),
(6, 1, NULL, NULL, '2023-03-04 22:13:13', '2023-03-04 22:13:13', NULL),
(7, 1, NULL, NULL, '2023-03-04 22:13:16', '2023-03-04 22:13:16', NULL),
(8, 1, NULL, NULL, '2023-03-04 22:14:16', '2023-03-04 22:14:16', NULL),
(9, 1, NULL, NULL, '2023-03-04 22:14:23', '2023-03-04 22:14:23', NULL),
(10, 1, NULL, NULL, '2023-03-04 22:14:44', '2023-03-04 22:14:44', NULL),
(11, 1, NULL, NULL, '2023-03-04 22:14:55', '2023-03-04 22:14:55', NULL),
(12, 1, NULL, NULL, '2023-03-04 22:15:12', '2023-03-04 22:15:12', NULL),
(13, 1, NULL, NULL, '2023-03-04 22:15:35', '2023-03-04 22:15:35', NULL),
(14, 1, NULL, NULL, '2023-03-04 22:17:57', '2023-03-04 22:17:57', NULL),
(15, 1, NULL, NULL, '2023-03-04 22:18:02', '2023-03-04 22:18:02', NULL),
(16, 1, NULL, NULL, '2023-03-04 22:18:05', '2023-03-04 22:18:05', NULL),
(17, 1, NULL, NULL, '2023-03-04 22:18:06', '2023-03-04 22:18:06', NULL),
(18, 1, NULL, NULL, '2023-03-06 17:05:11', '2023-03-06 17:05:11', NULL),
(19, 1, NULL, NULL, '2023-03-06 17:05:30', '2023-03-06 17:05:30', NULL),
(20, 1, NULL, NULL, '2023-03-06 17:06:29', '2023-03-06 17:06:29', NULL),
(21, 1, NULL, NULL, '2023-03-06 17:07:32', '2023-03-06 17:07:32', NULL),
(22, 1, NULL, NULL, '2023-03-06 17:10:03', '2023-03-06 17:10:03', NULL),
(23, 1, NULL, NULL, '2023-03-06 17:12:07', '2023-03-06 17:12:07', NULL),
(24, 1, NULL, NULL, '2023-03-06 17:32:21', '2023-03-06 17:32:21', NULL),
(25, 1, NULL, NULL, '2023-03-06 17:32:40', '2023-03-06 17:32:40', NULL),
(26, 1, NULL, NULL, '2023-03-06 17:33:05', '2023-03-06 17:33:05', NULL),
(27, 1, NULL, NULL, '2023-03-06 17:34:33', '2023-03-06 17:34:33', NULL),
(28, 1, '1684540800.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-20 19:52:08', '2023-05-20 19:52:08', NULL),
(29, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:06:29', '2023-05-22 18:06:29', NULL),
(30, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:07:01', '2023-05-22 18:07:01', NULL),
(31, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:24:27', '2023-05-22 18:24:27', NULL),
(32, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:25:20', '2023-05-22 18:25:20', NULL),
(33, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:26:20', '2023-05-22 18:26:20', NULL),
(34, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:44:57', '2023-05-22 18:44:57', NULL),
(35, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:47:24', '2023-05-22 18:47:24', NULL),
(36, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:51:20', '2023-05-22 18:51:20', NULL),
(37, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:54:14', '2023-05-22 18:54:14', NULL),
(38, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:55:31', '2023-05-22 18:55:31', NULL),
(39, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 18:59:53', '2023-05-22 18:59:53', NULL),
(40, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 19:00:39', '2023-05-22 19:00:39', NULL),
(41, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 19:02:46', '2023-05-22 19:02:46', NULL),
(42, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 19:14:24', '2023-05-22 19:14:24', NULL),
(43, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 19:14:39', '2023-05-22 19:14:39', NULL),
(44, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:00:45', '2023-05-22 21:00:45', NULL),
(45, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:01:18', '2023-05-22 21:01:18', NULL),
(46, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:10:01', '2023-05-22 21:10:01', NULL),
(47, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:10:25', '2023-05-22 21:10:25', NULL),
(48, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:11:02', '2023-05-22 21:11:02', NULL),
(49, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:11:16', '2023-05-22 21:11:16', NULL),
(50, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:16:32', '2023-05-22 21:16:32', NULL),
(51, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:16:39', '2023-05-22 21:16:39', NULL),
(52, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:16:51', '2023-05-22 21:16:51', NULL),
(53, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:16:59', '2023-05-22 21:16:59', NULL),
(54, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:17:33', '2023-05-22 21:17:33', NULL),
(55, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:18:02', '2023-05-22 21:18:02', NULL),
(56, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:18:38', '2023-05-22 21:18:38', NULL),
(57, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:19:05', '2023-05-22 21:19:05', NULL),
(58, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:19:33', '2023-05-22 21:19:33', NULL),
(59, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:31:07', '2023-05-22 21:31:07', NULL),
(60, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 21:31:42', '2023-05-22 21:31:42', NULL),
(61, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 22:18:41', '2023-05-22 22:18:41', NULL),
(62, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 22:19:19', '2023-05-22 22:19:19', NULL),
(63, 1, '1684713600.mp4', 0x5b6f626a65637420426c6f625d, '2023-05-22 22:19:41', '2023-05-22 22:19:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `implements`
--

CREATE TABLE `implements` (
  `id` int(10) UNSIGNED NOT NULL,
  `labor_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `implements`
--

INSERT INTO `implements` (`id`, `labor_id`, `name`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'CULTIVADORA', 'CULTIVADORA', NULL, '2023-05-22 15:24:32', '2023-05-22 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job`
--

CREATE TABLE `job` (
  `id` int(10) UNSIGNED NOT NULL,
  `implement_id` int(11) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `des_danger` text DEFAULT NULL,
  `des_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `des_medida_control` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `job`
--

INSERT INTO `job` (`id`, `implement_id`, `name`, `des_danger`, `des_info`, `created_at`, `updated_at`, `deleted_at`, `des_medida_control`) VALUES
(1, 1, 'Participar en la charla de 5 minutos de seguridad.', 'Riesgo de accidentes.', 'De no participar en la charla de 5 minutos, se ocasionarían accidentes por falta de conocimientos.', '2023-05-22 15:30:21', '2023-05-22 05:00:00', NULL, 'El operador esta en la obligación de participar en la charla de 5 minutos.'),
(2, 1, 'Posicionar la máquina para iniciar con el montaje.', 'Riesgo de accidentes.', 'Puede ocacionar el mal montaje, choques o accidentes de gravedad.', '2023-12-22 05:00:00', '2023-12-22 15:30:49', NULL, 'Posicionar la máquina de manera correcta para el montaje.'),
(3, 1, 'Verificar que estén encendidas las luces de peligro.', 'Riesgo de accidentes.', 'Puede ocasionar accidentes de gravedad.', '2023-05-22 15:38:55', NULL, NULL, 'De no existir señalización, informe inmediatamente a su supervisor.'),
(4, 1, 'Regular y centrar el implemento.', 'Riesgo de accidentes.', 'Puede ocasionar un mal trabajo en campo.', '2023-05-22 05:00:00', NULL, NULL, 'Posicionar regular y centrar el implemento.'),
(5, 1, 'Verificar los seguros y/o pasadores respectivos tanto en el implemento como en la máquina.', 'Riesgo de accidentes.', 'Puede ocasionar percances y desperfectos en la maquina o implemento.', '2023-01-16 15:39:02', NULL, NULL, 'Colocar los seguros y/o pasadores respectivos tanto en el implemento como en la máquina.'),
(6, 1, 'Verificar de regular el regulador 3 puntos y colocar su traba de rosca.', 'Riesgo de accidentes.', 'Puede ocasionar percances y desperfectos en la maquina o implemento.', '2023-01-16 15:39:02', NULL, NULL, 'Colocar los seguros y/o pasadores.'),
(7, 1, 'Regular los brazos de cultivo según la labor a realizar.', 'Riesgo de accidentes.', 'Puede ocasionar percances y desperfectos en la maquina o implemento.', '2023-01-16 15:39:02', NULL, NULL, 'Colocar bien los brazos reguladores.'),
(8, 1, 'Verificar que todas la tuercas estén bien ajustadas.', 'Riesgo de accidentes.', 'Puede ocasionar percances y desperfectos en la maquina o implemento.', '2023-01-16 15:39:02', NULL, NULL, 'Usar las herramientas adecuadas y ajustar bien las tuercas.'),
(9, 1, 'Verificar el estado de las flechas, cinceles, cajón, etc. Según la labor solicitada.', 'Riesgo de accidentes.', 'Puede ocasionar percances y desperfectos en la maquina o implemento.', '2023-01-16 15:39:02', NULL, NULL, 'Colocar las flechas, cinceles, cajón, si en caso necesiten cambio.'),
(10, 1, 'Verificar la marcha de maquinaria.', 'Fallas del motor.', 'Puede ocasionar accidentes de gravedad y desperfectos en la maquina.', '2023-01-16 15:39:02', NULL, NULL, 'Informar constantemente a su supervisor y respetar las normas de velocidad en el campo.'),
(11, 1, 'Verificar los banderines de señalización de llaves, ventosas y otros equipos.', 'Riesgo de accidentes o roturas en las valvulas de campo', 'Puede ocasionar percances y desperfectos en el campo.', '2023-01-16 15:39:02', NULL, NULL, 'Informar constantemente a su supervisor.'),
(12, 1, 'Verificar el estado de los campos.', 'Riesgo de accidentes o roturas en las valvulas de campo', 'Puede ocasionar percances y desperfectos en el campo.', '2023-01-16 15:39:02', NULL, NULL, 'Informar constantemente a su supervisor.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `labors`
--

CREATE TABLE `labors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id_crops` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `labors`
--

INSERT INTO `labors` (`id`, `name`, `id_crops`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LABOR 1', 1, '2023-03-03 20:00:24', '2023-03-03 20:00:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-03-02 23:38:33', '2023-03-02 23:38:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `target` varchar(191) NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2023-03-02 23:38:33', '2023-03-02 23:38:33', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2023-03-02 23:38:33', '2023-03-02 23:38:33', 'voyager.hooks', NULL),
(12, 1, 'Cultivos', '', '_self', NULL, NULL, NULL, 15, '2023-03-03 19:22:58', '2023-03-03 19:22:58', 'voyager.crops.index', NULL),
(13, 1, 'Labores', '', '_self', NULL, NULL, NULL, 16, '2023-03-03 19:59:22', '2023-03-03 19:59:22', 'voyager.labors.index', NULL),
(14, 1, 'Trabajadores', '', '_self', NULL, NULL, NULL, 17, '2023-03-03 20:02:14', '2023-03-03 20:02:14', 'voyager.employes.index', NULL),
(15, 1, 'ATS', '', '_self', NULL, NULL, NULL, 18, '2023-03-03 23:15:05', '2023-03-03 23:15:05', 'voyager.groups.index', NULL),
(16, 1, 'Implementos', '', '_self', NULL, NULL, NULL, 19, '2023-03-06 18:20:33', '2023-03-06 18:20:33', 'voyager.implementos.index', NULL),
(17, 1, 'Tareas', '', '_self', NULL, NULL, NULL, 20, '2023-03-06 18:22:44', '2023-03-06 18:22:44', 'voyager.job.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 2),
(4, '2016_01_01_000000_create_data_types_table', 2),
(5, '2016_05_19_173453_create_menu_table', 2),
(6, '2016_10_21_190000_create_roles_table', 2),
(7, '2016_10_21_190000_create_settings_table', 2),
(8, '2016_11_30_135954_create_permission_table', 2),
(9, '2016_11_30_141208_create_permission_role_table', 2),
(10, '2016_12_26_201236_data_types__add__server_side', 2),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(12, '2017_01_14_005015_create_translations_table', 2),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(17, '2017_08_05_000000_add_group_to_settings_table', 2),
(18, '2017_11_26_013050_add_user_role_relationship', 2),
(19, '2017_11_26_015000_create_user_roles_table', 2),
(20, '2018_03_11_000000_add_user_settings', 2),
(21, '2018_03_14_000000_add_details_to_data_types_table', 2),
(22, '2018_03_16_000000_make_settings_value_nullable', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(2, 'browse_bread', NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(3, 'browse_database', NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(4, 'browse_media', NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(5, 'browse_compass', NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(6, 'browse_menus', 'menus', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(7, 'read_menus', 'menus', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(8, 'edit_menus', 'menus', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(9, 'add_menus', 'menus', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(10, 'delete_menus', 'menus', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(11, 'browse_roles', 'roles', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(12, 'read_roles', 'roles', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(13, 'edit_roles', 'roles', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(14, 'add_roles', 'roles', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(15, 'delete_roles', 'roles', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(16, 'browse_users', 'users', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(17, 'read_users', 'users', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(18, 'edit_users', 'users', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(19, 'add_users', 'users', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(20, 'delete_users', 'users', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(21, 'browse_settings', 'settings', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(22, 'read_settings', 'settings', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(23, 'edit_settings', 'settings', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(24, 'add_settings', 'settings', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(25, 'delete_settings', 'settings', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(26, 'browse_hooks', NULL, '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(27, 'browse_crops', 'crops', '2023-03-03 19:22:58', '2023-03-03 19:22:58'),
(28, 'read_crops', 'crops', '2023-03-03 19:22:58', '2023-03-03 19:22:58'),
(29, 'edit_crops', 'crops', '2023-03-03 19:22:58', '2023-03-03 19:22:58'),
(30, 'add_crops', 'crops', '2023-03-03 19:22:58', '2023-03-03 19:22:58'),
(31, 'delete_crops', 'crops', '2023-03-03 19:22:58', '2023-03-03 19:22:58'),
(32, 'browse_labors', 'labors', '2023-03-03 19:59:22', '2023-03-03 19:59:22'),
(33, 'read_labors', 'labors', '2023-03-03 19:59:22', '2023-03-03 19:59:22'),
(34, 'edit_labors', 'labors', '2023-03-03 19:59:22', '2023-03-03 19:59:22'),
(35, 'add_labors', 'labors', '2023-03-03 19:59:22', '2023-03-03 19:59:22'),
(36, 'delete_labors', 'labors', '2023-03-03 19:59:22', '2023-03-03 19:59:22'),
(37, 'browse_employes', 'employes', '2023-03-03 20:02:14', '2023-03-03 20:02:14'),
(38, 'read_employes', 'employes', '2023-03-03 20:02:14', '2023-03-03 20:02:14'),
(39, 'edit_employes', 'employes', '2023-03-03 20:02:14', '2023-03-03 20:02:14'),
(40, 'add_employes', 'employes', '2023-03-03 20:02:14', '2023-03-03 20:02:14'),
(41, 'delete_employes', 'employes', '2023-03-03 20:02:14', '2023-03-03 20:02:14'),
(42, 'browse_groups', 'groups', '2023-03-03 23:15:05', '2023-03-03 23:15:05'),
(43, 'read_groups', 'groups', '2023-03-03 23:15:05', '2023-03-03 23:15:05'),
(44, 'edit_groups', 'groups', '2023-03-03 23:15:05', '2023-03-03 23:15:05'),
(45, 'add_groups', 'groups', '2023-03-03 23:15:05', '2023-03-03 23:15:05'),
(46, 'delete_groups', 'groups', '2023-03-03 23:15:05', '2023-03-03 23:15:05'),
(47, 'browse_implements', 'implements', '2023-03-06 18:20:33', '2023-03-06 18:20:33'),
(48, 'read_implements', 'implements', '2023-03-06 18:20:33', '2023-03-06 18:20:33'),
(49, 'edit_implements', 'implements', '2023-03-06 18:20:33', '2023-03-06 18:20:33'),
(50, 'add_implements', 'implements', '2023-03-06 18:20:33', '2023-03-06 18:20:33'),
(51, 'delete_implements', 'implements', '2023-03-06 18:20:33', '2023-03-06 18:20:33'),
(52, 'browse_job', 'job', '2023-03-06 18:22:44', '2023-03-06 18:22:44'),
(53, 'read_job', 'job', '2023-03-06 18:22:44', '2023-03-06 18:22:44'),
(54, 'edit_job', 'job', '2023-03-06 18:22:44', '2023-03-06 18:22:44'),
(55, 'add_job', 'job', '2023-03-06 18:22:44', '2023-03-06 18:22:44'),
(56, 'delete_job', 'job', '2023-03-06 18:22:44', '2023-03-06 18:22:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-03-02 23:38:33', '2023-03-02 23:38:33'),
(2, 'user', 'Normal User', '2023-03-02 23:38:33', '2023-03-02 23:38:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) NOT NULL,
  `column_name` varchar(191) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT 'users/default.png',
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, 1, 'LordHunter', 'admin@admin.com', 'users/default.png', '$2y$10$iQpO7Uo97BhT11SVuY1MguoWP7C.KFZ/ZOtsjPl6UXRQ8cZMmbZGW', NULL, NULL, '2023-05-22 19:25:27', '2023-05-22 19:25:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crops_file_image_unique` (`file_image`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employes_code_unique` (`code`),
  ADD UNIQUE KEY `employes_doc_num_unique` (`doc_num`);

--
-- Indices de la tabla `employes_checked`
--
ALTER TABLE `employes_checked`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `implements`
--
ALTER TABLE `implements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `labors`
--
ALTER TABLE `labors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `employes`
--
ALTER TABLE `employes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `employes_checked`
--
ALTER TABLE `employes_checked`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `implements`
--
ALTER TABLE `implements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `job`
--
ALTER TABLE `job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `labors`
--
ALTER TABLE `labors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
