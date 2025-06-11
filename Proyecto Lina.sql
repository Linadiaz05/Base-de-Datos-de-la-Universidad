-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_BD_UNIVERSIDAD
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.21-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Administrativos`
--

DROP TABLE IF EXISTS `Administrativos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Administrativos` (
  `id_Administrativo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido1` varchar(100) NOT NULL,
  `Apellido2` varchar(100) DEFAULT NULL,
  `Documento_identidad` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Cargo` varchar(100) NOT NULL,
  `Salario` decimal(10,2) NOT NULL,
  `Fecha_Egreso` date DEFAULT NULL,
  `id_Facultad` int(11) NOT NULL,
  PRIMARY KEY (`id_Administrativo`),
  UNIQUE KEY `Documento_identidad_UNIQUE` (`Documento_identidad`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `Facultad_idx` (`id_Facultad`),
  CONSTRAINT `Facultad` FOREIGN KEY (`id_Facultad`) REFERENCES `Facultades` (`id_Facultad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrativos`
--

LOCK TABLES `Administrativos` WRITE;
/*!40000 ALTER TABLE `Administrativos` DISABLE KEYS */;
INSERT INTO `Administrativos` VALUES (106,'Carlos Alberto','Gómez','Ramírez','1234567890','carlos.gomez@unal.edu.co','3001234567','Calle 1 #2-3, Bogotá','1985-03-15','2010-07-01','Coordinador Académico',4500000.00,NULL,1),(107,'María Fernanda','Pérez','Martínez','2345678901','maria.perez@unal.edu.co','3002345678','Carrera 3 #4-5, Bogotá','1982-06-20','2012-08-15','Directora Académico',5000000.00,NULL,1),(108,'José Luis','Rodríguez','López','3456789012','jose.rodriguez@unal.edu.co','3003456789','Avenida 6 #7-8, Bogotá','1990-02-10','2015-05-20','Auxiliar de sistemas',2500000.00,NULL,1),(109,'Ana María','Hernández','García','4567890123','ana.hernandez@unal.edu.co','3004567890','Calle 9 #10-11, Bogotá','1988-11-05','2018-01-10','Secretaria general',2600000.00,NULL,1),(110,'Luis Fernando','Martínez','Sánchez','5678901234','luis.martinez@unal.edu.co','3005678901','Carrera 12 #13-14, Bogotá','1992-08-25','2020-03-01','Director de sistemas',3800000.00,NULL,1),(111,'Patricia Elena','Gómez','Torres','6789012345','patricia.gomez@unal.edu.co','3006789012','Avenida 15 #16-17, Bogotá','1980-04-30','2005-09-05','Coordinadora de Programas ingeniería',6500000.00,NULL,1),(112,'Ricardo Andrés','Suárez','Jiménez','7890123456','ricardo.suarez@unal.edu.co','3007890123','Calle 18 #19-20, Bogotá','1986-07-12','2011-11-25','Coordinador de Admisiones',4600000.00,NULL,1),(113,'Isabel Cristina','Vargas','Pérez','8901234567','isabel.vargas@unal.edu.co','3008901234','Carrera 21 #22-23, Bogotá','1983-09-03','2014-04-18','Coordinadora de Proyectos',3700000.00,NULL,1),(114,'Felipe Andrés','Ramírez','Díaz','9012345678','felipe.ramirez@unal.edu.co','3009012345','Avenida 24 #25-26, Bogotá','1987-05-22','2016-06-30','Coordinador Académico',4500000.00,NULL,2),(115,'Sandra Patricia','Castro','Gómez','0123456789','sandra.castro@unal.edu.co','3000123456','Calle 27 #28-29, Bogotá','1991-12-14','2019-08-22','Directora Académica',5400000.00,NULL,2),(116,'Jorge Enrique','Torres','Martínez','1234567891','jorge.torres@unal.edu.co','3001234567','Carrera 30 #31-32, Bogotá','1994-01-18','2021-02-05','Director de Diseño',5200000.00,NULL,2),(117,'Carolina Andrea','Suárez','Díaz','2345678902','carolina.suarez@unal.edu.co','3002345678','Avenida 33 #34-35, Bogotá','1990-09-22','2013-07-15','Secretaria general',2600000.00,NULL,2),(118,'Héctor Fabio','Gómez','Pérez','3456789013','hector.gomez@unal.edu.co','3003456789','Calle 36 #37-38, Bogotá','1985-03-14','2017-11-10','Coordinador de Programas arquitectura y diseño',4600000.00,NULL,2),(119,'Diana Carolina','Suárez','Torres','4567890124','diana.suarez@unal.edu.co','3004567890','Carrera 39 #40-41, Bogotá','1989-02-03','2022-04-25','Coordinadora Académica',5100000.00,NULL,3),(120,'Marta Lucía','Castro','Gómez','5678901233','marta.castro@unal.edu.co','3005678901','Avenida 42 #43-44, Bogotá','1983-09-03','2008-10-17','Directora Académica',3700000.00,NULL,3),(121,'Luis Fernando','Ramírez','Díaz','6789012342','luis.ramirez@unal.edu.co','3006789012','Calle 45 #46-47, Bogotá','1987-05-22','2014-09-12','Secretario general',2600000.00,NULL,3),(224,'Carlos josé','Rodríguez','Martínez','1234567895','carlosjo.rodriguez@unal.edu.co','3001234567','Avenida 13 #45-67, Bogotá','1985-03-15','2010-08-01','Coordinador de Finanzas',4000000.00,NULL,3),(225,'María Fernanda','González','Pérez','2345678903','mariafe.gonzalez@unal.edu.co','3002345678','Carrera 56 #78-90, Bogotá','1990-07-20','2015-06-15','Coordinadora de Programa Ciencias Básicas',8500000.00,NULL,3),(226,'José Luis','Martínez','López','3456789015','joselu.martinez@unal.edu.co','3003456789','Calle 34 #56-78, Bogotá','1982-11-05','2008-01-10','Director de TI',7000000.00,NULL,3),(227,'Ana Patricia','Hernández','Gómez','4567890125','anapa.hernandez@unal.edu.co','3004567890','Carrera 12 #34-56, Bogotá','1995-02-28','2020-09-01','Coordinadora de Programa de Ciencias de la Salud',3500000.00,NULL,4),(228,'Luis Fernando','Pérez','Ramírez','5678901237','luisfer.perez@unal.edu.co','3005678901','Calle 78 #90-12, Bogotá','1988-06-10','2012-03-20','Secretario General',2600000.00,NULL,4),(229,'Isabel Cristina','Sánchez','Torres','6789012341','isabelcri.sanchez@unal.edu.co','3006789012','Avenida 90 #12-34, Bogotá','1992-09-15','2016-04-25','Jefe de Comunicaciones',4600000.00,NULL,4),(230,'Pedro Javier','Gómez','Díaz','7890123451','pedroja.gomez@unal.edu.co','3007890123','Calle 67 #89-01, Bogotá','1980-12-05','2005-07-15','Director Acádemico',5500000.00,NULL,4),(231,'Laura Marcela','Torres','Jiménez','8901234569','lauramar.torres@unal.edu.co','3008901234','Avenida 80 #12-34, Bogotá','1993-04-10','2017-11-05','Coordinadora de Progama psicología',4800000.00,NULL,4),(232,'Ricardo Andrés','Ramírez','Suárez','9012345676','ricardoan.ramirez@unal.edu.co','3009012345','Carrera 23 #45-67, Bogotá','1987-08-25','2011-02-18','Analista Financiero',4300000.00,NULL,1),(233,'Patricia Fernanda','Jiménez','Moreno','0123456784','patriciafer.jimenez@unal.edu.co','3000123456','Avenida 30 #12-34, Bogotá','1991-01-30','2014-05-22','Analista Financiero',4300000.00,NULL,2),(234,'Miguel Ángel','González','Vargas','1234567897','miguelan.gonzalez@unal.edu.co','3001234568','Calle 45 #67-89, Bogotá','1984-10-12','2009-09-05','Analista Financiero',4300000.00,NULL,3),(235,'Carmen Lizeth','Hernández','Rojas','2345678908','carmenliz.hernandez@unal.edu.co','3002345679','Calle 123 #45-67, Bogotá','1996-03-18','2021-01-15','Analista Financiero',4300000.00,NULL,4),(236,'Antonio Augusto','Pérez','Gutiérrez','3456789016','antoniogu.perez@unal.edu.co','3003456790','Carrera 45 #67-89, Bogotá','1983-05-22','2007-11-10','Analista Financiero',4300000.00,NULL,5),(237,'Elena Leonor','Sánchez','Castro','4567890128','elenal.sanchez@unal.edu.co','3004567891','Avenida 68 #90-12, Bogotá','1994-08-30','2018-02-20','Coordinadora de Programa de Derecho',4000000.00,NULL,5),(238,'Juan José','Torres','Salazar','5678901235','juanjo.torres@unal.edu.co','3005678902','Calle 12 #34-56, Bogotá','1986-11-05','2010-06-15','Director Acádemico',5500000.00,NULL,5),(239,'Luisa Fernanda','Gómez','Cardona','6789012346','luisafer.gomez@unal.edu.co','3006789013','Calle 12 #34-58, Bogotá','1992-01-25','2016-09-10','Coordinadora de Progama Contaduría',4700000.00,NULL,5),(240,'Jorge Luis','Ramírez','Morales','7890123457','jorgel.ramirez@unal.edu.co','3007890124','Carrera 23 #46-67, Bogotá','1980-04-15','2004-03-25','Jefe de Comunicaciones',5100000.00,NULL,5),(241,'Nancy Esther','Acuña','Ospino','3792957348','nancyes.acuña@unal.edu.co','3224397642','Avenida 30 #12-44, Bogotá','1980-02-10','2004-03-26','Jefe de Logística',4500000.00,NULL,5);
/*!40000 ALTER TABLE `Administrativos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Alumnos`
--

DROP TABLE IF EXISTS `Alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alumnos` (
  `id_Alumno` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Alumno` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Apellido1_Alumno` varchar(100) NOT NULL,
  `Apellido2_Alumno` varchar(100) DEFAULT NULL,
  `Tipo_Documento` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Numero_Documento` varchar(45) NOT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `id_Programa` int(11) NOT NULL,
  `id_Estado` int(11) NOT NULL,
  `Becado` enum('SI','NO') NOT NULL,
  `Fecha_Salida` date DEFAULT NULL,
  PRIMARY KEY (`id_Alumno`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `Estado_idx` (`id_Estado`),
  KEY `Programa_idx` (`id_Programa`),
  CONSTRAINT `Estado` FOREIGN KEY (`id_Estado`) REFERENCES `Estados_Estudiante` (`id_Estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Programa` FOREIGN KEY (`id_Programa`) REFERENCES `Programas_Academicos` (`id_Programa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alumnos`
--

LOCK TABLES `Alumnos` WRITE;
/*!40000 ALTER TABLE `Alumnos` DISABLE KEYS */;
INSERT INTO `Alumnos` VALUES (1,'Carlos Andrés','Díaz','Pérez','CC','1234567890','carlos.diaz@unal.edu.co','3001234567','Calle 123 #45-67','2000-05-15','2020-01-15',1,1,'SI',NULL),(2,'María Fernanda','López','Rodríguez','CC','2345678901','maria.lopez@unal.edu.co','3002345678','Carrera 45 #67-89','1999-08-22','2019-08-10',2,2,'NO',NULL),(3,'Andrés Felipe','Martínez','Sánchez','CC','3456789012','andres.martinez@unal.edu.co','3003456789','Avenida 68 #123-45','2001-12-05','2021-03-20',3,3,'SI',NULL),(4,'Laura Isabel','García','Torres','CC','4567890123','laura.garcia@unal.edu.co','3004567890','Calle 13 #45-67','2000-02-10','2020-07-25',4,4,'NO',NULL),(5,'Juan Sebastián','Rodríguez','Díaz','CC','5678901234','juan.rodriguez@unal.edu.co','3005678901','Carrera 30 #123-45','1998-11-30','2018-09-05',5,5,'SI',NULL),(6,'Ana María','Pérez','Gómez','CC','6789012345','ana.perez@unal.edu.co','3006789012','Calle 14 #56-78','2002-03-25','2022-02-10',6,6,'NO',NULL),(7,'Luis Fernando','Martínez','Hernández','CC','7890123456','luis.martinez@unal.edu.co','3007890123','Carrera 31 #234-56','2000-07-30','2020-08-15',7,7,'SI',NULL),(8,'Patricia Alejandra','Sánchez','Ramírez','CC','8901234567','patricia.sanchez@unal.edu.co','3008901234','Avenida 69 #345-67','1999-12-10','2019-09-20',8,8,'NO',NULL),(9,'Carlos Alberto','Gómez','Martínez','CC','9012345678','carlos.gomez@unal.edu.co','3009012345','Calle 15 #67-89','2001-04-05','2021-01-30',9,9,'SI',NULL),(10,'Marta Lucía','Rodríguez','González','CC','0123456789','marta.rodriguez@unal.edu.co','3000123456','Carrera 32 #456-78','2000-09-15','2020-05-10',10,10,'NO',NULL),(11,'Jorge Luis','Hernández','Paredes','CC','1234567891','jorge.hernandez@unal.edu.co','3001234568','Avenida 70 #567-89','1998-06-20','2018-11-25',11,11,'SI',NULL),(12,'Claudia Patricia','González','Torres','CC','2345678902','claudia.gonzalez@unal.edu.co','3002345679','Calle 16 #678-90','2002-01-10','2022-03-15',12,12,'NO',NULL),(13,'Pedro Alejandro','Díaz','Martínez','CC','3456789013','pedro.diaz@unal.edu.co','3002687325','calle 16 #200-300','2002-03-12','2022-03-10',13,1,'NO',NULL),(14,'Carlos Andrés','Mora','Pérez','CC','1234467890','carlos.mora@unal.edu.co','3001234567','Calle 1 #2-3, Bogotá','2000-05-15','2020-01-15',37,27,'SI',NULL),(15,'María Fernanda','Rodríguez','Rodríguez','CC','2345638901','maria.rodriguez@unal.edu.co','3002345678','Carrera 2 #3-4, Bogotá','1999-08-22','2019-08-10',33,2,'NO',NULL),(16,'Andrés Felipe','Jaramillo','Sánchez','CC','3456779012','andres.jaramillo@unal.edu.co','3003456789','Avenida 3 #4-5, Bogotá','2001-12-05','2021-03-20',27,28,'SI',NULL),(17,'Laura Cristina','García','Torres','CC','4567820123','lauracristina.garcia@unal.edu.co','3004567890','Calle 4 #5-6, Bogotá','2000-02-10','2020-07-25',28,4,'NO',NULL),(18,'Juan Fernando','Rodríguez','Díaz','CC','5618901234','juanfernando.rodriguez@unal.edu.co','3005678901','Carrera 5 #6-7, Bogotá','1998-11-30','2018-09-05',29,5,'SI',NULL),(19,'Ana María','Pérez','Gómez','CC','6789012245','anamaria.perez@unal.edu.co','3006789012','Calle 6 #7-8, Bogotá','2002-03-25','2022-02-10',30,6,'NO',NULL),(20,'Luis David','Martínez','Hernández','CC','7890143456','luisdavid.martinez@unal.edu.co','3007890123','Avenida 7 #8-9, Bogotá','2000-07-30','2020-08-15',31,7,'SI',NULL),(21,'Patricia Alejandra','Ospino','Ramírez','CC','8911234567','patricia.ospino@unal.edu.co','3008901234','Calle 8 #9-10, Bogotá','1999-12-10','2019-09-20',32,8,'NO',NULL),(22,'Carlos Alberto','Amarís','Martínez','CC','9012343678','carlos.amaris@unal.edu.co','3009012345','Carrera 9 #10-11, Bogotá','2001-04-05','2021-01-30',35,9,'SI',NULL),(23,'Marta Lucía','Villabona','González','CC','0124456789','marta.villabona@unal.edu.co','3000123456','Avenida 10 #11-12, Bogotá','2000-09-15','2020-05-10',34,10,'NO',NULL),(24,'Jorge Luis','Sanabria','Paredes','CC','1233567891','jorge.sanabria@unal.edu.co','3001234568','Calle 11 #12-13, Bogotá','1998-06-20','2018-11-25',38,11,'SI',NULL),(25,'Claudia Patricia','Porras','Torres','CC','2335678902','claudia.porras@unal.edu.co','3002345679','Carrera 12 #13-14, Bogotá','2002-01-10','2022-03-15',36,12,'NO',NULL),(26,'Pedro Alejandro','López','Martínez','CC','3456789013','pedro.lopez@unal.edu.co','3003456789','Avenida 13 #14-15, Bogotá','2001-07-25','2021-06-20',13,13,'SI',NULL),(27,'Lucía Fernanda','González','Gómez','CC','4567990124','lucia.gonzalez@unal.edu.co','3004567891','Calle 14 #15-16, Bogotá','2000-04-30','2020-09-10',14,14,'NO',NULL),(28,'Carlos Eduardo','Jiménez','Paredes','CC','5618901235','carlos.jimenez@unal.edu.co','3005678902','Carrera 15 #16-17, Bogotá','1999-11-05','2019-10-15',15,15,'SI',NULL),(29,'María José','Cadena','Torres','CC','6689012346','maria.cadena@unal.edu.co','3006789013','Avenida 16 #17-18, Bogotá','2002-02-20','2022-04-25',16,16,'NO',NULL),(30,'Luis Miguel','Galindo','González','CC','7890423457','luis.galindo@unal.edu.co','3007890124','Calle 17 #18-19, Bogotá','2001-09-10','2021-11-05',17,17,'SI',NULL),(31,'Patricia Carolina','Rincón','Hernández','CC','8931234568','patricia.rincon@unal.edu.co','3008901235','Carrera 18 #19-20, Bogotá','2000-06-25','2020-12-15',18,18,'NO',NULL),(32,'Carlos Alberto','Ayala','Rodríguez','CC','9032345679','carlos.ayala@unal.edu.co','3009012346','Avenida 19 #20-21, Bogotá','1998-03-05','2018-12-20',19,19,'SI',NULL),(33,'Marta Isabel','Mendoza','Gómez','CC','0113456790','marta.mendoza@unal.edu.co','3000123457','Calle 20 #21-22, Bogotá','2002-07-15','2022-06-10',20,20,'NO',NULL),(34,'Jorge Andrés','Acuña','Torres','CC','1234567892','jorge.acuña@unal.edu.co','3001234569','Carrera 21 #22-23, Bogotá','2001-11-25','2021-07-30',21,21,'SI',NULL),(35,'Claudia María','Torres','Hernández','CC','1345678903','claudia.torres@unal.edu.co','3002345680','Avenida 22 #23-24, Bogotá','2000-04-10','2020-08-20',22,22,'NO',NULL),(36,'Pedro Pablo','De la Ossa','Rodríguez','CC','1452789014','pedro.delaossa@unal.edu.co','3003456790','Calle 23 #24-25, Bogotá','1999-10-30','2019-09-05',23,23,'SI',NULL),(37,'Lucía Beatriz','Guarín','González','CC','4569890125','lucia.guarin@unal.edu.co','3004567892','Carrera 24 #25-26, Bogotá','2002-01-05','2022-02-15',24,24,'NO',NULL),(38,'Carlos Eduardo','Pulgarín','Torres','CC','5378901236','carlos.pulgarin@unal.edu.co','3005678903','Avenida 25 #26-27, Bogotá','2001-06-15','2021-04-10',25,25,'SI',NULL),(39,'María del Pilar','Vallejo','Rodríguez','CC','6781012347','maria.vallejo@unal.edu.co','3006789014','Calle 26 #27-28, Bogotá','2000-09-20','2020-05-25',26,26,'NO',NULL),(40,'Luis Fernando','Silva','Gómez','CC','7890323458','luis.silva@unal.edu.co','3007890125','Carrera 26 #27-29 Bogotá','2000-08-22','2020-05-25',36,1,'NO',NULL);
/*!40000 ALTER TABLE `Alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Asignaturas`
--

DROP TABLE IF EXISTS `Asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asignaturas` (
  `id_Asignatura` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Creditos` int(11) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Obligatoria` enum('Si','No') NOT NULL,
  PRIMARY KEY (`id_Asignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignaturas`
--

LOCK TABLES `Asignaturas` WRITE;
/*!40000 ALTER TABLE `Asignaturas` DISABLE KEYS */;
INSERT INTO `Asignaturas` VALUES (1,'Cálculo Diferencial',4,1,'Si'),(2,'Cálculo Integral',4,2,'Si'),(3,'Álgebra Lineal',3,2,'Si'),(4,'Cálculo Vectorial',4,3,'Si'),(5,'Ecuaciones Diferenciales',4,4,'Si'),(6,'Probabilidad y Estadística',3,4,'Si'),(7,'Física: Mecánica',4,1,'Si'),(8,'Física: Electricidad y Magnetismo',3,2,'Si'),(9,'Física: Oscilaciones, Ondas y Óptica',3,3,'Si'),(10,'Química General',3,1,'Si'),(11,'Química Orgánica',3,2,'Si'),(12,'Química Analítica',3,3,'Si'),(13,'Biología Celular y Microbiología',3,1,'Si'),(14,'Bioquímica',3,2,'Si'),(15,'Análisis Numérico',3,4,'Si'),(16,'Introducción a la Programación',4,1,'Si'),(17,'Estructura de Datos',4,2,'Si'),(18,'Bases de Datos',4,3,'Si'),(19,'Redes de Computadoras',3,4,'Si'),(20,'Sistemas Operativos',4,5,'Si'),(21,'Ingeniería de Software',4,6,'Si'),(22,'Inteligencia Artificial',3,7,'Si'),(23,'Algoritmos y Complejidad',4,3,'Si'),(24,'Arquitectura de Computadores',3,4,'Si'),(25,'Programación Orientada a Objetos',4,2,'Si'),(26,'Introducción a la Filosofía',3,1,'Si'),(27,'Ética Profesional',2,2,'Si'),(28,'Derecho Informático',3,3,'Si'),(29,'Psicología General',3,4,'Si'),(30,'Sociología',3,5,'Si'),(31,'Historia de la Ciencia',3,6,'Si'),(32,'Antropología Cultural',3,7,'Si'),(33,'Lingüística',3,8,'Si'),(34,'Literatura Universal',3,9,'Si'),(35,'Trabajo Social',3,10,'Si'),(36,'Derecho Constitucional',4,1,'Si'),(37,'Derecho Penal',4,2,'Si'),(38,'Derecho Civil',4,3,'Si'),(39,'Derecho Administrativo',4,4,'Si'),(40,'Derecho Laboral',4,5,'Si'),(41,'Derecho Internacional Público',4,6,'Si'),(42,'Derecho Mercantil',4,7,'Si'),(43,'Derecho Procesal Civil',4,8,'Si'),(44,'Derecho Procesal Penal',4,9,'Si'),(45,'Derecho Ambiental',4,10,'Si'),(46,'Anatomía Humana',4,1,'Si'),(47,'Fisiología Humana',4,2,'Si'),(48,'Bioquímica Médica',4,3,'Si'),(49,'Farmacología',4,4,'Si'),(50,'Patología General',4,5,'Si');
/*!40000 ALTER TABLE `Asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Asignaturas_Profesores`
--

DROP TABLE IF EXISTS `Asignaturas_Profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asignaturas_Profesores` (
  `id_Asignatura` int(11) NOT NULL,
  `id_Profesores` int(11) NOT NULL,
  PRIMARY KEY (`id_Asignatura`),
  KEY `Profesores_idx` (`id_Profesores`),
  CONSTRAINT `Asignatura` FOREIGN KEY (`id_Asignatura`) REFERENCES `Asignaturas` (`id_Asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignaturas_Profesores`
--

LOCK TABLES `Asignaturas_Profesores` WRITE;
/*!40000 ALTER TABLE `Asignaturas_Profesores` DISABLE KEYS */;
INSERT INTO `Asignaturas_Profesores` VALUES (1,1),(2,1),(7,1),(9,1),(12,1),(28,1),(29,1),(34,1),(36,1),(39,1),(42,1),(3,2),(4,2),(8,2),(11,2),(30,2),(31,2),(35,2),(38,2),(41,2),(5,3),(6,3),(10,3),(13,3),(32,3),(33,3),(37,3),(40,3),(43,16),(14,17),(44,17),(15,18),(45,18),(16,19),(46,19),(17,20),(47,20),(18,21),(48,21),(19,22),(49,22),(20,23),(50,23),(21,24),(22,25),(23,26),(24,27),(25,28);
/*!40000 ALTER TABLE `Asignaturas_Profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departamentos`
--

DROP TABLE IF EXISTS `Departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departamentos` (
  `id_Departamento` int(11) NOT NULL,
  `Nombre_Dpto` varchar(100) NOT NULL,
  `Facultad` varchar(100) NOT NULL,
  PRIMARY KEY (`id_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departamentos`
--

LOCK TABLES `Departamentos` WRITE;
/*!40000 ALTER TABLE `Departamentos` DISABLE KEYS */;
INSERT INTO `Departamentos` VALUES (1,'Ingeniería Civil','Facultad de Ingeniería'),(2,'Ingeniería de Sistemas','Facultad de Ingeniería'),(3,'Ingeniería Electrónica','Facultad de Ingeniería'),(4,'Ingeniería Industrial','Facultad de Ingeniería'),(5,'Ingeniería Mecánica','Facultad de Ingeniería'),(6,'Ingeniería Química','Facultad de Ingeniería'),(7,'Ingeniería Ambiental','Facultad de Ingeniería'),(8,'Ingeniería de Alimentos','Facultad de Ingeniería'),(9,'Arquitectura','Facultad de Arquitectura y Diseño'),(10,'Diseño Industrial','Facultad de Arquitectura y Diseño'),(11,'Diseño Gráfico','Facultad de Arquitectura y Diseño'),(12,'Ciencias de la Computación','Facultad de Ciencias Básicas'),(13,'Matemáticas','Facultad de Ciencias Básicas'),(14,'Estadística','Facultad de Ciencias Básicas'),(15,'Física','Facultad de Ciencias Básicas'),(16,'Química','Facultad de Ciencias Básicas'),(17,'Biología','Facultad de Ciencias Básicas'),(18,'Medicina','Facultad de Ciencias de la Salud'),(19,'Enfermería','Facultad de Ciencias de la Salud'),(20,'Odontología','Facultad de Ciencias de la Salud'),(21,'Psicología','Facultad de Ciencias de la Salud'),(22,'Derecho','Facultad de Derecho y Ciencias Sociales'),(23,'Administración de Empresas','Facultad de Derecho y Ciencias Sociales'),(24,'Contaduría Pública','Facultad de Derecho y Ciencias Sociales'),(25,'Ciencias Políticas','Facultad de Derecho y Ciencias Sociales'),(26,'Especialización en Gerencia de Proyectos','Facultad de Ingeniería'),(27,'Especialización en Marketing Digital','Facultad de Ciencias Sociales'),(28,'Especialización en Finanzas','Facultad de Ciencias Sociales'),(29,'Especialización en Derecho Administrativo','Facultad de Derecho'),(30,'Especialización en Medicina Crítica y Cuidados Intensivos','Facultad de Ciencias de la Salud'),(31,'Maestría en Administración de Empresas (MBA)','Facultad de Administración de Empresas'),(32,'Maestría en Gerencia de Proyectos','Facultad de Ingeniería'),(33,'Maestría en Derecho','Facultad de Derecho'),(34,'Maestría en Psicología','Facultad de Ciencias Sociales'),(35,'Doctorado en Administración','Facultad de Administración de Empresas'),(36,'Doctorado en Educación','Facultad de Educación'),(37,'Doctorado en Psicología','Facultad de Ciencias Sociales'),(38,'Doctorado en Ciencias Biomédicas','Facultad de Ciencias de la Salud'),(39,'Doctorado en Ingeniería','Facultad de Ingeniería');
/*!40000 ALTER TABLE `Departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estados_Estudiante`
--

DROP TABLE IF EXISTS `Estados_Estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estados_Estudiante` (
  `id_Estado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Estado` varchar(100) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Fecha_Creación` date DEFAULT NULL,
  `Fecha_Actualizacion` date DEFAULT NULL,
  PRIMARY KEY (`id_Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estados_Estudiante`
--

LOCK TABLES `Estados_Estudiante` WRITE;
/*!40000 ALTER TABLE `Estados_Estudiante` DISABLE KEYS */;
INSERT INTO `Estados_Estudiante` VALUES (1,'Activo','Estudiante actualmente matriculado y cursando asignaturas','2025-01-01','2025-01-01'),(2,'Inactivo','Estudiante no matriculado en el semestre actual','2025-01-01','2025-01-01'),(3,'Graduado','Estudiante que ha completado todos los requisitos académicos','2025-01-01','2025-01-01'),(4,'Retirado','Estudiante que ha abandonado voluntariamente la universidad','2025-01-01','2025-01-01'),(5,'Suspendido','Estudiante con suspensión temporal de matrícula por disciplinarios','2025-01-01','2025-01-01'),(6,'En espera','Estudiante que ha solicitado reingreso y está en proceso de evaluación','2025-01-01','2025-01-01'),(7,'Graduado con honores','Estudiante que ha completado todos los requisitos académicos con distinción','2025-01-01','2025-01-01'),(8,'En movilidad','Estudiante que participa en un programa de intercambio o movilidad académica','2025-01-01','2025-01-01'),(9,'En licencia','Estudiante que ha solicitado y obtenido una licencia temporal','2025-01-01','2025-01-01'),(10,'En proceso de matrícula','Estudiante que ha iniciado el proceso de matrícula pero no lo ha completado','2025-01-01','2025-01-01'),(11,'En proceso de graduación','Estudiante que ha completado todos los requisitos académicos y está en proceso de graduación','2025-01-01','2025-01-01'),(12,'En proceso de retiro','Estudiante que ha solicitado el retiro y está en proceso de aprobación','2025-01-01','2025-01-01'),(13,'En proceso disciplinario','Estudiante que está siendo evaluado por posibles faltas disciplinarias','2025-01-01','2025-01-01'),(14,'En proceso de suspensión','Estudiante que está siendo evaluado para una posible suspensión temporal','2025-01-01','2025-01-01'),(15,'En proceso de reingreso','Estudiante que ha solicitado el reingreso y está en proceso de evaluación','2025-01-01','2025-01-01'),(16,'En proceso de movilidad','Estudiante que está siendo evaluado para participar en un programa de movilidad académica','2025-01-01','2025-01-01'),(17,'En proceso de licencia','Estudiante que está siendo evaluado para obtener una licencia temporal','2025-01-01','2025-01-01'),(18,'En proceso de matrícula condicional','Estudiante que ha iniciado el proceso de matrícula bajo condiciones especiales','2025-01-01','2025-01-01'),(19,'En proceso de graduación condicional','Estudiante que está en proceso de graduación bajo condiciones especiales','2025-01-01','2025-01-01'),(20,'En proceso de retiro condicional','Estudiante que está en proceso de retiro bajo condiciones especiales','2025-01-01','2025-01-01'),(21,'En proceso disciplinario condicional','Estudiante que está siendo evaluado por faltas disciplinarias bajo condiciones especiales','2025-01-01','2025-01-01'),(22,'En proceso de suspensión condicional','Estudiante que está siendo evaluado para una posible suspensión temporal bajo condiciones especiales','2025-01-01','2025-01-01'),(23,'En proceso de reingreso condicional','Estudiante que ha solicitado el reingreso y está en proceso de evaluación bajo condiciones especiales','2025-01-01','2025-01-01'),(24,'En proceso de movilidad condicional','Estudiante que está siendo evaluado para participar en un programa de movilidad académica bajo condiciones especiales','2025-01-01','2025-01-01'),(25,'En proceso de licencia condicional','Estudiante que está siendo evaluado para obtener una licencia temporal bajo condiciones especiales','2025-01-01','2025-01-01'),(26,'En proceso de matrícula extraordinaria','Estudiante que está en proceso de matrícula fuera de los plazos establecidos','2025-01-01','2025-01-01'),(27,'En proceso de graduación extraordinaria','Estudiante que está en proceso de graduación fuera de los plazos establecidos','2025-01-01','2025-01-01'),(28,'En proceso de retiro extraordinario','Estudiante que está en proceso de retiro fuera de los plazos establecidos','2025-01-01','2025-01-01');
/*!40000 ALTER TABLE `Estados_Estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facultades`
--

DROP TABLE IF EXISTS `Facultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facultades` (
  `id_Facultad` int(11) NOT NULL,
  `Nombre_Facultad` varchar(100) NOT NULL,
  PRIMARY KEY (`id_Facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facultades`
--

LOCK TABLES `Facultades` WRITE;
/*!40000 ALTER TABLE `Facultades` DISABLE KEYS */;
INSERT INTO `Facultades` VALUES (1,'Facultad de Ingeniería'),(2,'Facultad de Arquitectura y Diseño'),(3,'Facultad de Ciencias Básicas'),(4,'Facultad de Ciencias de la Salud'),(5,'Facultad de Derecho y Ciencias Sociales');
/*!40000 ALTER TABLE `Facultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matricula_Estudiante`
--

DROP TABLE IF EXISTS `Matricula_Estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Matricula_Estudiante` (
  `id_Alumno` int(11) NOT NULL,
  `id_Asignatura` int(11) NOT NULL,
  `Fecha_Matricula` date DEFAULT NULL,
  `Semestre` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nota_Final` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_Alumno`,`id_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matricula_Estudiante`
--

LOCK TABLES `Matricula_Estudiante` WRITE;
/*!40000 ALTER TABLE `Matricula_Estudiante` DISABLE KEYS */;
INSERT INTO `Matricula_Estudiante` VALUES (1,1,'2020-01-20','1','4.2'),(1,7,'2020-01-20','1','4.0'),(1,10,'2020-01-20','1','3.9'),(2,2,'2019-08-15','2','3.8'),(2,3,'2019-08-15','2','3.5'),(2,11,'2019-08-15','2','4.0'),(3,3,'2021-03-25','2','4.3'),(3,8,'2021-03-25','2','4.1'),(4,4,'2020-07-30','3','3.7'),(4,9,'2020-07-30','3','3.5'),(5,5,'2018-09-10','4','3.9'),(5,6,'2018-09-10','4','4.1'),(6,13,'2022-02-15','1','4.0'),(6,16,'2022-02-15','1','4.2'),(7,17,'2020-08-20','2','3.8'),(7,25,'2020-08-20','2','3.7'),(8,4,'2019-09-25','3','4.0'),(8,12,'2019-09-25','3','3.9'),(9,18,'2021-02-05','3','4.5'),(9,23,'2021-02-05','3','4.3'),(11,2,'2021-02-15','1','3.8'),(11,5,'2021-02-15','1','4.0'),(12,3,'2022-08-10','1','4.1'),(12,6,'2022-08-10','1','3.9'),(13,4,'2023-01-20','1','4.3'),(13,7,'2023-01-20','1','4.2'),(14,5,'2021-07-15','2','3.7'),(14,8,'2021-07-15','2','3.8'),(15,6,'2022-03-05','2','4.0'),(15,9,'2022-03-05','2','4.1'),(16,7,'2023-09-12','2','4.2'),(16,10,'2023-09-12','2','4.0'),(17,8,'2021-11-25','3','3.9'),(17,11,'2021-11-25','3','3.8'),(18,9,'2022-06-30','3','4.1'),(18,12,'2022-06-30','3','4.3'),(19,10,'2023-02-10','3','4.0'),(19,13,'2023-02-10','3','4.2'),(20,11,'2021-05-18','4','4.1'),(20,14,'2021-05-18','4','4.0'),(21,12,'2022-01-15','1','4.3'),(21,15,'2022-01-15','1','4.0'),(22,13,'2023-07-20','1','4.1'),(22,16,'2023-07-20','1','3.9'),(23,14,'2021-03-10','2','4.2'),(23,17,'2021-03-10','2','4.0'),(24,15,'2022-09-05','2','4.1'),(24,18,'2022-09-05','2','3.8'),(25,16,'2023-04-25','3','4.0'),(25,19,'2023-04-25','3','4.2'),(26,17,'2021-08-30','3','3.9'),(26,20,'2021-08-30','3','3.8'),(27,18,'2022-12-15','4','4.3'),(27,21,'2022-12-15','4','4.1'),(28,19,'2023-06-10','4','4.0'),(28,22,'2023-06-10','4','4.2'),(29,20,'2021-04-05','1','4.1'),(29,23,'2021-04-05','1','3.9'),(30,21,'2022-09-20','2','4.2'),(30,24,'2022-09-20','2','4.0'),(31,22,'2023-02-25','1','4.3'),(31,25,'2023-02-25','1','4.0'),(32,23,'2021-07-10','2','4.1'),(32,26,'2021-07-10','2','3.9'),(33,24,'2022-03-15','2','4.2'),(33,27,'2022-03-15','2','4.0'),(34,25,'2023-08-05','3','4.1'),(34,28,'2023-08-05','3','4.3'),(35,26,'2021-11-20','3','4.0'),(35,29,'2021-11-20','3','3.8'),(36,27,'2022-06-25','4','4.2'),(36,30,'2022-06-25','4','4.1'),(37,28,'2023-01-30','4','4.0'),(37,31,'2023-01-30','4','4.2'),(38,29,'2021-09-15','1','4.3'),(38,32,'2021-09-15','1','4.0'),(39,30,'2022-04-10','2','4.1'),(39,33,'2022-04-10','2','3.9'),(40,31,'2023-10-05','3','4.2'),(40,34,'2023-10-05','3','4.0');
/*!40000 ALTER TABLE `Matricula_Estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesores`
--

DROP TABLE IF EXISTS `Profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Profesores` (
  `id_Profesores` int(11) NOT NULL AUTO_INCREMENT,
  `Cedula` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Apellido1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Apellido2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `Correo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Telefono` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Direccion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Sexo` enum('F','M') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_Facultad` int(10) NOT NULL,
  `Especialidad` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Fecha_ingreso` date DEFAULT NULL,
  `Categoria` enum('Tiempo completo','Medio tiempo','Catedra') NOT NULL,
  PRIMARY KEY (`id_Profesores`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `Facultad_idx` (`id_Facultad`),
  CONSTRAINT `Facultades` FOREIGN KEY (`id_Facultad`) REFERENCES `Facultades` (`id_Facultad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesores`
--

LOCK TABLES `Profesores` WRITE;
/*!40000 ALTER TABLE `Profesores` DISABLE KEYS */;
INSERT INTO `Profesores` VALUES (1,1012345678,'Juan','Pérez','Gómez','1980-05-15','juan.perez@unal.edu.co','3101234567','Calle 123 #45-67, Bogotá','M',1,'Matemáticas','2010-01-15','Tiempo completo'),(2,1012345679,'María','Rodríguez','López','1975-08-22','maria.rodriguez@unal.edu.co','3112345678','Carrera 45 #12-34, Bogotá','F',1,'Física','2012-03-10','Medio tiempo'),(3,1012355680,'Carlos','Martínez','Sánchez','1985-11-30','carlos.martinez@unal.edu.co','3123456789','Avenida 68 #23-45, Bogotá','M',1,'Química','2015-07-20','Catedra'),(4,1012345681,'Laura','González','Díaz','1990-02-10','laura.gonzalez@unal.edu.co','3134567890','Calle 45 #67-89, Bogotá','F',1,'Biología','2018-09-05','Tiempo completo'),(5,1012343682,'Andrés','López','Martínez','1982-06-25','andres.lopez@unal.edu.co','3145678901','Carrera 30 #10-20, Bogotá','M',5,'Historia','2011-04-15','Medio tiempo'),(6,1012365683,'Patricia','Sánchez','Hernández','1978-09-17','patricia.sanchez@unal.edu.co','3156789012','Calle 80 #34-56, Bogotá','F',5,'Filosofía','2014-12-01','Catedra'),(7,1012345684,'Luis','Pérez','Rodríguez','1988-03-05','luis.perez@unal.edu.co','3167890123','Avenida 19 #56-78, Bogotá','M',4,'Psicología','2016-06-10','Tiempo completo'),(8,1012445685,'Ana','Ramírez','Torres','1992-12-30','ana.ramirez@unal.edu.co','3178901234','Carrera 50 #78-90, Bogotá','F',5,'Sociología','2019-02-25','Medio tiempo'),(9,1012245686,'Jorge','Díaz','Morales','1980-07-15','jorge.diaz@unal.edu.co','3189012345','Calle 100 #12-34, Bogotá','M',5,'Derecho','2012-05-20','Catedra'),(10,1011345687,'Beatriz','Torres','Romero','1984-10-05','beatriz.torres@unal.edu.co','3190123456','Carrera 60 #34-56, Bogotá','F',4,'Medicina','2014-08-30','Tiempo completo'),(11,1012345688,'Ricardo','Hernández','Pérez','1979-04-22','ricardo.hernandez@unal.edu.co','3201234567','Calle 120 #45-67, Bogotá','M',1,'Ingeniería Civil','2011-11-15','Medio tiempo'),(12,1012345689,'Carmen','González','López','1987-01-18','carmen.gonzalez@unal.edu.co','3212345678','Carrera 70 #23-45, Bogotá','F',2,'Arquitectura','2013-03-10','Catedra'),(13,1012445690,'Manuel','Martínez','Sánchez','1983-05-30','manuel.martinez@unal.edu.co','3223456789','Calle 140 #56-78, Bogotá','M',5,'Economía','2015-07-25','Tiempo completo'),(14,1012335691,'Teresa','López','González','1991-08-12','teresa.lopez@unal.edu.co','3234567890','Carrera 80 #12-34, Bogotá','F',3,'Literatura','2017-09-05','Medio tiempo'),(15,1012344692,'Felipe','Sánchez','Rodríguez','1986-11-20','felipe.sanchez@unal.edu.co','3245678901','Calle 160 #34-56, Bogotá','M',5,'Filosofía','2014-02-15','Catedra'),(16,1012335693,'Rosa','González','Pérez','1993-02-28','rosa.gonzalez@unal.edu.co','3256789012','Carrera 90 #78-90, Bogotá','F',5,'Ciencias Políticas','2018-06-10','Tiempo completo'),(17,1012346694,'Javier','Ramírez','Torres','1980-09-05','javier.ramirez@unal.edu.co','3267890123','Calle 180 #12-34, Bogotá','M',2,'Historia','2012-11-20','Medio tiempo'),(18,1012365695,'Patricia','Díaz','Morales','1982-06-15','patricia.diaz@unal.edu.co','3278901234','Carrera 110 #56-78, Bogotá','F',5,'Derecho','2014-03-30','Catedra'),(19,1012745696,'Alberto','Torres','Romero','1984-12-25','alberto.torres@unal.edu.co','3289012345','Calle 200 #34-56, Bogotá','M',4,'Medicina','2016-07-05','Tiempo completo'),(20,1012845697,'Silvia','Hernández','Pérez','1986-03-10','silvia.hernandez@unal.edu.co','3290123456','Carrera 120 #12-34, Bogotá','F',1,'Ingeniería Civil','2018-09-15','Medio tiempo'),(21,1012395698,'Eduardo','González','López','1990-07-20','eduardo.gonzalez@unal.edu.co','3301234567','Calle 220 #56-78, Bogotá','M',2,'Arquitectura','2020-01-10','Catedra'),(22,1012325699,'Patricia','Martínez','Sánchez','1992-11-05','patricia.martinez@unal.edu.co','3312345678','Carrera 130 #78-90, Bogotá','F',3,'Economía','2021-03-25','Tiempo completo'),(23,1012347700,'Juan Carlos','López','González','1988-02-15','juancarlos.lopez@unal.edu.co','3323456789','Calle 240 #12-34, Bogotá','M',3,'Literatura','2014-06-30','Medio tiempo'),(24,1012375701,'Carmen','Sánchez','Rodríguez','1994-05-25','carmen.sanchez@unal.edu.co','3334567890','Carrera 140 #56-78, Bogotá','F',3,'Filosofía','2016-09-05','Catedra'),(25,1017345702,'Luis Alberto','González','Pérez','1980-08-30','luisalberto.gonzalez@unal.edu.co','3345678901','Calle 260 #34-56, Bogotá','M',5,'Ciencias Políticas','2012-12-15','Tiempo completo'),(26,1012346703,'Teresa María','Ramírez','Torres','1982-10-10','teresamaria.ramirez@unal.edu.co','3356789012','Carrera 150 #12-34, Bogotá','F',4,'Historia','2014-02-20','Medio tiempo'),(27,1012343704,'Felipe Andrés','Díaz','Morales','1990-01-25','felipeandres.diaz@unal.edu.co','3367890123','Calle 270 #56-78, Bogotá','M',5,'Derecho','2010-02-22','Medio tiempo');
/*!40000 ALTER TABLE `Profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programas_Academicos`
--

DROP TABLE IF EXISTS `Programas_Academicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Programas_Academicos` (
  `id_Programa` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Duracion_Años` int(11) NOT NULL,
  `Tipo` enum('Pregrado','Postgrado') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Ciudad` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Costo_semestral` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nivel_Academico` enum('Tecnico','Tecnologico','Profesional','Especializacion','Maestria','Doctorado') NOT NULL,
  PRIMARY KEY (`id_Programa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programas_Academicos`
--

LOCK TABLES `Programas_Academicos` WRITE;
/*!40000 ALTER TABLE `Programas_Academicos` DISABLE KEYS */;
INSERT INTO `Programas_Academicos` VALUES (1,'Ingeniería Civil',5,'Pregrado','Bogotá','3,500,000 COP','Profesional'),(2,'Ingeniería de Sistemas',5,'Pregrado','Bogotá','3,200,000 COP','Profesional'),(3,'Ingeniería Electrónica',5,'Pregrado','Bogotá','3,400,000 COP','Profesional'),(4,'Ingeniería Industrial',5,'Pregrado','Bogotá','3,300,000 COP','Profesional'),(5,'Ingeniería Mecánica',5,'Pregrado','Bogotá','3,600,000 COP','Profesional'),(6,'Ingeniería Química',5,'Pregrado','Bogotá','3,500,000 COP','Profesional'),(7,'Ingeniería Ambiental',5,'Pregrado','Bogotá','3,400,000 COP','Profesional'),(8,'Ingeniería de Alimentos',5,'Pregrado','Bogotá','3,500,000 COP','Profesional'),(9,'Derecho',5,'Pregrado','Bogotá','3,800,000 COP','Profesional'),(10,'Psicología',5,'Pregrado','Bogotá','3,700,000 COP','Profesional'),(11,'Licenciatura en Educación Infantil',5,'Pregrado','Bogotá','3,600,000 COP','Profesional'),(12,'Comunicación Social',5,'Pregrado','Bogotá','3,500,000 COP','Profesional'),(13,'Literatura',5,'Pregrado','Bogotá','3,400,000 COP','Profesional'),(14,'Artes Audiovisuales',5,'Pregrado','Bogotá','3,600,000 COP','Profesional'),(15,'Gastronomía y Alta Cocina',5,'Pregrado','Bogotá','3,700,000 COP','Profesional'),(16,'Música',5,'Pregrado','Bogotá','3,800,000 COP','Profesional'),(17,'Arquitectura',5,'Pregrado','Bogotá','4,000,000 COP','Profesional'),(18,'Diseño Industrial',5,'Pregrado','Bogotá','3,900,000 COP','Profesional'),(19,'Diseño Gráfico',5,'Pregrado','Bogotá','3,800,000 COP','Profesional'),(20,'Enfermería',5,'Pregrado','Bogotá','4,200,000 COP','Profesional'),(21,'Medicina',5,'Pregrado','Bogotá','4,500,000 COP','Profesional'),(22,'Odontología',5,'Pregrado','Bogotá','4,400,000 COP','Profesional'),(23,'Licenciatura en Matemáticas',5,'Pregrado','Bogotá','3,600,000 COP','Profesional'),(24,'Licenciatura en Física',5,'Pregrado','Bogotá','3,600,000 COP','Profesional'),(25,'Fisioterapia',5,'Pregrado','Bogotá','4,300,000 COP','Profesional'),(26,'Especialización en Gerencia de Proyectos',1,'Postgrado','Bogotá','3,000,000 COP','Especializacion'),(27,'Especialización en Marketing Digital',1,'Postgrado','Bogotá','2,800,000 COP','Especializacion'),(28,'Especialización en Finanzas',1,'Postgrado','Bogotá','3,200,000 COP','Especializacion'),(29,'Especialización en Derecho Administrativo',1,'Postgrado','Bogotá','3,500,000 COP','Especializacion'),(30,'Especialización en Medicina Crítica y Cuidados Intensivos',2,'Postgrado','Bogotá','4,000,000 COP','Especializacion'),(31,'Maestría en Administración de Empresas (MBA)',2,'Postgrado','Bogotá','4,500,000 COP','Maestria'),(32,'Maestría en Gerencia de Proyectos',2,'Postgrado','Bogotá','4,200,000 COP','Maestria'),(33,'Maestría en Derecho',2,'Postgrado','Bogotá','4,800,000 COP','Maestria'),(34,'Maestría en Psicología',2,'Postgrado','Bogotá','4,600,000 COP','Maestria'),(35,'Doctorado en Administración',3,'Postgrado','Bogotá','5,000,000 COP','Doctorado'),(36,'Doctorado en Educación',3,'Postgrado','Bogotá','5,200,000 COP','Doctorado'),(37,'Doctorado en Psicología',3,'Postgrado','Bogotá','5,400,000 COP','Doctorado'),(38,'Doctorado en Ciencias Biomédicas',3,'Postgrado','Bogotá','5,600,000 COP','Doctorado'),(39,'Doctorado en Ingeniería',3,'Postgrado','Bogotá','5,800,000 COP','Doctorado');
/*!40000 ALTER TABLE `Programas_Academicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-10 19:35:35
