-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         9.0.0 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla ejercicios.opinion
CREATE TABLE IF NOT EXISTS `opinion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `usuario` varchar(64) NOT NULL,
  `puntuacion` int DEFAULT NULL,
  `pelicula_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla ejercicios.opinion: ~7 rows (aproximadamente)
INSERT INTO `opinion` (`id`, `descripcion`, `usuario`, `puntuacion`, `pelicula_id`) VALUES
	(1, 'Amazing movie with mind-bending concepts!', 'user1@example.com', 9, 1),
	(2, 'A bit confusing, but visually stunning.', 'user2@example.com', 8, 1),
	(3, 'Classic sci-fi that redefined a genre.', 'user1@example.com', 10, 2),
	(4, 'Still holds up after all these years.', 'user2@example.com', 9, 2),
	(5, 'A visually stunning exploration of space and time.', 'user1@example.com', 10, 3),
	(6, 'A bit long but worth the watch.', 'user1@example.com', 8, 3),
	(7, 'Opinion 1', 'a@a.a', 2, 5);

-- Volcando estructura para tabla ejercicios.pelicula
CREATE TABLE IF NOT EXISTS `pelicula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla ejercicios.pelicula: ~4 rows (aproximadamente)
INSERT INTO `pelicula` (`id`, `titulo`) VALUES
	(1, 'Inception'),
	(2, 'The Matrix'),
	(3, 'Interstellar'),
	(5, 'Pelicula 1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
