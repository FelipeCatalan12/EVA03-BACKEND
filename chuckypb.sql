-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2023 a las 02:30:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chuckypb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add categoria', 7, 'add_categoria'),
(26, 'Can change categoria', 7, 'change_categoria'),
(27, 'Can delete categoria', 7, 'delete_categoria'),
(28, 'Can view categoria', 7, 'view_categoria'),
(29, 'Can add productos', 8, 'add_productos'),
(30, 'Can change productos', 8, 'change_productos'),
(31, 'Can delete productos', 8, 'delete_productos'),
(32, 'Can view productos', 8, 'view_productos'),
(33, 'Can add usuario', 9, 'add_usuario'),
(34, 'Can change usuario', 9, 'change_usuario'),
(35, 'Can delete usuario', 9, 'delete_usuario'),
(36, 'Can view usuario', 9, 'view_usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$600000$XhAGYtgtsw4qjFo78Cwgqg$tH+79VM4x5F25bBbNF+/qECKjCxN9m8IrtcIblJWq34=', NULL, 0, 'martin', '', '', '', 0, 1, '2023-12-08 00:05:15.013225'),
(3, 'pbkdf2_sha256$600000$KFdeCpMPYC6Q0hKe6K02Zb$xsta/NShBOq+GsKIjrwtiVh1T4ZWd87ZYnjyL2lFOKc=', NULL, 0, 'matias', 'matias', 'prado', 'matprado1@gmail.com', 0, 1, '2023-12-08 21:32:57.143030'),
(4, 'pbkdf2_sha256$600000$ppDkIpZJIRSwBGAgL3760k$/x4Kf37xlm6ZGg+M37pXHIfIlre2SU0j494t0PZTAk0=', '2023-12-08 21:35:22.716678', 0, 'matias123', 'matias', 'prado', 'matprado1@gmail.com', 0, 1, '2023-12-08 21:35:00.366187'),
(5, 'pbkdf2_sha256$600000$DWZ4hjaF9QKz01nGAFnDGA$UDo4uD1LaHO/AOdOPLgpR3oHfvCyJ5DA9e0+ueuMG7c=', '2023-12-08 22:54:57.430976', 1, 'admin2', '', '', '', 1, 1, '2023-12-08 21:36:49.367431'),
(6, 'pbkdf2_sha256$600000$XaB9hhFftqGn7PQyF1hG7X$d6PNm01mNkoOGUs4b5p39nhcP7Luu3kXJfdq3ok/7sM=', '2023-12-08 23:53:28.851266', 0, 'martinskere', 'martin', 'skere', 'martinskereee@example.com', 0, 1, '2023-12-08 21:42:35.766344'),
(7, 'pbkdf2_sha256$600000$kY9ARnobh7w8ZCAGTSs3VN$/egyFUvQ2FbB2yrc5UYKzWUf7wauvAY+ut4N5/Iibsw=', '2023-12-09 00:28:07.176523', 1, 'admin', '', '', '', 1, 1, '2023-12-08 23:02:30.299166'),
(8, 'pbkdf2_sha256$600000$deD86VLxvZzX1qYaq9hgpo$SkZHPdMLluO9HGdsOlf7auKBPIhXb1iEh2yWWushjQ4=', NULL, 0, 'felipeC', 'felipe', 'catalan', 'felipe1@gmail.com', 0, 1, '2023-12-08 23:44:33.058597');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(2, '2023-12-08 23:02:02.466231', '1', 'admin', 3, '', 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'gestorProducts', 'categoria'),
(8, 'gestorProducts', 'productos'),
(9, 'gestorUser', 'usuario'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-05 02:48:30.478472'),
(2, 'auth', '0001_initial', '2023-12-05 02:48:30.944820'),
(3, 'admin', '0001_initial', '2023-12-05 02:48:31.049495'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-05 02:48:31.055697'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-05 02:48:31.062843'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-05 02:48:31.151665'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-05 02:48:31.207569'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-05 02:48:31.244570'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-05 02:48:31.258590'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-05 02:48:31.323240'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-05 02:48:31.326446'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-05 02:48:31.332602'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-05 02:48:31.348766'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-05 02:48:31.369280'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-05 02:48:31.391107'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-05 02:48:31.404071'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-05 02:48:31.436029'),
(18, 'sessions', '0001_initial', '2023-12-05 02:48:31.480441'),
(19, 'gestorProducts', '0001_initial', '2023-12-07 04:30:12.971148'),
(20, 'gestorProducts', '0002_remove_productos_precio', '2023-12-07 04:30:12.982120'),
(21, 'gestorProducts', '0003_productos_precio', '2023-12-07 04:30:13.003075'),
(22, 'gestorUser', '0001_initial', '2023-12-07 04:30:13.113778'),
(23, 'gestorUser', '0002_usuario_delete_userprofile', '2023-12-07 04:30:13.214508');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2xddma9mwnvsz5umby1o79j5gkzoi6u1', 'e30:1rBiUz:UUP6IxEh-RFsMmFbEPbC8FdIBrz-YwsFMVLQSkaTNmY', '2023-12-22 21:35:05.534386'),
('70ove8lbj29coxtln4v910op680ahbxz', 'e30:1rBidm:MMi3kE5hcL5SOTdAW8ExKZRCPcweuPg7CA96ffZeRTA', '2023-12-22 21:44:10.970590'),
('f7jd6p3kks9kl8zmmkgpr39fz57hxrdm', '.eJxVjDsOwjAQBe_iGlkG_ynpOYO13l3jALKlOKkQd4dIKaB9M_NeIsG61LQOntNE4iysOPxuGfDBbQN0h3brEntb5inLTZE7HfLaiZ-X3f07qDDqt_Y-FIfZKW8o-6KO6CgUheYElrMPUQcVdQQ0xRFHDZa0z6zZoA7GOfH-AOpKN_Q:1rBidv:XGg9WTWHrTJ6TIcWJ8Ryo3y350hyJgNAL9Y6xBEhI6A', '2023-12-22 21:44:19.744563'),
('g61pd7oeie3pvuzuqz0yw0jij1tewspf', 'e30:1rBiNK:xi5EFyQ-8Yu2LGr-bbzUX_mObwQvQEErJrEWazUgDI8', '2023-12-22 21:27:10.139709'),
('mak0sv0ohcg0tnsdkgl1kjevt5n97ey8', 'e30:1rBiKl:Ynqw-T_b4cUgNNkpeWMUH6H_AnNP4oeNWsEvBnb77z4', '2023-12-22 21:24:31.150632'),
('nguecxhbotgk677y217hs2kaaekp0j6q', '.eJxVjEEOwiAQRe_C2pApLYVx6d4zkIEZbNVAUtqV8e7apAvd_vfef6lA2zqFrckSZlZn1anT7xYpPaTsgO9UblWnWtZljnpX9EGbvlaW5-Vw_w4matO3zg597LvcjZi8y9TTwEYIHKKBHlBgtM5YQMguR080ihMmPwzIbLNX7w_UqTfB:1rAgKn:WjcSC6qMvYuzvgtqR27rh5OAL2PRFvYTCcm5qY95SqQ', '2023-12-20 01:04:17.035678'),
('oktyvreuay5xutr9ctlt1g4k53ccsxdb', 'e30:1rBiWH:qSu2Xcxj7ejy2_IogdiTyYWqLS3wjZSnbu8SPnGKC3o', '2023-12-22 21:36:25.773667');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestorproducts_categoria`
--

CREATE TABLE `gestorproducts_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre_categoria` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestorproducts_categoria`
--

INSERT INTO `gestorproducts_categoria` (`id`, `nombre_categoria`) VALUES
(1, 'correa'),
(2, 'alimento'),
(3, 'ropa'),
(4, 'alimento'),
(5, 'medicina'),
(6, 'peluqueria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestorproducts_productos`
--

CREATE TABLE `gestorproducts_productos` (
  `id` bigint(20) NOT NULL,
  `nombre_producto` varchar(55) NOT NULL,
  `descripcion_producto` varchar(55) NOT NULL,
  `categoria_producto_id` bigint(20) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestorproducts_productos`
--

INSERT INTO `gestorproducts_productos` (`id`, `nombre_producto`, `descripcion_producto`, `categoria_producto_id`, `precio`) VALUES
(2, 'Hueso de hule', 'juguete para perro', 1, 1233),
(3, 'Traje de huaso', 'traje de huaso para perro', 3, 10000),
(4, 'Gorro', 'Gorro de lana para gato', 3, 8000),
(5, 'Bola de Lana', 'Bola de lana para gato', 1, 7000),
(6, 'Comida para gato', 'Comida para gato importada', 2, 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestoruser_usuario`
--

CREATE TABLE `gestoruser_usuario` (
  `id` bigint(20) NOT NULL,
  `descripcion` longtext NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestoruser_usuario`
--

INSERT INTO `gestoruser_usuario` (`id`, `descripcion`, `usuario_id`) VALUES
(1, '', 2),
(2, '', 3),
(3, '', 4),
(4, '', 5),
(5, '', 6),
(6, '', 7),
(7, '', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `gestorproducts_categoria`
--
ALTER TABLE `gestorproducts_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestorproducts_productos`
--
ALTER TABLE `gestorproducts_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gestorProducts_produ_categoria_producto_i_c0fac34a_fk_gestorPro` (`categoria_producto_id`);

--
-- Indices de la tabla `gestoruser_usuario`
--
ALTER TABLE `gestoruser_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `gestorproducts_categoria`
--
ALTER TABLE `gestorproducts_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `gestorproducts_productos`
--
ALTER TABLE `gestorproducts_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `gestoruser_usuario`
--
ALTER TABLE `gestoruser_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `gestorproducts_productos`
--
ALTER TABLE `gestorproducts_productos`
  ADD CONSTRAINT `gestorProducts_produ_categoria_producto_i_c0fac34a_fk_gestorPro` FOREIGN KEY (`categoria_producto_id`) REFERENCES `gestorproducts_categoria` (`id`);

--
-- Filtros para la tabla `gestoruser_usuario`
--
ALTER TABLE `gestoruser_usuario`
  ADD CONSTRAINT `gestorUser_usuario_usuario_id_fb044a7d_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
