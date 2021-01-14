CREATE DATABASE course13;

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromAddress` varchar(200) NOT NULL,
  `toAddress` varchar(200) NOT NULL,
  `driverId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driverFK` (`driverId`),
  CONSTRAINT `driverFK` FOREIGN KEY (`driverId`) REFERENCES `drivers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

