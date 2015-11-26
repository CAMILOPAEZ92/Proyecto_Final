/*
SQLyog Ultimate v8.82 
MySQL - 5.6.26 : Database - juego
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`juego` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `juego`;

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `numpregunta` int(11) NOT NULL,
  `opcion1` varchar(50) DEFAULT NULL,
  `opcion2` varchar(50) DEFAULT NULL,
  `opcion3` varchar(50) DEFAULT NULL,
  `opcion4` varchar(50) DEFAULT NULL,
  `pregunta` varchar(100) DEFAULT NULL,
  `correcto` int(11) DEFAULT NULL,
  PRIMARY KEY (`numpregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`numpregunta`,`opcion1`,`opcion2`,`opcion3`,`opcion4`,`pregunta`,`correcto`) values (1,'Brasilia','Sao Pablo','Leticia','Rio de Janeiro','Cual es la capital de Brasil?',NULL),(2,'Bogota ','Medellin','Cali','Cartagena','Cual es la capital de Colombia?',NULL),(3,'Burj Dubai','Colpatria','Taipei 101','Torre Eiffel','Cual es el edificio mas alto de mund',NULL),(4,'Barcelona','Real Madrid','Chelsea','Manchester United','Cual equipo fue el ganador de la Champions League en el 2015?',NULL),(5,'Diomedes Diaz','Silvestre ','Rafael Orozco','Peter Manjares','Cual es el interprete de la cancion el condor herido?',NULL),(6,'Facatativa','Chia','Fusagasuga','Zipaquira','Cual es la sede principal de la Universidad de Cundinamarca?',NULL),(7,'Cristiano','Messi','Neymar','Rodallega','Cual es el mejor jugador del mundo, del ano 2013?',NULL),(8,'Johnny Deep','Arnol','Robert d niro','Jhon travolta','Cual es el actor que personifica Jacks Sparrow en piratas del caribe?',NULL),(9,'Stan lennin','vladimir putin','hitler','barack obama','quien fundo la union sovietica_',NULL),(10,'Camilo Paez','Alvaro Uribe','Gustavo Petro','Juan Manuel Santos','quien es el actual presidente de colombia?',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
