-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.displacement_forms
DROP TABLE IF EXISTS `displacement_forms`;
CREATE TABLE IF NOT EXISTS `displacement_forms` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.displacement_forms: ~3 rows (aproximadamente)
DELETE FROM `displacement_forms`;
INSERT INTO `displacement_forms` (`id`, `name`) VALUES
	(1, 'rastrero'),
	(2, 'cuadrupedo'),
	(3, 'dipedo');

-- Volcando estructura para tabla los_animales.embryonic_developments
DROP TABLE IF EXISTS `embryonic_developments`;
CREATE TABLE IF NOT EXISTS `embryonic_developments` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.embryonic_developments: ~3 rows (aproximadamente)
DELETE FROM `embryonic_developments`;
INSERT INTO `embryonic_developments` (`id`, `name`) VALUES
	(1, 'víviparo'),
	(2, 'ovovíparos'),
	(3, 'vivíparos');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats: ~3 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'terrestre'),
	(2, 'aeros'),
	(3, 'acuaticos');

-- Volcando estructura para tabla los_animales.habitats_animals
DROP TABLE IF EXISTS `habitats_animals`;
CREATE TABLE IF NOT EXISTS `habitats_animals` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `animal_id` smallint(5) unsigned NOT NULL,
  `habitats_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats_animals: ~0 rows (aproximadamente)
DELETE FROM `habitats_animals`;

-- Volcando estructura para tabla los_animales.species
DROP TABLE IF EXISTS `species`;
CREATE TABLE IF NOT EXISTS `species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `population` varchar(50) NOT NULL DEFAULT '',
  `food_type_id` smallint(6) NOT NULL,
  `embryonic_development_id` smallint(6) NOT NULL,
  `statu_conservation_id` smallint(6) NOT NULL,
  `displacement_form_id` smallint(6) NOT NULL,
  `type_especie` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species: ~0 rows (aproximadamente)
DELETE FROM `species`;

-- Volcando estructura para tabla los_animales.status_conservation
DROP TABLE IF EXISTS `status_conservation`;
CREATE TABLE IF NOT EXISTS `status_conservation` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.status_conservation: ~3 rows (aproximadamente)
DELETE FROM `status_conservation`;
INSERT INTO `status_conservation` (`id`, `name`) VALUES
	(1, 'bajo riesgo'),
	(2, 'amenazada'),
	(3, 'estintas');

-- Volcando estructura para tabla los_animales.types_food
DROP TABLE IF EXISTS `types_food`;
CREATE TABLE IF NOT EXISTS `types_food` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.types_food: ~4 rows (aproximadamente)
DELETE FROM `types_food`;
INSERT INTO `types_food` (`id`, `name`) VALUES
	(1, 'carnivolos'),
	(2, 'insertivoros'),
	(3, 'herbivoros'),
	(4, 'omnivoros');

-- Volcando estructura para tabla los_animales.types_species
DROP TABLE IF EXISTS `types_species`;
CREATE TABLE IF NOT EXISTS `types_species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.types_species: ~7 rows (aproximadamente)
DELETE FROM `types_species`;
INSERT INTO `types_species` (`id`, `name`) VALUES
	(1, 'aves'),
	(2, 'mamiferos'),
	(3, 'anfibios'),
	(4, 'reptiles'),
	(5, 'peces'),
	(6, 'insectos'),
	(7, 'aracnidos');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
