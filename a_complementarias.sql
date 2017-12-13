-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-12-2017 a las 17:08:37
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `a_complementarias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `act_complementaria`
--

CREATE TABLE IF NOT EXISTS `act_complementaria` (
  `clave_act` int(11) NOT NULL,
  `nombre_actividad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`clave_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `act_complementaria`
--

INSERT INTO `act_complementaria` (`clave_act`, `nombre_actividad`) VALUES
(1, 'Asesorias'),
(2, 'Ajedrez'),
(3, 'Futbol '),
(4, 'Volibol'),
(5, 'Box'),
(6, 'Danza'),
(7, 'Defensa Personal'),
(8, 'Natacion'),
(9, 'Atletismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `Clave` varchar(45) NOT NULL,
  `nombre_carrera` varchar(45) NOT NULL,
  PRIMARY KEY (`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`Clave`, `nombre_carrera`) VALUES
('', ''),
('COPU-2010-205', 'Contador Publico'),
('IAGR-2010-214', 'Ingeniería en Agronomía'),
('IAMD-2010-213', 'Ingeniería en Administración'),
('IINF-2010-220', 'Ingeniería en Informática'),
('LADM-2010-234', 'Licenciatura en Administración'),
('LBIO-2010-233', 'Licenciatura en Biologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `rfc_depto` varchar(45) NOT NULL,
  `DeptoNombre` varchar(45) DEFAULT NULL,
  `trabajador_rfc` varchar(45) NOT NULL,
  PRIMARY KEY (`rfc_depto`),
  KEY `fk_departamento_trabajador1_idx` (`trabajador_rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`rfc_depto`, `DeptoNombre`, `trabajador_rfc`) VALUES
('1', 'Departamento de Sistemas y Computacion', 'GOVL801204159'),
('2', 'Departamento de Servicios Escolares', 'GAPE301082340'),
('3', 'Departamento de Viculacion Academica', 'SAGA504823416'),
('4', 'Departamento de Extra Escolares', 'HEAS201505137');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE IF NOT EXISTS `estudiante` (
  `No_contro` int(11) NOT NULL,
  `NombreEstudiante` varchar(45) DEFAULT NULL,
  `apellidoPaterno_Estudiante` varchar(45) DEFAULT NULL,
  `apellidoMaterno_Estudiante` varchar(45) DEFAULT NULL,
  `semestre` varchar(45) DEFAULT NULL,
  `firma` varchar(45) DEFAULT NULL,
  `carrera_clave` varchar(45) NOT NULL,
  PRIMARY KEY (`No_contro`,`carrera_clave`),
  KEY `fk_estudiante_carrera1_idx` (`carrera_clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`No_contro`, `NombreEstudiante`, `apellidoPaterno_Estudiante`, `apellidoMaterno_Estudiante`, `semestre`, `firma`, `carrera_clave`) VALUES
(15930129, 'Daniel', 'Macedonio', 'Bedolla', 'V', NULL, 'IINF-2010-220'),
(15930159, 'Citlali', 'Arroyo', 'Romero', 'V', NULL, 'IINF-2010-220'),
(15930163, 'Alan Henry', 'Alcantar', 'Medrano', 'V', NULL, 'IINF-2010-220'),
(15930164, 'Lucas Alberto', 'Alonso ', 'Cruz', 'V', NULL, 'IINF-2010-220'),
(15930167, 'Paola Rubi', 'Benitez', 'Bartolo', 'V', NULL, 'IINF-2010-220'),
(15930168, 'Neftali', 'Cabrera', 'Torres', 'V', NULL, 'IINF-2010-220'),
(15930170, 'Mario de Jesus', 'Carranza', 'Diaz', 'V', NULL, 'IINF-2010-220'),
(15930178, 'Ernesto Quintin', 'Garcia', 'Pineda', 'V', NULL, 'IINF-2010-220'),
(15930185, 'Alondra', 'Jaimes', 'Gutierrez', 'V', NULL, 'IINF-2010-220'),
(15930187, 'Evelia', 'Maldonado', 'Miranda', 'V', NULL, 'IINF-2010-220'),
(15930200, 'Jose Ramon', 'Ortiz', 'Lopez', 'V', NULL, 'IINF-2010-220'),
(15930208, 'Jorge Luis', 'Roque', 'Pineda', 'V', '', 'IINF-2010-220'),
(15930210, 'Carlos Alberto', 'Ruiz', 'Gutierrez', 'V', NULL, 'IINF-2010-220'),
(15930216, 'Hernan', 'Santana', 'Benitez', 'V', NULL, 'IINF-2010-220'),
(15930217, 'Natolio', 'Tapia', 'Mondragon', 'V', NULL, 'IINF-2010-220'),
(15930218, 'Jonathan', 'Urieta', 'AlbarrÃ¡n', 'V', NULL, 'IINF-2010-220'),
(15930219, 'Marco Antonio', 'Valle', 'Toledo', 'V', NULL, 'IINF-2010-220'),
(15930221, 'Agustin', 'Vivas', 'Pineda', 'V', NULL, 'IINF-2010-220'),
(15930227, 'Cristian', 'Alonso', 'Ignacio', 'V', NULL, 'IINF-2010-220'),
(16930194, 'Jorge Luis', 'Ocampo', 'Millan', 'V', NULL, 'IINF-2010-220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituto`
--

CREATE TABLE IF NOT EXISTS `instituto` (
  `clave` varchar(45) NOT NULL,
  `NombreInstituto` varchar(45) NOT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituto`
--

INSERT INTO `instituto` (`clave`, `NombreInstituto`) VALUES
('', ''),
('12DIT0005B', 'Instituto Tecnologico de Cd. Altamirano'),
('12DTA001589', 'CBTA18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `rfc` varchar(45) NOT NULL,
  `nombre_instructor` varchar(45) DEFAULT NULL,
  `apaterno_instructor` varchar(45) DEFAULT NULL,
  `amaterno_instructor` varchar(45) DEFAULT NULL,
  `act_complementaria_clave_act` int(11) NOT NULL,
  PRIMARY KEY (`rfc`),
  KEY `fk_instructor_act_complementaria_idx` (`act_complementaria_clave_act`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`rfc`, `nombre_instructor`, `apaterno_instructor`, `amaterno_instructor`, `act_complementaria_clave_act`) VALUES
('', 'ddsgbfb', 'vddsvsv', '', 2),
('GASA048937651', 'Angel', 'Garcia', 'Sebastian', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE IF NOT EXISTS `solicitud` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `asunto` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `instituto_clave` varchar(45) NOT NULL,
  `instructor_rfc` varchar(45) NOT NULL,
  `estudiante_No_contro` int(11) NOT NULL,
  PRIMARY KEY (`folio`),
  KEY `fk_solicitud_instituto1_idx` (`instituto_clave`),
  KEY `fk_solicitud_instructor1_idx` (`instructor_rfc`),
  KEY `fk_solicitud_estudiante1_idx` (`estudiante_No_contro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE IF NOT EXISTS `trabajador` (
  `RFC` varchar(45) NOT NULL,
  `NombreTrabajador` varchar(45) DEFAULT NULL,
  `apellido_p_trabajador` varchar(45) DEFAULT NULL,
  `apellido_m_trabajador` varchar(45) DEFAULT NULL,
  `clave_presupuestal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`RFC`, `NombreTrabajador`, `apellido_p_trabajador`, `apellido_m_trabajador`, `clave_presupuestal`) VALUES
('GAPE301082340', 'Ernesto Quintin', 'Garcia', 'Pineda', NULL),
('GOVL801204159', 'Leonel', 'Gonzalez', 'Vidales', ''),
('HEAS201505137', 'Salvador', 'Hernandez', 'Abarca', ''),
('ROCL349087561', 'Lucas', 'Roque', 'Cabrera', ''),
('SAGA504823416', 'Alberto', 'Sanchez', 'Gonzales', NULL),
('TOMM149503032', '', '', '', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`trabajador_rfc`) REFERENCES `trabajador` (`RFC`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_estudiante_carrera1` FOREIGN KEY (`carrera_clave`) REFERENCES `carrera` (`clave`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`act_complementaria_clave_act`) REFERENCES `act_complementaria` (`clave_act`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`instituto_clave`) REFERENCES `instituto` (`clave`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`instructor_rfc`) REFERENCES `instructor` (`rfc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_ibfk_3` FOREIGN KEY (`estudiante_No_contro`) REFERENCES `estudiante` (`No_contro`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
