-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-06-2020 a las 19:35:05
-- Versión del servidor: 5.7.30-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Estudiante', 6, 'add_estudiante'),
(22, 'Can change Estudiante', 6, 'change_estudiante'),
(23, 'Can delete Estudiante', 6, 'delete_estudiante'),
(24, 'Can view Estudiante', 6, 'view_estudiante'),
(25, 'Can add Facilitador', 7, 'add_facilitador'),
(26, 'Can change Facilitador', 7, 'change_facilitador'),
(27, 'Can delete Facilitador', 7, 'delete_facilitador'),
(28, 'Can view Facilitador', 7, 'view_facilitador'),
(29, 'Can add Nivel', 8, 'add_nivel'),
(30, 'Can change Nivel', 8, 'change_nivel'),
(31, 'Can delete Nivel', 8, 'delete_nivel'),
(32, 'Can view Nivel', 8, 'view_nivel'),
(33, 'Can add Proveedor', 9, 'add_proveedor'),
(34, 'Can change Proveedor', 9, 'change_proveedor'),
(35, 'Can delete Proveedor', 9, 'delete_proveedor'),
(36, 'Can view Proveedor', 9, 'view_proveedor'),
(37, 'Can add user', 10, 'add_usuario'),
(38, 'Can change user', 10, 'change_usuario'),
(39, 'Can delete user', 10, 'delete_usuario'),
(40, 'Can view user', 10, 'view_usuario'),
(41, 'Can add Platica', 11, 'add_platica'),
(42, 'Can change Platica', 11, 'change_platica'),
(43, 'Can delete Platica', 11, 'delete_platica'),
(44, 'Can view Platica', 11, 'view_platica'),
(45, 'Can add Asistencia', 12, 'add_asistencia'),
(46, 'Can change Asistencia', 12, 'change_asistencia'),
(47, 'Can delete Asistencia', 12, 'delete_asistencia'),
(48, 'Can view Asistencia', 12, 'view_asistencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(12, 'Usuarios', 'asistencia'),
(6, 'Usuarios', 'estudiante'),
(7, 'Usuarios', 'facilitador'),
(8, 'Usuarios', 'nivel'),
(11, 'Usuarios', 'platica'),
(9, 'Usuarios', 'proveedor'),
(10, 'Usuarios', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-02 03:01:03.765442'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-06-02 03:01:05.552704'),
(3, 'auth', '0001_initial', '2020-06-02 03:01:06.977278'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-06-02 03:01:14.895191'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-06-02 03:01:15.322941'),
(6, 'auth', '0004_alter_user_username_opts', '2020-06-02 03:01:15.972322'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-06-02 03:01:16.392271'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-06-02 03:01:16.781344'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-06-02 03:01:17.400351'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-06-02 03:01:17.481551'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-06-02 03:01:17.553856'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-06-02 03:01:17.766658'),
(13, 'auth', '0011_update_proxy_permissions', '2020-06-02 03:01:17.842996'),
(14, 'Usuarios', '0001_initial', '2020-06-02 03:01:26.819948'),
(15, 'admin', '0001_initial', '2020-06-02 03:01:47.920001'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-06-02 03:01:51.594242'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-02 03:01:51.703264'),
(18, 'sessions', '0001_initial', '2020-06-02 03:01:52.573202');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8tr7tjmljs2fqg8ppq4aevyp9nu2obpa', 'NTYwOGI0YWE4MmIzMTI2MjA5MzVlMmI1OTZlMzYzYTUzMjdkYWE1ZTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZjliZmMyMDE4NWJlM2QzNWFjZDc5MWNkZjIyM2NlODNhZmFlODc3In0=', '2020-07-06 23:37:53.459561'),
('t0o9ox92i9dxjvgagqq24ttc16tfqn4y', 'MGYwNjc2ODMwYTgzZDBhN2RlYzFhMjUwMTFiNzBjMWNkMzEwZDBiMDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlY2E3NTE1NGYwZmE5MTUxYWFlY2I0ZTE3ZjQ1MjFlMTZiNDJjZTRlIn0=', '2020-06-30 05:01:38.533049'),
('ycxzkuot31xhwsvdamr9r7ht3qua4uj8', 'ODc1ODhiMDc4YWY0M2I0YmZkZTBjNzIxNDA0YTgxMzQ2ZTk1NTNmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZWM4ZTUzNTYwZTZkNDU5N2NlMTg0YzY4MmJjY2FjN2M0OWIwYjVhIn0=', '2020-06-16 04:40:42.207964');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_asistencia`
--

CREATE TABLE `Usuarios_asistencia` (
  `id` int(11) NOT NULL,
  `asistencia` tinyint(1) NOT NULL,
  `idPlatica_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_asistencia`
--

INSERT INTO `Usuarios_asistencia` (`id`, `asistencia`, `idPlatica_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 7),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_asistencia_idEstudiante`
--

CREATE TABLE `Usuarios_asistencia_idEstudiante` (
  `id` int(11) NOT NULL,
  `asistencia_id` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_asistencia_idEstudiante`
--

INSERT INTO `Usuarios_asistencia_idEstudiante` (`id`, `asistencia_id`, `estudiante_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 6),
(6, 1, 7),
(7, 1, 8),
(8, 1, 9),
(9, 1, 10),
(10, 1, 11),
(11, 1, 12),
(12, 1, 13),
(13, 1, 14),
(14, 1, 15),
(15, 1, 16),
(16, 1, 17),
(17, 1, 18),
(18, 1, 19),
(19, 1, 20),
(20, 1, 21),
(21, 1, 22),
(22, 1, 23),
(23, 1, 24),
(24, 1, 25),
(25, 1, 26),
(26, 1, 27),
(27, 1, 28),
(28, 1, 29),
(29, 1, 30),
(30, 1, 31),
(31, 1, 32),
(32, 1, 33),
(33, 1, 34),
(34, 1, 35),
(35, 1, 36),
(36, 1, 37),
(37, 1, 38),
(38, 1, 39),
(39, 1, 40),
(40, 1, 41),
(41, 1, 42),
(42, 1, 43),
(43, 1, 44),
(44, 1, 45),
(45, 1, 46),
(46, 1, 47),
(47, 1, 48),
(48, 1, 49),
(49, 1, 50),
(50, 1, 51),
(51, 1, 52),
(52, 1, 53),
(53, 1, 54),
(54, 1, 55),
(55, 1, 56),
(56, 1, 57),
(57, 1, 58),
(58, 1, 59),
(59, 1, 60),
(60, 1, 61),
(61, 1, 62),
(62, 1, 63),
(63, 1, 64),
(64, 1, 65),
(65, 1, 66),
(66, 1, 67),
(67, 1, 68),
(68, 1, 69),
(69, 1, 70),
(70, 1, 71),
(71, 1, 72),
(72, 1, 73),
(73, 1, 74),
(74, 1, 75),
(75, 1, 76),
(76, 1, 77),
(77, 1, 78),
(78, 1, 79),
(79, 1, 80),
(80, 1, 81),
(86, 2, 18),
(91, 2, 19),
(92, 2, 20),
(93, 2, 23),
(81, 2, 36),
(82, 2, 37),
(83, 2, 77),
(84, 2, 80),
(85, 2, 81),
(87, 2, 82),
(88, 2, 83),
(89, 2, 84),
(94, 2, 85),
(90, 2, 86),
(95, 3, 26),
(107, 3, 27),
(99, 3, 28),
(102, 3, 29),
(97, 3, 75),
(98, 3, 76),
(100, 3, 78),
(101, 3, 79),
(103, 3, 87),
(104, 3, 88),
(105, 3, 89),
(106, 3, 90),
(96, 3, 91),
(108, 3, 92),
(109, 3, 93),
(110, 3, 94),
(111, 3, 95),
(112, 4, 3),
(113, 4, 6),
(114, 4, 11),
(115, 4, 12),
(116, 4, 13),
(117, 4, 17),
(118, 4, 18),
(119, 4, 19),
(120, 4, 20),
(121, 4, 23),
(122, 4, 25),
(123, 4, 26),
(124, 4, 27),
(125, 4, 28),
(126, 4, 29),
(127, 4, 30),
(128, 4, 31),
(129, 4, 32),
(130, 4, 33),
(131, 4, 34),
(132, 4, 36),
(133, 4, 37),
(134, 4, 38),
(135, 4, 39),
(136, 4, 40),
(137, 4, 41),
(138, 4, 42),
(139, 4, 43),
(140, 4, 44),
(141, 4, 51),
(142, 4, 52),
(143, 4, 53),
(144, 4, 54),
(145, 4, 56),
(146, 4, 57),
(147, 4, 58),
(148, 4, 59),
(149, 4, 60),
(150, 4, 64),
(151, 4, 65),
(152, 4, 74),
(153, 4, 76),
(154, 4, 77),
(155, 4, 78),
(156, 4, 79),
(157, 4, 80),
(158, 4, 81),
(159, 4, 82),
(160, 4, 83),
(161, 4, 85),
(162, 4, 86),
(163, 4, 87),
(164, 4, 88),
(165, 4, 89),
(166, 4, 94),
(167, 4, 95),
(168, 4, 96),
(169, 4, 97),
(170, 4, 98),
(171, 4, 99),
(172, 4, 100),
(173, 4, 101),
(174, 4, 102),
(175, 4, 103),
(176, 4, 104),
(177, 4, 105),
(178, 4, 106),
(179, 4, 107),
(180, 4, 108),
(181, 4, 109),
(182, 4, 110),
(183, 4, 111),
(184, 4, 112),
(185, 4, 113),
(186, 4, 114),
(187, 4, 115),
(188, 4, 116),
(189, 4, 117),
(190, 4, 118),
(191, 4, 119),
(192, 5, 9),
(193, 5, 10),
(194, 5, 11),
(195, 5, 12),
(196, 5, 13),
(197, 5, 17),
(198, 5, 19),
(199, 5, 20),
(200, 5, 23),
(201, 5, 24),
(202, 5, 26),
(203, 5, 28),
(204, 5, 29),
(205, 5, 30),
(206, 5, 31),
(207, 5, 32),
(208, 5, 33),
(209, 5, 34),
(210, 5, 36),
(211, 5, 38),
(212, 5, 39),
(213, 5, 40),
(214, 5, 41),
(215, 5, 42),
(216, 5, 43),
(217, 5, 44),
(218, 5, 50),
(219, 5, 51),
(220, 5, 56),
(221, 5, 58),
(222, 5, 59),
(223, 5, 60),
(224, 5, 61),
(225, 5, 67),
(226, 5, 70),
(227, 5, 71),
(228, 5, 74),
(229, 5, 75),
(230, 5, 76),
(231, 5, 77),
(232, 5, 80),
(233, 5, 81),
(234, 5, 87),
(235, 5, 88),
(236, 5, 89),
(237, 5, 90),
(238, 5, 91),
(239, 5, 92),
(240, 5, 93),
(241, 5, 95),
(242, 5, 96),
(243, 5, 97),
(244, 5, 98),
(245, 5, 99),
(246, 5, 101),
(247, 5, 107),
(248, 5, 108),
(249, 5, 110),
(250, 5, 111),
(251, 5, 113),
(252, 5, 114),
(253, 5, 115),
(254, 5, 116),
(255, 5, 117),
(256, 5, 118),
(257, 5, 119),
(280, 5, 120),
(281, 5, 121),
(282, 5, 122),
(283, 5, 123),
(284, 5, 124),
(285, 5, 125),
(286, 5, 126),
(287, 5, 127),
(258, 5, 128),
(259, 5, 129),
(260, 5, 130),
(261, 5, 131),
(262, 5, 132),
(263, 5, 133),
(264, 5, 134),
(265, 5, 135),
(266, 5, 136),
(267, 5, 137),
(268, 5, 138),
(269, 5, 139),
(270, 5, 140),
(271, 5, 141),
(272, 5, 142),
(273, 5, 143),
(274, 5, 144),
(275, 5, 145),
(276, 5, 146),
(277, 5, 147),
(278, 5, 148),
(279, 5, 149),
(288, 6, 1),
(289, 6, 4),
(292, 6, 15),
(295, 6, 21),
(296, 6, 22),
(290, 6, 45),
(291, 6, 46),
(293, 6, 48),
(294, 6, 49),
(301, 6, 150),
(302, 6, 151),
(303, 6, 152),
(304, 6, 153),
(305, 6, 154),
(306, 6, 155),
(307, 6, 156),
(308, 6, 157),
(309, 6, 158),
(310, 6, 159),
(297, 6, 160),
(298, 6, 161),
(299, 6, 162),
(300, 6, 163),
(337, 7, 17),
(319, 7, 27),
(346, 7, 66),
(311, 7, 78),
(312, 7, 79),
(343, 7, 89),
(345, 7, 90),
(378, 7, 91),
(332, 7, 95),
(359, 7, 120),
(338, 8, 17),
(321, 8, 27),
(325, 8, 28),
(403, 8, 29),
(313, 8, 78),
(355, 8, 79),
(404, 8, 87),
(376, 8, 89),
(365, 8, 95),
(366, 8, 118),
(328, 8, 120),
(414, 8, 140),
(402, 9, 29),
(329, 9, 75),
(314, 9, 79),
(333, 9, 95),
(415, 9, 140),
(368, 10, 17),
(322, 10, 27),
(326, 10, 28),
(315, 10, 78),
(356, 10, 79),
(407, 10, 87),
(377, 10, 89),
(334, 10, 95),
(358, 10, 120),
(416, 10, 140),
(395, 11, 18),
(348, 11, 66),
(316, 11, 79),
(417, 11, 140),
(323, 12, 27),
(317, 12, 78),
(318, 12, 79),
(320, 13, 27),
(324, 13, 28),
(400, 13, 29),
(352, 13, 65),
(375, 13, 89),
(342, 13, 90),
(344, 13, 91),
(412, 13, 140),
(327, 14, 28),
(330, 15, 75),
(341, 16, 17),
(357, 16, 27),
(331, 16, 75),
(391, 17, 18),
(336, 17, 19),
(397, 17, 36),
(396, 17, 80),
(335, 17, 118),
(339, 18, 17),
(340, 19, 17),
(349, 19, 66),
(362, 19, 75),
(347, 20, 66),
(361, 20, 75),
(409, 21, 6),
(411, 21, 9),
(410, 21, 10),
(405, 21, 30),
(392, 21, 31),
(350, 21, 32),
(399, 21, 57),
(419, 21, 59),
(408, 21, 62),
(389, 21, 65),
(418, 21, 164),
(351, 22, 65),
(363, 22, 75),
(367, 23, 17),
(354, 23, 78),
(353, 23, 79),
(370, 23, 90),
(379, 23, 91),
(360, 23, 120),
(369, 24, 17),
(388, 24, 65),
(364, 24, 75),
(385, 25, 65),
(371, 25, 90),
(401, 26, 29),
(386, 26, 65),
(372, 26, 90),
(380, 26, 91),
(373, 27, 90),
(381, 27, 91),
(413, 27, 140),
(374, 28, 90),
(382, 28, 91),
(383, 29, 32),
(384, 30, 32),
(387, 31, 65),
(390, 32, 18),
(406, 32, 62),
(393, 33, 18),
(394, 34, 18),
(398, 34, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_estudiante`
--

CREATE TABLE `Usuarios_estudiante` (
  `id` int(11) NOT NULL,
  `matricula` varchar(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_estudiante`
--

INSERT INTO `Usuarios_estudiante` (`id`, `matricula`, `nombre`, `apellido_paterno`, `apellido_materno`, `estado`) VALUES
(1, 'S19014035', 'JAVIER ALBERTO', 'CALDERÓN', 'BLAS', 1),
(2, 'S19014017', 'GUSTAVO', 'FLORES', 'ROMERO', 1),
(3, 'S19014013', 'MARIANA YAZMIN', 'VARGAS', 'SEGURA', 1),
(4, 'S17012942', 'ÁNGEL EDUARDO', 'MARTÍNEZ', 'LEO LIM', 1),
(6, 'S17012982', 'BERNARDO', 'TORRES', 'MEDINA', 1),
(7, 'S17012938', 'ÁNGEL JAIR', 'TORRES', 'GALÁN', 1),
(8, 'S18012159', 'BRANDON', 'LÓPEZ', 'TENORIO', 1),
(9, 'S18012192', 'ALAN ADAIR', 'MORGADO', 'MORALES', 1),
(10, 'S18012181', 'DAN JAVIER', 'OLVERA', 'VILLEDA', 1),
(11, 'S18012185', 'FERNANDO', 'PAYÓN', 'AGUILAR', 1),
(12, 'S18012177', 'CARLOS DAVID', 'RODRÍGUEZ', 'ZAMORA', 1),
(13, 'S18012130', 'EDSON MANUEL', 'CARBALLO', 'VERA', 1),
(14, 'S18012187', 'LUIS GERARDO', 'RENDÓN', 'MARTÍNEZ', 1),
(15, 'S19014049', 'ANTONIO DE JESUS', 'DOMÍNGUEZ', 'GARCÍA', 1),
(16, 'S16011656', 'EDUARDO', 'ROSAS', 'RIVERA', 1),
(17, 'S17021850', 'BRUNO ANTONIO', 'LÓPEZ', 'LUJÁN', 1),
(18, 'S17010237', 'ALEXIS', 'ALARCÓN', 'JIMÉNEZ', 1),
(19, 'S17012946', 'ARTURO', 'VILLA', 'LÓPEZ', 1),
(20, 'S17012947', 'CÉSAR CHRISTOPHER', 'HERNÁNDEZ', 'APARICIO', 1),
(21, 'S19014039', 'HÉCTOR MANUEL', 'TORAL', 'HUERTA', 1),
(22, 'S19014029', 'EDER IVÁN', 'NEGRETE', 'GARCÍA', 1),
(23, 'S17012950', 'DIANA', 'ANTONIO', 'GÓMEZ', 1),
(24, 'S16011696', 'SAMUEL ELÍAS', 'GAONA', 'HERNÁNDEZ', 1),
(25, 'S16011702', 'JOSÉ MANUEL', 'PÉREZ', 'VERDEJO', 1),
(26, 'S17012967', 'DELMER ALEJANDRO', 'LÓPEZ', 'HERNÁNDEZ', 1),
(27, 'S17012953', 'RAFAEL', 'ANDRADE', 'MÉNDEZ', 1),
(28, 'S17013001', 'MAURICIO', 'CRUZ', 'PORTILLA', 1),
(29, 'S17012981', 'JUAN CARLOS', 'SUÁREZ', 'HERNÁNDEZ', 1),
(30, 'S18012125', 'EMILIO ANTONIO', 'ALARCÓN', 'SANTOS', 1),
(31, 'S18012162', 'RICARDO', 'RUÍZ', 'ALARCÓN', 1),
(32, 'S18012180', 'OMAR', 'BALTAZAR', 'ISLAS', 1),
(33, 'S18012146', 'DANIEL', 'PALE', 'PARRA', 1),
(34, 'S18012195', 'ALDO ULISES', 'COLORADO', 'DÍAZ', 1),
(35, 'S17012939', 'ALFREDO', 'DELGADO', 'SANTIAGO', 1),
(36, 'S17012985', 'JOSÉ ARTURO', 'GARCÍA', 'LÓPEZ', 1),
(37, 'S17012957', 'JAVIER DE JESUS', 'TAPIA', 'AMARO', 1),
(38, 'S18012193', 'MIGUEL ARTURO', 'GARCÍA', 'TORRES', 1),
(39, 'S18012147', 'SETH NOÉ', 'DÍAZ', 'DÍAZ', 1),
(40, 'S18012134', 'DANIEL', 'GARCÍA', 'MORALES', 1),
(41, 'S18012139', 'VICTOR ARTURO', 'RUÍZ', 'CUERVO', 1),
(42, 'S18012133', 'JOSÉ DAMIÁN', 'MENDOZA', 'CARMONA', 1),
(43, 'S18012163', 'LUZ IVANA', 'CORREA', 'HERNÁNDEZ', 1),
(44, 'S18012154', 'ANGEL DE JESUS', 'SÁNCHEZ', 'MORALES', 1),
(45, 'S19014023', 'KARINA', 'VALDÉS', 'IGLESIAS', 1),
(46, 'S19014024', 'LAURA LETICIA', 'RODRÍGUEZ', 'LÓPEZ', 1),
(47, 'S19014021', 'BRYAN JOSUÉ', 'HERNÁNDEZ', 'MARCIAL', 1),
(48, 'S19014034', 'ALEJANDRO', 'MONTERO', 'DORANTES', 1),
(49, 'S19014014', 'GLORIA', 'MENDOZA', 'GONZÁLEZ', 1),
(50, 'S15011643', 'LUIS DAVID', 'GALICIA', 'GARCÍA', 1),
(51, 'S15011669', 'MIGUEL ALEJANDRO', 'CÁMARA', 'ÁRCIGA', 1),
(52, 'S15022811', 'JESÚS EDUARDO', 'HERNÁNDEZ', 'MARTÍNEZ', 1),
(53, 'S15022810', 'MARIANA', 'CADENA', 'ROMERO', 1),
(54, 'S15011602', 'FERNANDO MANUEL', 'GUZMÁN', 'AJA', 1),
(55, 'S17021849', 'JUAN', 'GRANADOS', 'REYES', 1),
(56, 'S17012963', 'LUIS RODRIGO', 'FAJARDO', 'SONDÓN', 1),
(57, 'S18012171', 'ÁNGEL JOSÉ', 'CALDERÓN', 'ORTEGA', 1),
(58, 'S18012138', 'EFRAÍN RAZZIEL', 'ARENAS', 'RAMÍREZ', 1),
(59, 'S18012122', 'ADAIR BENJAMÍN', 'HERNÁNDEZ', 'ORTIZ', 1),
(60, 'S18012173', 'EDGAR', 'HERNÁNDEZ', 'VIVEROS', 1),
(61, 'S18012127', 'ANGEL VINICIO', 'SALAZAR', 'CEBALLOS', 1),
(62, 'S18012128', 'LESLIE', 'LOAIZA', 'MESEGUER', 1),
(63, 'S18012153', 'LUISA MARIANA', 'PULIDO', 'GONZÁLEZ', 1),
(64, 'S18012164', 'MARTÍN DE JESÚS', 'GARCÍA', 'PÉREZ', 1),
(65, 'S18012200', 'NINA VICTORIA', 'MORATO', 'MORALES', 1),
(66, 'S17028393', 'AARÓN', 'HERNÁNDEZ', 'LARA', 1),
(67, 'S17013002', 'ANGEL ASIS', 'REYES', 'OCHOA', 1),
(68, 'S19014041', 'AXEL', 'PANAMÁ', 'VELÁZQUEZ', 1),
(69, 'S19014040', 'JOSUÉ', 'SANGABRIEL', 'ALARCÓN', 1),
(70, 'S15011671', 'DANIEL', 'LADRÓN DE GUEVARA', 'SALINAS', 1),
(71, 'S18012132', 'ALEJANDRO', 'SANDOVAL', 'BRAVO', 1),
(72, 'S18012170', 'VÍCTOR MANUEL', 'ARREDONDO', 'REYES', 1),
(73, 'S18019640', 'JOSUÉ', 'CAPISTRÁN', 'GARCÍA', 1),
(74, 'S18019639', 'VICTOR MANUEL', 'MARTÍNEZ', 'FRANZONI', 1),
(75, 'S17012923', 'DULCE REGINA', 'SAAVEDRA', 'MATA', 1),
(76, 'S17012932', 'ERICK JAIR', 'MORALES', 'ROMERO', 1),
(77, 'S17012941', 'JOSÉ MIGUEL', 'QUIROZ', 'BENITEZ', 1),
(78, 'S17012974', 'RAFAEL', 'COLORADO', 'FERNÁNDEZ', 1),
(79, 'S17012992', 'LUIS FERNANDO', 'ONOFRE', 'PEDROZA', 1),
(80, 'S17012959', 'DAVID', 'BÁRCENAS', 'DURÁN', 1),
(81, 'S17012931', 'JOSUÉ ALEJANDRO', 'DÍAZ', 'ROJAS', 1),
(82, 'S16011713', 'ALINE MONTSERRAT', 'HERNÁNDEZ', 'FAJARDO', 1),
(83, 'S16011694', 'ANGEL DANIEL', 'SÁNCHEZ', 'MARTÍNEZ', 1),
(84, 'S16011728', 'ELSA IRASEMA', 'CAICERO', 'FRANCO', 1),
(85, 'S19025884', 'DIEGO ALEJANDRO', 'HIGUERA', 'SIERRA', 1),
(86, 'S15011610', 'GABRIELA', 'SANDOVAL', 'CRUZ', 1),
(87, 'S17012956', 'MARÍA JOSÉ', 'HERNÁNDEZ', 'MOLINOS', 1),
(88, 'S17012944', 'ALAN', 'GONZÁLEZ', 'HEREDIA', 1),
(89, 'S17012996', 'IRVING IVÁN', 'GUMESINDO', 'TRUJILLO', 1),
(90, 'S17012935', 'JOSUÉ ARMANDO', 'ACEVEDO', 'SUÁREZ', 1),
(91, 'S17012972', 'ARTURO IVÁN', 'ROMERO', 'PEÑA', 1),
(92, 'S17012993', 'LUIS ANGEL', 'OLIVO', 'MARTÍNEZ', 1),
(93, 'S17012937', 'ROBERTO', 'QUIÑONES', 'CÓRDOVA', 1),
(94, 'S16011690', 'JAVIER MIGUEL', 'JUÁREZ', 'FLORES', 1),
(95, 'S17013000', 'VICTOR MANUEL', 'NIÑO', 'MARTÍNEZ', 1),
(96, 'S18012155', 'ABNER JEFFREY', 'TAPIA', 'CRUZ', 1),
(97, 'S18012174', 'SAMMY', 'GUADARRAMA', 'CHÁVEZ', 1),
(98, 'S18012143', 'CÉSAR SERGIO', 'MARTÍNEZ', 'PALACIO', 1),
(99, 'S18012183', 'RICARDO', 'MOGUEL', 'SÁNCHEZ', 1),
(100, 'S18012150', 'JOSÉ LUIS', 'CARVAJAL', 'PACHECO', 1),
(101, 'S18012191', 'ALEXIS', 'ÁLVAREZ', 'ORTEGA', 1),
(102, 'S16011716', 'PAOLA MARAÍ', 'LÓPEZ', 'BENITEZ', 1),
(103, 'S15011649', 'ALBERTO', 'SÁNCHEZ', 'LÓPEZ', 1),
(104, 'S15011668', 'FERNANDO MIKHAIL', 'CABRERA', 'HERRERA', 1),
(105, 'S16011689', 'JETHRAN ENRIQUE', 'GÓMEZ', 'SAN GABRIEL', 1),
(106, 'S16011655', 'JOSÉ ALBERTO', 'ESPINOZA', 'CASTILLO', 1),
(107, 'S16011681', 'CARLOS DE JESÚS', 'CARRILLO', 'CEBALLOS', 1),
(108, 'S18012149', 'MARTHA MIROSLAVA', 'ORTIZ', 'LÓPEZ', 1),
(109, 'S15011638', 'ALAN YOSET', 'GARCÍA', 'CRUZ', 1),
(110, 'S18012124', 'YAZMIN ALEJANDRA', 'LUNA', 'HERRERA', 1),
(111, 'S17012954', 'JOSÉ MANUEL', 'IÑIGUEZ', 'LÓPEZ', 1),
(112, 'S17021846', 'JERZY ASHLEY', 'LÓPEZ', 'HERNÁNDEZ', 1),
(113, 'S18012190', 'JOSÉ LUIS', 'PADILLA', 'CRUZ', 1),
(114, 'S18019633', 'MARIO EDUARDO', 'DORANTES', 'HERNÁNDEZ', 1),
(115, 'S18012172', 'ÁNGEL ADRIÁN', 'CAMAL', 'GARCÍA', 1),
(116, 'S18012157', 'BRANDON', 'TRUJILLO', 'CAPISTRÁN', 1),
(117, 'S17012952', 'EDGAR ALEJANDRO', 'ORTEGA', 'CORTÉS', 1),
(118, 'S16011698', 'ALBERTO', 'HERNÁNDEZ', 'GÓMEZ', 1),
(119, 'S18012169', 'ANGEL DE JESUS', 'JUÁREZ', 'GARCÍA', 1),
(120, 'S17012965', 'MARÍA SAARAYIM', 'GONZÁLEZ', 'HERNÁNDEZ', 1),
(121, 'S18019635', 'ZURIEL', 'DÍAZ', 'AGUSTÍN', 1),
(122, 'S16011729', 'PUXKA', 'ACOSTA', 'DOMÍNGUEZ', 1),
(123, 'S18012161', 'DANIEL', 'HERNÁNDEZ', 'LUNA', 1),
(124, 'S18019636', 'DANIEL ABRAHAM', 'CERVANTES', 'BUENO', 1),
(125, 'S15011615', 'VICTOR ALFONSO', 'LARA', 'MEZA', 1),
(126, 'S19023595', 'CÉSAR ALBERTO', 'LÓPEZ', 'BOLAÑOS', 1),
(127, 'S15011608', 'ALBA CRISTINA', 'GARZA', 'CAYETANO', 1),
(128, 'S16020269', 'CÉSAR JESÚS', 'VEGA', 'DÍAZ', 1),
(129, 'S17023716', 'JOSÉ ISRAEL', 'ZAVALETA', 'RIVERA', 1),
(130, 'S18012194', 'FELIPE', 'MURGUIA', 'LEAL', 1),
(131, 'S19014028', 'ALFREDO', 'TORRES', 'ESTOPIER', 1),
(132, 'S19014019', 'ESTEBAN', 'MARTÍNEZ', 'GONZÁLEZ', 1),
(133, 'S19013976', 'ALDO IVÁN', 'MARQUEZ', 'RODRÍGUEZ', 1),
(134, 'S19023587', 'EDUARDO ANTONIO', 'CASTILLO', 'GARRIDO', 1),
(135, 'S19023584', 'CRISTOPHER', 'RODRÍGUEZ', 'SALAMANCA', 1),
(136, 'S16011686', 'JOSAFAT', 'MURILLO', 'HERNÁNDEZ', 1),
(137, 'S16030316', 'JUAN CARLOS', 'DOMÍNGUEZ', 'DOMÍNGUEZ', 1),
(138, 'S18012198', 'CARLOS GABRIEL', 'FLORES', 'LIRA', 1),
(139, 'S17021848', 'DAVID ALBERTO', 'RAMÍREZ', 'CASTILLO', 1),
(140, 'S17012936', 'LUIS ROBERTO', 'HERRERA', 'HERNÁNDEZ', 1),
(141, 'S18012152', 'DARIO', 'CASTELLANOS', 'HERNÁNDEZ', 1),
(142, 'S18012175', 'ASAEL', 'MARCIAL', 'GRAJALES', 1),
(143, 'S19025033', 'JAQUELINE', 'SUÁREZ', 'ESQUIBEL', 1),
(144, 'S18019632', 'ALBERTO', 'GALINDO', 'BAXIN', 1),
(145, 'S19014020', 'JOHANN ALEXIS', 'OLIVARES', 'GALINDO', 1),
(146, 'S19014045', 'DAVID ALEXANDER', 'MIJANGOS', 'PAREDES', 1),
(147, 'S19014047', 'KEVIN ALFONSO', 'MONCAYO', 'GUTIÉRREZ', 1),
(148, 'S17012971', 'JONATHAN DE JESÚS', 'MORENO', 'MARTÍNEZ', 1),
(149, 'S16011669', 'FÉLIX RAFAEL', 'HERNÁNDEZ', 'BECERRA', 1),
(150, 'S19013993', 'SILVIA KRISTEL', 'SÁNCHEZ', 'PIÑA', 1),
(151, 'S19013982', 'ANGÉLICA DEL ROSARIO', 'VALERIO', 'BARRADAS', 1),
(152, 'S19013989', 'CARLOS MIGUEL', 'PÉREZ', 'PÉREZ', 1),
(153, 'S19013995', 'MARLON', 'MONTIEL', 'PÉREZ', 1),
(154, 'S19013996', 'JUAN CARLOS', 'DORANTES', 'SAAVEDRA', 1),
(155, 'S19014001', 'DANIEL EDUARDO', 'ANOTA', 'PAXTIAN', 1),
(156, 'S19013992', 'DANIEL JOSHUA', 'ALVARADO', 'AGUIRRE', 1),
(157, 'S19014050', 'RAÚL ARTURO', 'PEREDO', 'ESTUDILLO', 1),
(158, 'S17021852', 'HÉCTOR GUILLERMO', 'ESCOBAR', 'HERNÁNDEZ', 1),
(159, 'S19014009', 'JOSÉ EMILIANO', 'KURI', 'GUZMÁN', 1),
(160, 'S19023585', 'ROBERTO', 'MONTERO', 'BAIZABAL', 1),
(161, 'S19014011', 'EDSON ADAIR', 'ROMERO', 'ARENAS', 1),
(162, 'S19013986', 'CARLOS GIOVANI', 'ALONSO', 'RAMÍREZ', 1),
(163, 'S19014036', 'JOSÉ GILBERTO', 'RIVERA', 'GÓMEZ', 1),
(164, 'S18012142', 'CHRISTIAN FELIPE DE JESÚS', 'ÁVILA', 'VALDÉS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_facilitador`
--

CREATE TABLE `Usuarios_facilitador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `nivel_academico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_facilitador`
--

INSERT INTO `Usuarios_facilitador` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `estado`, `nivel_academico_id`) VALUES
(1, 'DANIEL', 'ESCAMILLA', 'CORTÉS', 1, 4),
(2, 'ANTONIA', 'VALDIVIESO', 'AQUINO', 1, 6),
(3, 'ELIZABETH', 'ROMERO', 'RINCÓN', 1, 6),
(4, 'ÁNGEL JUAN', 'SÁNCHEZ', 'GARCÍA', 1, 1),
(5, 'MARÍA KAREN', 'CORTÉS', 'VERDÍN', 1, 1),
(6, 'RAFAEL', 'MUÑOZ', 'RAMÓN', 1, 5),
(7, 'SOFTWARE GURÚ', '-', '-', 1, 5),
(8, 'MIGUEL', 'ENRIQUEZ', '-', 1, 5),
(9, 'MARÍA SYLVIA', 'DEL RÍO', '-', 1, 5),
(10, 'DAVID', 'SOL', '-', 1, 5),
(11, 'GABRIELA', 'SALINAS', '-', 1, 5),
(12, 'JULIANA', 'ÁVILA', '-', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_nivel`
--

CREATE TABLE `Usuarios_nivel` (
  `id` int(11) NOT NULL,
  `abreviatura` varchar(15) NOT NULL,
  `nivel_academico` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_nivel`
--

INSERT INTO `Usuarios_nivel` (`id`, `abreviatura`, `nivel_academico`) VALUES
(1, 'Dr(a).', 'Doctorado'),
(2, 'Mtro(a).', 'Maestría'),
(3, 'Lic.', 'Licenciatura'),
(4, '-', 'Estudiante'),
(5, 'Otro', 'Otro'),
(6, 'Enf.', 'Enfermero(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_platica`
--

CREATE TABLE `Usuarios_platica` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `lugar` varchar(300) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `idFacilitador_id` int(11) NOT NULL,
  `idProveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_platica`
--

INSERT INTO `Usuarios_platica` (`id`, `nombre`, `fecha`, `hora`, `lugar`, `estado`, `idFacilitador_id`, `idProveedor_id`) VALUES
(1, 'Software engineer a game developer: La realidad de los primeros pasos', '2020-03-04', '12:00:00.000000', 'Auditorio FEI', 1, 1, 1),
(2, 'Promoción a la salud', '2020-03-02', '17:00:00.000000', 'SALÓN 111', 1, 2, 2),
(3, 'Promoción a la salud', '2020-03-05', '13:00:00.000000', 'SALÓN F103', 1, 3, 2),
(4, 'Optimizando bioinspiradamente soluciones en la Ingeniería de Software', '2020-03-10', '13:00:00.000000', 'Auditorio FEI', 1, 4, 3),
(5, 'Modelos y Dominios', '2020-02-27', '13:00:00.000000', 'Auditorio FEI', 1, 5, 3),
(6, 'Uso de Eminus 3.0', '2020-03-03', '13:00:00.000000', 'SALÓN AUDIOVISUAL', 1, 6, 1),
(7, 'Así publicamos las apps de Spotify sin stress', '2020-04-20', '00:00:00.000000', 'Virtual', 1, 7, 4),
(8, 'A philosophy of Software Design: Estrategias para controlar la complejidad del software', '2020-04-21', '00:00:00.000000', 'Virtual', 1, 7, 4),
(9, 'Mecanismos y patrones para acelerar adopción en arquitecturas de microservicios', '2020-04-21', '00:00:00.000000', 'Virtual', 1, 8, 4),
(10, 'Cómo construir una plataforma poderosa de datos en un ambiente con recursos restringidos', '2020-04-22', '00:00:00.000000', 'Virtual', 1, 7, 4),
(11, 'Arquitectura basada en eventos para principiantes con Apache Kafka', '2020-04-22', '00:00:00.000000', 'Virtual', 1, 7, 4),
(12, 'Creando culturas centradas en el usuario', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 7, 4),
(13, 'Lightning talk: Deuda técnica', '2020-04-20', '00:00:00.000000', 'Virtual', 0, 7, 4),
(14, 'Protocolos. Del byte al http pasando por modbus y mqtt', '2020-04-24', '00:00:00.000000', 'Virtual', 1, 7, 4),
(15, 'Planear una investigación user research para usuarios con síndrome de Down', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 9, 4),
(16, 'Lightning talk: JamStack, el futuro de los sitios Web', '2020-04-24', '00:00:00.000000', 'Virtual', 1, 10, 4),
(17, 'Gestión de identidad en la era de serverless y microservicios', '2020-04-21', '00:00:00.000000', 'Virtual', 1, 7, 4),
(18, 'Ejemplos prácticos de la Ciencia de Datos en el análisis bursátil', '2020-04-22', '00:00:00.000000', 'Virtual', 1, 7, 4),
(19, 'Transformación a través del diseño', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 7, 4),
(20, 'Diseño de un sistema de gestión de archivos escalable y resiliente', '2020-04-21', '00:00:00.000000', 'Virtual', 1, 7, 4),
(21, 'Cómo construir sitios web con Gatsby', '2020-04-24', '11:00:00.000000', 'Virtual', 1, 7, 4),
(22, 'Achieving your goals: 5 tips to successfully achieve your goals', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 7, 4),
(23, 'Hacer lo correcto y correctamente: Cómo mantener el enfoque al colaborar de forma remota', '2020-04-20', '00:00:00.000000', 'Virtual', 1, 7, 4),
(24, 'La vida después de la escuela', '2020-04-24', '00:00:00.000000', 'Virtual', 1, 7, 4),
(25, 'La falsa noción de Agile', '2020-04-20', '00:00:00.000000', 'Virtual', 1, 7, 4),
(26, 'Echemos un vistazo a la arquitectura de automatización de pruebas', '2020-04-20', '00:00:00.000000', 'Virtual', 1, 7, 4),
(27, 'La perspectiva del testing en DevOps', '2020-04-20', '00:00:00.000000', 'Virtual', 1, 7, 4),
(28, 'Cypress en un mundo lleno de Selenium', '2020-04-20', '00:00:00.000000', 'Virtual', 1, 7, 4),
(29, '¿Es la empatía suficiente?: Una introducción a la accesibilidad y diseño inclusivo', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 7, 4),
(30, 'Acciones de comunidades tech en tiempos de COVID-19', '2020-04-22', '00:00:00.000000', 'Virtual', 1, 7, 4),
(31, 'Datos públicos para decisiones financieras difíciles', '2020-04-24', '00:00:00.000000', 'Virtual', 1, 7, 4),
(32, 'Observabilidad: Todo lo que hay que ver', '2020-04-21', '00:00:00.000000', 'Virtual', 1, 7, 4),
(33, 'De lo operativo a lo estratégico: un modelo de management de diseño', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 11, 4),
(34, 'Ergonomía y UX en el retall', '2020-04-23', '00:00:00.000000', 'Virtual', 1, 12, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_proveedor`
--

CREATE TABLE `Usuarios_proveedor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_proveedor`
--

INSERT INTO `Usuarios_proveedor` (`id`, `nombre`, `estado`) VALUES
(1, 'LICENCIATURA EN INGENIERÍA DE SOFTWARE', 1),
(2, 'CENDHIU', 1),
(3, 'CUERPO ACADÉMICO: INGENIERÍA Y TECNOLOGÍA DE SOFTWARE', 1),
(4, 'SOFTWARE GURÚ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_usuario`
--

CREATE TABLE `Usuarios_usuario` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios_usuario`
--

INSERT INTO `Usuarios_usuario` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$180000$bUk62YaHGTjm$YPukYh+XH8koM1swAZDvEhTta7q+yoi+qlp/wD+KOdE=', '2020-06-22 23:37:53.390307', 0, 'esme_hg', 'Esmeralda', 'Hernández', '', 0, 1, '2020-06-22 22:55:10.539633');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_usuario_groups`
--

CREATE TABLE `Usuarios_usuario_groups` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios_usuario_user_permissions`
--

CREATE TABLE `Usuarios_usuario_user_permissions` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_Usuarios_usuario_id` (`user_id`);

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
-- Indices de la tabla `Usuarios_asistencia`
--
ALTER TABLE `Usuarios_asistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuarios_asistencia_idPlatica_id_b80c2961_fk_Usuarios_platica_id` (`idPlatica_id`);

--
-- Indices de la tabla `Usuarios_asistencia_idEstudiante`
--
ALTER TABLE `Usuarios_asistencia_idEstudiante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Usuarios_asistencia_idEs_asistencia_id_estudiante_cb7595fe_uniq` (`asistencia_id`,`estudiante_id`),
  ADD KEY `Usuarios_asistencia__estudiante_id_fd9e965a_fk_Usuarios_` (`estudiante_id`);

--
-- Indices de la tabla `Usuarios_estudiante`
--
ALTER TABLE `Usuarios_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- Indices de la tabla `Usuarios_facilitador`
--
ALTER TABLE `Usuarios_facilitador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuarios_facilitador_nivel_academico_id_c5c76359_fk_Usuarios_` (`nivel_academico_id`);

--
-- Indices de la tabla `Usuarios_nivel`
--
ALTER TABLE `Usuarios_nivel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abreviatura` (`abreviatura`),
  ADD UNIQUE KEY `nivel_academico` (`nivel_academico`);

--
-- Indices de la tabla `Usuarios_platica`
--
ALTER TABLE `Usuarios_platica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuarios_platica_idFacilitador_id_1c36f36e_fk_Usuarios_` (`idFacilitador_id`),
  ADD KEY `Usuarios_platica_idProveedor_id_e085a952_fk_Usuarios_` (`idProveedor_id`);

--
-- Indices de la tabla `Usuarios_proveedor`
--
ALTER TABLE `Usuarios_proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Usuarios_usuario`
--
ALTER TABLE `Usuarios_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `Usuarios_usuario_groups`
--
ALTER TABLE `Usuarios_usuario_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Usuarios_usuario_groups_usuario_id_group_id_974fbf5c_uniq` (`usuario_id`,`group_id`),
  ADD KEY `Usuarios_usuario_groups_group_id_cf7bd56f_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `Usuarios_usuario_user_permissions`
--
ALTER TABLE `Usuarios_usuario_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Usuarios_usuario_user_pe_usuario_id_permission_id_d113e22f_uniq` (`usuario_id`,`permission_id`),
  ADD KEY `Usuarios_usuario_use_permission_id_4a44c74d_fk_auth_perm` (`permission_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `Usuarios_asistencia`
--
ALTER TABLE `Usuarios_asistencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `Usuarios_asistencia_idEstudiante`
--
ALTER TABLE `Usuarios_asistencia_idEstudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT de la tabla `Usuarios_estudiante`
--
ALTER TABLE `Usuarios_estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT de la tabla `Usuarios_facilitador`
--
ALTER TABLE `Usuarios_facilitador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `Usuarios_nivel`
--
ALTER TABLE `Usuarios_nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Usuarios_platica`
--
ALTER TABLE `Usuarios_platica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `Usuarios_proveedor`
--
ALTER TABLE `Usuarios_proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Usuarios_usuario`
--
ALTER TABLE `Usuarios_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Usuarios_usuario_groups`
--
ALTER TABLE `Usuarios_usuario_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Usuarios_usuario_user_permissions`
--
ALTER TABLE `Usuarios_usuario_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Usuarios_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `Usuarios_usuario` (`id`);

--
-- Filtros para la tabla `Usuarios_asistencia`
--
ALTER TABLE `Usuarios_asistencia`
  ADD CONSTRAINT `Usuarios_asistencia_idPlatica_id_b80c2961_fk_Usuarios_platica_id` FOREIGN KEY (`idPlatica_id`) REFERENCES `Usuarios_platica` (`id`);

--
-- Filtros para la tabla `Usuarios_asistencia_idEstudiante`
--
ALTER TABLE `Usuarios_asistencia_idEstudiante`
  ADD CONSTRAINT `Usuarios_asistencia__asistencia_id_2c72bdf6_fk_Usuarios_` FOREIGN KEY (`asistencia_id`) REFERENCES `Usuarios_asistencia` (`id`),
  ADD CONSTRAINT `Usuarios_asistencia__estudiante_id_fd9e965a_fk_Usuarios_` FOREIGN KEY (`estudiante_id`) REFERENCES `Usuarios_estudiante` (`id`);

--
-- Filtros para la tabla `Usuarios_facilitador`
--
ALTER TABLE `Usuarios_facilitador`
  ADD CONSTRAINT `Usuarios_facilitador_nivel_academico_id_c5c76359_fk_Usuarios_` FOREIGN KEY (`nivel_academico_id`) REFERENCES `Usuarios_nivel` (`id`);

--
-- Filtros para la tabla `Usuarios_platica`
--
ALTER TABLE `Usuarios_platica`
  ADD CONSTRAINT `Usuarios_platica_idFacilitador_id_1c36f36e_fk_Usuarios_` FOREIGN KEY (`idFacilitador_id`) REFERENCES `Usuarios_facilitador` (`id`),
  ADD CONSTRAINT `Usuarios_platica_idProveedor_id_e085a952_fk_Usuarios_` FOREIGN KEY (`idProveedor_id`) REFERENCES `Usuarios_proveedor` (`id`);

--
-- Filtros para la tabla `Usuarios_usuario_groups`
--
ALTER TABLE `Usuarios_usuario_groups`
  ADD CONSTRAINT `Usuarios_usuario_gro_usuario_id_f3985b6d_fk_Usuarios_` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios_usuario` (`id`),
  ADD CONSTRAINT `Usuarios_usuario_groups_group_id_cf7bd56f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `Usuarios_usuario_user_permissions`
--
ALTER TABLE `Usuarios_usuario_user_permissions`
  ADD CONSTRAINT `Usuarios_usuario_use_permission_id_4a44c74d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `Usuarios_usuario_use_usuario_id_9d2fc700_fk_Usuarios_` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios_usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
