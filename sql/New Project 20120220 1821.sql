[ZoneTransfer]
ZoneId=3
HostUrl=https://r2---sn-x1x7snsl.googlevideo.com/videoplayback?mime=video%2Fmp4&id=o-AIa12yrDKx2tHkUhgxMuxrca-ddqCpPRnEMwvESO98Ji&pl=22&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,nh,pl,ratebypass,requiressl,source&fvip=2&key=cms1&ip=213.234.29.164&ipbits=0&lmt=1515821713001113&ratebypass=yes&c=WEB&dur=1363.057&source=youtube&expire=1518083605&signature=1C5A108F8010ABBD1E4B5BF5B2A4A0559C820608.5B91B752D7EFF44813C24A37C70FDC1F89D552FF&requiressl=yes&itag=22&ei=tcl7Wte_F83LyQXAnaOYAw&video_id=67PmTreN0KI&title=Curso+Android+desde+cero+%2316+-+Parte+l%C3%B3gica+del+ejercicio+practico+con+RadioGroup+y+RadioButton&rm=sn-0opjvg0-8vbe7l,sn-n8vsy7l&req_id=779387710c37a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=181.93.83.71&mm=29&mn=sn-x1x7snsl&ms=rdu&mt=1518061910&mv=m&nh=IgpwcjAzLmV6ZTA0KgkxMjcuMC4wLjE
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      upo',2),
 (19,'Marca de Auto',2),
 (20,'Color de Auto',2),
 (21,'Tipo de Auto',2),
 (22,'Modelo de Auto',2),
 (23,'Tipo de Movimiento',2),
 (24,'Tipo de Acceso Grupo',2),
 (25,'Tipo de Documento Interno',2),
 (26,'Estado del Lote',2);
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;


--
-- Definition of table `catval`
--

DROP TABLE IF EXISTS `catval`;
CREATE TABLE `catval` (
  `CategoriaID` int(11) NOT NULL,
  `ValorID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `SystemParameter` int(11) default NULL,
  PRIMARY KEY  (`CategoriaID`,`ValorID`),
  UNIQUE KEY `CategoriaID` (`CategoriaID`,`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catval`
--

/*!40000 ALTER TABLE `catval` DISABLE KEYS */;
INSERT INTO `catval` (`CategoriaID`,`ValorID`,`Nombre`,`SystemParameter`) VALUES 
 (1,1,'Administración de Sistema',2),
 (1,2,'Administración de Usuarios',2),
 (1,3,'Administración de Personas',2),
 (1,4,'Administración de Módulos',2),
 (1,5,'Servicio Técnico',2),
 (1,6,'Administración de Arboles',2),
 (1,7,'Administración de Categorías',2),
 (1,8,'Administración de Culturas',2),
 (1,9,'Administración de Estados',2),
 (1,10,'Administración de Grupos',2),
 (1,11,'Administración de Identific.',2),
 (1,12,'Administración de Perfiles',2),
 (1,13,'Administración de Redes',2),
 (1,14,'Administración de Permisos',2),
 (1,15,'Puesto Control Manual',2),
 (1,16,'Estación de Trabajo',2),
 (1,17,'Administración de Autos',2),
 (1,19,'Validación de tickets',2),
 (2,1,'ST1660',2),
 (2,2,'DDMM',2),
 (2,3,'Cash Park',2),
 (2,4,'Cash Tag',2),
 (2,5,'ST1660 Park',2),
 (2,6,'Módulo Virtual',2),
 (2,7,'VME 485',2),
 (2,8,'VME 100',2),
 (3,1,'Proximidad',2),
 (3,2,'Código de Barra',2),
 (3,3,'Banda Magnética',2),
 (3,4,'TAG',2),
 (3,5,'PIN',2),
 (3,6,'Controlada',2),
 (4,1,'Ingreso',2),
 (4,2,'Salida',2),
 (4,3,'Módulo informa',2),
 (4,4,'Lector único',2),
 (4,5,'Módulo informa Invertido',2),
 (5,1,'Si',2),
 (5,2,'No',2),
 (6,1,'Si',2),
 (6,2,'No',2),
 (7,1,'Si',2),
 (7,2,'No',2),
 (8,1,'Propietario Simicro',2),
 (9,1,'Supervisor',2),
 (9,2,'Controlador de Módulo',2),
 (9,3,'Gestión de Licencias',2),
 (10,1,'Director',2),
 (10,2,'Empleado',2),
 (11,1,'DNI',2),
 (11,2,'Cédula de Identidad',2),
 (11,3,'Pasaporte',2),
 (11,4,'CUIT',2),
 (11,5,'CUIL',2),
 (11,6,'Licencia de Conducir',2),
 (11,7,'Libreta de Enrolamiento',2),
 (11,8,'Libreta Cívica',2),
 (12,1,'Particular',2),
 (12,2,'Móvil',2),
 (12,3,'Laboral',2),
 (13,1,'Particular',2),
 (13,2,'Laboral',2),
 (14,1,'Particular',2),
 (14,2,'Laboral',2),
 (14,3,'Country',2),
 (15,1,'Puerta',2),
 (15,2,'Molinete',2),
 (15,3,'Barrera de Estado',2),
 (15,4,'Controlado',2),
 (15,5,'Barrera Pulso',2),
 (15,6,'Barrera Doble Pulso',2),
 (16,1,'Persona',2),
 (16,2,'Grupo',2),
 (17,1,'Acceso',2),
 (17,2,'Presentismo',2),
 (18,1,'Referente',2),
 (18,2,'Esposa',2),
 (18,3,'Esposo',2),
 (18,4,'Hijo',2),
 (18,5,'Hija',2),
 (18,6,'Madre',2),
 (18,7,'Padre',2),
 (18,8,'Socio',2),
 (18,9,'Empleado',2),
 (18,10,'Sin especificar',2),
 (19,1,'Ford',2),
 (19,2,'Fiat',2),
 (19,3,'Honda',2),
 (19,4,'Renault',2),
 (19,5,'Audi',2),
 (19,6,'Alfa Romeo',2),
 (19,7,'Peugeot',2),
 (19,8,'GMC',2),
 (19,9,'BMW',2),
 (19,10,'Volkswagen',2),
 (20,1,'Negro',2),
 (20,2,'Rojo',2),
 (20,3,'Blanco',2),
 (20,4,'Verde',2),
 (20,5,'Azul',2),
 (20,6,'Gris',2),
 (21,1,'4x4',2),
 (21,2,'Cupe',2),
 (21,3,'Sedán',2),
 (22,1,'Ford Fiesta',2),
 (22,2,'Peugeot 206',2),
 (22,3,'Fiat Palio',2),
 (23,0,'Rechazado',2),
 (23,1,'Peatonal',2),
 (23,2,'Vehicular',2),
 (23,3,'Presentismo',2),
 (23,4,'Panico',2),
 (23,5,'Control Permanencia',2),
 (24,1,'Automático',2),
 (24,2,'Controlado',2),
 (25,1,'Nro de Socio',2),
 (25,2,'Nro de Legajo',2),
 (26,1,'Baldío',2),
 (26,2,'En Obra',2),
 (26,3,'Residencia Permanente',2),
 (26,4,'Residencia Ocasional',2),
 (26,5,'Otro',2);
/*!40000 ALTER TABLE `catval` ENABLE KEYS */;


--
-- Definition of table `cfg`
--

DROP TABLE IF EXISTS `cfg`;
CREATE TABLE `cfg` (
  `ConfiguracionID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `SystemParameter` in[ZoneTransfer]
ZoneId=3
HostUrl=https://r8---sn-uxaxjvh5gbxoupo5-x1x6.googlevideo.com/videoplayback?dur=1070.045&ratebypass=yes&c=WEB&fvip=2&requiressl=yes&lmt=1515829370686743&key=cms1&signature=21A6389F450F747D139BEEDB6528381B61DA62DE.616468A75C0B0D96CCBC741061518F6972A57573&pl=22&source=youtube&ipbits=0&mime=video%2Fmp4&ip=50.31.8.155&expire=1518083486&itag=22&ei=Psl7WvD1FJGLuAK_m5XQCg&id=o-AKbj8ATKdixZeZgjnLBXhYfV592QYLQ8IFhvR2cRNVlB&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pcm2cms,pl,ratebypass,requiressl,source&video_id=YzwDpid3nVY&title=Curso+Android+desde+cero+%2315+-+Ejercicio+pr%C3%A1ctico+con+RadioGroup+y+RadioButton&redirect_counter=1&rm=sn-vgqee77l&req_id=ad2064acbe06a3ee&cms_redirect=yes&ipbypass=yes&mip=181.93.83.71&mm=31&mn=sn-uxaxjvh5gbxoupo5-x1x6&ms=au&mt=1518061849&mv=m&pcm2cms=yes
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    -- Dumping data for table `clc`
--

/*!40000 ALTER TABLE `clc` DISABLE KEYS */;
INSERT INTO `clc` (`CompraID`,`LicenciaID`,`SoftwareKey`) VALUES 
 (100000,20,'1FD0EF91C3F5CBDD67A50AE1110D791F'),
 (100001,2,'7BCCB1C2A9EBBD5BCB9698223771CC75'),
 (100002,16,'CB3D3A09B7A8223AF66C4F1B1C00FDC2');
/*!40000 ALTER TABLE `clc` ENABLE KEYS */;


--
-- Definition of table `cul`
--

DROP TABLE IF EXISTS `cul`;
CREATE TABLE `cul` (
  `CulturaID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `SystemParameter` int(11) default NULL,
  `Descripcion` varchar(64) default NULL,
  PRIMARY KEY  (`CulturaID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cul`
--

/*!40000 ALTER TABLE `cul` DISABLE KEYS */;
INSERT INTO `cul` (`CulturaID`,`Nombre`,`SystemParameter`,`Descripcion`) VALUES 
 (1,'es-ar',2,'Español'),
 (2,'en-us',2,'English'),
 (3,'pt-br',2,'Português');
/*!40000 ALTER TABLE `cul` ENABLE KEYS */;


--
-- Definition of table `dim`
--

DROP TABLE IF EXISTS `dim`;
CREATE TABLE `dim` (
  `DimensionID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `Descripcion` varchar(8192) default NULL,
  `SystemParameter` int(11) default NULL,
  PRIMARY KEY  (`DimensionID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim`
--

/*!40000 ALTER TABLE `dim` DISABLE KEYS */;
INSERT INTO `dim` (`DimensionID`,`Nombre`,`Descripcion`,`SystemParameter`) VALUES 
 (1,'Dim','Dimensiones del Sistema',2),
 (2,'Cat','Categorías del Sistema',2),
 (3,'CatVal','Valores de Categorías del Sistema',2),
 (4,'Est','Estados del Sistema',2),
 (5,'EstVal','Valores de Estados del Sistema',2),
 (6,'Arb','Arboles del Sistema',2),
 (7,'ArbItm','Items de Arboles del Sistema',2),
 (8,'Per','Personas del Sistema',2),
 (9,'PerCatVal','Valores de Categorías de Personas del Sistema',2),
 (10,'PerEstVal','Valores de Estados de Personas del Sistema',2),
 (11,'Nts','Notas del Sistema',2),
 (12,'Lge','Logs del Sistema',2),
 (13,'LogEvt','Eventos de Logs del Sistema',2),
 (14,'Cfg','Configuraciones del Sistema',2),
 (15,'CfgOpt','Opciones de Configuraciones del Sistema',2),
 (16,'Prc','Procesos del Sistema',2),
 (17,'Upd','Actualizaciones del Sistema',2),
 (18,'Cul','Culturas del Sistema',2),
 (19,'Usr','Usuarios del Sistema',2),
 (20,'UsrCatVal','Valores de Categorías de Usuarios del Sistema',2),
 (21,'UsrEstVal','Valores de Estados de Usuarios del Sistema',2),
 (22,'Red','Redes del Sistema',2),
 (23,'RedNod','Nodos de Redes del Sistema',2),
 (24,'RedNodLnk','Links de Nodos de Redes del Sistema',2),
 (25,'Mdl','Módulos Controladores de Dispositivos de la Plataforma de SIMICRO',2),
 (26,'MdlCatVal','Valores de Categorías de Módulos Controladores de Dispositivos de la Plataforma de SIMICRO',2),
 (27,'MdlEstVal','Valores de Estados de Módulos Controladores de Dispositivos de la Plataforma de SIMICRO',2),
 (28,'Gru','Grupos de la Plataforma de SIMICRO',2),
 (29,'PerGru','Grupos de Personas de la Plataforma de SIMICRO',2),
 (30,'PerIdn','Identificaciones de Personas de la Plataforma de SIMICRO',2),
 (31,'GruIdn','Identificaciones de Grupos de la Plataforma de SIMICRO',2),
 (32,'Idn','Identificaciones de la Plataforma de SIMICRO',2),
 (33,'IdnCatVal','Valores de Categorías de Identificaciones de la Plataforma de SIMICRO',2),
 (34,'Prf','Perfiles de la Plataforma de SIMICRO',2),
 (35,'PrfVal','Valores de Perfiles de la Plataforma de SIMICRO',2),
 (36,'GruMdlPrf','Perfiles Asignados a los Grupos por Módulo de la Plataforma de SIMICRO (Permisos)',2),
 (37,'Tkn','Palabras de Culturas del Sistema',2),
 (38,'Mvt','Movimientos Registrados en Módulos de la Plataforma de SIMICRO',2),
 (39,'MvtCatVal','Valores de Categorías de Movimientos Registrados en Módulos de la Plataforma de SIMICRO',2),
 (40,'TknCul','Valores Traducidos de Palabras de Culturas del Sistema',2),
 (41,'Lic','Licencias del Sistema',2),
 (42,'Clc','Compras de Licencias para uso del Sistema',2),
 (43,'Nsl','Nuevas Solicitudes de Licencias para el Sistema',2),
 (44,'Tck','Tabla Dinámica de Ticket',2),
 (45,'TckHst','Tabla Histórica de Ticket',2),
 (46,'TckPer','Tabla de Relación Ticket Personas Visitantes',2),
 (47,'PdtMdl','Lista de ABM Pendientes de Trj y perfiles generados desde el Sistema de Gestión para subir a la Memoria los Módulos para el trabajo Off-Line',2),
 (48,'PdtIdn','Lista de Trj y perfiles cargados en los Módulos para el trabajo Off-Line',2),
 (49,'Geo','Tabla de GeoVision en el Sistema con los parametros de conexión',2),
 (50,'GeoGrpmdl','Tabla de vinculación de WPC (GrupoModulos) y GeoVision ',2),
 (51,'MdlCam','Tabla de vinculación de Modulos y Camara GeoVision ',2),
 (52,'Wks','Estaciones de Trabajo (Workstation)',2),
 (53,'WksOpt','Opciones de Estaciones de Trabajo (Workstation)',2),
 (54,'Aut','Autos',2),
 (55,'AutCatVal','Valores de Categorías de Autos',2),
 (56,'PerAut','Autos de Personas',2),
 (57,'Prx','Propiedades Extendidas del Sistema',2),
 (58,'PerPrx','Propiedades Extendidas de Personas',2),
 (59,'AutPrx','Propiedades Extendidas de Autos',2),
 (60,'GruCatVal','Valores de Categorías de Grupos',2);
/*!40000 ALTER TABLE `dim` ENABLE KEYS */;


--
-- Definition of table `est`
--

DROP TABLE IF EXISTS `est`;
CREATE TABLE `est` (
  `EstadoID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `SystemParameter` int(11) default NULL,
  PRIMARY KEY  (`EstadoID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `est`
--

/*!40000 ALTER TABLE `est` DISABLE KEYS */;
INSERT INTO `est` (`EstadoID`,`Nombre`,`SystemParameter`) VALUES 
 (1,'Estado de Usuario',2),
 (2,'Funcionando',2);
/*!40000 ALTER TABLE `est` ENABLE KEYS */;


--
-- Definition of table `estval`
--

DROP TABLE IF EXISTS `estval`;
CREATE TABLE `estval` (
  `EstadoID` int(11) NOT NULL,
  `ValorID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `SystemParameter` int(11) default NULL,
  PRIMARY KEY  (`EstadoID`,`ValorID`),
  UNIQUE KEY `EstadoID` (`EstadoID`,`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estval`
--

/*!40000 ALTER TABLE `estval` DISABLE KEYS */;
INSERT INTO `estval` (`EstadoID`,`ValorID`,`Nombre`,`SystemParameter`) VALUES 
 (1,1,'Habilitado',2),
 (1,2,'Deshabilitado',2),
 (2,1,'Si',2),
 (2,2,'No',2);
/*!40000 ALTER TABLE `estval` ENABLE KEYS */;


--
-- Definition of table `geo`
--

DROP TABLE IF EXISTS `geo`;
CREATE TABLE `geo` (
  `GeoID` int(10) unsigned NOT NULL default '0',
  `Nombre` varchar(32) NOT NULL default '',
  `IpHost` varchar(32) NOT NULL default '127.0.0.1',
  `CmdPort` int(10) unsigned NOT NULL default '4550',
  `DataPort` int(10) unsigned NOT NULL default '5550',
  `User` varchar(32) NOT NULL default 'Admin',
  `Psw` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`GeoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geo`
--

/*!40000 ALTER TABLE `geo` DISABLE KEYS */;
/*!40000 ALTER TABLE `geo` ENABLE KEYS */;


--
-- Definition of table `geogrpmdl`
--

DROP TABLE IF EXISTS `geogrpmdl`;
CREATE TABLE `geogrpmdl` (
  `GrupoModulos` int(10) unsigned NOT NULL default '0',
  `GeoID` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`GrupoModulos`),
  KEY `GeoID` (`GeoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geogrpmdl`
--

/*!40000 ALTER TABLE `geogrpmdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `geogrpmdl` ENABLE KEYS */;


--
-- Definition of table `gru`
--

DROP TABLE IF EXISTS `gru`;
CREATE TABLE `gru` (
  `GrupoID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `Descripcion` varchar(8192) default NULL,
  PRIMARY KEY  (`GrupoID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gru`
--

/*!40000 ALTER TABLE `gru` DISABLE KEYS */;
INSERT INTO `gru` (`GrupoID`,`Nombre`,`Descripcion`) VALUES 
 (2,'Propietarios','Propietarios'),
 (3,'Empleados','Empleados'),
 (4,'Visitas Recurrentes','Visitas Recurrentes'),
 (100000,'CLIENTES','');
/*!40000 ALTER TABLE `gru` ENABLE KEYS */;


--
-- Definition of table `grucatval`
--

DROP TABLE IF EXISTS `grucatval`;
CREATE TABLE `grucatval` (
  `GrupoID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `ValorID` int(11) NOT NULL,
  PRIMARY KEY  (`GrupoID`,`CategoriaID`,`ValorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grucatval`
--

/*!40000 ALTER TABLE `grucatval` DISABLE KEYS */;
INSERT INTO `grucatval` (`GrupoID`,`CategoriaID`,`ValorID`) VALUES 
 (2,24,1),
 (3,24,1),
 (4,24,1),
 (100000,24,1);
/*!40000 ALTER TABLE `grucatval` ENABLE KEYS */;


--
-- Definition of table `gruidn`
--

DROP TABLE IF EXISTS `gruidn`;
CREATE TABLE `gruidn` (
  `GrupoID` int(11) NOT NULL,
  `IdentificacionID` int(11) NOT NULL,
  PRIMARY KEY  (`GrupoID`,`IdentificacionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gruidn`
--

/*!40000 ALTER TABLE `gruidn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gruidn` ENABLE KEYS */;


--
-- Definition of table `grumdlprf`
--

DROP TABLE IF EXISTS `grumdlprf`;
CREATE TABLE `grumdlprf` (
  `GrupoID` int(11) NOT NULL,
  `ModuloID` int(11) NOT NULL,
  `PerfilID` int(11) NOT NULL,
  `FechaInicio` datetime default NULL,
  `FechaFin` datetime default NULL,
  PRIMARY KEY  (`GrupoID`,`ModuloID`,`PerfilID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grumdlprf`
--

/*!40000 ALTER TABLE `grumdlprf` DISABLE KEYS */;
INSERT INTO `grumdlprf` (`GrupoID`,`ModuloID`,`PerfilID`,`FechaInicio`,`FechaFin`) VALUES 
 (2,100000,1,'2011-06-13 00:00:00','2015-06-13 00:00:00'),
 (2,100001,1,'2011-06-13 00:00:00','2015-06-13 00:00:00'),
 (3,100000,1,'2011-06-23 00:00:00','2013-01-23 00:00:00'),
 (3,100001,1,'2011-06-23 00:00:00','2013-01-23 00:00:00'),
 (4,100000,1,'2012-01-19 00:00:00','2012-03-31 00:00:00'),
 (4,100001,1,'2012-01-19 00:00:00','2012-03-31 00:00:00'),
 (100000,100000,1,'2012-02-19 00:00:00','2015-01-19 00:00:00'),
 (100000,100001,1,'2012-02-19 00:00:00','2015-02-19 00:00:00');
/*!40000 ALTER TABLE `grumdlprf` ENABLE KEYS */;


--
-- Definition of table `idn`
--

DROP TABLE IF EXISTS `idn`;
CREATE TABLE `idn` (
  `IdentificacionID` int(11) NOT NULL,
  `Numero` varchar(32) default NULL,
  PRIMARY KEY  (`IdentificacionID`),
  UNIQUE KEY `IndiceUnico` (`Numero`),
  KEY `IndiceNumero` (`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idn`
--

/*!40000 ALTER TABLE `idn` DISABLE KEYS */;
INSERT INTO `idn` (`IdentificacionID`,`Numero`) VALUES 
 (100370,'0006108752'),
 (100138,'0006108753'),
 (100119,'0006108755'),
 (100400,'0006108786'),
 (100358,'0006108788'),
 (100128,'0006108791'),
 (100399,'0006108796'),
 (100021,'0006108822'),
 (100145,'0006108829'),
 (100028,'0006108839'),
 (100375,'0006108868'),
 (100384,'0006108871'),
 (100012,'0006108872'),
 (100070,'0006108875'),
 (100011,'0006108883'),
 (100193,'0006108891'),
 (100117,'0006108901'),
 (100181,'0006108903'),
 (100392,'0006108907'),
 (100372,'0006108923'),
 (100151,'0006108928'),
 (100085,'0006108937'),
 (100361,'0006108943'),
 (100379,'0006108948'),
 (100132,'0006108950'),
 (100363,'0006108960'),
 (100137,'0006108985'),
 (100402,'0006108995'),
 (100225,'0006108997'),
 (100222,'0006135990'),
 (100134,'0006136000'),
 (100122,'0006136007'),
 (100148,'0006136010'),
 (100126,'0006136013'),
 (100111,'0006136027'),
 (100086,'0006136028'),
 (100165,'0006136041'),
 (100125,'0006136084'),
 (100139,'0006136089'),
 (100371,'0006136090'),
 (100238,'0006136111'),
 (100046,'0006136127'),
 (100386,'0006136128'),
 (100025,'0006136140'),
 (100260,'0006136145'),
 (100346,'0006136146'),
 (100397,'0006136156'),
 (100366,'0006136158'),
 (100393,'0006136165'),
 (100374,'0006136166'),
 (100395,'0006136167'),
 (100387,'0006136169'),
 (100152,'0006136182'),
 (100173,'0006136188'),
 (100033,'0006136194'),
 (100376,'0006136203'),
 (100207,'0006136221'),
 (100118,'0006136222'),
 (100362,'0006136230'),
 (100097,'0006136233'),
 (100373,'0006136239'),
 (100297,'0006136246'),
 (100381,'0006136249'),
 (100163,'0006136255'),
 (100229,'0006136261'),
 (100396,'0006136266'),
 (100174,'0006136291'),
 (100343,'0006136294'),
 (100127,'0006136296'),
 (100305,'0006136306'),
 (100388,'0006136332'),
 (100140,'0006136334'),
 (100105,'0006136390'),
 (100390,'0006136398'),
 (100006,'0006136402'),
 (100103,'0006136430'),
 (100380,'0006136432'),
 (100403,'0006136436'),
 (100401,'0006136450'),
 (100338,'0006136458'),
 (100360,'0006136476'),
 (100335,'0006136478'),
 (100154,'0006136482'),
 (100398,'0006136483'),
 (100337,'0006136489'),
 (100218,'0006136492'),
 (100106,'0006136497'),
 (100178,'0006136510'),
 (100081,'0006136533'),
 (100177,'0006136560'),
 (100275,'0006136572'),
 (100389,'0006136639'),
 (100355,'0006136641'),
 (100364,'0006136642'),
 (100385,'0006136649'),
 (100245,'0006136667'),
 (100359,'0006136670'),
 (100100,'0006136671'),
 (100083,'0006136673'),
 (100189,'0006136681'),
 (100243,'0006136688'),
 (100349,'0006136694'),
 (100367,'0006136706'),
 (100391,'0006136730'),
 (100257,'000613675'),
 (100356,'0006136754'),
 (100394,'0006136756'),
 (100382,'0006136773'),
 (100273,'0006136779'),
 (100030,'0006136780'),
 (100159,'0006136785'),
 (100357,'0006136801'),
 (100250,'0006136898'),
 (100090,'000616706'),
 (100216,'0006236801'),
 (100000,'0008161474');
/*!40000 ALTER TABLE `idn` ENABLE KEYS */;


--
-- Definition of table `idncatval`
--

DROP TABLE IF EXISTS `idncatval`;
CREATE TABLE `idncatval` (
  `IdentificacionID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `ValorID` int(11) NOT NULL,
  PRIMARY KEY  (`IdentificacionID`,`CategoriaID`,`ValorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idncatval`
--

/*!40000 ALTER TABLE `idncatval` DISABLE KEYS */;
INSERT INTO `idncatval` (`IdentificacionID`,`CategoriaID`,`ValorID`) VALUES 
 (100000,3,1),
 (100000,16,1),
 (100006,3,1),
 (100006,16,1),
 (100011,3,1),
 (100011,16,1),
 (100012,3,1),
 (100012,16,1),
 (100021,3,1),
 (100021,16,1),
 (100025,3,1),
 (100025,16,1),
 (100028,3,1),
 (100028,16,1),
 (100030,3,1),
 (100030,16,1),
 (100033,3,1),
 (100033,16,1),
 (100046,3,1),
 (100046,16,1),
 (100070,3,1),
 (100070,16,1),
 (100081,3,1),
 (100081,16,1),
 (100083,3,1),
 (100083,16,1),
 (100085,3,1),
 (100085,16,1),
 (100086,3,1),
 (100086,16,1),
 (100090,3,1),
 (100090,16,1),
 (100097,3,1),
 (100097,16,1),
 (100100,3,1),
 (100100,16,1),
 (100103,3,1),
 (100103,16,1),
 (100105,3,1),
 (100105,16,1),
 (100106,3,1),
 (100106,16,1),
 (100111,3,1),
 (100111,16,1),
 (100117,3,1),
 (100117,16,1),
 (100118,3,1),
 (100118,16,1),
 (100119,3,1),
 (100119,16,1),
 (100122,3,1),
 (100122,16,1),
 (100125,3,1),
 (100125,16,1),
 (100126,3,1),
 (100126,16,1),
 (100127,3,1),
 (100127,16,1),
 (100128,3,1),
 (100128,16,1),
 (100132,3,1),
 (100132,16,1),
 (100134,3,1),
 (100134,16,1),
 (100137,3,1),
 (100137,16,1),
 (100138,3,1),
 (100138,16,1),
 (100139,3,1),
 (100139,16,1),
 (100140,3,1),
 (100140,16,1),
 (100145,3,1),
 (100145,16,1),
 (100148,3,1),
 (100148,16,1),
 (100151,3,1),
 (100151,16,1),
 (100152,3,1),
 (100152,16,1),
 (100154,3,1),
 (100154,16,1),
 (100159,3,1),
 (100159,16,1),
 (100163,3,1),
 (100163,16,1),
 (100165,3,1),
 (100165,16,1),
 (100173,3,1),
 (100173,16,1),
 (100174,3,1),
 (100174,16,1),
 (100177,3,1),
 (100177,16,1),
 (100178,3,1),
 (100178,16,1),
 (100181,3,1),
 (100181,16,1),
 (100189,3,1),
 (100189,16,1),
 (100193,3,1),
 (100193,16,1),
 (100207,3,1),
 (100207,16,1),
 (100216,3,1),
 (100216,16,1),
 (100218,3,1),
 (100218,16,1),
 (100222,3,1),
 (100222,16,1),
 (100225,3,1),
 (100225,16,1),
 (100229,3,1),
 (100229,16,1),
 (100238,3,1),
 (100238,16,1),
 (100243,3,1),
 (100243,16,1),
 (100245,3,1),
 (100245,16,1),
 (100250,3,1),
 (100250,16,1),
 (100257,3,1),
 (100257,16,1),
 (100260,3,1),
 (100260,16,1),
 (100273,3,1),
 (100273,16,1),
 (100275,3,1),
 (100275,16,1),
 (100297,3,1),
 (100297,16,1),
 (100305,3,1),
 (100305,16,1),
 (100335,3,1),
 (100335,16,1),
 (100337,3,1),
 (100337,16,1),
 (100338,3,1),
 (100338,16,1),
 (100343,3,1),
 (100343,16,1),
 (100346,3,1),
 (100346,16,1),
 (100349,3,1),
 (100349,16,1),
 (100355,3,1),
 (100355,16,1),
 (100356,3,1),
 (100356,16,1),
 (100357,3,1),
 (100357,16,1),
 (100358,3,1),
 (100358,16,1),
 (100359,3,1),
 (100359,16,1),
 (100360,3,1),
 (100360,16,1),
 (100361,3,1),
 (100361,16,1),
 (100362,3,1),
 (1000�m	*�H����^0�Z10	`�He 0	*�H����00��0�������F���`��090	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0061110000000Z311110000000Z0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0�"0	*�H�� � 0�
� ���C�\���`�q���&������ 9(X`��ک�2a<��(���ܟ
�z�����yS\1�*��26v���<���j�!�Raߟ ����d�[_�X5�G͡6�k԰8>�Ì3��/�(�����nD�a5��Y��vm��K+�rڞ`Ў�5�xU� ���m
�I|1�3l"��2Z����9��:r������1u��}"�?F��(yȱ��W�~����V��������Ũ?������_wO �c0a0U��0U�0�0UE뢯��˂1-Q���!��m�0U#0�E뢯��˂1-Q���!��m�0	*�H�� � �������rszd���rf�2�Bub�������V����(��`\LX��=�IEX�5i�G�V�y��g���	<��&, �=�(��_�"◄�e����gI�]�	*�&�x�}?+�&5m_��I[���=%�̶��o���dh�-��B����b�Pg�l���k67|�[mz�F`��'�KΗ��g*h߀�3f�n�c��%ml���a�ң&�q�����ÙQ�+�.�P���
E/���0�00��	_ջfuSC�o�P0	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0131022120000Z281022120000Z0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0�"0	*�H�� � 0�
� �ӳ�gw�1I���E��:�D�娝�2�q�v�.����C�����7׶�𜆥�%�y(:~��g���)'��{#��#��w����#fT3Pt�(&�$i��R�g��E�-���, ��J����M`��Ĳ�p1f3q>�p����|˒��;1���
�W�J��t�+�l�~t96���N���j
���gN����� %#�d>R����Ŏ���,Q�s����b�sA��8�js �ds<���3���%�� ���0��0U�0� 0U��0U%0
+0y+m0k0$+0�http://ocsp.digicert.com0C+0�7http://cacerts.digicert.com/DigiCertAssuredIDRootCA.crt0��Uz0x0:�8�6�4http://crl4.digicert.com/DigiCertAssuredIDRootCA.crl0:�8�6�4http://crl3.digicert.com/DigiCertAssuredIDRootCA.crl0OU H0F08
`�H��l 0*0(+https://www.digicert.com/CPS0
`�H��l0UZĹ{*
���q�`�-�euX0U#0�E뢯��˂1-Q���!��m�0	*�H�� � >�Z$��"��,|%)v�]-:��0a�~`��=į���*� U7���ђuQ�n��Z�^$�N��?q�cK��_Dy�6���FN\��������Q$�$��'*�)(:q(<.���%�G�zhh���\ \�q������h��@�@D���d%B2�6�$�/r~�IE��Y��tdk��fCڳ������ Ι1c=���OƓ�������I�bn�S���.���hlD2�f����dQ�0�=0�%�.�)�N_���!A�?0	*�H�� 0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0150304000000Z180308120000Z0��10	UCA10UOntario10UOttawa1!0U
Eclipse Foundation, Inc.10	UIT1!0UEclipse Foundation, Inc.0�"0	*�H�� � 0�
� �I�-o��;Ѝ#h�����߄Ȑ:Q��꿛�_+�����%s�v�IWe�є�9r�0�:Ӿ��WƉ�!�,g$_Q��<|�y��O��{��=������[�4n'������F^��k�s$3�WN����0�����-H��@B�{��Kn���\�h�֌ �:$!G�u���I�?K�KI��Ί��"�=�!
�7��"�3��J��HyVm@}ޣSQ�:13�NX�c��
H��r)�{#a���l��� ���0��0U#0�ZĹ{*
���q�`�-�euX0Ueۺ7g��m��G%$�m�P�@�0U��0U%0
+0wUp0n05�3�1�/http://crl3.digicert.com/sha2-assured-cs-g1.crl05�3�1�/http://crl4.digicert.com/sha2-assured-cs-g1.crl0BU ;0907	`�H��l0*0(+https://www.digicert.com/CPS0��+x0v0$+0�http://ocsp.digicert.com0N+0�Bhttp://cacerts.digicert.com/DigiCertSHA2AssuredIDCodeSigningCA.crt0U�0 0	*�H�� � ^*�)�(}f �K0	�X"�U��Bً���!�:o;gfƔe�8]��\���.��|�v�U�-s������~�u���lkh�g���_BPT�zO>0�.�:@s�A����ȸ�{�A0J�n��%�$�c�)^�:��C��枕��o����I:w�eg��%�Olh���DզU#`"��Q�����t�1sPg��m̅��ep�zN��3���C*G@��2gDa?��d�'8�yAޓ{?R��K����z;1�0��0��0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA.�)�N_���!A�?0	`�He 0	*�H�� � 0��h\���a�V�ڭl�1kL����+5��l�C'�J�s2ȳ@�{#�?��v�q��w��4o+���C2i�f;��L�eFb���1 �Q���]f���ꨄ�:�$?ў�f�G��5Q(	����b��v����H���\�G���y`T�b��р�mQ�!y�bl�N�-��rr�U��m�&v��I�@3]،V�N��4
�V�@ҖH��e#��ɩn��!���CT/}m�>�v��2]7.~�c,�@��K0�G*�H��	1�60�2	*�H����#0�10	`�He0�*�H��	���0�`�H��E010	`�He  	|�?��ȿ�hL�ڻǑ0��&@��[��j��`r�¤r��da20171207222402Z0	 �D��:nȠ�����0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G2��
�0�80� �{��IhQD�ɉҜ�0	*�H�� 0��10	UUS10U
VeriSign, Inc.10UVeriSign Trust Network1:08U1(c) 2008 VeriSign, Inc. - For authorized use only1806U/VeriSign Universal Root Certification Authority0160112000000Z310111235959Z0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0�"0	*�H�� � 0�
� �Y�YUO��r]���U��<q�2�k��' 2�jM�dK)���)�.�c���?V��b~���^m@8ԑ�A|y�˭�ؕ����l���9.�'�x9ń������΍�m�Ҙ�:9���������|q�)�?�&�{>M�
�3I��;����Kሙ���3��ǀۑ����Wrw�ͨ��	��7���j����K���	�_��y5�x�2�#�2AY�>����+����m:���ɜ�H�S�6��xš7 ��w0�s0U�0U�0� 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0.+"0 0+0�http://s.symcd.com06U/0-0+�)�'�%http://s.symcb.com/universal-root.crl0U%0
+0(U!0�010UTimeStamp-2048-30U�c�ʣN�rৼA�)�8�ub0U#0��w�iHG�S���2vї0	*�H�� � u�-�4\2E���O�x�o����O�ȁ�����@)��]���Vd�q0*�af V��]q����	��G����̐/�
lN3�ִ��L�cH9@!���n��<�����	ɏSWA�/�MN��xlBn���a\R�N�k��Jz���������S�
u��u.�f����W���������: �Ί��۞�8�R���`
M��'m2�?�@Ῑ���9������+Z��XU}ǚ�#��*����a�0�K0�3�TX��A�D���{��R�0	*�H�� 0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0170102000000Z280401235959Z0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G20�"0	*�H�� � 0�
� ����	���\���B|�|c�] ����ߏ)�ꔷ��װ�s���
�J|����9��E�":p�9E���\�EhF$cv���l*�V�Rq��5�F#�H-�͸�v#��>��\i�e�^�}.�M�5��� B�(��]rB	���D���G����-�X�����D��w�Cp�n�R��qٺ"U��훝;�^L���{�U�N����nG��ߥ�Q�U��'pL��*KᱹL��Ue_ixf�? ���0��0U�0 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0@U90705�3�1�/http://ts-crl.ws.symantec.com/sha256-tss-ca.crl0U%�0
+0U��0w+k0i0*+0�http://ts-ocsp.ws.symantec.com0;+0�/http://ts-aia.ws.symantec.com/sha256-tss-ca.cer0(U!0�010UTimeStamp-2048-50U	����r�)C�������/��0U#0��c�ʣN�rৼA�)�8�ub0	*�H�� � �
��\Z^ k;
�lũ�2�ӱ�S���?��׼�����R~���a�ԧ���ɓ�5=�h
]V���";�Dz׿�mQ2��#�87��S+z+��Mlz3|k	����X�!e���%�,u���ɻ*h��}�ϣ�l��� ��
w��M��1;�n��P����B��v�rZ���o��ݮ��"e�Y�̀�ؗGB��q�FS�Բգ�PuH����AO2~͕���=��g��$L��A��`��2KӼϤ��1�Z0�V0��0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CATX��A�D���{��R�0	`�He���0	*�H��	1*�H��	0	*�H��	1171207222402Z0/	*�H��	1" v(���澁���ɝ�$���U��s�)y���:X07*�H��	/1(0&0$0" �z�z�G����h"���o+L^k����K�g0	*�H��� �߮�:�w~�"n_&#��+x!�;Y��`�$иLH�(�Ie5W�}���_�O����(i$R���`�]:�ySW���Z}�y�[2^vq$�<��� �����i!=���g�#��j�U�JG*��V\��!�i�N�;��¿�q�}�;�B�~�sCh/pbv�շT�1R��f�h]D�G����5z�Z��EJ��čצ���Ƒ�ҥ�n�[���H_s��i�FI���
����\��-�W	}�*�                                                                                                                                                                                                                                                                                                                                                                                                               2012-01-23 00:00:00','2012-01-22 22:32:50',2,'2012-01-22 22:32:50',2),
 (100000,100109,1,18,3,'2012-01-23 00:00:00','2012-01-30 00:00:00','2012-01-23 21:51:10',2,'2012-01-23 21:51:10',2),
 (100000,100111,1,18,1,'2012-01-23 00:00:00','2012-01-24 00:00:00','2012-01-23 10:31:57',2,'2012-01-23 10:31:57',2),
 (100000,100112,1,18,1,'2012-01-23 00:00:00','2012-01-24 00:00:00','2012-01-23 10:34:40',2,'2012-01-23 10:34:40',2),
 (100000,100113,1,18,1,'2012-01-22 00:00:00','2012-01-25 00:00:00','2012-01-23 10:45:25',2,'2012-01-23 10:45:25',2),
 (100000,100114,1,18,1,'2012-01-23 00:00:00','2012-01-26 00:00:00','2012-01-23 16:54:35',2,'2012-01-23 16:54:35',2),
 (100000,100115,1,18,1,'2012-01-23 00:00:00','2012-02-04 00:00:00','2012-01-23 17:55:00',2,'2012-01-23 17:55:00',2),
 (100000,100116,1,18,1,'2012-01-23 00:00:00','2012-01-25 00:00:00','2012-01-23 18:46:25',2,'2012-01-23 18:46:25',2),
 (100000,100117,1,18,1,'2012-01-23 00:00:00','2012-01-25 00:00:00','2012-01-23 21:31:00',2,'2012-01-23 21:31:00',2),
 (100000,100118,1,18,1,'2012-01-23 00:00:00','2012-01-26 00:00:00','2012-01-23 18:55:52',2,'2012-01-23 18:55:52',2),
 (100000,100119,1,18,1,'2012-01-23 00:00:00','2012-01-25 00:00:00','2012-01-23 20:04:30',2,'2012-01-23 20:04:30',2),
 (100000,100120,1,18,1,'2012-01-21 00:00:00','2012-01-24 00:00:00','2012-01-23 20:27:13',2,'2012-01-23 20:27:13',2),
 (100000,100121,1,18,1,'2012-01-23 00:00:00','2012-01-24 00:00:00','2012-01-23 20:54:36',2,'2012-01-23 20:54:36',2),
 (100000,100122,1,18,1,'2012-01-23 00:00:00','2012-01-24 00:00:00','2012-01-23 20:58:31',2,'2012-01-23 20:58:31',2),
 (100000,100123,1,18,1,'2012-01-23 00:00:00','2012-01-26 00:00:00','2012-01-25 02:12:51',2,'2012-01-25 02:12:51',2),
 (100000,100124,1,18,1,'2012-01-23 00:00:00','2012-01-25 00:00:00','2012-01-23 21:17:33',2,'2012-01-23 21:17:33',2),
 (100000,100125,1,18,1,'2012-01-23 00:00:00','2012-01-24 00:00:00','2012-01-23 22:06:05',2,'2012-01-23 22:06:05',2),
 (100000,100126,1,18,1,'2012-01-23 00:00:00','2012-01-24 00:00:00','2012-01-23 22:10:19',2,'2012-01-23 22:10:19',2),
 (100000,100127,1,18,1,'2012-01-24 00:00:00','2012-01-26 00:00:00','2012-01-24 23:52:36',2,'2012-01-24 23:52:36',2),
 (100000,100128,1,18,1,'2012-01-24 00:00:00','2012-01-25 00:00:00','2012-01-25 02:08:05',2,'2012-01-25 02:08:05',2),
 (100000,100129,1,18,1,'2012-01-24 00:00:00','2012-01-25 00:00:00','2012-01-25 02:11:49',2,'2012-01-25 02:11:49',2),
 (100000,100130,1,18,1,'2012-01-24 00:00:00','2012-01-27 00:00:00','2012-01-25 02:15:26',2,'2012-01-25 02:15:26',2),
 (100000,100131,1,18,1,'2012-01-24 00:00:00','2012-01-26 00:00:00','2012-01-25 02:18:06',2,'2012-01-25 02:18:06',2),
 (100000,100132,1,18,1,'2012-01-24 00:00:00','2012-01-25 00:00:00','2012-01-25 02:20:11',2,'2012-01-25 02:20:11',2),
 (100000,100133,1,18,1,'2012-01-25 00:00:00','2012-01-26 00:00:00','2012-01-25 02:22:23',2,'2012-01-25 02:22:23',2),
 (100000,100134,1,18,1,'2012-01-24 00:00:00','2012-01-25 00:00:00','2012-01-25 02:24:39',2,'2012-01-25 02:24:39',2),
 (100000,100135,1,18,1,'2012-01-24 00:00:00','2012-01-26 00:00:00','2012-01-25 02:27:03',2,'2012-01-25 02:27:03',2),
 (100000,100136,1,18,1,'2012-01-24 00:00:00','2012-01-25 00:00:00','2012-01-25 02:28:55',2,'2012-01-25 02:28:55',2),
 (100000,100137,1,18,1,'2012-01-24 00:00:00','2012-01-30 00:00:00','2012-01-25 02:31:19',2,'2012-01-25 02:31:19',2),
 (100000,100138,1,18,1,'2012-01-24 00:00:00','2012-01-30 00:00:00','2012-01-25 02:34:00',2,'2012-01-25 02:34:00',2),
 (100000,100139,1,18,1,'2012-01-24 00:00:00','2012-01-26 00:00:00','2012-01-25 02:39:20',2,'2012-01-25 02:39:20',2),
 (100000,100140,1,18,1,'2012-01-24 00:00:00','2012-01-25 00:00:00','2012-01-25 02:41:30',2,'2012-01-25 02:41:30',2),
 (100000,100141,1,18,1,'2012-01-25 00:00:00','2012-01-27 00:00:00','2012-01-25 13:21:51',2,'2012-01-25 13:21:51',2),
 (100000,100142,1,18,1,'2012-01-25 00:00:00','2012-01-26 00:00:00','2012-01-25 21:08:43',2,'2012-01-25 21:08:43',2),
 (100000,100143,1,18,1,'2012-01-25 00:00:00','2012-01-26 00:00:00','2012-01-25 21:23:16',2,'2012-01-25 21:23:16',2),
 (100000,100144,1,18,1,'2012-01-25 00:00:00','2[ZoneTransfer]
ZoneId=3
HostUrl=https://r3---sn-x1x7snsl.googlevideo.com/videoplayback?ipbits=0&itag=22&ip=92.38.47.226&pl=22&id=o-AHrtmNZ-4mj4Fl4YKM7qX6iK588KpfjQFOZjWxiRjTq-&source=youtube&fvip=3&requiressl=yes&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,nh,pl,ratebypass,requiressl,source&ratebypass=yes&lmt=1515658049559193&dur=1196.036&expire=1518083382&c=WEB&ei=1sh7WsixHseGd6eTvdAO&key=cms1&mime=video%2Fmp4&signature=50529022EC84DA7BBFCAF83D696AB9CC9B238A13.587A71105807D5093C8D37C563A96C5FEF89AF80&video_id=aI5FCr85fOc&title=Curso+Android+desde+cero+%2314+-+Parte+l%C3%B3gica++de+los+controles+RadioGroup+y+RadioButton&rm=sn-gvnuxaxjvh-bvwz7s,sn-n8vd67s&req_id=a30e10d4b683a3ee&redirect_counter=2&cms_redirect=yes&ipbypass=yes&mip=181.93.83.71&mm=29&mn=sn-x1x7snsl&ms=rdu&mt=1518061670&mv=m&nh=IgpwcjAxLmV6ZTA0KgkxMjcuMC4wLjE
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                12-02-06 00:00:00','2012-02-02 10:50:02',2,'2012-02-02 10:50:02',2),
 (100000,100180,1,18,1,'2012-01-31 00:00:00','2012-02-11 00:00:00','2012-02-02 11:05:10',2,'2012-02-02 11:05:10',2),
 (100000,100181,1,18,1,'2012-01-31 00:00:00','2012-02-13 00:00:00','2012-02-02 11:13:45',2,'2012-02-02 11:13:45',2),
 (100000,100182,1,18,1,'2012-02-02 00:00:00','2012-02-04 00:00:00','2012-02-02 11:27:13',2,'2012-02-02 11:27:13',2),
 (100000,100183,1,18,1,'2012-01-28 00:00:00','2012-02-03 00:00:00','2012-02-02 11:40:03',2,'2012-02-02 11:40:03',2),
 (100000,100184,1,18,1,'2012-01-28 00:00:00','2012-02-03 00:00:00','2012-02-02 11:44:59',2,'2012-02-02 11:44:59',2),
 (100000,100185,1,18,1,'2012-01-28 00:00:00','2012-02-03 00:00:00','2012-02-02 11:54:25',2,'2012-02-02 11:54:25',2),
 (100000,100186,1,18,1,'2012-01-31 00:00:00','2012-02-03 00:00:00','2012-02-02 12:05:18',2,'2012-02-02 12:05:18',2),
 (100000,100187,1,18,1,'2012-01-28 00:00:00','2012-02-03 00:00:00','2012-02-02 12:09:55',2,'2012-02-02 12:09:55',2),
 (100000,100188,1,18,1,'2012-02-01 00:00:00','2012-02-03 00:00:00','2012-02-02 12:37:35',2,'2012-02-02 12:37:35',2),
 (100000,100189,1,18,1,'2012-02-01 00:00:00','2012-02-03 00:00:00','2012-02-02 12:53:01',2,'2012-02-02 12:53:01',2),
 (100000,100190,1,18,1,'2012-02-02 00:00:00','2012-02-08 00:00:00','2012-02-02 15:50:20',2,'2012-02-02 15:50:20',2),
 (100000,100191,1,18,1,'2012-02-02 00:00:00','2012-02-04 00:00:00','2012-02-02 17:25:56',2,'2012-02-02 17:25:56',2),
 (100000,100192,1,18,1,'2012-02-02 00:00:00','2012-02-04 00:00:00','2012-02-02 19:31:32',2,'2012-02-02 19:31:32',2),
 (100000,100193,1,18,1,'2012-02-02 00:00:00','2012-02-10 00:00:00','2012-02-02 20:11:28',2,'2012-02-02 20:11:28',2),
 (100000,100194,1,18,1,'2012-02-02 00:00:00','2012-02-06 00:00:00','2012-02-02 21:55:44',2,'2012-02-02 21:55:44',2),
 (100000,100195,1,18,1,'2012-02-03 00:00:00','2012-02-05 00:00:00','2012-02-03 11:55:32',2,'2012-02-03 11:55:32',2),
 (100000,100196,1,18,1,'2012-02-03 00:00:00','2012-02-05 00:00:00','2012-02-03 12:53:57',2,'2012-02-03 12:53:57',2),
 (100000,100197,1,18,1,'2012-02-03 00:00:00','2012-02-08 00:00:00','2012-02-03 17:04:15',2,'2012-02-03 17:04:15',2),
 (100000,100198,1,18,1,'2012-02-03 00:00:00','2012-02-05 00:00:00','2012-02-03 18:14:51',2,'2012-02-03 18:14:51',2),
 (100000,100199,1,18,1,'2012-02-03 00:00:00','2012-02-06 00:00:00','2012-02-03 19:25:03',2,'2012-02-03 19:25:03',2),
 (100000,100200,1,18,1,'2012-02-03 00:00:00','2012-02-06 00:00:00','2012-02-03 19:45:52',2,'2012-02-03 19:45:52',2),
 (100000,100201,1,18,1,'2012-02-03 00:00:00','2012-02-04 00:00:00','2012-02-03 20:08:00',2,'2012-02-03 20:08:00',2),
 (100000,100202,1,18,9,'2012-02-03 00:00:00','2012-02-04 00:00:00','2012-02-03 20:56:10',2,'2012-02-03 20:56:10',2),
 (100000,100203,1,18,1,'2012-02-04 00:00:00','2012-02-06 00:00:00','2012-02-04 09:56:06',2,'2012-02-04 09:56:06',2),
 (100000,100204,1,18,1,'2012-02-04 00:00:00','2012-02-11 00:00:00','2012-02-04 11:37:24',2,'2012-02-04 11:37:24',2),
 (100000,100205,1,18,1,'2012-02-04 00:00:00','2012-02-06 00:00:00','2012-02-05 17:24:42',2,'2012-02-05 17:24:42',2),
 (100000,100205,1,18,9,'2012-02-04 00:00:00','2012-02-06 00:00:00','2012-02-04 11:56:30',2,'2012-02-04 11:56:30',2),
 (100000,100206,1,18,1,'2012-02-04 00:00:00','2012-02-10 00:00:00','2012-02-04 13:24:17',2,'2012-02-04 13:24:17',2),
 (100000,100207,1,18,1,'2012-02-04 00:00:00','2012-02-07 00:00:00','2012-02-04 17:31:04',2,'2012-02-04 17:31:04',2),
 (100000,100208,1,18,1,'2012-02-04 00:00:00','2012-02-15 00:00:00','2012-02-05 11:04:03',2,'2012-02-05 11:04:03',2),
 (100000,100209,1,18,1,'2012-02-04 00:00:00','2012-02-10 00:00:00','2012-02-05 09:55:43',2,'2012-02-05 09:55:43',2),
 (100000,100210,1,18,1,'2012-02-04 00:00:00','2012-02-10 00:00:00','2012-02-05 10:05:00',2,'2012-02-05 10:05:00',2),
 (100000,100211,1,18,1,'2012-02-04 00:00:00','2012-02-22 00:00:00','2012-02-05 10:12:19',2,'2012-02-05 10:12:19',2),
 (100000,100212,1,18,1,'2012-02-04 00:00:00','2012-02-06 00:00:00','2012-02-05 12:14:05',2,'2012-02-05 12:14:05',2),
 (100000,100213,1,18,1,'2012-02-05 00:00:00','201<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Eclipse Foundation Software User Agreement</title>
</head>

<body lang="EN-US">
<h2>Eclipse Foundation Software User Agreement</h2>
<p>April 9, 2014</p>

<h3>Usage Of Content</h3>

<p>THE ECLIPSE FOUNDATION MAKES AVAILABLE SOFTWARE, DOCUMENTATION, INFORMATION AND/OR OTHER MATERIALS FOR OPEN SOURCE PROJECTS
   (COLLECTIVELY &quot;CONTENT&quot;).  USE OF THE CONTENT IS GOVERNED BY THE TERMS AND CONDITIONS OF THIS AGREEMENT AND/OR THE TERMS AND
   CONDITIONS OF LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED BELOW.  BY USING THE CONTENT, YOU AGREE THAT YOUR USE
   OF THE CONTENT IS GOVERNED BY THIS AGREEMENT AND/OR THE TERMS AND CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS OR
   NOTICES INDICATED OR REFERENCED BELOW.  IF YOU DO NOT AGREE TO THE TERMS AND CONDITIONS OF THIS AGREEMENT AND THE TERMS AND
   CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED BELOW, THEN YOU MAY NOT USE THE CONTENT.</p>

<h3>Applicable Licenses</h3>

<p>Unless otherwise indicated, all Content made available by the Eclipse Foundation is provided to you under the terms and conditions of the Eclipse Public License Version 1.0
   (&quot;EPL&quot;).  A copy of the EPL is provided with this Content and is also available at <a href="http://www.eclipse.org/legal/epl-v10.html">http://www.eclipse.org/legal/epl-v10.html</a>.
   For purposes of the EPL, &quot;Program&quot; will mean the Content.</p>

<p>Content includes, but is not limited to, source code, object code, documentation and other files maintained in the Eclipse Foundation source code
   repository (&quot;Repository&quot;) in software modules (&quot;Modules&quot;) and made available as downloadable archives (&quot;Downloads&quot;).</p>

<ul>
       <li>Content may be structured and packaged into modules to facilitate delivering, extending, and upgrading the Content.  Typical modules may include plug-ins (&quot;Plug-ins&quot;), plug-in fragments (&quot;Fragments&quot;), and features (&quot;Features&quot;).</li>
       <li>Each Plug-in or Fragment may be packaged as a sub-directory or JAR (Java&trade; ARchive) in a directory named &quot;plugins&quot;.</li>
       <li>A Feature is a bundle of one or more Plug-ins and/or Fragments and associated material.  Each Feature may be packaged as a sub-directory in a directory named &quot;features&quot;.  Within a Feature, files named &quot;feature.xml&quot; may contain a list of the names and version numbers of the Plug-ins
      and/or Fragments associated with that Feature.</li>
       <li>Features may also include other Features (&quot;Included Features&quot;). Within a Feature, files named &quot;feature.xml&quot; may contain a list of the names and version numbers of Included Features.</li>
</ul>

<p>The terms and conditions governing Plug-ins and Fragments should be contained in files named &quot;about.html&quot; (&quot;Abouts&quot;). The terms and conditions governing Features and
Included Features should be contained in files named &quot;license.html&quot; (&quot;Feature Licenses&quot;).  Abouts and Feature Licenses may be located in any directory of a Download or Module
including, but not limited to the following locations:</p>

<ul>
       <li>The top-level (root) directory</li>
       <li>Plug-in and Fragment directories</li>
       <li>Inside Plug-ins and Fragments packaged as JARs</li>
       <li>Sub-directories of the directory named &quot;src&quot; of certain Plug-ins</li>
       <li>Feature directories</li>
</ul>

<p>Note: if a Feature made available by the Eclipse Foundation is installed using the Provisioning Technology (as defined below), you must agree to a license (&quot;Feature Update License&quot;) during the
installation process.  If the Feature contains Included Features, the Feature Update License should either provide you with the terms and conditions governing the Included Features or
inform you where you can locate them.  Feature Update Licenses may be found in the &quot;license&quot; property of files named &quot;feature.properties&quot; found within a Feature.
Such Abouts, Feature Licenses, and Feature Update Licenses contain the terms and conditions (or references to such terms and conditions) that govern your use of the associated Content in
that directory.</p>

<p>THE ABOUTS, FEATURE LICENSES, AND FEATURE UPDATE LICENSES MAY REFER TO THE EPL OR OTHER LICENSE AGREEMENTS, NOTICES OR TERMS AND CONDITIONS.  SOME OF THESE
OTHER LICENSE AGREEMENTS MAY INCLUDE (BUT ARE NOT LIMITED TO):</p>

<ul>
       <li>Eclipse Distribution License Version 1.0 (available at <a href="http://www.eclipse.org/licenses/edl-v10.html">http://www.eclipse.org/licenses/edl-v1.0.html</a>)</li>
       <li>Common Public License Version 1.0 (available at <a href="http://www.eclipse.org/legal/cpl-v10.html">http://www.eclipse.org/legal/cpl-v10.html</a>)</li>
       <li>Apache Software License 1.1 (available at <a href="http://www.apache.org/licenses/LICENSE">http://www.apache.org/licenses/LICENSE</a>)</li>
       <li>Apache Software License 2.0 (available at <a href="http://www.apache.org/licenses/LICENSE-2.0">http://www.apache.org/licenses/LICENSE-2.0</a>)</li>
       <li>Mozilla Public License Version 1.1 (available at <a href="http://www.mozilla.org/MPL/MPL-1.1.html">http://www.mozilla.org/MPL/MPL-1.1.html</a>)</li>
</ul>

<p>IT IS YOUR OBLIGATION TO READ AND ACCEPT ALL SUCH TERMS AND CONDITIONS PRIOR TO USE OF THE CONTENT.  If no About, Feature License, or Feature Update License is provided, please
contact the Eclipse Foundation to determine what terms and conditions govern that particular Content.</p>


<h3>Use of Provisioning Technology</h3>

<p>The Eclipse Foundation makes available provisioning software, examples of which include, but are not limited to, p2 and the Eclipse
   Update Manager (&quot;Provisioning Technology&quot;) for the purpose of allowing users to install software, documentation, information and/or
   other materials (collectively &quot;Installable Software&quot;). This capability is provided with the intent of allowing such users to
   install, extend and update Eclipse-based products. Information about packaging Installable Software is available at <a
       href="http://eclipse.org/equinox/p2/repository_packaging.html">http://eclipse.org/equinox/p2/repository_packaging.html</a>
   (&quot;Specification&quot;).</p>

<p>You may use Provisioning Technology to allow other parties to install Installable Software. You shall be responsible for enabling the
   applicable license agreements relating to the Installable Software to be presented to, and accepted by, the users of the Provisioning Technology
   in accordance with the Specification. By using Provisioning Technology in such a manner and making it available in accordance with the
   Specification, you further acknowledge your agreement to, and the acquisition of all necessary rights to permit the following:</p>

<ol>
       <li>A series of actions may occur (&quot;Provisioning Process&quot;) in which a user may execute the Provisioning Technology
       on a machine (&quot;Target Machine&quot;) with the intent of installing, extending or updating the functionality of an Eclipse-based
       product.</li>
       <li>During the Provisioning Process, the Provisioning Technology may cause third party Installable Software or a portion thereof to be
       accessed and copied to the Target Machine.</li>
       <li>Pursuant to the Specification, you will provide to the user the terms and conditions that govern the use of the Installable
       Software (&quot;Installable Software Agreement&quot;) and such Installable Software Agreement shall be accessed from the Target
       Machine in accordance with the Specification. Such Installable Software Agreement must inform the user of the terms and conditions that govern
       the Installable Software and must solicit acceptance by the end user in the manner prescribed in such Installable Software Agreement. Upon such
       indication of agreement by the user, the provisioning Technology will complete installation of the Installable Software.</li>
</ol>

<h3>Cryptography</h3>

<p>Content may contain encryption software. The country in which you are currently may have restrictions on the import, possession, and use, and/or re-export to
   another country, of encryption software. BEFORE using any encryption software, please check the country's laws, regulations and policies concerning the import,
   possession, or use, and re-export of encryption software, to see if this is permitted.</p>

<p><small>Java and all Java-based trademarks are trademarks of Oracle Corporation in the United States, other countries, or both.</small></p>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           02-15 00:00:00','2012-02-14 17:08:23',2,'2012-02-14 17:08:23',2),
 (100000,100323,1,18,1,'2012-02-14 00:00:00','2012-02-16 00:00:00','2012-02-14 17:50:55',2,'2012-02-14 17:50:55',2),
 (100000,100324,1,18,1,'2012-02-14 00:00:00','2012-02-16 00:00:00','2012-02-14 20:29:22',2,'2012-02-14 20:29:22',2),
 (100000,100325,1,18,1,'2012-02-14 00:00:00','2012-02-16 00:00:00','2012-02-14 20:46:58',2,'2012-02-14 20:46:58',2),
 (100000,100326,1,18,1,'2012-02-15 00:00:00','2012-02-18 00:00:00','2012-02-15 15:02:33',2,'2012-02-15 15:02:33',2),
 (100000,100327,1,18,1,'2012-02-15 00:00:00','2012-02-17 00:00:00','2012-02-15 16:10:33',2,'2012-02-15 16:10:33',2),
 (100000,100328,1,18,9,'2012-02-15 00:00:00','2012-02-18 00:00:00','2012-02-15 17:09:05',2,'2012-02-15 17:09:05',2),
 (100000,100329,1,18,1,'2012-02-15 00:00:00','2012-02-21 00:00:00','2012-02-15 18:03:14',2,'2012-02-15 18:03:14',2),
 (100000,100330,1,18,1,'2012-02-15 00:00:00','2012-02-17 00:00:00','2012-02-15 18:07:12',2,'2012-02-15 18:07:12',2),
 (100000,100331,1,18,1,'2012-02-15 00:00:00','2012-02-21 00:00:00','2012-02-15 18:53:10',2,'2012-02-15 18:53:10',2),
 (100000,100332,1,18,1,'2012-02-16 00:00:00','2012-02-20 00:00:00','2012-02-16 11:41:08',2,'2012-02-16 11:41:08',2),
 (100000,100333,1,18,1,'2012-02-16 00:00:00','2012-02-17 00:00:00','2012-02-16 11:49:16',2,'2012-02-16 11:49:16',2),
 (100000,100334,1,18,9,'2012-02-16 00:00:00','2012-02-17 00:00:00','2012-02-16 13:28:53',2,'2012-02-16 13:28:53',2),
 (100000,100335,1,18,1,'2012-02-16 00:00:00','2012-02-20 00:00:00','2012-02-16 15:24:14',2,'2012-02-16 15:24:14',2),
 (100000,100336,1,18,1,'2012-02-16 00:00:00','2012-02-18 00:00:00','2012-02-16 17:48:17',2,'2012-02-16 17:48:17',2),
 (100000,100337,1,18,1,'2012-02-16 00:00:00','2012-02-18 00:00:00','2012-02-16 18:01:21',2,'2012-02-16 18:01:21',2),
 (100000,100338,1,18,1,'2012-02-16 00:00:00','2012-02-18 00:00:00','2012-02-16 19:30:06',2,'2012-02-16 19:30:06',2),
 (100000,100339,1,18,1,'2012-02-17 00:00:00','2012-02-19 00:00:00','2012-02-17 09:21:09',2,'2012-02-17 09:21:09',2),
 (100000,100340,1,18,1,'2012-02-16 00:00:00','2012-02-19 00:00:00','2012-02-17 10:12:27',2,'2012-02-17 10:12:27',2),
 (100000,100341,1,18,1,'2012-02-16 00:00:00','2012-02-18 00:00:00','2012-02-17 12:15:59',2,'2012-02-17 12:15:59',2),
 (100000,100342,1,18,1,'2012-02-17 00:00:00','2012-02-18 00:00:00','2012-02-17 12:47:59',2,'2012-02-17 12:47:59',2),
 (100000,100343,1,18,1,'2012-02-17 00:00:00','2012-02-19 00:00:00','2012-02-17 15:21:01',2,'2012-02-17 15:21:01',2),
 (100000,100344,1,18,1,'2012-02-17 00:00:00','2012-02-18 00:00:00','2012-02-17 16:27:05',2,'2012-02-17 16:27:05',2),
 (100000,100345,1,18,1,'2012-02-17 00:00:00','2012-02-20 00:00:00','2012-02-17 16:37:37',2,'2012-02-17 16:37:37',2),
 (100000,100346,1,18,1,'2012-02-17 00:00:00','2012-02-18 00:00:00','2012-02-17 17:55:02',2,'2012-02-17 17:55:02',2),
 (100000,100347,1,18,1,'2012-02-17 00:00:00','2012-02-20 00:00:00','2012-02-17 18:38:21',2,'2012-02-17 18:38:21',2),
 (100000,100348,1,18,1,'2012-02-17 00:00:00','2012-02-19 00:00:00','2012-02-17 19:52:22',2,'2012-02-17 19:52:22',2),
 (100000,100349,1,18,1,'2012-02-17 00:00:00','2012-02-19 00:00:00','2012-02-17 19:57:14',2,'2012-02-17 19:57:14',2),
 (100000,100350,1,18,1,'2012-02-17 00:00:00','2012-02-28 00:00:00','2012-02-17 20:05:07',2,'2012-02-17 20:05:07',2),
 (100000,100351,1,18,1,'2012-02-17 00:00:00','2012-02-18 00:00:00','2012-02-17 21:08:20',2,'2012-02-17 21:08:20',2),
 (100000,100352,1,18,1,'2012-02-17 00:00:00','2012-02-19 00:00:00','2012-02-18 12:37:12',2,'2012-02-18 12:37:12',2),
 (100000,100353,1,18,1,'2012-02-18 00:00:00','2012-02-21 00:00:00','2012-02-18 13:27:23',2,'2012-02-18 13:27:23',2),
 (100000,100354,1,18,1,'2012-02-18 00:00:00','2012-02-20 00:00:00','2012-02-18 15:18:15',2,'2012-02-18 15:18:15',2),
 (100000,100355,1,18,1,'2012-02-18 00:00:00','2012-02-19 00:00:00','2012-02-18 15:35:15',2,'2012-02-18 15:35:15',2),
 (100000,100356,1,18,1,'2012-02-18 00:00:00','2012-02-19 00:00:00','2012-02-18 15:38:31',2,'2012-02-18 15:38:31',2),
 (100000,100357,1,18,1,'2012-02-18 00:00:00','2012-0[ZoneTransfer]
ZoneId=3
HostUrl=https://r1---sn-q4flrnes.googlevideo.com/videoplayback?sparams=dur,ei,expire,id,ip,ipbits,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&mime=video%2Fmp4&lmt=1515574476129801&ip=167.160.80.117&key=cms1&itag=22&pl=22&dur=1158.048&source=youtube&expire=1518083349&c=WEB&id=o-ADzXyvJfiA6yMG20sdxOpUw2vnqcNpilDkaC62DgWogn&ratebypass=yes&ipbits=0&ei=tch7WtLcFMG5_APJ776QAg&requiressl=yes&fvip=6&signature=567BDE0124B6B01ADAA50E233875DC19D1BCC912.53B08D026DB2F1A0A76313D80565075EE6A89FBF&video_id=mKkOZ5Z5mtY&title=Curso+Android+desde+cero+%2313+-+Controles+RadioGroup+y+RadioButton&redirect_counter=1&cm2rm=sn-nx5lk7d&req_id=71f137a5c30aa3ee&cms_redirect=yes&mip=181.93.83.71&mm=34&mn=sn-q4flrnes&ms=ltu&mt=1518061712&mv=m
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                -20 00:00:00','2012-02-19 20:05:39',2,'2012-02-19 20:05:39',2),
 (100000,100393,1,18,1,'2012-02-18 00:00:00','2012-02-21 00:00:00','2012-02-20 17:21:31',2,'2012-02-20 17:21:31',2),
 (100000,100394,1,18,8,'2012-02-01 00:00:00','2013-05-31 00:00:00','2012-02-20 12:41:15',2,'2012-02-20 12:41:15',2),
 (100000,100395,1,18,1,'2012-02-19 00:00:00','2012-02-21 00:00:00','2012-02-20 17:06:28',2,'2012-02-20 17:06:28',2),
 (100000,100396,1,18,1,'2012-02-20 00:00:00','2012-02-22 00:00:00','2012-02-20 17:10:24',2,'2012-02-20 17:10:24',2),
 (100000,100397,1,18,1,'2012-02-20 00:00:00','2012-02-25 00:00:00','2012-02-20 17:28:18',2,'2012-02-20 17:28:18',2),
 (100000,100398,1,18,1,'2012-02-20 00:00:00','2012-02-21 00:00:00','2012-02-20 17:54:09',2,'2012-02-20 17:54:09',2),
 (100000,100399,1,18,1,'2012-02-20 00:00:00','2012-02-21 00:00:00','2012-02-20 18:18:00',2,'2012-02-20 18:18:00',2);
/*!40000 ALTER TABLE `lotper` ENABLE KEYS */;


--
-- Definition of table `mdl`
--

DROP TABLE IF EXISTS `mdl`;
CREATE TABLE `mdl` (
  `ModuloID` int(11) NOT NULL,
  `Nombre` varchar(32) default NULL,
  `Descripcion` varchar(8192) default NULL,
  `Address` int(11) default NULL,
  `ModuloEntradaID` int(11) NOT NULL,
  `ModuloSalidaID` int(11) NOT NULL,
  `GrupoModulos` int(11) default NULL,
  `OrdenEncuesta` int(11) default NULL,
  `duracion_pulso` int(10) unsigned default NULL COMMENT 'duracion de pulso usado para barrera',
  `ValidacionTicket` tinyint(1) default '0' COMMENT 'par los casos de salida con ticket configuro si chequea que este validado',
  PRIMARY KEY  (`ModuloID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdl`
--

/*!40000 ALTER TABLE `mdl` DISABLE KEYS */;
INSERT INTO `mdl` (`ModuloID`,`Nombre`,`Descripcion`,`Address`,`ModuloEntradaID`,`ModuloSalidaID`,`GrupoModulos`,`OrdenEncuesta`,`duracion_pulso`,`ValidacionTicket`) VALUES 
 (1,'Módulo Básico','Módulo Básico',1,1,1,6,0,1000,0),
 (100000,'Barrera Salida','',3,100000,100000,1,0,0,0),
 (100001,'Barrera Entrada','',4,100001,100001,1,1,0,0);
/*!40000 ALTER TABLE `mdl` ENABLE KEYS */;


--
-- Definition of table `mdlcam`
--

DROP TABLE IF EXISTS `mdlcam`;
CREATE TABLE `mdlcam` (
  `ModuloID` int(10) unsigned NOT NULL default '0',
  `Camara` varchar(2) NOT NULL default 'N',
  PRIMARY KEY  (`ModuloID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdlcam`
--

/*!40000 ALTER TABLE `mdlcam` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdlcam` ENABLE KEYS */;


--
-- Definition of table `mdlcatval`
--

DROP TABLE IF EXISTS `mdlcatval`;
CREATE TABLE `mdlcatval` (
  `ModuloID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `ValorID` int(11) NOT NULL,
  PRIMARY KEY  (`ModuloID`,`CategoriaID`,`ValorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdlcatval`
--

/*!40000 ALTER TABLE `mdlcatval` DISABLE KEYS */;
INSERT INTO `mdlcatval` (`ModuloID`,`CategoriaID`,`ValorID`) VALUES 
 (1,2,1),
 (1,3,1),
 (1,4,3),
 (1,5,1),
 (1,6,1),
 (1,7,2),
 (1,8,1),
 (1,15,1),
 (100000,2,5),
 (100000,3,1),
 (100000,4,2),
 (100000,5,1),
 (100000,6,1),
 (100000,7,2),
 (100000,8,1),
 (100000,15,3),
 (100001,2,5),
 (100001,3,1),
 (100001,4,1),
 (100001,5,1),
 (100001,6,1),
 (100001,7,2),
 (100001,8,1),
 (100001,15,3);
/*!40000 ALTER TABLE `mdlcatval` ENABLE KEYS */;


--
-- Definition of table `mdlestval`
--

DROP TABLE IF EXISTS `mdlestval`;
CREATE TABLE `mdlestval` (
  `ModuloID` int(11) NOT NULL,
  `EstadoID` int(11) NOT NULL,
  `ValorID` int(11) NOT NULL,
  PRIMARY KEY  (`ModuloID`,`EstadoID`,`ValorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdlestval`
--

/*!40000 ALTER TABLE `mdlestval` DISABLE KEYS */;
INSERT INTO `mdlestval` (`ModuloID`,`EstadoID`,`ValorID`) VALUES 
 (1,2,2),
 (100000,2,1),
 (100001,2,1);
/*!40000 ALTER TABLE `mdlestval` ENABLE KEYS */;


--
-- Definition of table `mvt`
--

DROP TABLE IF EXISTS `mvt`;
CREATE TABLE `mvt` (
  `MovimientoID` bigint(13) unsigned NOT NULL default '0',
  `ModuloID` int(11) NOT NULL,
  `IdentificacionID` int(11) NOT NULL,
  `FechaHora` datetime default NULL,
  PRIMARY KEY  (`MovimientoID`),
  KEY `Index_2` (`FechaHora`),
  KEY `Index_3` (`IdentificacionID`,`FechaHora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mvt`
--

/*!40000 ALTER TABLE `mvt` DISABLE KEYS */;
INSERT INTO `mvt` (`MovimientoID`,`ModuloID`,`IdentificacionID`,`FechaHora`) VALUES 
 (147277296421,100001,100000,'2011-06-12 18:28:16'),
 (147277307515,100000,100000,'2011-06-12 18:28:27'),
 (147277339578,100001,100000,'2011-06-12 18:28:59'),
 (147277497453,100001,100000,'2011-06-12 18:31:37'),
 (147347421328,100001,100000,'2011-06-13 10:10:21'),
 (147347696406,100001,100000,'2011-06-13 10:14:56'),
 (147347697968,100001,100000,'2011-06-13 10:14:57'),
 (147347699812,100001,100000,'2011-06-13 10:14:59'),
 (147347708187,100001,100000,'2011-06-13 10:15:08'),
 (147347762781,100001,100000,'2011-06-13 10:16:01'),
 (147347773375,100000,100000,'2011-06-13 10:16:13'),
 (147763767718,100000,100000,'2011-06-17 14:42:46'),
 (147763771437,100001,100000,'2011-06-17 14:42:51'),
 (147763774765,100000,100000,'2011-06-17 14:42:54'),
 (147763777750,100001,100000,'2011-06-17 14:42:57'),
 (147764545656,100001,100000,'2011-06-17 14:55:44'),
 (147764663093,100000,100000,'2011-06-17 14:57:42'),
 (147764677343,100001,100000,'2011-06-17 14:57:57'),
 (147765051703,100001,100000,'2011-06-17 15:04:10'),
 (147765113937,100000,100000,'2011-06-17 15:05:12'),
 (147765334984,100000,100000,'2011-06-17 15:08:53'),
 (147765363375,100001,100000,'2011-06-17 15:09:23'),
 (169300526343,100001,100012,'2012-01-19 21:08:45'),
 (169351355875,100001,100006,'2012-01-19 11:15:55'),
 (169351372328,100000,100006,'2012-01-19 11:16:12'),
 (169352435718,100000,100006,'2012-01-19 11:33:54'),
 (169363815859,100000,100012,'2012-01-19 14:43:35'),
 (169363820640,100000,100012,'2012-01-19 14:43:40'),
 (169363825546,100000,100012,'2012-01-19 14:43:45'),
 (169363826437,100000,100012,'2012-01-19 14:43:46'),
 (169363827312,100000,100012,'2012-01-19 14:43:47'),
 (169363828828,100000,100012,'2012-01-19 14:43:48'),
 (169363832921,100000,100012,'2012-01-19 14:43:52'),
 (169363849015,100000,100011,'2012-01-19 14:44:09'),
 (169363862843,100000,100011,'2012-01-19 14:44:22'),
 (169404582328,100000,100033,'2012-01-20 22:16:21'),
 (169449669781,100000,100021,'2012-01-20 10:47:49'),
 (169449673843,100000,100021,'2012-01-20 10:47:53'),
 (169449845609,100000,100028,'2012-01-20 10:50:45'),
 (169449849406,100000,100028,'2012-01-20 10:50:49'),
 (169452215859,100001,100012,'2012-01-20 11:30:14'),
 (169455552781,100000,100033,'2012-01-20 12:25:51'),
 (169459049406,100000,100012,'2012-01-20 13:24:08'),
 (169467674359,100001,100033,'2012-01-20 15:47:53'),
 (169468900453,100001,100012,'2012-01-20 16:08:19'),
 (169468915765,100001,100012,'2012-01-20 16:08:35'),
 (169472580031,100000,100033,'2012-01-20 17:09:39'),
 (169476661093,100000,100006,'2012-01-20 18:17:41'),
 (169476678218,100001,100006,'2012-01-20 18:17:58'),
 (169477531390,100000,100006,'2012-01-20 18:32:10'),
 (169483777937,100001,100033,'2012-01-20 20:16:16'),
 (169545331937,100001,100033,'2012-01-21 09:35:31'),
 (169564646984,100000,100033,'2012-01-21 14:57:26'),
 (169579237328,100001,100033,'2012-01-21 19:00:37'),
 (169581054625,100000,100033,'2012-01-21 19:30:54'),
 (169644741031,100001,100033,'2012-01-22 09:25:41'),
 (169644754421,100001,100033,'2012-01-22 09:25:54'),
 (169651566968,100000,100083,'2012-01-22 11:19:25'),
 (169656273109,100000,100028,'2012-01-22 12:37:53'),
 (169668503875,100000,100070,'2012-01-22 16:01:42'),
 (169670370453,100000,100097,'2012-01-22 16:32:49'),
 (169675475531,100001,100083,'2012-01-22 17:57:54'),
 (169677372906,100000,100083,'2012-01-22 18:29:32'),
 (169677395953,100000,100083,'2012-01-22 18:29:55'),
 (169700478140,100001,100021,'2012-01-23 21:07:57'),
 (169706630828,100000,100021,'2012-01-23 22:50:29'),
 (169746495343,100001,100070,'2012-01-23 09:54:55'),
 (169746503250,100001,100070,'2012-01-23 09:55:02'),
 (169746988875,100001,100081,'2012-01-23 10:03:07'),
 (169747711921,100001,100105,'2012-01-23 10:15:11'),
 (169747722265,100001,100105,'2012-01-23 10:15:22'),
 (169747723140,100001,100105,'2012-01-23 10:15:23'),
 (169747739984,100000,100105,'2012-01-23 10:15:39'),
 (169748082625,100001,100012,'2012-01-23 10:21:21'),
 (169749440828,100001,100028,'2012-01-23 10:43:59'),
 (169749491031,100001,100086,'2012-01-23 10:44:51'),
 (169749492250,100001,100086,'2012-01-23 10:44:52'),
 (169750421453,100001,100083,'2012-01-23 11:00:20'),
 (169751202937,100000,100081,'2012-01-23 11:13:22'),
 (169752601078,100000,100085,'2012-01-23 11:36:40'),
 (169752915093,100000,100083,'2012-01-23 11:41:54'),
 (169753144890,100001,100021,'2012-01-23 11:45:43'),
 (169753274296,100001,100083,'2012-01-23 11:47:54'),
 (169754219093,100000,100028,'2012-01-23 12:03:39'),
 (169754234812,100000,100028,'2012-01-23 12:03:54'),
 (169754249750,100000,100111,'2012-01-23 12:04:09'),
 (169758306234,100001,100111,'2012-01-23 13:11:46'),
 (169767023609,100000,100028,'2012-01-23 15:37:02'),
 (169767059890,100000,100028,'2012-01-23 15:37:39'),
 (169770190015,100001,100100,'2012-01-23 16:29:50'),
 (169770192890,100001,100100,'2012-01-23 16:29:52'),
 (169770195015,100001,100100,'2012-01-23 16:29:55'),
 (169770195906,100001,100100,'2012-01-23 16:29:55'),
 (169770196468,100001,100100,'2012-01-23 16:29:56'),
 (169770197687,100001,100100,'2012-01-23 16:29:57'),
 (169770201125,100001,100100,'2012-01-23 16:30:01'),
 (169770203015,100001,100100,'2012-01-23 16:30:03'),
 (169770204859,100001,100100,'2012-01-23 16:30:04'),
 (169770206078,100001,100100,'2012-01-23 16:30:06'),
 (169770207921,100001,100100,'2012-01-23 16:30:07'),
 (169770208515,100001,100100,'2012-01-23 16:30:08'),
 (169770209406,100001,100100,'2012-01-23 16:30:09'),
 (169770222453,100001,100100,'2012-01-23 16:30:22'),
 (169770223375,100001,100100,'2012-01-23 16:30:23'),
 (169770225203,100001,100100,'2012-01-23 16:30:25'),
 (169770229343,100001,100100,'2012-01-23 16:30:29'),
 (169770235890,100001,100100,'2012-01-23 16:30:35'),
 (169770660328,100000,100021,'2012-01-23 16:37:39'),
 (169771555468,100000,100070,'2012-01-23 16:52:34'),
 (169772900609,100000,100111,'2012-01-23 17:14:59'),
 (169773970078,100000,100105,'2012-01-23 17:32:48'),
 (169773977250,100000,100105,'2012-01-23 17:32:57'),
 (169777214171,100000,100086,'2012-01-23 18:26:54'),
 (169777217031,100000,100086,'2012-01-23 18:26:57'),
 (169777243656,100000,100028,'2012-01-23 18:27:23'),
 (169777253875,100000,100028,'2012-01-23 18:27:33'),
 (169777267718,100000,100012,'2012-01-23 18:27:47'),
 (169781065171,100001,100117,'2012-01-23 19:31:05'),
 (169781073812,100001,100117,'2012-01-23 19:31:13'),
 (169781078140,100001,100117,'2012-01-23 19:31:18'),
 (169781087109,100001,100117,'2012-01-23 19:31:27'),
 (169781092140,100001,100117,'2012-01-23 19:31:32'),
 (169781093390,100001,100117,'2012-01-23 19:31:33'),
 (169781100890,100001,100117,'2012-01-23 19:31:40'),
 (169781103078,100001,100117,'2012-01-23 19:31:43'),
 (169781106125,100001,100117,'2012-01-23 19:31:46'),
 (169781107687,100001,100117,'2012-01-23 19:31:47'),
 (169781109484,100001,100117,'2012-01-23 19:31:49'),
 (169781117328,100001,100117,'2012-01-23 19:31:57'),
 (169781120718,100001,100117,'2012-01-23 19:32:00'),
 (169781123515,100001,100117,'2012-01-23 19:32:03'),
 (169781127875,100001,100117,'2012-01-23 19:32:07'),
 (169781129750,100001,100117,'2012-01-23 19:32:09'),
 (169781133187,100001,100117,'2012-01-23 19:32:13'),
 (169781141031,100001,100117,'2012-01-23 19:32:21'),
 (169781158375,100001,100117,'2012-01-23 19:32:38'),
 (169781162046,100001,100117,'2012-01-23 19:32:42'),
 (169781164484,100001,100117,'2012-01-23 19:32:44'),
 (169781165062,100001,100117,'2012-01-23 19:32:45'),
 (169781168781,100001,100117,'2012-01-23 19:32:48'),
 (169781177406,100000,100117,'2012-01-23 19:32:57'),
 (169781181156,100000,100117,'2012-01-23 19:33:01'),
 (169781183640,100000,100117,'2012-01-23 19:33:03'),
 (169781302937,100001,100117,'2012-01-23 19:35:02'),
 (169781304437,100001,100117,'2012-01-23 19:35:04'),
 (169781306109,100001,100117,'2012-01-23 19:35:06'),
 (169781601125,100001,100021,'2012-01-23 19:40:00'),
 (169782252125,100000,100083,'2012-01-23 19:50�l	*�H����]0�Y10	`�He 0	*�H����00��0�������F���`��090	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0061110000000Z311110000000Z0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0�"0	*�H�� � 0�
� ���C�\���`�q���&������ 9(X`��ک�2a<��(���ܟ
�z�����yS\1�*��26v���<���j�!�Raߟ ����d�[_�X5�G͡6�k԰8>�Ì3��/�(�����nD�a5��Y��vm��K+�rڞ`Ў�5�xU� ���m
�I|1�3l"��2Z����9��:r������1u��}"�?F��(yȱ��W�~����V��������Ũ?������_wO �c0a0U��0U�0�0UE뢯��˂1-Q���!��m�0U#0�E뢯��˂1-Q���!��m�0	*�H�� � �������rszd���rf�2�Bub�������V����(��`\LX��=�IEX�5i�G�V�y��g���	<��&, �=�(��_�"◄�e����gI�]�	*�&�x�}?+�&5m_��I[���=%�̶��o���dh�-��B����b�Pg�l���k67|�[mz�F`��'�KΗ��g*h߀�3f�n�c��%ml���a�ң&�q�����ÙQ�+�.�P���
E/���0�00��	_ջfuSC�o�P0	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0131022120000Z281022120000Z0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0�"0	*�H�� � 0�
� �ӳ�gw�1I���E��:�D�娝�2�q�v�.����C�����7׶�𜆥�%�y(:~��g���)'��{#��#��w����#fT3Pt�(&�$i��R�g��E�-���, ��J����M`��Ĳ�p1f3q>�p����|˒��;1���
�W�J��t�+�l�~t96���N���j
���gN����� %#�d>R����Ŏ���,Q�s����b�sA��8�js �ds<���3���%�� ���0��0U�0� 0U��0U%0
+0y+m0k0$+0�http://ocsp.digicert.com0C+0�7http://cacerts.digicert.com/DigiCertAssuredIDRootCA.crt0��Uz0x0:�8�6�4http://crl4.digicert.com/DigiCertAssuredIDRootCA.crl0:�8�6�4http://crl3.digicert.com/DigiCertAssuredIDRootCA.crl0OU H0F08
`�H��l 0*0(+https://www.digicert.com/CPS0
`�H��l0UZĹ{*
���q�`�-�euX0U#0�E뢯��˂1-Q���!��m�0	*�H�� � >�Z$��"��,|%)v�]-:��0a�~`��=į���*� U7���ђuQ�n��Z�^$�N��?q�cK��_Dy�6���FN\��������Q$�$��'*�)(:q(<.���%�G�zhh���\ \�q������h��@�@D���d%B2�6�$�/r~�IE��Y��tdk��fCڳ������ Ι1c=���OƓ�������I�bn�S���.���hlD2�f����dQ�0�=0�%�.�)�N_���!A�?0	*�H�� 0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0150304000000Z180308120000Z0��10	UCA10UOntario10UOttawa1!0U
Eclipse Foundation, Inc.10	UIT1!0UEclipse Foundation, Inc.0�"0	*�H�� � 0�
� �I�-o��;Ѝ#h�����߄Ȑ:Q��꿛�_+�����%s�v�IWe�є�9r�0�:Ӿ��WƉ�!�,g$_Q��<|�y��O��{��=������[�4n'������F^��k�s$3�WN����0�����-H��@B�{��Kn���\�h�֌ �:$!G�u���I�?K�KI��Ί��"�=�!
�7��"�3��J��HyVm@}ޣSQ�:13�NX�c��
H��r)�{#a���l��� ���0��0U#0�ZĹ{*
���q�`�-�euX0Ueۺ7g��m��G%$�m�P�@�0U��0U%0
+0wUp0n05�3�1�/http://crl3.digicert.com/sha2-assured-cs-g1.crl05�3�1�/http://crl4.digicert.com/sha2-assured-cs-g1.crl0BU ;0907	`�H��l0*0(+https://www.digicert.com/CPS0��+x0v0$+0�http://ocsp.digicert.com0N+0�Bhttp://cacerts.digicert.com/DigiCertSHA2AssuredIDCodeSigningCA.crt0U�0 0	*�H�� � ^*�)�(}f �K0	�X"�U��Bً���!�:o;gfƔe�8]��\���.��|�v�U�-s������~�u���lkh�g���_BPT�zO>0�.�:@s�A����ȸ�{�A0J�n��%�$�c�)^�:��C��枕��o����I:w�eg��%�Olh���DզU#`"��Q�����t�1sPg��m̅��ep�zN��3���C*G@��2gDa?��d�'8�yAޓ{?R��K����z;1� 0��0��0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA.�)�N_���!A�?0	`�He 0	*�H�� � �g��~ ��m����˳� F\��~�o���D��ej�p����1>�2�>18Bb�̄�⺿�:�kF�5)}�іv����H�d�k6�Ha �����
[��;@M�3�d� ���.��i�7�C�e��.Cl%W�gJ<z�����BAw��v�=����1�XR��D�&�j�ЀO@f"
@�tɢ}���]HO�~�����u|�w^#�n����;Dwlu)�]d���t��$�k�)����W��)�a��J0�F*�H��	1�50�1	*�H����"0�10	`�He0�*�H��	��
�0�`�H��E010	`�He  �i�˸?�-얡{��lSG��pc���
�9�e��^f�������P\`20171207222301Z0-���W��������0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G2��
�0�80� �{��IhQD�ɉҜ�0	*�H�� 0��10	UUS10U
VeriSign, Inc.10UVeriSign Trust Network1:08U1(c) 2008 VeriSign, Inc. - For authorized use only1806U/VeriSign Universal Root Certification Authority0160112000000Z310111235959Z0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0�"0	*�H�� � 0�
� �Y�YUO��r]���U��<q�2�k��' 2�jM�dK)���)�.�c���?V��b~���^m@8ԑ�A|y�˭�ؕ����l���9.�'�x9ń������΍�m�Ҙ�:9���������|q�)�?�&�{>M�
�3I��;����Kሙ���3��ǀۑ����Wrw�ͨ��	��7���j����K���	�_��y5�x�2�#�2AY�>����+����m:���ɜ�H�S�6��xš7 ��w0�s0U�0U�0� 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0.+"0 0+0�http://s.symcd.com06U/0-0+�)�'�%http://s.symcb.com/universal-root.crl0U%0
+0(U!0�010UTimeStamp-2048-30U�c�ʣN�rৼA�)�8�ub0U#0��w�iHG�S���2vї0	*�H�� � u�-�4\2E���O�x�o����O�ȁ�����@)��]���Vd�q0*�af V��]q����	��G����̐/�
lN3�ִ��L�cH9@!���n��<�����	ɏSWA�/�MN��xlBn���a\R�N�k��Jz���������S�
u��u.�f����W���������: �Ί��۞�8�R���`
M��'m2�?�@Ῑ���9������+Z��XU}ǚ�#��*����a�0�K0�3�TX��A�D���{��R�0	*�H�� 0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0170102000000Z280401235959Z0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G20�"0	*�H�� � 0�
� ����	���\���B|�|c�] ����ߏ)�ꔷ��װ�s���
�J|����9��E�":p�9E���\�EhF$cv���l*�V�Rq��5�F#�H-�͸�v#��>��\i�e�^�}.�M�5��� B�(��]rB	���D���G����-�X�����D��w�Cp�n�R��qٺ"U��훝;�^L���{�U�N����nG��ߥ�Q�U��'pL��*KᱹL��Ue_ixf�? ���0��0U�0 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0@U90705�3�1�/http://ts-crl.ws.symantec.com/sha256-tss-ca.crl0U%�0
+0U��0w+k0i0*+0�http://ts-ocsp.ws.symantec.com0;+0�/http://ts-aia.ws.symantec.com/sha256-tss-ca.cer0(U!0�010UTimeStamp-2048-50U	����r�)C�������/��0U#0��c�ʣN�rৼA�)�8�ub0	*�H�� � �
��\Z^ k;
�lũ�2�ӱ�S���?��׼�����R~���a�ԧ���ɓ�5=�h
]V���";�Dz׿�mQ2��#�87��S+z+��Mlz3|k	����X�!e���%�,u���ɻ*h��}�ϣ�l��� ��
w��M��1;�n��P����B��v�rZ���o��ݮ��"e�Y�̀�ؗGB��q�FS�Բգ�PuH����AO2~͕���=��g��$L��A��`��2KӼϤ��1�Z0�V0��0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CATX��A�D���{��R�0	`�He���0	*�H��	1*�H��	0	*�H��	1171207222301Z0/	*�H��	1" ��y�s�����kX+�+��u��J(K|�`�܂07*�H��	/1(0&0$0" �z�z�G����h"���o+L^k����K�g0	*�H��� �,��q�}l�C\I��-���%!0=�L��83",��Utt��	�>� ���~6�����ZUV���?��2$)�����Á]�ʖ*�wΏV�F�iɥ(Q�2��"�	�������LGP������@˛}�$^��`��^@`�Ғ���@��w��G�y\֏�?���?�)��+ӻ��[������Aϫ�̭G��AA�M-�.��:ep�>��D�ܯ�m����'�K�# �`e.��Ҥ2*l����                                                                                                                                                                                                                                                                                                                                                                                                                100111,'2012-01-26 00:29:31'),
 (170012575484,100000,100111,'2012-01-26 00:29:35'),
 (170012580921,100000,100111,'2012-01-26 00:29:40'),
 (170012581515,100000,100111,'2012-01-26 00:29:41'),
 (170012584984,100000,100111,'2012-01-26 00:29:44'),
 (170012585593,100000,100111,'2012-01-26 00:29:45'),
 (170012586187,100000,100111,'2012-01-26 00:29:46'),
 (170024016734,100000,100165,'2012-01-26 03:40:16'),
 (170024019265,100000,100165,'2012-01-26 03:40:19'),
 (170024021453,100000,100165,'2012-01-26 03:40:21'),
 (170024022625,100000,100165,'2012-01-26 03:40:22'),
 (170024025765,100000,100165,'2012-01-26 03:40:25'),
 (170024028921,100000,100165,'2012-01-26 03:40:28'),
 (170024034031,100000,100165,'2012-01-26 03:40:34'),
 (170024037531,100000,100165,'2012-01-26 03:40:37'),
 (170025219609,100000,100086,'2012-01-26 04:00:19'),
 (170025221625,100000,100086,'2012-01-26 04:00:21'),
 (170044303140,100001,100021,'2012-01-26 09:18:23'),
 (170044304015,100001,100021,'2012-01-26 09:18:24'),
 (170044310875,100001,100021,'2012-01-26 09:18:30'),
 (170044312718,100001,100021,'2012-01-26 09:18:32'),
 (170044317046,100001,100021,'2012-01-26 09:18:37'),
 (170044318250,100001,100021,'2012-01-26 09:18:38'),
 (170044331390,100001,100021,'2012-01-26 09:18:51'),
 (170044332296,100001,100021,'2012-01-26 09:18:52'),
 (170044336312,100001,100021,'2012-01-26 09:18:56'),
 (170044339734,100001,100021,'2012-01-26 09:18:59'),
 (170044348218,100001,100021,'2012-01-26 09:19:08'),
 (170044349125,100001,100021,'2012-01-26 09:19:09'),
 (170044350656,100001,100021,'2012-01-26 09:19:10'),
 (170044419484,100000,100021,'2012-01-26 09:20:19'),
 (170044420078,100000,100021,'2012-01-26 09:20:20'),
 (170044423875,100000,100021,'2012-01-26 09:20:23'),
 (170044425484,100000,100021,'2012-01-26 09:20:25'),
 (170044426859,100000,100021,'2012-01-26 09:20:26'),
 (170044427765,100000,100021,'2012-01-26 09:20:27'),
 (170044429296,100000,100021,'2012-01-26 09:20:29'),
 (170044431796,100000,100021,'2012-01-26 09:20:31'),
 (170044432375,100000,100021,'2012-01-26 09:20:32'),
 (170044435562,100000,100021,'2012-01-26 09:20:35'),
 (170044437734,100000,100021,'2012-01-26 09:20:37'),
 (170044438312,100000,100021,'2012-01-26 09:20:38'),
 (170044439203,100000,100021,'2012-01-26 09:20:39'),
 (170044440093,100000,100021,'2012-01-26 09:20:40'),
 (170044440703,100000,100021,'2012-01-26 09:20:40'),
 (170044484484,100001,100021,'2012-01-26 09:21:24'),
 (170044485375,100001,100021,'2012-01-26 09:21:25'),
 (170047320609,100001,100028,'2012-01-26 10:08:40'),
 (170047324421,100001,100028,'2012-01-26 10:08:44'),
 (170047326328,100001,100028,'2012-01-26 10:08:46'),
 (170047339953,100000,100028,'2012-01-26 10:08:59'),
 (170047343671,100000,100028,'2012-01-26 10:09:03'),
 (170048036296,100001,100165,'2012-01-26 10:20:36'),
 (170048038515,100001,100165,'2012-01-26 10:20:38'),
 (170048042265,100001,100165,'2012-01-26 10:20:42'),
 (170048047000,100001,100165,'2012-01-26 10:20:47'),
 (170048053343,100001,100165,'2012-01-26 10:20:53'),
 (170048055796,100001,100165,'2012-01-26 10:20:55'),
 (170048058625,100001,100165,'2012-01-26 10:20:58'),
 (170048060578,100001,100165,'2012-01-26 10:21:00'),
 (170048064500,100001,100165,'2012-01-26 10:21:04'),
 (170048927765,100001,100111,'2012-01-26 10:35:27'),
 (170048929937,100001,100111,'2012-01-26 10:35:29'),
 (170048932437,100001,100111,'2012-01-26 10:35:32'),
 (170050000328,100001,100106,'2012-01-26 10:53:20'),
 (170050001578,100001,100106,'2012-01-26 10:53:21'),
 (170050002484,100001,100106,'2012-01-26 10:53:22'),
 (170050003718,100001,100106,'2012-01-26 10:53:23'),
 (170050005046,100001,100106,'2012-01-26 10:53:25'),
 (170050005625,100001,100106,'2012-01-26 10:53:25'),
 (170050006531,100001,100106,'2012-01-26 10:53:26'),
 (170050007437,100001,100106,'2012-01-26 10:53:27'),
 (170050008359,100001,100106,'2012-01-26 10:53:28'),
 (170050008953,100001,100106,'2012-01-26 10:53:28'),
 (170050009859,100001,100106,'2012-01-26 10:53:29'),
 (170050010765,100001,100106,'2012-01-26 10:53:30'),
 (170050012437,100001,100106,'2012-01-26 10:53:32'),
 (170050013046,100001,100106,'2012-01-26 10:53:33'),
 (170050013625,100001,100106,'2012-01-26 10:53:33'),
 (170050014859,100001,100106,'2012-01-26 10:53:34'),
 (170050015750,100001,100106,'2012-01-26 10:53:35'),
 (170050016359,100001,100106,'2012-01-26 10:53:36'),
 (170050016937,100001,100106,'2012-01-26 10:53:36'),
 (170050017500,100001,100106,'2012-01-26 10:53:37'),
 (170050018406,100001,100106,'2012-01-26 10:53:38'),
 (170050018968,100001,100106,'2012-01-26 10:53:38'),
 (170050020171,100001,100106,'2012-01-26 10:53:40'),
 (170050021375,100001,100106,'2012-01-26 10:53:41'),
 (170050022906,100001,100106,'2012-01-26 10:53:42'),
 (170050024156,100001,100106,'2012-01-26 10:53:44'),
 (170050025359,100001,100106,'2012-01-26 10:53:45'),
 (170050025937,100001,100106,'2012-01-26 10:53:45'),
 (170050026515,100001,100106,'2012-01-26 10:53:46'),
 (170050028015,100001,100106,'2012-01-26 10:53:48'),
 (170050030218,100001,100106,'2012-01-26 10:53:50'),
 (170050031765,100001,100106,'2012-01-26 10:53:51'),
 (170050032656,100001,100106,'2012-01-26 10:53:52'),
 (170050033531,100001,100106,'2012-01-26 10:53:53'),
 (170050036328,100001,100106,'2012-01-26 10:53:56'),
 (170050036921,100001,100106,'2012-01-26 10:53:56'),
 (170050037515,100001,100106,'2012-01-26 10:53:57'),
 (170050038703,100001,100106,'2012-01-26 10:53:58'),
 (170050039921,100001,100106,'2012-01-26 10:53:59'),
 (170050040515,100001,100106,'2012-01-26 10:54:00'),
 (170050042390,100001,100106,'2012-01-26 10:54:02'),
 (170050043296,100001,100106,'2012-01-26 10:54:03'),
 (170050044843,100001,100106,'2012-01-26 10:54:04'),
 (170050047656,100001,100106,'2012-01-26 10:54:07'),
 (170050048281,100001,100106,'2012-01-26 10:54:08'),
 (170050049500,100001,100106,'2012-01-26 10:54:09'),
 (170050050406,100001,100106,'2012-01-26 10:54:10'),
 (170050051640,100001,100106,'2012-01-26 10:54:11'),
 (170050052546,100001,100106,'2012-01-26 10:54:12'),
 (170050053453,100001,100106,'2012-01-26 10:54:13'),
 (170050054046,100001,100106,'2012-01-26 10:54:14'),
 (170050055906,100001,100106,'2012-01-26 10:54:15'),
 (170050056812,100001,100106,'2012-01-26 10:54:16'),
 (170050057703,100001,100106,'2012-01-26 10:54:17'),
 (170050058593,100001,100106,'2012-01-26 10:54:18'),
 (170050059500,100001,100106,'2012-01-26 10:54:19'),
 (170050061031,100001,100106,'2012-01-26 10:54:21'),
 (170050061593,100001,100106,'2012-01-26 10:54:21'),
 (170050063734,100001,100106,'2012-01-26 10:54:23'),
 (170050064671,100001,100106,'2012-01-26 10:54:24'),
 (170050065234,100001,100106,'2012-01-26 10:54:25'),
 (170050066125,100001,100106,'2012-01-26 10:54:26'),
 (170050067640,100001,100106,'2012-01-26 10:54:27'),
 (170050069484,100001,100106,'2012-01-26 10:54:29'),
 (170050072921,100001,100106,'2012-01-26 10:54:32'),
 (170050074562,100001,100106,'2012-01-26 10:54:34'),
 (170050075781,100001,100106,'2012-01-26 10:54:35'),
 (170050077609,100001,100106,'2012-01-26 10:54:37'),
 (170050080750,100001,100106,'2012-01-26 10:54:40'),
 (170050081640,100001,100106,'2012-01-26 10:54:41'),
 (170050085187,100001,100106,'2012-01-26 10:54:45'),
 (170050086718,100001,100106,'2012-01-26 10:54:46'),
 (170050088281,100001,100106,'2012-01-26 10:54:48'),
 (170050089156,100001,100106,'2012-01-26 10:54:49'),
 (170050095156,100001,100106,'2012-01-26 10:54:55'),
 (170050096062,100001,100106,'2012-01-26 10:54:56'),
 (170050102062,100001,100106,'2012-01-26 10:55:02'),
 (170050104015,100001,100106,'2012-01-26 10:55:04'),
 (170050106187,100001,100106,'2012-01-26 10:55:06'),
 (170050109625,100001,100106,'2012-01-26 10:55:09'),
 (170050110843,100001,100106,'2012-01-26 10:55:10'),
 (170050111750,100001,100106,'2012-01-26 10:55:11'),
 (170050113296,100001,100106,'2012-01-26 10:55:13'),
 (170050114187,100001,100106,'2012-01-26 10:55:14'),
 (170050115734,100001,100106,'2012-01-26 10:55:15'),
 (170050116640,100001,100106,'2012-01-26 10:55:16'),
 (170050117546,100001,100106,'2012-01-26 10:55:17'),
 (170050118750,100001,100106,'2012-01-26 10:55:18'),
 (170050119953,100001,100106,'2012-01-26 10:55:19'),
 (170050121187,100001,100106,'2012-01-26 10:55:21'),
 (170050122406,100001,100106,'2012-01-26 10:55:22'),
 (170050123296,100001,100106,'2012-01-26 10:55:23'),
 (170050124500,100001,100106,'2012-01-26 10:55:24'),
 (170050125375,100001,100106,'2012-01-26 10:55:25'),
 (170050127203,100001,100106,'2012-01-26 10:55:27'),
 (170050128093,100001,100106,'2012-01-26 10:55:28'),
 (170050129453,100001,100106,'2012-01-26 10:55:29'),
 (170050130000,100001,100106,'2012-01-26 10:55:30'),
 (170050147234,100001,100106,'2012-01-26 10:55:47'),
 (170050149843,100001,100106,'2012-01-26 10:55:49'),
 (170050624031,100001,100086,'2012-01-26 11:03:44'),
 (170050625250,100001,100086,'2012-01-26 11:03:45'),
 (170050628687,100001,100086,'2012-01-26 11:03:48'),
 (170050629921,100001,100086,'2012-01-26 11:03:49'),
 (170051146671,100001,100128,'2012-01-26 11:12:26'),
 (170051149515,100001,100128,'2012-01-26 11:12:29'),
 (170051151406,100001,100128,'2012-01-26 11:12:31'),
 (170051153593,100001,100128,'2012-01-26 11:12:33'),
 (170051154812,100001,100128,'2012-01-26 11:12:34'),
 (170051158265,100001,100128,'2012-01-26 11:12:38'),
 (170051159484,100001,100128,'2012-01-26 11:12:39'),
 (170061143625,100000,100163,'2012-01-26 13:59:03'),
 (170064973312,100000,100126,'2012-01-26 15:02:53'),
 (170064977687,100000,100126,'2012-01-26 15:02:57'),
 (170064985359,100000,100126,'2012-01-26 15:03:05'),
 (170064989156,100000,100126,'2012-01-26 15:03:09'),
 (170067795562,100001,100126,'2012-01-26 15:49:55'),
 (170072316109,100000,100181,'2012-01-26 17:05:15'),
 (170072524906,100000,100140,'2012-01-26 17:08:43'),
 (170085310609,100000,100181,'2012-01-26 20:41:49'),
 (170085318125,100000,100181,'2012-01-26 20:41:58'),
 (170085324734,100000,100181,'2012-01-26 20:42:04'),
 (170104151234,100000,100151,'2012-01-27 22:09:11'),
 (170108467171,100000,100139,'2012-01-27 23:21:07'),
 (170115681593,100000,100181,'2012-01-27 01:21:21'),
 (170115683156,100000,100181,'2012-01-27 01:21:23'),
 (170115687578,100000,100181,'2012-01-27 01:21:27'),
 (170115690078,100000,100181,'2012-01-27 01:21:30'),
 (170115693250,100000,100181,'2012-01-27 01:21:33'),
 (170115694500,100000,100181,'2012-01-27 01:21:34'),
 (170115701171,100000,100181,'2012-01-27 01:21:41'),
 (170115704468,100000,100181,'2012-01-27 01:21:44'),
 (170115706968,100000,100181,'2012-01-27 01:21:46'),
 (170115707890,100000,100181,'2012-01-27 01:21:47'),
 (170115708828,100000,100181,'2012-01-27 01:21:48'),
 (170115709718,100000,100181,'2012-01-27 01:21:49'),
 (170115710609,100000,100181,'2012-01-27 01:21:50'),
 (170115711828,100000,100181,'2012-01-27 01:21:51'),
 (170115712750,100000,100181,'2012-01-27 01:21:52'),
 (170115714265,100000,100181,'2012-01-27 01:21:54'),
 (170115721859,100000,100181,'2012-01-27 01:22:01'),
 (170115724046,100000,100181,'2012-01-27 01:22:04'),
 (170117112281,100000,100128,'2012-01-27 01:45:12'),
 (170117113218,100000,100128,'2012-01-27 01:45:13'),
 (170117114109,100000,100128,'2012-01-27 01:45:14'),
 (170117115000,100000,100128,'2012-01-27 01:45:15'),
 (170117115890,100000,100128,'2012-01-27 01:45:15'),
 (170117120968,100000,100128,'2012-01-27 01:45:20'),
 (170117121859,100000,100128,'2012-01-27 01:45:21'),
 (170117124000,100000,100128,'2012-01-27 01:45:24'),
 (170117124890,100000,100128,'2012-01-27 01:45:24'),
 (170117126109,100000,100128,'2012-01-27 01:45:26'),
 (170117127000,100000,100128,'2012-01-27 01:45:27'),
 (170117128250,100000,100128,'2012-01-27 01:45:28'),
 (170117129218,100000,100128,'2012-01-27 01:45:29'),
 (170117131109,100000,100128,'2012-01-27 01:45:31'),
 (170117132687,100000,100128,'2012-01-27 01:45:32'),
 (170117135218,100000,100128,'2012-01-27 01:45:35'),
 (170117139328,100000,100128,'2012-01-27 01:45:39'),
 (170117144359,100000,100128,'2012-01-27 01:45:44'),
 (170117147000,100000,100128,'2012-01-27 01:45:47'),
 (170117147906,100000,100128,'2012-01-27 01:45:47'),
 (170117151359,100000,100128,'2012-01-27 01:45:51'),
 (170117152921,100000,100128,'2012-01-27 01:45:52'),
 (170117154796,100000,100128,'2012-01-27 01:45:54'),
 (170117157968,100000,100128,'2012-01-27 01:45:57'),
 (170117158906,100000,100128,'2012-01-27 01:45:58'),
 (170117159515,100000,100128,'2012-01-27 01:45:59'),
 (1701171604370�l	*�H����]0�Y10	`�He 0	*�H����00��0�������F���`��090	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0061110000000Z311110000000Z0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0�"0	*�H�� � 0�
� ���C�\���`�q���&������ 9(X`��ک�2a<��(���ܟ
�z�����yS\1�*��26v���<���j�!�Raߟ ����d�[_�X5�G͡6�k԰8>�Ì3��/�(�����nD�a5��Y��vm��K+�rڞ`Ў�5�xU� ���m
�I|1�3l"��2Z����9��:r������1u��}"�?F��(yȱ��W�~����V��������Ũ?������_wO �c0a0U��0U�0�0UE뢯��˂1-Q���!��m�0U#0�E뢯��˂1-Q���!��m�0	*�H�� � �������rszd���rf�2�Bub�������V����(��`\LX��=�IEX�5i�G�V�y��g���	<��&, �=�(��_�"◄�e����gI�]�	*�&�x�}?+�&5m_��I[���=%�̶��o���dh�-��B����b�Pg�l���k67|�[mz�F`��'�KΗ��g*h߀�3f�n�c��%ml���a�ң&�q�����ÙQ�+�.�P���
E/���0�00��	_ջfuSC�o�P0	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0131022120000Z281022120000Z0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0�"0	*�H�� � 0�
� �ӳ�gw�1I���E��:�D�娝�2�q�v�.����C�����7׶�𜆥�%�y(:~��g���)'��{#��#��w����#fT3Pt�(&�$i��R�g��E�-���, ��J����M`��Ĳ�p1f3q>�p����|˒��;1���
�W�J��t�+�l�~t96���N���j
���gN����� %#�d>R����Ŏ���,Q�s����b�sA��8�js �ds<���3���%�� ���0��0U�0� 0U��0U%0
+0y+m0k0$+0�http://ocsp.digicert.com0C+0�7http://cacerts.digicert.com/DigiCertAssuredIDRootCA.crt0��Uz0x0:�8�6�4http://crl4.digicert.com/DigiCertAssuredIDRootCA.crl0:�8�6�4http://crl3.digicert.com/DigiCertAssuredIDRootCA.crl0OU H0F08
`�H��l 0*0(+https://www.digicert.com/CPS0
`�H��l0UZĹ{*
���q�`�-�euX0U#0�E뢯��˂1-Q���!��m�0	*�H�� � >�Z$��"��,|%)v�]-:��0a�~`��=į���*� U7���ђuQ�n��Z�^$�N��?q�cK��_Dy�6���FN\��������Q$�$��'*�)(:q(<.���%�G�zhh���\ \�q������h��@�@D���d%B2�6�$�/r~�IE��Y��tdk��fCڳ������ Ι1c=���OƓ�������I�bn�S���.���hlD2�f����dQ�0�=0�%�.�)�N_���!A�?0	*�H�� 0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0150304000000Z180308120000Z0��10	UCA10UOntario10UOttawa1!0U
Eclipse Foundation, Inc.10	UIT1!0UEclipse Foundation, Inc.0�"0	*�H�� � 0�
� �I�-o��;Ѝ#h�����߄Ȑ:Q��꿛�_+�����%s�v�IWe�є�9r�0�:Ӿ��WƉ�!�,g$_Q��<|�y��O��{��=������[�4n'������F^��k�s$3�WN����0�����-H��@B�{��Kn���\�h�֌ �:$!G�u���I�?K�KI��Ί��"�=�!
�7��"�3��J��HyVm@}ޣSQ�:13�NX�c��
H��r)�{#a���l��� ���0��0U#0�ZĹ{*
���q�`�-�euX0Ueۺ7g��m��G%$�m�P�@�0U��0U%0
+0wUp0n05�3�1�/http://crl3.digicert.com/sha2-assured-cs-g1.crl05�3�1�/http://crl4.digicert.com/sha2-assured-cs-g1.crl0BU ;0907	`�H��l0*0(+https://www.digicert.com/CPS0��+x0v0$+0�http://ocsp.digicert.com0N+0�Bhttp://cacerts.digicert.com/DigiCertSHA2AssuredIDCodeSigningCA.crt0U�0 0	*�H�� � ^*�)�(}f �K0	�X"�U��Bً���!�:o;gfƔe�8]��\���.��|�v�U�-s������~�u���lkh�g���_BPT�zO>0�.�:@s�A����ȸ�{�A0J�n��%�$�c�)^�:��C��枕��o����I:w�eg��%�Olh���DզU#`"��Q�����t�1sPg��m̅��ep�zN��3���C*G@��2gDa?��d�'8�yAޓ{?R��K����z;1� 0��0��0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA.�)�N_���!A�?0	`�He 0	*�H�� � iz#¥�`���_p���"_��S	<�x�y���� K�j��#1����Inc�D�D:O�M��$�ԃ��	S5?l�mʪ�]]l�>�A���`����~�Z�b_x���'��}��Fm�_�gF#��\y��J��Nхc �����u:�p��!�W�rxͤ��D������B¬�lo����Y�w9&��Nv�&"t�'�V���n�!d��E% a��eZ4v� V�.�b�� ��w��ԈZu��{8Er����f��J0�F*�H��	1�50�1	*�H����"0�10	`�He0�*�H��	��
�0�`�H��E010	`�He  �j���!~��v? �8T���/�K�����Eu���	i��R�PH��620170913002834Z0���5Ǡ�����0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G2��
�0�80� �{��IhQD�ɉҜ�0	*�H�� 0��10	UUS10U
VeriSign, Inc.10UVeriSign Trust Network1:08U1(c) 2008 VeriSign, Inc. - For authorized use only1806U/VeriSign Universal Root Certification Authority0160112000000Z310111235959Z0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0�"0	*�H�� � 0�
� �Y�YUO��r]���U��<q�2�k��' 2�jM�dK)���)�.�c���?V��b~���^m@8ԑ�A|y�˭�ؕ����l���9.�'�x9ń������΍�m�Ҙ�:9���������|q�)�?�&�{>M�
�3I��;����Kሙ���3��ǀۑ����Wrw�ͨ��	��7���j����K���	�_��y5�x�2�#�2AY�>����+����m:���ɜ�H�S�6��xš7 ��w0�s0U�0U�0� 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0.+"0 0+0�http://s.symcd.com06U/0-0+�)�'�%http://s.symcb.com/universal-root.crl0U%0
+0(U!0�010UTimeStamp-2048-30U�c�ʣN�rৼA�)�8�ub0U#0��w�iHG�S���2vї0	*�H�� � u�-�4\2E���O�x�o����O�ȁ�����@)��]���Vd�q0*�af V��]q����	��G����̐/�
lN3�ִ��L�cH9@!���n��<�����	ɏSWA�/�MN��xlBn���a\R�N�k��Jz���������S�
u��u.�f����W���������: �Ί��۞�8�R���`
M��'m2�?�@Ῑ���9������+Z��XU}ǚ�#��*����a�0�K0�3�TX��A�D���{��R�0	*�H�� 0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0170102000000Z280401235959Z0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G20�"0	*�H�� � 0�
� ����	���\���B|�|c�] ����ߏ)�ꔷ��װ�s���
�J|����9��E�":p�9E���\�EhF$cv���l*�V�Rq��5�F#�H-�͸�v#��>��\i�e�^�}.�M�5��� B�(��]rB	���D���G����-�X�����D��w�Cp�n�R��qٺ"U��훝;�^L���{�U�N����nG��ߥ�Q�U��'pL��*KᱹL��Ue_ixf�? ���0��0U�0 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0@U90705�3�1�/http://ts-crl.ws.symantec.com/sha256-tss-ca.crl0U%�0
+0U��0w+k0i0*+0�http://ts-ocsp.ws.symantec.com0;+0�/http://ts-aia.ws.symantec.com/sha256-tss-ca.cer0(U!0�010UTimeStamp-2048-50U	����r�)C�������/��0U#0��c�ʣN�rৼA�)�8�ub0	*�H�� � �
��\Z^ k;
�lũ�2�ӱ�S���?��׼�����R~���a�ԧ���ɓ�5=�h
]V���";�Dz׿�mQ2��#�87��S+z+��Mlz3|k	����X�!e���%�,u���ɻ*h��}�ϣ�l��� ��
w��M��1;�n��P����B��v�rZ���o��ݮ��"e�Y�̀�ؗGB��q�FS�Բգ�PuH����AO2~͕���=��g��$L��A��`��2KӼϤ��1�Z0�V0��0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CATX��A�D���{��R�0	`�He���0	*�H��	1*�H��	0	*�H��	1170913002834Z0/	*�H��	1" �2O�����Vǰ�5H�;O�zF���i%��"07*�H��	/1(0&0$0" �z�z�G����h"���o+L^k����K�g0	*�H��� S*�r���{I����C��Zܖ�ecYĞ�H���'&7�6,e��"��wE��Fk�>A{�����Eݦ�a�f��š��u��"dr$� �|M����zS���Q^¨EO�
�d}jr���դ�#��9S�P���A�U�c��У��T�m"�E?��zqT"B���//n%�"�2����B���\`�(*I�d�Q�rӬ�l�����K<�	H�`��8}��AZہ��\p�rĞ�@]���¼?�� ��pp                                                                                                                                                                                                                                                                                                                                                                                                                09:59'),
 (170951048812,100000,100006,'2012-02-04 11:10:48'),
 (170951073171,100000,100006,'2012-02-04 11:11:13'),
 (170951183062,100000,100006,'2012-02-04 11:13:03'),
 (170951258937,100000,100006,'2012-02-04 11:14:18'),
 (170951269046,100000,100006,'2012-02-04 11:14:29'),
 (170951294031,100000,100006,'2012-02-04 11:14:54'),
 (170952093265,100001,100207,'2012-02-04 11:28:13'),
 (170974755656,100000,100148,'2012-02-04 17:45:54'),
 (170981235406,100000,100207,'2012-02-04 19:33:54'),
 (170981909671,100000,100159,'2012-02-04 19:45:09'),
 (170982996125,100001,100207,'2012-02-04 20:03:15'),
 (170983968906,100001,100148,'2012-02-04 20:19:27'),
 (170984212921,100000,100207,'2012-02-04 20:23:32'),
 (171000546265,100000,100207,'2012-02-05 21:09:05'),
 (171000927093,100001,100148,'2012-02-05 21:15:27'),
 (171001187859,100001,100218,'2012-02-05 21:19:46'),
 (171004049234,100000,100218,'2012-02-05 22:07:29'),
 (171004111125,100000,100218,'2012-02-05 22:08:30'),
 (171004919734,100000,100222,'2012-02-05 22:21:58'),
 (171004926406,100000,100222,'2012-02-05 22:22:06'),
 (171005210671,100000,100148,'2012-02-05 22:26:49'),
 (171009117765,100000,100225,'2012-02-05 23:31:56'),
 (171011563328,100000,100159,'2012-02-05 00:12:42'),
 (171048771359,100001,100159,'2012-02-05 10:32:50'),
 (171049121796,100000,100148,'2012-02-05 10:38:40'),
 (171050244750,100001,100207,'2012-02-05 10:57:23'),
 (171052413921,100000,100218,'2012-02-05 11:33:33'),
 (171054036984,100000,100159,'2012-02-05 12:00:36'),
 (171059978578,100001,100148,'2012-02-05 13:39:37'),
 (171065927093,100001,100159,'2012-02-05 15:18:46'),
 (171068986796,100000,100222,'2012-02-05 16:09:45'),
 (171069528546,100000,100148,'2012-02-05 16:18:47'),
 (171082188515,100001,100222,'2012-02-05 19:49:47'),
 (171085346109,100000,100159,'2012-02-05 20:42:25'),
 (171085471562,100001,100225,'2012-02-05 20:44:30'),
 (171085717171,100000,100229,'2012-02-05 20:48:37'),
 (171085723421,100000,100229,'2012-02-05 20:48:43'),
 (171085726500,100000,100229,'2012-02-05 20:48:46'),
 (171085754687,100000,100229,'2012-02-05 20:49:14'),
 (171102714375,100000,100229,'2012-02-06 21:45:13'),
 (171103021718,100001,100207,'2012-02-06 21:50:20'),
 (171108782937,100001,100218,'2012-02-06 23:26:22'),
 (171109331531,100000,100207,'2012-02-06 23:35:31'),
 (171147212171,100001,100225,'2012-02-06 10:06:52'),
 (171150255031,100001,100222,'2012-02-06 10:57:35'),
 (171150839046,100001,100207,'2012-02-06 11:07:19'),
 (171154376515,100000,100222,'2012-02-06 12:06:16'),
 (171154384312,100000,100222,'2012-02-06 12:06:24'),
 (171156055375,100000,100207,'2012-02-06 12:34:15'),
 (171156071890,100000,100207,'2012-02-06 12:34:31'),
 (171160216609,100001,100148,'2012-02-06 13:43:35'),
 (171162120171,100001,100222,'2012-02-06 14:15:19'),
 (171162901328,100001,100159,'2012-02-06 14:28:20'),
 (171164568453,100001,100229,'2012-02-06 14:56:08'),
 (171164578671,100001,100229,'2012-02-06 14:56:18'),
 (171164646625,100001,100229,'2012-02-06 14:57:26'),
 (171166388859,100001,100207,'2012-02-06 15:26:27'),
 (171171777843,100000,100159,'2012-02-06 16:56:17'),
 (171173899453,100000,100222,'2012-02-06 17:31:38'),
 (171174275593,100000,100225,'2012-02-06 17:37:54'),
 (171182066265,100000,100148,'2012-02-06 19:47:45'),
 (171185013500,100000,100207,'2012-02-06 20:36:53'),
 (171186072515,100000,100243,'2012-02-06 20:54:32'),
 (171186074515,100000,100243,'2012-02-06 20:54:34'),
 (171186076203,100000,100243,'2012-02-06 20:54:36'),
 (171200201578,100000,100243,'2012-02-07 21:03:21'),
 (171200962921,100001,100159,'2012-02-07 21:16:02'),
 (171201544968,100001,100229,'2012-02-07 21:25:44'),
 (171201699937,100000,100159,'2012-02-07 21:28:19'),
 (171201715484,100000,100207,'2012-02-07 21:28:35'),
 (171202793328,100000,100225,'2012-02-07 21:46:33'),
 (171202800875,100000,100225,'2012-02-07 21:46:40'),
 (171203776031,100001,100148,'2012-02-07 22:02:56'),
 (171206107484,100000,100229,'2012-02-07 22:41:47'),
 (171206737734,100001,100159,'2012-02-07 22:52:17'),
 (171213169312,100000,100218,'2012-02-07 00:39:28'),
 (171215989765,100000,100229,'2012-02-07 01:26:28'),
 (1712[ZoneTransfer]
ZoneId=3
HostUrl=https://r4---sn-x1x7snek.googlevideo.com/videoplayback?key=cms1&ip=23.106.84.209&dur=800.043&pl=22&itag=22&c=WEB&source=youtube&id=o-AE9Eq9qhZMAOvnCdSclH9Ku55hADRMsGp1xAWAMJHGs8&expire=1518083305&mime=video%2Fmp4&signature=0397C74B4687015FB145BD224EC1E2C1F61C45A9.5040E51A76A01A83FCA2EA34E45296E697E36527&lmt=1515133136054122&ratebypass=yes&fvip=4&sparams=dur,ei,expire,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,nh,pcm2cms,pl,ratebypass,requiressl,source&requiressl=yes&ipbits=0&ei=ich7WtaIF8qquwXZt6GICw&video_id=HTc0owuahqg&title=Curso+Android+desde+cero+%2312+-+Hardcoded+string+should+use+string+resource&rm=sn-q4fk67z&req_id=f8a395aa8d4a3ee&ipbypass=yes&mip=181.93.83.71&redirect_counter=2&cm2rm=sn-uxaxjvh5gbxoupo5-x1xk7z&cms_redirect=yes&mm=29&mn=sn-x1x7snek&ms=rdu&mt=1518061614&mv=m&nh=IgpwcjAzLmV6ZTA0KgkxMjcuMC4wLjE
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ,100159,'2012-02-08 00:21:38'),
 (171312100046,100000,100159,'2012-02-08 00:21:40'),
 (171312101250,100000,100159,'2012-02-08 00:21:41'),
 (171312102453,100000,100159,'2012-02-08 00:21:42'),
 (171312103453,100000,100159,'2012-02-08 00:21:43'),
 (171312104031,100000,100159,'2012-02-08 00:21:44'),
 (171312104906,100000,100159,'2012-02-08 00:21:44'),
 (171312106125,100000,100159,'2012-02-08 00:21:46'),
 (171312107046,100000,100159,'2012-02-08 00:21:47'),
 (171312108265,100000,100159,'2012-02-08 00:21:48'),
 (171312109171,100000,100159,'2012-02-08 00:21:49'),
 (171312115515,100000,100159,'2012-02-08 00:21:55'),
 (171312117421,100000,100159,'2012-02-08 00:21:57'),
 (171312118953,100000,100159,'2012-02-08 00:21:58'),
 (171312120171,100000,100159,'2012-02-08 00:22:00'),
 (171312121078,100000,100159,'2012-02-08 00:22:01'),
 (171312122312,100000,100159,'2012-02-08 00:22:02'),
 (171312123203,100000,100159,'2012-02-08 00:22:03'),
 (171312124421,100000,100159,'2012-02-08 00:22:04'),
 (171312125312,100000,100159,'2012-02-08 00:22:05'),
 (171312126234,100000,100159,'2012-02-08 00:22:06'),
 (171312127140,100000,100159,'2012-02-08 00:22:07'),
 (171312128031,100000,100159,'2012-02-08 00:22:08'),
 (171312129234,100000,100159,'2012-02-08 00:22:09'),
 (171312130453,100000,100159,'2012-02-08 00:22:10'),
 (171312131390,100000,100159,'2012-02-08 00:22:11'),
 (171312132281,100000,100159,'2012-02-08 00:22:12'),
 (171312133281,100000,100159,'2012-02-08 00:22:13'),
 (171312134453,100000,100159,'2012-02-08 00:22:14'),
 (171312135500,100000,100159,'2012-02-08 00:22:15'),
 (171325257000,100000,100222,'2012-02-08 04:00:56'),
 (171325260750,100000,100222,'2012-02-08 04:01:00'),
 (171325268703,100000,100222,'2012-02-08 04:01:08'),
 (171325277765,100000,100222,'2012-02-08 04:01:17'),
 (171325284437,100000,100222,'2012-02-08 04:01:24'),
 (171325286625,100000,100222,'2012-02-08 04:01:26'),
 (171344889515,100001,100245,'2012-02-08 09:28:09'),
 (171349244078,100001,100225,'2012-02-08 10:40:44'),
 (171349244687,100001,100225,'2012-02-08 10:40:44'),
 (171349245281,100001,100225,'2012-02-08 10:40:45'),
 (171349247484,100001,100225,'2012-02-08 10:40:47'),
 (171349249375,100001,100225,'2012-02-08 10:40:49'),
 (171349249984,100001,100225,'2012-02-08 10:40:49'),
 (171349254703,100001,100225,'2012-02-08 10:40:54'),
 (171349256546,100001,100225,'2012-02-08 10:40:56'),
 (171349257453,100001,100225,'2012-02-08 10:40:57'),
 (171349258343,100001,100225,'2012-02-08 10:40:58'),
 (171349259234,100001,100225,'2012-02-08 10:40:59'),
 (171349260156,100001,100225,'2012-02-08 10:41:00'),
 (171349260734,100001,100225,'2012-02-08 10:41:00'),
 (171349261296,100001,100225,'2012-02-08 10:41:01'),
 (171349263125,100001,100225,'2012-02-08 10:41:03'),
 (171349264015,100001,100225,'2012-02-08 10:41:04'),
 (171349265234,100001,100225,'2012-02-08 10:41:05'),
 (171349266125,100001,100225,'2012-02-08 10:41:06'),
 (171349266703,100001,100225,'2012-02-08 10:41:06'),
 (171349267562,100001,100225,'2012-02-08 10:41:07'),
 (171349268421,100001,100225,'2012-02-08 10:41:08'),
 (171349269000,100001,100225,'2012-02-08 10:41:09'),
 (171349269562,100001,100225,'2012-02-08 10:41:09'),
 (171349270453,100001,100225,'2012-02-08 10:41:10'),
 (171349272312,100001,100225,'2012-02-08 10:41:12'),
 (171349273484,100001,100225,'2012-02-08 10:41:13'),
 (171349274062,100001,100225,'2012-02-08 10:41:14'),
 (171349275593,100001,100225,'2012-02-08 10:41:15'),
 (171349276921,100001,100225,'2012-02-08 10:41:16'),
 (171349277812,100001,100225,'2012-02-08 10:41:17'),
 (171349285953,100001,100225,'2012-02-08 10:41:25'),
 (171349286531,100001,100225,'2012-02-08 10:41:26'),
 (171349287140,100001,100225,'2012-02-08 10:41:27'),
 (171349289000,100001,100225,'2012-02-08 10:41:29'),
 (171349291500,100001,100225,'2012-02-08 10:41:31'),
 (171349294312,100001,100225,'2012-02-08 10:41:34'),
 (171349295218,100001,100225,'2012-02-08 10:41:35'),
 (171349295796,100001,100225,'2012-02-08 10:41:35'),
 (171349296718,100001,100225,'2012-02-08 10:41:36'),
 (171349300500,100001,100225,'2012-02-08 10:41:40'),
 (171349302359,100001,100225,'2012-02-08 10:41:42'),
 (171349303578,100001,100225,'2012-02-08 10:41:43'),
 (171349311531,100001,100225,'2012-02-08 10:41:51'),
 (171349312109,100001,100225,'2012-02-08 10:41:52'),
 (171349312718,100001,100225,'2012-02-08 10:41:52'),
 (171349313937,100001,100225,'2012-02-08 10:41:53'),
 (171349317828,100001,100225,'2012-02-08 10:41:57'),
 (171349318390,100001,100225,'2012-02-08 10:41:58'),
 (171349323796,100001,100225,'2012-02-08 10:42:03'),
 (171349325656,100001,100225,'2012-02-08 10:42:05'),
 (171349327156,100001,100225,'2012-02-08 10:42:07'),
 (171349329015,100001,100225,'2012-02-08 10:42:09'),
 (171349330218,100001,100225,'2012-02-08 10:42:10'),
 (171349330796,100001,100225,'2012-02-08 10:42:10'),
 (171349332625,100001,100225,'2012-02-08 10:42:12'),
 (171349341875,100001,100225,'2012-02-08 10:42:21'),
 (171349342468,100001,100225,'2012-02-08 10:42:22'),
 (171349343625,100001,100225,'2012-02-08 10:42:23'),
 (171349344203,100001,100225,'2012-02-08 10:42:24'),
 (171349345531,100001,100225,'2012-02-08 10:42:25'),
 (171349347093,100001,100225,'2012-02-08 10:42:27'),
 (171349378140,100001,100225,'2012-02-08 10:42:58'),
 (171349379062,100001,100225,'2012-02-08 10:42:59'),
 (171349379640,100001,100225,'2012-02-08 10:42:59'),
 (171349380531,100001,100225,'2012-02-08 10:43:00'),
 (171349381125,100001,100225,'2012-02-08 10:43:01'),
 (171349382031,100001,100225,'2012-02-08 10:43:02'),
 (171349382625,100001,100225,'2012-02-08 10:43:02'),
 (171349383218,100001,100225,'2012-02-08 10:43:03'),
 (171349401328,100000,100225,'2012-02-08 10:43:21'),
 (171349403828,100000,100225,'2012-02-08 10:43:23'),
 (171355644640,100000,100207,'2012-02-08 12:27:24'),
 (171355645703,100000,100207,'2012-02-08 12:27:25'),
 (171355646750,100000,100207,'2012-02-08 12:27:26'),
 (171355650140,100000,100207,'2012-02-08 12:27:30'),
 (171355653062,100000,100207,'2012-02-08 12:27:33'),
 (171355655062,100000,100207,'2012-02-08 12:27:35'),
 (171355656906,100000,100207,'2012-02-08 12:27:36'),
 (171355659859,100000,100207,'2012-02-08 12:27:39'),
 (171357524984,100001,100229,'2012-02-08 12:58:44'),
 (171357525906,100001,100229,'2012-02-08 12:58:45'),
 (171357534843,100001,100229,'2012-02-08 12:58:54'),
 (171357607906,100001,100148,'2012-02-08 13:00:07'),
 (171357611359,100001,100148,'2012-02-08 13:00:11'),
 (171357613828,100001,100148,'2012-02-08 13:00:13'),
 (171357615687,100001,100148,'2012-02-08 13:00:15'),
 (171357617515,100001,100148,'2012-02-08 13:00:17'),
 (171357620656,100001,100148,'2012-02-08 13:00:20'),
 (171357622625,100001,100148,'2012-02-08 13:00:22'),
 (171357624140,100001,100148,'2012-02-08 13:00:24'),
 (171357626015,100001,100148,'2012-02-08 13:00:26'),
 (171357665734,100001,100159,'2012-02-08 13:01:05'),
 (171357667921,100001,100159,'2012-02-08 13:01:07'),
 (171357670093,100001,100159,'2012-02-08 13:01:10'),
 (171357672281,100001,100159,'2012-02-08 13:01:12'),
 (171357674453,100001,100159,'2012-02-08 13:01:14'),
 (171357675359,100001,100159,'2012-02-08 13:01:15'),
 (171357676578,100001,100159,'2012-02-08 13:01:16'),
 (171357678750,100001,100159,'2012-02-08 13:01:18'),
 (171357681265,100001,100159,'2012-02-08 13:01:21'),
 (171357682500,100001,100159,'2012-02-08 13:01:22'),
 (171357683546,100001,100159,'2012-02-08 13:01:23'),
 (171369158203,100000,100245,'2012-02-08 16:12:38'),
 (171469180031,100000,100006,'2012-02-09 16:13:00'),
 (171469180937,100000,100006,'2012-02-09 16:13:00'),
 (171469183906,100000,100006,'2012-02-09 16:13:03'),
 (171469184796,100000,100006,'2012-02-09 16:13:04'),
 (171469185359,100000,100006,'2012-02-09 16:13:05'),
 (171469185937,100000,100006,'2012-02-09 16:13:05'),
 (171469187453,100000,100006,'2012-02-09 16:13:07'),
 (171469189312,100000,100006,'2012-02-09 16:13:09'),
 (171469190203,100000,100006,'2012-02-09 16:13:10'),
 (171469191437,100000,100006,'2012-02-09 16:13:11'),
 (171469669437,100000,100006,'2012-02-09 16:21:09'),
 (171500571343,100000,100275,'2012-02-10 21:09:31'),
 (171505609875,100001,100275,'2012-02-10 22:33:28'),
 (171505882312,100000,100275,'2012-02-10 22:38:02'),
 (171538655593,100001,100218,'2012-02-10 07:44:15'),
 (171542088187,100000,100218,'2012-02-10 08:41:28'),
 (171582342312,100000,100275,'2012-02-10 19:52:22'),
 (171586098156,100001,100275,'2012-02-10 20:54:58'),
 (171586105093,100001,100275,'2012-02-10 20:55:05'),
 (171586112078,100001,100275,'2012-02-10 20:55:12'),
 (171601473343,100001,100218,'2012-02-11 21:24:33'),
 (171603393937,100001,100275,'2012-02-11 21:56:33'),
 (171604213406,100000,100218,'2012-02-11 22:10:13'),
 (171637088875,100001,100218,'2012-02-11 07:18:07'),
 (171638027421,100000,100218,'2012-02-11 07:33:46'),
 (171647680281,100001,100273,'2012-02-11 10:14:40'),
 (171647682812,100001,100273,'2012-02-11 10:14:42'),
 (171647684687,100001,100273,'2012-02-11 10:14:44'),
 (171647692796,100001,100273,'2012-02-11 10:14:52'),
 (171647696531,100001,100273,'2012-02-11 10:14:56'),
 (171647700421,100001,100273,'2012-02-11 10:15:00'),
 (171665671296,100001,100218,'2012-02-11 15:14:31'),
 (171674585734,100000,100218,'2012-02-11 17:43:04'),
 (171700298656,100000,100297,'2012-02-12 21:04:58'),
 (171700586359,100000,100275,'2012-02-12 21:09:46'),
 (171706950937,100000,100218,'2012-02-12 22:55:49'),
 (171756107734,100000,100218,'2012-02-12 12:35:06'),
 (171758798906,100001,100275,'2012-02-12 13:19:57'),
 (171763481312,100001,100218,'2012-02-12 14:38:00'),
 (171763849250,100000,100218,'2012-02-12 14:44:08'),
 (171764608593,100001,100218,'2012-02-12 14:56:48'),
 (171779728671,100000,100218,'2012-02-12 19:08:48'),
 (171779736078,100000,100218,'2012-02-12 19:08:56'),
 (171782793296,100000,100305,'2012-02-12 19:59:53'),
 (171785225359,100001,100218,'2012-02-12 20:40:25'),
 (171800079500,100000,100305,'2012-02-13 21:01:19'),
 (171845074968,100000,100006,'2012-02-13 09:31:14'),
 (171850462343,100001,100275,'2012-02-13 11:01:02'),
 (171850623171,100001,100297,'2012-02-13 11:03:43'),
 (171852547234,100001,100218,'2012-02-13 11:35:47'),
 (171853498906,100001,100305,'2012-02-13 11:51:38'),
 (171853505515,100001,100305,'2012-02-13 11:51:45'),
 (171855926125,100000,100218,'2012-02-13 12:32:06'),
 (171857715781,100000,100275,'2012-02-13 13:01:55'),
 (171858073593,100000,100297,'2012-02-13 13:07:53'),
 (171859795281,100000,100305,'2012-02-13 13:36:35'),
 (171871807500,100001,100275,'2012-02-13 16:56:47'),
 (171872766375,100000,100006,'2012-02-13 17:12:46'),
 (171872767578,100000,100006,'2012-02-13 17:12:47'),
 (171872771015,100000,100006,'2012-02-13 17:12:51'),
 (171872772875,100000,100006,'2012-02-13 17:12:52'),
 (171874254625,100001,100305,'2012-02-13 17:37:34'),
 (171885949093,100000,100275,'2012-02-13 20:52:29'),
 (171902700000,100001,100305,'2012-02-14 21:45:00'),
 (171903544968,100000,100297,'2012-02-14 21:59:04'),
 (171904186375,100000,100305,'2012-02-14 22:09:46'),
 (171906901812,100001,100218,'2012-02-14 22:55:01'),
 (171910054515,100000,100218,'2012-02-14 23:47:33'),
 (171946852390,100001,100297,'2012-02-14 10:00:51'),
 (171955186000,100001,100305,'2012-02-14 12:19:45'),
 (171956105515,100001,100275,'2012-02-14 12:35:04'),
 (171965556218,100000,100275,'2012-02-14 15:12:35'),
 (171968060312,100001,100275,'2012-02-14 15:54:19'),
 (171972271031,100000,100297,'2012-02-14 17:04:30'),
 (171981528390,100001,100297,'2012-02-14 19:38:48'),
 (171983861593,100000,100275,'2012-02-14 20:17:41'),
 (171984614718,100000,100305,'2012-02-14 20:30:14'),
 (172000783921,100000,100218,'2012-02-15 21:13:03'),
 (172004578390,100000,100238,'2012-02-15 22:16:18'),
 (172004581203,100000,100238,'2012-02-15 22:16:21'),
 (172004583375,100000,100238,'2012-02-15 22:16:23'),
 (172004590312,100000,100238,'2012-02-15 22:16:30'),
 (172004595031,100000,100238,'2012-02-15 22:16:35'),
 (172004601671,100000,100238,'2012-02-15 22:16:41'),
 (172004607046,100000,100238,'2012-02-15 22:16:47'),
 (172004609859,100000,100238,'2012-02-15 22:16:49'),
 (172004613343,100000,100238,'2012-02-15 22:16:53'),
 (172004622656,100000,100238,'2012-02-15 22:17:02'),
 (172040265375,100000,100006,'2012-02-15 08:11:05'),
 (172040268234,100000,100006,'2012-02-15 08:11:08'),
 (172040269421,100000,100006,'2012-02-15 08:11:09'),
 (172040270625,100000,100006,'2012-02-15 08:11:10'),
 (17204027184���� JFIF  H H  ���Exif  MM *                  b       j(       1       r2       ��i       �   �   H      H   Adobe Photoshop CS Windows 2005:06:17 09:55:47     �       �       x�       x                          &(             .      k       H      H   ���� JFIF  H H  �� Adobe_CM �� Adobe d�   �� � 			
��  x x" ��  ��?          	
         	
 3 !1AQa"q�2���B#$R�b34r��C%�S���cs5���&D�TdE£t6�U�e���u��F'���������������Vfv��������7GWgw�������� 5 !1AQaq"2����B#�R��3$b�r��CScs4�%���&5��D�T�dEU6te����u��F���������������Vfv��������'7GWgw�������   ? �I!��"�����)Jh*A���ZRR�ʉi	*��d�!I$�JRI$���I$�$�I)���I��!"��U��6P�Ktwp�W�Odؕ���p��CfS%*^�;����v��x�mgEml��>K��l��z�
DF����W����io�ZMԒ���qv
5�'.���'�I��4��򠅖6�yU?I�|
2�(�e>��s<;��B]�N�I�潡�2:r�I$�����S�8m>#�&�fXC�
Lqi���@#���v�J�:+�P%q�>�[hk���?���I��q���oM��W�Z��\�Q���7�"�ʡ���uQ���S��6㪵}�*��R ���AI�J�K��) ���q��O�w௬�����P�F�(K^HuJ�I)����L��J��_�-E�x��KF�<N߸O��O�d�kg���zXk�Ih�y���S_��e#�d�ć�f9B�"{��LmM`��[*��)��T	I��)&@�) �v��R�g��7�J���L�(Q���y�[7RI%e����N"2��X��V�Z�ў=;+�p��� }A��I~#l�??����k��}��������p���K�j#���$��K��ոA
S-�K�I2V��$� � �Mju���%�w��Um|��Q������wĦ�Y/�Q-���J���������w�H���G䠜-B�R0�����)y��|G��l�OA��qʓuޗ��T=��� T����Be������ �%S��:�A�λG��z��1�z��<�H�b�C�-ii*�3*a� )����2SR�^�g�.?O��x,��xq� Ȩ����88��=g��0��B�)�ZƆ�CF���8
�V�I$�z����N�I�����D^���T j��&i��
L��H
�$�ǁ�V+Ȳ����9�Z�K�n>)��&ۺ�^"ւ���8�go�������u����@��g�>i�?>�<#���ɾ�E���*�1�2�˿yڕ2R.P%<D�,%D�I$�2��I%?���mm�W���L�W��Z�N�H{�ֆ�PܸT�_��nO�p�$�^�rbW�J6��q	"���K�I$=�K�I%?����\Photoshop 3.0 8BIM%                     8BIM�      H     H    8BIM&               ?�  8BIM        x8BIM        8BIM�     	         8BIM
       8BIM'     
        8BIM�     H /ff  lff       /ff  ���       2    Z         5    -        8BIM�     p  �����������������������    �����������������������    �����������������������    �����������������������  8BIM       8BIM         8BIM          @  @    8BIM         8BIM    I              x   x   
 U n t i t l e d - 1                                 x   x                                            null      boundsObjc         Rct1       Top long        Leftlong        Btomlong   x    Rghtlong   x   slicesVlLs   Objc        slice      sliceIDlong       groupIDlong       originenum   ESliceOrigin   autoGenerated    Typeenum   
ESliceType    Img    boundsObjc         Rct1       Top long        Leftlong        Btomlong   x    Rghtlong   x   urlTEXT         nullTEXT         MsgeTEXT        altTagTEXT        cellTextIsHTMLbool   cellTextTEXT        	horzAlignenum   ESliceHorzAlign   default   	vertAlignenum   ESliceVertAlign   default   bgColorTypeenum   ESliceBGColorType    None   	topOutsetlong       
leftOutsetlong       bottomOutsetlong       rightOutsetlong     8BIM(        ?�      8BIM        8BIM    �      x   x  h  ��  k  ���� JFIF  H H  �� Adobe_CM �� Adobe d�   �� � 			
��  x x" ��  ��?          	
         	
 3 !1AQa"q�2���B#$R�b34r��C%�S���cs5���&D�TdE£t6�U�e���u��F'���������������Vfv��������7GWgw�������� 5 !1AQaq"2����B#�R��3$b�r��CScs4�%���&5��D�T�dEU6te����u��F���������������Vfv��������'7GWgw�������   ? �I!��"�����)Jh*A���ZRR�ʉi	*��d�!I$�JRI$���I$�$�I)���I��!"��U��6P�Ktwp�W�Odؕ���p��CfS%*^�;����v��x�mgEml��>K��l��z�
DF����W����io�ZMԒ���qv
5�'.���'�I��4��򠅖6�yU?I�|
2�(�e>��s<;��B]�N�I�潡�2:r�I$�����S�8m>#�&�fXC�
Lqi���@#���v�J�:+�P%q�>�[hk���?���I��q���oM��W�Z��\�Q���7�"�ʡ���uQ���S��6㪵}�*��R ���AI�J�K��) ���q��O�w௬�����P�F�(K^HuJ�I)����L��J��_�-E�x��KF�<N߸O��O�d�kg���zXk�Ih�y���S_��e#�d�ć�f9B�"{��LmM`��[*��)��T	I��)&@�) �v��R�g��7�J���L�(Q���y�[7RI%e����N"2��X��V�Z�ў=;+�p��� }A��I~#l�??����k��}��������p���K�j#���$��K��ոA
S-�K�I2V��$� � �Mju���%�w��Um|��Q������wĦ�Y/�Q-���J���������w�H���G䠜-B�R0�����)y��|G��l�OA��qʓuޗ��T=��� T����Be������ �%S��:�A�λG��z��1�z��<�H�b�C�-ii*�3*a� )����2SR�^�g�.?O��x,��xq� Ȩ����88��=g��0��B�)�ZƆ�CF���8
�V�I$�z����N�I�����D^���T j��&i��
L��H
�$�ǁ�V+Ȳ����9�Z�K�n>)��&ۺ�^"ւ���8�go�������u����@��g�>i�?>�<#���ɾ�E���*�1�2�˿yڕ2R.P%<D�,%D�I$�2��I%?���mm�W���L�W��Z�N�H{�ֆ�PܸT�_��nO�p�$�^�rbW�J6��q	"���K�I$=�K�I%?�� 8BIM!     S       A d o b e   P h o t o s h o p    A d o b e   P h o t o s h o p   C S    8BIM          ���http://ns.adobe.com/xap/1.0/ <?xpacket begin='﻿' id='W5M0MpCehiHzreSzNTczkc9d'?>
<x:xmpmeta xmlns:x='adobe:ns:meta/' x:xmptk='XMP toolkit 3.0-28, framework 1.6'>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:iX='http://ns.adobe.com/iX/1.0/'>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:exif='http://ns.adobe.com/exif/1.0/'>
  <exif:ColorSpace>1</exif:ColorSpace>
  <exif:PixelXDimension>120</exif:PixelXDimension>
  <exif:PixelYDimension>120</exif:PixelYDimension>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:pdf='http://ns.adobe.com/pdf/1.3/'>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:photoshop='http://ns.adobe.com/photoshop/1.0/'>
  <photoshop:History></photoshop:History>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:tiff='http://ns.adobe.com/tiff/1.0/'>
  <tiff:Orientation>1</tiff:Orientation>
  <tiff:XResolution>72/1</tiff:XResolution>
  <tiff:YResolution>72/1</tiff:YResolution>
  <tiff:ResolutionUnit>2</tiff:ResolutionUnit>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:xap='http://ns.adobe.com/xap/1.0/'>
  <xap:CreateDate>2005-06-17T09:55:47-05:00</xap:CreateDate>
  <xap:ModifyDate>2005-06-17T09:55:47-05:00</xap:ModifyDate>
  <xap:MetadataDate>2005-06-17T09:55:47-05:00</xap:MetadataDate>
  <xap:CreatorTool>Adobe Photoshop CS Windows</xap:CreatorTool>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:xapMM='http://ns.adobe.com/xap/1.0/mm/'>
  <xapMM:DocumentID>adobe:docid:photoshop:5dd9930e-df37-11d9-b295-daca1d068cfc</xapMM:DocumentID>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:dc='http://purl.org/dc/elements/1.1/'>
  <dc:format>image/jpeg</dc:format>
 </rdf:Description>

</rdf:RDF>
</x:xmpmeta>
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                       
<?xpacket end='w'?>��XICC_PROFILE   HLino  mntrRGB XYZ �  	  1  acspMSFT    IEC sRGB              ��     �-HP                                                 cprt  P   3desc  �   lwtpt  �   bkpt     rXYZ     gXYZ  ,   bXYZ  @   dmnd  T   pdmdd  �   �vued  L   �view  �   $lumi  �   meas     $tech  0   rTRC  <  gTRC  <  bTRC  <  text    Copyright (c) 1998 Hewlett-Packard Company  desc       sRGB IEC61966-2.1           sRGB IEC61966-2.1                                                  XYZ       �Q    �XYZ                 XYZ       o�  8�  �XYZ       b�  ��  �XYZ       $�  �  ��desc       IEC http://www.iec.ch           IEC http://www.iec.ch                                              desc       .IEC 61966-2.1 Default RGB colour space - sRGB           .IEC 61966-2.1 Default RGB colour space - sRGB                      desc       ,Reference Viewing Condition in IEC61966-2.1           ,Reference Viewing Condition in IEC61966-2.1                          view     �� _. � ��  \�   XYZ      L	V P   W�meas                         �   sig     CRT curv           
     # ( - 2 7 ; @ E J O T Y ^ c h m r w | � � � � � � � � � � � � � � � � � � � � � � � � �%+28>ELRY`gnu|����������������&/8AKT]gqz������������ !-8COZfr~���������� -;HUcq~���������+:IXgw��������'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�

'
=
T
j
�
�
�
�
�
�"9Qi������*C\u�����&@Zt�����.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����'Ij����4Vx���&Il����Ae����@e���� Ek���*Qw���;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�"'"U"�"�"�#
#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&'&W&�&�&�''I'z'�'�((?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�33F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<'<e<�<�="=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O OIO�O�P'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\V�V�WDW�W�X/X}X�YYiY�ZZVZ�Z�[E[�[�\5\�\�]']x]�^^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���
�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���
�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8��������n��R�ĩ7�������u��\�ЭD���-������ �u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������
�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s��������2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m���� Adobe d@   �� � ��  x x ��  ���             	
            	 
 	u!" 1A2#	QBa$3Rq�b�%C���&4r
��5'�S6��DTsEF7Gc(UVW�����d�t��e�����)8f�u*9:HIJXYZghijvwxyz������������������������������������������������������� m!1 "AQ2aqB�#�R�b3	�$��Cr��4%�ScD�&5T6Ed'
s��Ft����UeuV7��������)��������������(GWf8v��������gw��������HXhx��������9IYiy��������*:JZjz����������   ? �aɰ���?A����{���ߺ�\�?�݂���1�*� ��h=o�n�S�>�T�.�T�.���U���׺��u���{�{�^���׺��u���{�{�^��Щ�$�̓P�]Y*���Ǿ��P��6��Uzz���/Y����ZVA��� ��Z U>})kb��G��8"�F*U��ksnG�!@�^H�]:���Qp��ߏ���X��?.��e�����c�qæ��|���#������E�5r�K{�'�I$��:����Lu߿u���{�{�^���׺��u���{�{�^��ѩ_�>��c��54���S9WC��ˋ�?�����*FVnа�T��]�G�"Z��9������t�?��4�`�����$�%��t,�ު��U_�k��� ��ު�.��L=*�;W�#M������{a7'���Wҝ��ܵ����䊓��]V5�M�H�{��\�f��x��M�� p��Fao�W�gulJ}���,�~U��M
H!����f�;8T=��E>^��?��s�V��n���p@�I����7]U �qm��I����B�~t�I.��J�g4��`���O�dtKwo�PW���R<���W�3�]?j��gt� q�z�S%\O������T��rW��c�ſ���&KG'��(?�� I����m��p�����������<�^	Q��� �{I��D#\@��G��O����cЕ����t�j��ֹ
��@�,��"�WzV��!�]���Y���.�-��æ��T�W�Ћ����:�ߺ�^��׽��u�ҩ9.�x#�q���ip�� �eܑ��ã(��F�0--e,���OR�GR>�� ���}*����	"8���G���Sc�8֨z��u�y,�PO������u[tr^�i��X����\���-��L�cT�!*�2�S@t���.�H��}�������}��2�l�����?��o��_oU���b����#+�� T�Jt��
8�A�G��$dϯGW[�*�6� 
j� 7��Ω��q�g��fydbڞF.���ͽ��y�bO��7;<��#cĜ����Ti���E��?PO�5{OD�+M_��� s(#����?��� m��=���X�X]C���S���G��) �7����އ���t�>�#�n���yi�2.Ot������!�5�J���X�?E�I>���2[�wC^c�� 7�:���0�bJ~߷��|nJ�/CM��T%U\bH'�P�*AV
����+ ����qȓ"�U�C�F�Q�S���z��u��Ӭ��{[)œ��Q`�uM������8*=�%P֨��='�������x�m�N"��)O}C�"�@���?�^��TQ�JF�ú�n���
�u���dt�ȺO_����J�u�ǆ\������i�c�ل�� ��Iꥦt~��yP�O�G���{���n��%kЖ�jt�H��qP?�y~g�V��~��ݨv�V*��9d�	��@T� D�$�y� m���WKv�Ԁ:I1ts�4� T�q�VTV�n�)��9?�{����Qj:��:�έ�� ������$Q�uI��n�W�3_���7?텽��@\S��g���_�O?��8�H�Io�?������Ӑ��
O�� X�� ���'=)A����Q����Lp~����!J�COT��v�bc�&?��2��;z(�X莱nl�M�_���H�������)! ������g˯^Y��~��|ǘ� 7�=rA����{��ԩFP�A� � ��SBY�U�8څ���Zi�ݔ���^��dtomw,D����!��-&7)�x�[']R����4i%�752��{��y�����6�%Gˡ�/����bd� ���c�$��Z�r6��T�^�H���ּ�BB,H��A#�H>�;�܅�z�1�kyny3��|�	3$j�4�+ݚ]D�Rykܛ����9؊����Y���@�~�9�-S���}������E[�x�Fw�����9����k�N�J�'���ra���%�r9��c�	� o�� 8��$�����噹�� ��7��>}�[�����'�y�@(�V�����?�ɷ�o��i��}D������?�� ��S��?�� ?J"�ң�b[� E� y�`���_��� i���_�5��g�U@N>���9�P�#\�,�Κ���}������g��ո��m�t����H��5�-�@ �p���?>?ν-���A��թo}�1�R���58��oCN�G��[���7�UNZ���*��ҶU_����On
0ǯSO�6Z�w¹iB�����c�t��!���B'�J����ZN�8�A�pƴ��J� ����@DJq?�� ��Ýd[[�Zjc��� ?D��bg��po�uq�Z���B��q�8��v#�+�9$� C�G�~?�n�]6�b�};�s��������X�6� {��ǤR�ē�7�˴��Z��� a���� ����I�ޑ�9bo�<���~ğv$^�OϬ6�����-��{DƤ���Ҵ�C�[���E���� F��c�kSӀpb�u���m����o�����}K",iSJ��� �W �������ђ
(�l����8�RS֪��4�4.�>���� ��y���;��c���F����tE�-D/N�۟�t=��z ��֬
Ì����U*��l\�M��>�c��D���q������=76�o׵A��y��@=���x�.��o4�^�;��X��YV�c��ƻ�+S%�2- ��$�de<��tjS�P�r������ҟχE���V�]� ִ�C� �"3"TA�����_��{-ܟ��'�=�ά2m��o��� ���]�-����k�_���֔�QO���u
�u���p��k���� ���t=Q��ӏI����ݏ?��������T%gg=Ǧ)%.~�������}��q괯Q�i� _�I��� i�}X��LiL��G��p/���o�?�>�1������6767��W'�~<ߟ��'�l��t�.F:s���������?��w�!PsфKR:S(
��[�kq� �����kҲB�|�:~`�¾?��v�ȿ�\� ��9��M\�z?��� ��=���]>n?���s�A��שo}8@��S`K��}���������l��,�e����a���#�R.>��~D-��7����z�_0k��������-�Ȟ�H>z���4/���fϝ�⥃��w1WM;"��Y:xj#/oW�dĕ�%���m�h-������:S�}�\햗h��܃�0�+���Mg����>�u����{Y� �������O^|��I�Ѱ� m� 6�C(8�q���{s�����~=��W��)������k���?�����7^�厢��s���p�� ������i����t�?�u�b28Q�c������p:Ut���F�X�� �s�����T��F�GϬ���f'�	'��������I�7�z���n�������~J�e��Q��ib��{�Cjd���;U0}K��4��n����O���љ�:tK��Щ�VfA$�,	� z��Vᎃ��3 ����'kf+�� �� ڨ�"����x�{L�?~΄v0⃡�7N������g�2�fZ�G>�H�O)�1����@'Ld o�т��ҿ>=�b�6��5�'� D�����]X?g�N��;�g�����GG3��B�Xڂy>4��5�ţ,/Ϸ�!6�Bx������;�6˫&�ˏ��?��˭_;i��&��m�$ԓQV���,ѴS<r���pJ�O��� u)(�o�$����d!����ˤ7��W� �Տ��I����>�E��7n~�~���u/_�[��:��^�z����o��y��x��_���kÏ����N���ǩ�����Ƚ�������<?�����ע��������a�$�Z���$��%�Eۃ���+�_֢��tq�$g�Sd_���`���k���6����s)IO'���}Y�����{s�g�Iɩ�G�v��Occ)�h��R�̴n
�^Ac1SH�����8�q�֌>�w�6V��r�	�M�ՖA������U?0z_����с�t&���ѬMՎ��D��4s��J����mH�}x�W\��������P����Q�3��޾�A<CEz@R��<����=:��HF�=b�������?��?��O�٥w$����B�T��փ-�����L�",D�c���@J"�y��AdY!^.P�]�Υ���(���h�d��Kv���(��%��G�������_�����=��诜��˟���fJx���㌇��(Z�����H���> �������� ��)�~X����d����������r4�x�ɱ��KU;�I�
�Z�#pm��@���˨Q�tr�a�?��	k�'�m\,yH#�u�R�qo���ׂ|����	�*�no���~-���Eiӂ2i^���<�J��ܟ�� Z�ˮ/�0j���$^���j5�#�?'�� S�5{��Z�t�c��������������:GϤ�c-$NY������}�/.�\�����=?t�^Uv�M嚧a���^�(�L�n��E
)7����N��$�b�(Ao���&�������z�?貯��X�&����nd�Ъ��:=������ˠ�}a�� I��ҩaŭǾ���dק
w�S������`j�x�,�G(�K#�\����!Bƃ�� =	�U� v�pRJ%�sisQ���!�E �$d\b��ۚV%�� �g�u�Чu)N�OX��UT��}�P��!�p���Qa��h-��2�9p�,mo���"�>_����}z�6��dE����������|�E��������T�^�j
���\��y!\nE�4�6�2)��|,D&��K)��g��d	O���: �.O��5]��,�%|���N���2��ݻ-Q��Xz�eM<���4���c`F�R5[��ǰ=���n��G���Ew[]Ք��%Xz���f� ���?�d�����ģ�zpHU��� ��M��\�\N���!�'�#[ 9�p?ޭ�;u�Z7Ug QzKe�R� ���噏�*�I7������k�צP3Љ�>?nM�So~CY���2�"Q%.w:��D���$��G;���P�UrǷ��đ��h��mk��I'ʜcS�M��
�*Qu0��AA���Rb�Tt��m��QRƱS��¡c�(� ����<�}���v���±�Ơ*�� ` :&�z�k�I�� ��i�D���w���өo}�1��f�� �G����$�&� ?��$_N�[�wTAV=	F��hS�<%*7Lvs�&:6כKc϶� ]M���l-�cQ����M������#K<��Y\ݝ������vixy��^�`������*��坒�w6<���X�� �����=�-� ��5�c�9i�h���R�'����)zi�Hu�F����j&�X(е��C�Ӹ<��h�^_��[�9��6��Xleh�KIKL@�h����I�?��?z�<~�E<?�T���g���
�F���=���ld撣nO��
ʥ�R@%DSRd�]D�����]��ڲ��Z��)���HX��?��f�v�j�9C�8�����'�����n�6�%4���ӯ����Z�6�A6���G��� 5��O��$ܶ��_����G^���O�[?�j%����bb�{X�WU�-�6�~/o�$��P����|�%��[�;�sl�G�n��(��$� ��m�7]lic��`���E�f��S*� Jy���F���y�q���;��-��k�����>`�)� J��kpDK�S�����(�*o~}��:#����I��� �=�E�i*H���
�1����ֺ�ԩ�ZY��H F�G Qs����Mz"3�U'��R��O^:��S�2�ч�o�����zU����z=E�l�[Pܑ�:C-D�J�M#K<�^I\����ܟ������t��W.�jz�6��Ѳta�)��-�P)ҧ3?1��o ?۪�h��W�j}zY\v���A�b�#��Wi����7?�װ��D���ta�N:ǚ���� ��1��St4���پ?�_��� ��z����O�ul�7��� �G���>�K��>.��re��� }Ϸ�>�g�&��?SY{��B�D��ֹ�y�\���ڕON�&��}7;>�"Ӣ�z�>�龽��{��խ8�q�_�F��f�b��%n���� �� c	�I��H��"���N��I,�I4�4�J������I'�ɯ��L����9����ꀑé0y5�eP?<�=���O�!��K��R�1�h�y���Zi�Z�Q[���
�ty5���S�J��Q��>�1��]��ԥ�������<.����#�6�_�?�z��V�����'�G�����"駼'ϨrU��� o�ŏ��I.��������׷�>�<����>�*�Vrz���S�{�^���׺��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 [ZoneTransfer]
ZoneId=3
HostUrl=https://r5---sn-q4flrn7y.googlevideo.com/videoplayback?source=youtube&mime=video%2Fmp4&ip=103.254.94.190&fvip=9&ipbits=0&itag=22&key=cms1&expire=1518083247&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,itag,lmt,mime,mip,mm,mn,ms,mv,pl,ratebypass,requiressl,source&c=WEB&ei=Tsh7WoyEJ9ij1Abw5a64Cw&id=o-AEjO71i-dPmvoWBPg9CSHkatbY6lWNMCyOiKlsHdemIW&dur=1345.039&ratebypass=yes&signature=43314E8D9CC0BD50989D21A804DE81DA8CC92411.2D06402DCD5BA3400627D3F271F178E441A2FCA2&lmt=1513841849148068&requiressl=yes&pl=22&video_id=Ml9hPWd2SCM&title=Curso+Android+desde+cero+%2311+-+Ejercicio+pr%C3%A1ctico+%28Aplicaci%C3%B3n+m%C3%B3vil%29&rm=sn-x5guiuxaxjvh-q5js7e&req_id=5d2ff518c1f7a3ee&redirect_counter=2&cm2rm=sn-h55z7l&cms_redirect=yes&mip=181.93.83.71&mm=34&mn=sn-q4flrn7y&ms=ltu&mt=1518061588&mv=m
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     2-02-19 11:35:56'),
 (172452956656,100001,100373,'2012-02-19 11:42:35'),
 (172453628875,100000,100375,'2012-02-19 11:53:47'),
 (172453710250,100001,100173,'2012-02-19 11:55:09'),
 (172453905812,100001,100372,'2012-02-19 11:58:24'),
 (172455191937,100001,100357,'2012-02-19 12:19:51'),
 (172455299250,100001,100335,'2012-02-19 12:21:38'),
 (172455579812,100001,100358,'2012-02-19 12:26:19'),
 (172455582421,100001,100358,'2012-02-19 12:26:22'),
 (172455583312,100001,100358,'2012-02-19 12:26:23'),
 (172455584203,100001,100358,'2012-02-19 12:26:24'),
 (172455585859,100001,100358,'2012-02-19 12:26:25'),
 (172456096265,100000,100218,'2012-02-19 12:34:55'),
 (172456275312,100000,100360,'2012-02-19 12:37:54'),
 (172456647078,100001,100343,'2012-02-19 12:44:06'),
 (172456653843,100001,100343,'2012-02-19 12:44:13'),
 (172456837609,100001,100382,'2012-02-19 12:47:16'),
 (172456978687,100000,100338,'2012-02-19 12:49:37'),
 (172457247968,100001,100349,'2012-02-19 12:54:06'),
 (172457544828,100000,100006,'2012-02-19 12:59:04'),
 (172457547796,100000,100006,'2012-02-19 12:59:07'),
 (172457549640,100000,100006,'2012-02-19 12:59:09'),
 (172457550859,100000,100006,'2012-02-19 12:59:10'),
 (172457552687,100000,100006,'2012-02-19 12:59:12'),
 (172457558406,100000,100006,'2012-02-19 12:59:18'),
 (172457559609,100000,100006,'2012-02-19 12:59:19'),
 (172457560515,100000,100006,'2012-02-19 12:59:20'),
 (172457561718,100000,100006,'2012-02-19 12:59:21'),
 (172457565828,100000,100006,'2012-02-19 12:59:25'),
 (172457566765,100000,100006,'2012-02-19 12:59:26'),
 (172457580343,100001,100006,'2012-02-19 12:59:40'),
 (172457581281,100001,100006,'2012-02-19 12:59:41'),
 (172457582500,100001,100006,'2012-02-19 12:59:42'),
 (172458004156,100000,100126,'2012-02-19 13:06:44'),
 (172458010437,100000,100126,'2012-02-19 13:06:50'),
 (172458014671,100000,100126,'2012-02-19 13:06:54'),
 (172458020343,100000,100126,'2012-02-19 13:07:00'),
 (172458022843,100000,100126,'2012-02-19 13:07:02'),
 (172458032687,100000,100126,'2012-02-19 13:07:12'),
 (172458038687,100000,100126,'2012-02-19 13:07:18'),
 (172458042484,100000,100126,'2012-02-19 13:07:22'),
 (172458438515,100001,100337,'2012-02-19 13:13:57'),
 (172459166109,100000,100366,'2012-02-19 13:26:05'),
 (172459254593,100001,100305,'2012-02-19 13:27:33'),
 (172459277859,100000,100335,'2012-02-19 13:27:57'),
 (172459628328,100000,100297,'2012-02-19 13:33:47'),
 (172460248593,100000,100373,'2012-02-19 13:44:07'),
 (172460356546,100001,100371,'2012-02-19 13:45:55'),
 (172461081046,100001,100364,'2012-02-19 13:58:00'),
 (172461870406,100000,100382,'2012-02-19 14:11:09'),
 (172462746718,100001,100338,'2012-02-19 14:25:45'),
 (172464607640,100001,100126,'2012-02-19 14:56:47'),
 (172464612062,100001,100126,'2012-02-19 14:56:52'),
 (172464621734,100001,100126,'2012-02-19 14:57:01'),
 (172464623859,100001,100126,'2012-02-19 14:57:03'),
 (172464627031,100001,100126,'2012-02-19 14:57:07'),
 (172464630156,100001,100126,'2012-02-19 14:57:10'),
 (172464889859,100000,100357,'2012-02-19 15:01:29'),
 (172464891703,100000,100357,'2012-02-19 15:01:31'),
 (172464892609,100000,100357,'2012-02-19 15:01:32'),
 (172464893171,100000,100357,'2012-02-19 15:01:33'),
 (172464894421,100000,100357,'2012-02-19 15:01:34'),
 (172464897890,100000,100357,'2012-02-19 15:01:37'),
 (172464898515,100000,100357,'2012-02-19 15:01:38'),
 (172464899125,100000,100357,'2012-02-19 15:01:39'),
 (172464900031,100000,100357,'2012-02-19 15:01:40'),
 (172464900625,100000,100357,'2012-02-19 15:01:40'),
 (172464901531,100000,100357,'2012-02-19 15:01:41'),
 (172464902125,100000,100357,'2012-02-19 15:01:42'),
 (172464904000,100000,100357,'2012-02-19 15:01:44'),
 (172464905218,100000,100357,'2012-02-19 15:01:45'),
 (172464906468,100000,100357,'2012-02-19 15:01:46'),
 (172464907671,100000,100357,'2012-02-19 15:01:47'),
 (172464909218,100000,100357,'2012-02-19 15:01:49'),
 (172464910468,100000,100357,'2012-02-19 15:01:50'),
 (172464911078,100000,100357,'2012-02-19 15:01:51'),
 (172464912281,100000,100357,'2012-02-19 15:01:52'),
 (172464915109,100000,100357,'2012-02-19 15:01:55'),
 (172464916000,100000,100357,'2012-02-19 15:01:56'),
 (172464917156,100000,100357,'2012-02-19 15:01:57'),
 (172464917718,100000,100357,'2012-02-19 15:01:57'),
 (172464918609,100000,100357,'2012-02-19 15:01:58'),
 (172464923046,100000,100357,'2012-02-19 15:02:03'),
 (172464923625,100000,100357,'2012-02-19 15:02:03'),
 (172464924203,100000,100357,'2012-02-19 15:02:04'),
 (172464925843,100000,100357,'2012-02-19 15:02:05'),
 (172464926406,100000,100357,'2012-02-19 15:02:06'),
 (172464928578,100000,100357,'2012-02-19 15:02:08'),
 (172464929156,100000,100357,'2012-02-19 15:02:09'),
 (172464929734,100000,100357,'2012-02-19 15:02:09'),
 (172464930625,100000,100357,'2012-02-19 15:02:10'),
 (172464931828,100000,100357,'2012-02-19 15:02:11'),
 (172464932421,100000,100357,'2012-02-19 15:02:12'),
 (172464960250,100001,100363,'2012-02-19 15:02:39'),
 (172465337421,100000,100126,'2012-02-19 15:08:57'),
 (172465339593,100000,100126,'2012-02-19 15:08:59'),
 (172465340812,100000,100126,'2012-02-19 15:09:00'),
 (172465342703,100000,100126,'2012-02-19 15:09:02'),
 (172465343640,100000,100126,'2012-02-19 15:09:03'),
 (172465347750,100000,100126,'2012-02-19 15:09:07'),
 (172465500562,100000,100357,'2012-02-19 15:11:39'),
 (172465992312,100000,100173,'2012-02-19 15:19:51'),
 (172466394203,100000,100372,'2012-02-19 15:26:34'),
 (172466915765,100001,100356,'2012-02-19 15:35:14'),
 (172468284687,100001,100360,'2012-02-19 15:58:03'),
 (172468721203,100000,100006,'2012-02-19 16:05:20'),
 (172468759437,100000,100006,'2012-02-19 16:05:59'),
 (172468774406,100000,100006,'2012-02-19 16:06:14'),
 (172468806750,100000,100006,'2012-02-19 16:06:45'),
 (172468819187,100000,100006,'2012-02-19 16:06:59'),
 (172468826046,100000,100006,'2012-02-19 16:07:06'),
 (172468853984,100000,100006,'2012-02-19 16:07:33'),
 (172468862812,100000,100006,'2012-02-19 16:07:42'),
 (172468876625,100000,100006,'2012-02-19 16:07:55'),
 (172469006671,100000,100006,'2012-02-19 16:10:05'),
 (172469026593,100001,100006,'2012-02-19 16:10:26'),
 (172469329765,100000,100006,'2012-02-19 16:15:28'),
 (172469335734,100000,100006,'2012-02-19 16:15:35'),
 (172469352203,100000,100006,'2012-02-19 16:15:52'),
 (172469370031,100000,100006,'2012-02-19 16:16:10'),
 (172469530359,100000,100379,'2012-02-19 16:18:49'),
 (172469725703,100000,100386,'2012-02-19 16:22:04'),
 (172469732921,100000,100386,'2012-02-19 16:22:12'),
 (172469938875,100000,100006,'2012-02-19 16:25:37'),
 (172469961093,100000,100006,'2012-02-19 16:26:01'),
 (172470222343,100000,100387,'2012-02-19 16:30:21'),
 (172470235531,100000,100387,'2012-02-19 16:30:35'),
 (172470472046,100000,100387,'2012-02-19 16:34:31'),
 (172470487375,100000,100387,'2012-02-19 16:34:47'),
 (172470513234,100000,100387,'2012-02-19 16:35:13'),
 (172470535156,100000,100387,'2012-02-19 16:35:34'),
 (172470575593,100000,100387,'2012-02-19 16:36:15'),
 (172470629765,100000,100387,'2012-02-19 16:37:08'),
 (172470651640,100000,100387,'2012-02-19 16:37:31'),
 (172470662500,100000,100387,'2012-02-19 16:37:42'),
 (172470675656,100000,100387,'2012-02-19 16:37:55'),
 (172470687484,100000,100387,'2012-02-19 16:38:07'),
 (172470708953,100001,100387,'2012-02-19 16:38:27'),
 (172470725937,100001,100387,'2012-02-19 16:38:45'),
 (172470787156,100001,100382,'2012-02-19 16:39:46'),
 (172470818437,100000,100006,'2012-02-19 16:40:18'),
 (172470912359,100000,100374,'2012-02-19 16:41:51'),
 (172470994609,100000,100387,'2012-02-19 16:43:13'),
 (172471083531,100000,100387,'2012-02-19 16:44:42'),
 (172471590875,100000,100387,'2012-02-19 16:53:09'),
 (172471873171,100001,100379,'2012-02-19 16:57:52'),
 (172471913187,100000,100006,'2012-02-19 16:58:33'),
 (172472851640,100001,100006,'2012-02-19 17:14:10'),
 (172472874609,100001,100006,'2012-02-19 17:14:34'),
 (172473462375,100000,100139,'2012-02-19 17:24:22'),
 (172474883312,100001,100360,'2012-02-19 17:48:02'),
 (172476552593,100001,100374,'2012-02-19 18:15:51'),
 (172476782281,100000,100371,'2012-02-19 18:19:41'),
 (172477119875,100000,100387,'2012-02-19 18:25:19'),
 (172477124406,100000,100387,'2012-02-19 18:25:24'),
 (172477128484,100000,100387,'2012-02-19 18:25:28'),
 (172477134187,100000,100387,'2012-02-19 18:25:34'),
 (172477137015,100000,100387,'2012-02-19 18:25:37'),
 (172477140125,100000,100387,'2012-02-19 18:25:40'),
 (172477143312,100000,100387,'2012-02-19 18:25:43'),
 (172477144515,100000,100387,'2012-02-19 18:25:44'),
 (172477145734,100000,100387,'2012-02-19 18:25:45'),
 (172477146625,100000,100387,'2012-02-19 18:25:46'),
 (172477147515,100000,100387,'2012-02-19 18:25:47'),
 (172477149062,100000,100387,'2012-02-19 18:25:49'),
 (172477149953,100000,100387,'2012-02-19 18:25:49'),
 (172477150546,100000,100387,'2012-02-19 18:25:50'),
 (172477151718,100000,100387,'2012-02-19 18:25:51'),
 (172477152312,100000,100387,'2012-02-19 18:25:52'),
 (172479121296,100000,100338,'2012-02-19 18:58:40'),
 (172479403031,100000,100374,'2012-02-19 19:03:23'),
 (172479760312,100001,100357,'2012-02-19 19:09:20'),
 (172480288453,100000,100356,'2012-02-19 19:18:08'),
 (172480350781,100000,100382,'2012-02-19 19:19:10'),
 (172480653093,100000,100379,'2012-02-19 19:24:13'),
 (172480774468,100001,100385,'2012-02-19 19:26:14'),
 (172481188343,100001,100375,'2012-02-19 19:33:08'),
 (172481369437,100001,100389,'2012-02-19 19:36:09'),
 (172481370031,100001,100389,'2012-02-19 19:36:10'),
 (172481370625,100001,100389,'2012-02-19 19:36:10'),
 (172481371218,100001,100389,'2012-02-19 19:36:11'),
 (172481373859,100001,100389,'2012-02-19 19:36:13'),
 (172481475781,100001,100218,'2012-02-19 19:37:55'),
 (172481517281,100000,100337,'2012-02-19 19:38:37'),
 (172482635062,100000,100361,'2012-02-19 19:57:15'),
 (172482670281,100000,100393,'2012-02-19 19:57:50'),
 (172482672750,100000,100393,'2012-02-19 19:57:52'),
 (172482675218,100000,100393,'2012-02-19 19:57:55'),
 (172482744078,100000,100358,'2012-02-19 19:59:04'),
 (172482956171,100001,100359,'2012-02-19 20:02:36'),
 (172483082984,100000,100375,'2012-02-19 20:04:42'),
 (172483348859,100001,100386,'2012-02-19 20:09:08'),
 (172483505187,100001,100297,'2012-02-19 20:11:45'),
 (172483609312,100001,100396,'2012-02-19 20:13:29'),
 (172483984343,100001,100373,'2012-02-19 20:19:44'),
 (172484004984,100001,100391,'2012-02-19 20:20:04'),
 (172484827609,100000,100297,'2012-02-19 20:33:47'),
 (172485415921,100000,100385,'2012-02-19 20:43:35'),
 (172485431031,100000,100363,'2012-02-19 20:43:51'),
 (172485483468,100000,100357,'2012-02-19 20:44:43'),
 (172485658859,100001,100372,'2012-02-19 20:47:38'),
 (172485743906,100001,100390,'2012-02-19 20:49:03'),
 (172485767468,100000,100360,'2012-02-19 20:49:27'),
 (172486035953,100000,100364,'2012-02-19 20:53:55'),
 (172510809796,100000,100380,'2012-02-20 00:00:09'),
 (172511480156,100000,100030,'2012-02-20 00:11:20'),
 (172511490953,100000,100030,'2012-02-20 00:11:30'),
 (172511492171,100000,100030,'2012-02-20 00:11:32'),
 (172511493078,100000,100030,'2012-02-20 00:11:33'),
 (172511495390,100000,100030,'2012-02-20 00:11:35'),
 (172511496312,100000,100030,'2012-02-20 00:11:36'),
 (172511497562,100000,100030,'2012-02-20 00:11:37'),
 (172511499437,100000,100030,'2012-02-20 00:11:39'),
 (172511500671,100000,100030,'2012-02-20 00:11:40'),
 (172511508531,100000,100030,'2012-02-20 00:11:48'),
 (172511510093,100000,100030,'2012-02-20 00:11:50'),
 (172511512359,100000,100030,'2012-02-20 00:11:52'),
 (172511513562,100000,100030,'2012-02-20 00:11:53'),
 (172511520828,100000,100030,'2012-02-20 00:12:00'),
 (172511522656,100000,100030,'2012-02-20 00:12:02'),
 (172511525125,100000,100030,'2012-02-20 00:12:05'),
 (172511529171,100000,100030,'2012-02-20 00:12:09'),
 (172511548812,100000,100030,'2012-02-20 00:12:28'),
 (172511550015,100000,100030,'2012-02-20 00:12:30'),
 (172511550906,100000,100030,'2012-02-20 00:12:30'),
 (172511551796,100000,100030,'2012-02-20 00:12:31'),
 (172511552359,100000,100030,'2012-02-20 00:12:32'),
 (172511552937,100000,100030,'2012-02-20 00:12:32'),
 (172511553812,100000,100030,'2012-02-20 00:12:33'),
 (172511555046,100000,100030,'2012-02-20 00:12:35'),
 (172511555656,100000,100030,'2012-02-20 00:12:35'),
 (172511556562,100000,100030,'2012-02-20 00:12:36'),
 (172511557156,100000,100030,'2012-02-20 00:12:37'),
 (172511557765,100000,100030,'2012-02-20 00:12:37'),
 (172511558359,100000,100030,'2012-02-20 00:12:38'),
 (172511559296,100000,100030,'2012-02-20 00:12:39'),
 (172511559875,100000,100030,'2012-02-20 00:12:39'),
 (172511560796,100000,100030,'2012-02-20 00:12:40'),
 (172511561359,100000,100030,'2012-02-20 00:12:41'),
 (172511564296,100000,100030,'2012-02-20 00:12:44'),
 (172511566875,100000,100030,'2012-02-20 00:12:46'),
 (172511567781,100000,100030,'2012-02-20 00:12:47'),
 (172511568375,100000,100030,'2012-02-20 00:12:48'),
 (172511569312,100000,100030,'2012-02-20 00:12:49'),
 (172511570234,100000,100030,'2012-02-20 00:12:50'),
 (172511570828,100000,100030,'2012-02-20 00:12:50'),
 (172511571734,100000,100030,'2012-02-20 00:12:51'),
 (172511572625,100000,100030,'2012-02-20 00:12:52'),
 (172511573515,100000,100030,'2012-02-20 00:12:53'),
 (172511574390,100000,100030,'2012-02-20 00:12:54'),
 (172511574937,100000,100030,'2012-02-20 00:12:54'),
 (172511577093,100000,100030,'2012-02-20 00:12:57'),
 (172511579906,100000,100030,'2012-02-20 00:12:59'),
 (172511586515,100000,100030,'2012-02-20 00:13:06'),
 (172511595671,100000,100030,'2012-02-20 00:13:15'),
 (172511596562,100000,100030,'2012-02-20 00:13:16'),
 (172511597453,100000,100030,'2012-02-20 00:13:17'),
 (172511612484,100000,100030,'2012-02-20 00:13:32'),
 (172511613421,100000,100030,'2012-02-20 00:13:33'),
 (172511614640,100000,100030,'2012-02-20 00:13:34'),
 (172511615562,100000,100030,'2012-02-20 00:13:35'),
 (172511616453,100000,100030,'2012-02-20 00:13:36'),
 (172511625203,100000,100030,'2012-02-20 00:13:45'),
 (172511634125,100000,100030,'2012-02-20 00:13:54'),
 (172511647031,100000,100030,'2012-02-20 00:14:07'),
 (172511648265,100000,100030,'2012-02-20 00:14:08'),
 (172511649187,100000,100030,'2012-02-20 00:14:09'),
 (172511650109,100000,100030,'2012-02-20 00:14:10'),
 (172511651328,100000,100030,'2012-02-20 00:14:11'),
 (172511652578,100000,100030,'2012-02-20 00:14:12'),
 (172511653812,100000,100030,'2012-02-20 00:14:13'),
 (172511654718,100000,100030,'2012-02-20 00:14:14'),
 (172511656875,100000,100030,'2012-02-20 00:14:16'),
 (172511657796,100000,100030,'2012-02-20 00:14:17'),
 (172511658718,100000,100030,'2012-02-20 00:14:18'),
 (172511677890,100000,100030,'2012-02-20 00:14:37'),
 (172515470343,100000,100338,'2012-02-20 01:17:50'),
 (172515471281,100000,100338,'2012-02-20 01:17:51'),
 (172515472781,100000,100338,'2012-02-20 01:17:52'),
 (172515474640,100000,100338,'2012-02-20 01:17:54'),
 (172515476500,100000,100338,'2012-02-20 01:17:56'),
 (172515478015,100000,100338,'2012-02-20 01:17:58'),
 (172515482109,100000,100338,'2012-02-20 01:18:02'),
 (172515483000,100000,100338,'2012-02-20 01:18:03'),
 (172515484546,100000,100338,'2012-02-20 01:18:04'),
 (172515486359,100000,100338,'2012-02-20 01:18:06'),
 (172515488656,100000,100338,'2012-02-20 01:18:08'),
 (172515489859,100000,100338,'2012-02-20 01:18:09'),
 (172515491718,100000,100338,'2012-02-20 01:18:11'),
 (172515493875,100000,100338,'2012-02-20 01:18:13'),
 (172515497031,100000,100338,'2012-02-20 01:18:17'),
 (172515499515,100000,100338,'2012-02-20 01:18:19'),
 (172515502953,100000,100338,'2012-02-20 01:18:22'),
 (172515504515,100000,100338,'2012-02-20 01:18:24'),
 (172515506375,100000,100338,'2012-02-20 01:18:26'),
 (172515509500,100000,100338,'2012-02-20 01:18:29'),
 (172515511375,100000,100338,'2012-02-20 01:18:31'),
 (172515518625,100000,100338,'2012-02-20 01:18:38'),
 (172515520515,100000,100338,'2012-02-20 01:18:40'),
 (172515521453,100000,100338,'2012-02-20 01:18:41'),
 (172515524593,100000,100338,'2012-02-20 01:18:44'),
 (172515526484,100000,100338,'2012-02-20 01:18:46'),
 (172515527093,100000,100338,'2012-02-20 01:18:47'),
 (172515527984,100000,100338,'2012-02-20 01:18:47'),
 (172515528562,100000,100338,'2012-02-20 01:18:48'),
 (172515530421,100000,100338,'2012-02-20 01:18:50'),
 (172515531953,100000,100338,'2012-02-20 01:18:51'),
 (172517310203,100000,100394,'2012-02-20 01:48:30'),
 (172518839796,100000,100335,'2012-02-20 02:13:59'),
 (172538877390,100001,100139,'2012-02-20 07:47:57'),
 (172538878328,100001,100139,'2012-02-20 07:47:58'),
 (172538884281,100001,100139,'2012-02-20 07:48:04'),
 (172538929843,100001,100139,'2012-02-20 07:48:49'),
 (172538959140,100001,100139,'2012-02-20 07:49:19'),
 (172538996328,100001,100139,'2012-02-20 07:49:56'),
 (172539033375,100001,100139,'2012-02-20 07:50:33'),
 (172539037156,100001,100139,'2012-02-20 07:50:37'),
 (172542487593,100001,100387,'2012-02-20 08:48:07'),
 (172544432625,100001,100360,'2012-02-20 09:20:32'),
 (172544433562,100001,100360,'2012-02-20 09:20:33'),
 (172544435421,100001,100360,'2012-02-20 09:20:35'),
 (172544436968,100001,100360,'2012-02-20 09:20:36'),
 (172544441062,100001,100360,'2012-02-20 09:20:41'),
 (172544441984,100001,100360,'2012-02-20 09:20:41'),
 (172544442890,100001,100360,'2012-02-20 09:20:42'),
 (172544443531,100001,100360,'2012-02-20 09:20:43'),
 (172544444421,100001,100360,'2012-02-20 09:20:44'),
 (172544445328,100001,100360,'2012-02-20 09:20:45'),
 (172544446859,100001,100360,'2012-02-20 09:20:46'),
 (172544448078,100001,100360,'2012-02-20 09:20:48'),
 (172544448640,100001,100360,'2012-02-20 09:20:48'),
 (172544485125,100001,100360,'2012-02-20 09:21:25'),
 (172544485703,100001,100360,'2012-02-20 09:21:25'),
 (172544753421,100001,100396,'2012-02-20 09:25:53'),
 (172544759546,100001,100396,'2012-02-20 09:25:59'),
 (172545152843,100001,100173,'2012-02-20 09:32:32'),
 (172545153390,100001,100173,'2012-02-20 09:32:33'),
 (172545158750,100001,100173,'2012-02-20 09:32:38'),
 (172545160609,100001,100173,'2012-02-20 09:32:40'),
 (172545161500,100001,100173,'2012-02-20 09:32:41'),
 (172545163359,100001,100173,'2012-02-20 09:32:43'),
 (172545168250,100001,100173,'2012-02-20 09:32:48'),
 (172545169781,100001,100173,'2012-02-20 09:32:49'),
 (172545171359,100001,100173,'2012-02-20 09:32:51'),
 (172545618234,100001,100178,'2012-02-20 09:40:18'),
 (172545621687,100001,100178,'2012-02-20 09:40:21'),
 (172545622281,100001,100178,'2012-02-20 09:40:22'),
 (172545623187,100001,100178,'2012-02-20 09:40:23'),
 (172545624406,100001,100178,'2012-02-20 09:40:24'),
 (172545633015,100001,100178,'2012-02-20 09:40:33'),
 (172545633625,100001,100178,'2012-02-20 09:40:33'),
 (172545640656,100001,100178,'2012-02-20 09:40:40'),
 (172545642015,100001,100178,'2012-02-20 09:40:42'),
 (172545642609,100001,100178,'2012-02-20 09:40:42'),
 (172545643843,100001,100178,'2012-02-20 09:40:43'),
 (172545644734,100001,100178,'2012-02-20 09:40:44'),
 (172545645625,100001,100178,'2012-02-20 09:40:45'),
 (172545647453,100001,100178,'2012-02-20 09:40:47'),
 (172545648656,100001,100178,'2012-02-20 09:40:48'),
 (172545649875,100001,100178,'2012-02-20 09:40:49'),
 (172545650468,100001,100178,'2012-02-20 09:40:50'),
 (172545651062,100001,100178,'2012-02-20 09:40:51'),
 (172545652265,100001,100178,'2012-02-20 09:40:52'),
 (172545652843,100001,100178,'2012-02-20 09:40:52'),
 (172545653421,100001,100178,'2012-02-20 09:40:53'),
 (172545654312,100001,100178,'2012-02-20 09:40:54'),
 (172545654890,100001,100178,'2012-02-20 09:40:54'),
 (172545655812,100001,100178,'2012-02-20 09:40:55'),
 (172545656703,100001,100178,'2012-02-20 09:40:56'),
 (172545657593,100001,100178,'2012-02-20 09:40:57'),
 (172545658171,100001,100178,'2012-02-20 09:40:58'),
 (172545659703,100001,100178,'2012-02-20 09:40:59'),
 (172545665390,100001,100178,'2012-02-20 09:41:05'),
 (172545665984,100001,100178,'2012-02-20 09:41:05'),
 (172545666890,100001,100178,'2012-02-20 09:41:06'),
 (172545667468,100001,100178,'2012-02-20 09:41:07'),
 (172545668062,100001,100178,'2012-02-20 09:41:08'),
 (172545668968,100001,100178,'2012-02-20 09:41:08'),
 (172545669562,100001,100178,'2012-02-20 09:41:09'),
 (172545670156,100001,100178,'2012-02-20 09:41:10'),
 (172545676203,100001,100178,'2012-02-20 09:41:16'),
 (172546647656,100001,100373,'2012-02-20 09:57:27'),
 (172546649546,100001,100373,'2012-02-20 09:57:29'),
 (172546651062,100001,100373,'2012-02-20 09:57:31'),
 (172546653421,100001,100373,'2012-02-20 09:57:33'),
 (172546744296,100001,100382,'2012-02-20 09:59:04'),
 (172548403531,100001,100361,'2012-02-20 10:26:43'),
 (172548574406,100001,100391,'2012-02-20 10:29:34'),
 (172548596671,100001,100338,'2012-02-20 10:29:56'),
 (172548597875,100001,100338,'2012-02-20 10:29:57'),
 (172549054250,100001,100393,'2012-02-20 10:37:34'),
 (172549349578,100001,100218,'2012-02-20 10:42:29'),
 (172549486812,100001,100379,'2012-02-20 10:44:46'),
 (172549524656,100001,100097,'2012-02-20 10:45:24'),
 (172549527406,100001,100097,'2012-02-20 10:45:27'),
 (172549528406,100001,100097,'2012-02-20 10:45:28'),
 (172549529593,100001,100097,'2012-02-20 10:45:29'),
 (172549530156,100001,100097,'2012-02-20 10:45:30'),
 (172549531046,100001,100097,'2012-02-20 10:45:31'),
 (172549531625,100001,100097,'2012-02-20 10:45:31'),
 (172549532515,100001,100097,'2012-02-20 10:45:32'),
 (172549534656,100001,100097,'2012-02-20 10:45:34'),
 (172549558343,100001,100097,'2012-02-20 10:45:58'),
 (172549560203,100001,100097,'2012-02-20 10:46:00'),
 (172549561421,100001,100097,'2012-02-20 10:46:01'),
 (172549562625,100001,100097,'2012-02-20 10:46:02'),
 (172549566062,100001,100097,'2012-02-20 10:46:06'),
 (172549569312,100001,100097,'2012-02-20 10:46:09'),
 (172549569890,100001,100097,'2012-02-20 10:46:09'),
 (172549570468,100001,100097,'2012-02-20 10:46:10'),
 (172549572281,100001,100097,'2012-02-20 10:46:12'),
 (172549572875,100001,100097,'2012-02-20 10:46:12'),
 (172549653984,100001,100132,'2012-02-20 10:47:33'),
 (172549891093,100001,100363,'2012-02-20 10:51:31'),
 (172549893296,100001,100363,'2012-02-20 10:51:33'),
 (172549897406,100001,100363,'2012-02-20 10:51:37'),
 (172549899890,100001,100363,'2012-02-20 10:51:39'),
 (172549900453,100001,100363,'2012-02-20 10:51:40'),
 (172549901343,100001,100363,'2012-02-20 10:51:41'),
 (172549902250,100001,100363,'2012-02-20 10:51:42'),
 (172549903140,100001,100363,'2012-02-20 10:51:43'),
 (172551679500,100001,100359,'2012-02-20 11:21:18'),
 (172551740312,100001,100375,'2012-02-20 11:22:19'),
 (172551774421,100001,100370,'2012-02-20 11:22:54'),
 (172551833000,100001,100163,'2012-02-20 11:23:53'),
 (172551838359,100001,100163,'2012-02-20 11:23:58'),
 (172551844625,100001,100163,'2012-02-20 11:24:04'),
 (172551846781,100001,100163,'2012-02-20 11:24:06'),
 (172551848000,100001,100163,'2012-02-20 11:24:08'),
 (172551849218,100001,100163,'2012-02-20 11:24:09'),
 (172551850125,100001,100163,'2012-02-20 11:24:10'),
 (172551851984,100001,100163,'2012-02-20 11:24:11'),
 (172551852875,100001,100163,'2012-02-20 11:24:12'),
 (172551853781,100001,100163,'2012-02-20 11:24:13'),
 (172551854671,100001,100163,'2012-02-20 11:24:14'),
 (172551855859,100001,100163,'2012-02-20 11:24:15'),
 (172551857546,100001,100163,'2012-02-20 11:24:17'),
 (172552294406,100001,100366,'2012-02-20 11:31:33'),
 (172552564546,100001,100030,'2012-02-20 11:36:04'),
 (172552567015,100001,100030,'2012-02-20 11:36:07'),
 (172552569046,100001,100030,'2012-02-20 11:36:09'),
 (172552569937,100001,100030,'2012-02-20 11:36:09'),
 (172552570875,100001,100030,'2012-02-20 11:36:10'),
 (172552662437,100001,100181,'2012-02-20 11:37:42'),
 (172552665609,100001,100181,'2012-02-20 11:37:45'),
 (172552667468,100001,100181,'2012-02-20 11:37:47'),
 (172552669671,100001,100181,'2012-02-20 11:37:49'),
 (172552673093,100001,100181,'2012-02-20 11:37:53'),
 (172552674656,100001,100181,'2012-02-20 11:37:54'),
 (172552676156,100001,100181,'2012-02-20 11:37:56'),
 (172552682703,100001,100181,'2012-02-20 11:38:02'),
 (172553124562,100001,100371,'2012-02-20 11:45:23'),
 (172553132937,100001,100367,'2012-02-20 11:45:32'),
 (172553141515,100001,100367,'2012-02-20 11:45:41'),
 (172553153656,100001,100367,'2012-02-20 11:45:53'),
 (172553159375,100001,100367,'2012-02-20 11:45:59'),
 (172553162843,100001,100367,'2012-02-20 11:46:02'),
 (172553166265,100001,100367,'2012-02-20 11:46:06'),
 (172553171671,100001,100367,'2012-02-20 11:46:11'),
 (172553308750,100000,100218,'2012-02-20 11:48:27'),
 (172553560171,100001,100275,'2012-02-20 11:52:40'),
 (172553565562,100001,100275,'2012-02-20 11:52:45'),
 (172554111125,100001,100349,'2012-02-20 12:01:50'),
 (172554450953,100000,100366,'2012-02-20 12:07:29'),
 (172554657187,10###############################################################################
# Copyright (c) 2009, 2014 Sybase, Inc. and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
# 	Sybase, Inc. - initial API and implementation
#	Actuate Corporation - fix for Bug 245758
#
# Properties for feature: org.eclipse.datatools.connectivity.doc.user
# Version: 1.6.1
#
###############################################################################
            
featureName = Data Tools Platform Connectivity Documentation
#
providerName = Eclipse Data Tools Platform
#
featureDesc = Data Tools Platform Documentation Feature
#
featureCopyright = Copyright (c) 2009 Sybase, Inc. and others. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
#
featureLicenseURL = license.html
#
license=\
Eclipse Foundation Software User Agreement\n\
April 9, 2014\n\
\n\
Usage Of Content\n\
\n\
THE ECLIPSE FOUNDATION MAKES AVAILABLE SOFTWARE, DOCUMENTATION, INFORMATION AND/OR\n\
OTHER MATERIALS FOR OPEN SOURCE PROJECTS (COLLECTIVELY "CONTENT").\n\
USE OF THE CONTENT IS GOVERNED BY THE TERMS AND CONDITIONS OF THIS\n\
AGREEMENT AND/OR THE TERMS AND CONDITIONS OF LICENSE AGREEMENTS OR\n\
NOTICES INDICATED OR REFERENCED BELOW.  BY USING THE CONTENT, YOU\n\
AGREE THAT YOUR USE OF THE CONTENT IS GOVERNED BY THIS AGREEMENT\n\
AND/OR THE TERMS AND CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS\n\
OR NOTICES INDICATED OR REFERENCED BELOW.  IF YOU DO NOT AGREE TO THE\n\
TERMS AND CONDITIONS OF THIS AGREEMENT AND THE TERMS AND CONDITIONS\n\
OF ANY APPLICABLE LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED\n\
BELOW, THEN YOU MAY NOT USE THE CONTENT.\n\
\n\
Applicable Licenses\n\
\n\
Unless otherwise indicated, all Content made available by the\n\
Eclipse Foundation is provided to you under the terms and conditions of\n\
the Eclipse Public License Version 1.0 ("EPL"). A copy of the EPL is\n\
provided with this Content and is also available at http://www.eclipse.org/legal/epl-v10.html.\n\
For purposes of the EPL, "Program" will mean the Content.\n\
\n\
Content includes, but is not limited to, source code, object code,\n\
documentation and other files maintained in the Eclipse Foundation source code\n\
repository ("Repository") in software modules ("Modules") and made available\n\
as downloadable archives ("Downloads").\n\
\n\
       - Content may be structured and packaged into modules to facilitate delivering,\n\
         extending, and upgrading the Content. Typical modules may include plug-ins ("Plug-ins"),\n\
         plug-in fragments ("Fragments"), and features ("Features").\n\
       - Each Plug-in or Fragment may be packaged as a sub-directory or JAR (Java(TM) ARchive)\n\
         in a directory named "plugins".\n\
       - A Feature is a bundle of one or more Plug-ins and/or Fragments and associated material.\n\
         Each Feature may be packaged as a sub-directory in a directory named "features".\n\
         Within a Feature, files named "feature.xml" may contain a list of the names and version\n\
         numbers of the Plug-ins and/or Fragments associated with that Feature.\n\
       - Features may also include other Features ("Included Features"). Within a Feature, files\n\
         named "feature.xml" may contain a list of the names and version numbers of Included Features.\n\
\n\
The terms and conditions governing Plug-ins and Fragments should be\n\
contained in files named "about.html" ("Abouts"). The terms and\n\
conditions governing Features and Included Features should be contained\n\
in files named "license.html" ("Feature Licenses"). Abouts and Feature\n\
Licenses may be located in any directory of a Download or Module\n\
including, but not limited to the following locations:\n\
\n\
       - The top-level (root) directory\n\
       - Plug-in and Fragment directories\n\
       - Inside Plug-ins and Fragments packaged as JARs\n\
       - Sub-directories of the directory named "src" of certain Plug-ins\n\
       - Feature directories\n\
\n\
Note: if a Feature made available by the Eclipse Foundation is installed using the\n\
Provisioning Technology (as defined below), you must agree to a license ("Feature \n\
Update License") during the installation process. If the Feature contains\n\
Included Features, the Feature Update License should either provide you\n\
with the terms and conditions governing the Included Features or inform\n\
you where you can locate them. Feature Update Licenses may be found in\n\
the "license" property of files named "feature.properties" found within a Feature.\n\
Such Abouts, Feature Licenses, and Feature Update Licenses contain the\n\
terms and conditions (or references to such terms and conditions) that\n\
govern your use of the associated Content in that directory.\n\
\n\
THE ABOUTS, FEATURE LICENSES, AND FEATURE UPDATE LICENSES MAY REFER\n\
TO THE EPL OR OTHER LICENSE AGREEMENTS, NOTICES OR TERMS AND CONDITIONS.\n\
SOME OF THESE OTHER LICENSE AGREEMENTS MAY INCLUDE (BUT ARE NOT LIMITED TO):\n\
\n\
       - Eclipse Distribution License Version 1.0 (available at http://www.eclipse.org/licenses/edl-v1.0.html)\n\
       - Common Public License Version 1.0 (available at http://www.eclipse.org/legal/cpl-v10.html)\n\
       - Apache Software License 1.1 (available at http://www.apache.org/licenses/LICENSE)\n\
       - Apache Software License 2.0 (available at http://www.apache.org/licenses/LICENSE-2.0)\n\
       - Mozilla Public License Version 1.1 (available at http://www.mozilla.org/MPL/MPL-1.1.html)\n\
\n\
IT IS YOUR OBLIGATION TO READ AND ACCEPT ALL SUCH TERMS AND CONDITIONS PRIOR\n\
TO USE OF THE CONTENT. If no About, Feature License, or Feature Update License\n\
is provided, please contact the Eclipse Foundation to determine what terms and conditions\n\
govern that particular Content.\n\
\n\
\n\Use of Provisioning Technology\n\
\n\
The Eclipse Foundation makes available provisioning software, examples of which include,\n\
but are not limited to, p2 and the Eclipse Update Manager ("Provisioning Technology") for\n\
the purpose of allowing users to install software, documentation, information and/or\n\
other materials (collectively "Installable Software"). This capability is provided with\n\
the intent of allowing such users to install, extend and update Eclipse-based products.\n\
Information about packaging Installable Software is available at\n\
http://eclipse.org/equinox/p2/repository_packaging.html ("Specification").\n\
\n\
You may use Provisioning Technology to allow other parties to install Installable Software.\n\
You shall be responsible for enabling the applicable license agreements relating to the\n\
Installable Software to be presented to, and accepted by, the users of the Provisioning Technology\n\
in accordance with the Specification. By using Provisioning Technology in such a manner and\n\
making it available in accordance with the Specification, you further acknowledge your\n\
agreement to, and the acquisition of all necessary rights to permit the following:\n\
\n\
       1. A series of actions may occur ("Provisioning Process") in which a user may execute\n\
          the Provisioning Technology on a machine ("Target Machine") with the intent of installing,\n\
          extending or updating the functionality of an Eclipse-based product.\n\
       2. During the Provisioning Process, the Provisioning Technology may cause third party\n\
          Installable Software or a portion thereof to be accessed and copied to the Target Machine.\n\
       3. Pursuant to the Specification, you will provide to the user the terms and conditions that\n\
          govern the use of the Installable Software ("Installable Software Agreement") and such\n\
          Installable Software Agreement shall be accessed from the Target Machine in accordance\n\
          with the Specification. Such Installable Software Agreement must inform the user of the\n\
          terms and conditions that govern the Installable Software and must solicit acceptance by\n\
          the end user in the manner prescribed in such Installable Software Agreement. Upon such\n\
          indication of agreement by the user, the provisioning Technology will complete installation\n\
          of the Installable Software.\n\
\n\
Cryptography\n\
\n\
Content may contain encryption software. The country in which you are\n\
currently may have restrictions on the import, possession, and use,\n\
and/or re-export to another country, of encryption software. BEFORE\n\
using any encryption software, please check the country's laws,\n\
regulations and policies concerning the import, possession, or use, and\n\
re-export of encryption software, to see if this is permitted.\n\
\n\
Java and all Java-based trademarks are trademarks of Oracle Corporation in the United States, other countries, or both.\n
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    16,1),
 (148354678281,23,0),
 (148354695421,4,2),
 (148354695421,16,1),
 (148354695421,23,0),
 (148354706906,4,2),
 (148354706906,16,1),
 (148354706906,23,0),
 (148354722406,4,2),
 (148354722406,16,1),
 (148354722406,23,0),
 (148354728406,4,2),
 (148354728406,16,1),
 (148354728406,23,0),
 (148354737734,4,2),
 (148354737734,16,1),
 (148354737734,23,0),
 (148354752000,4,2),
 (148354752000,16,1),
 (148354752000,23,0),
 (148354776578,4,2),
 (148354776578,16,1),
 (148354776578,23,0),
 (148354791796,4,2),
 (148354791796,16,1),
 (148354791796,23,0),
 (148354802781,4,2),
 (148354802781,16,1),
 (148354802781,23,0),
 (148354823390,4,2),
 (148354823390,16,1),
 (148354823390,23,0),
 (148354836156,4,2),
 (148354836156,16,1),
 (148354836156,23,0),
 (148354901265,4,2),
 (148354901265,16,1),
 (148354901265,23,0),
 (148354955718,4,2),
 (148354955718,16,1),
 (148354955718,23,0),
 (148354980953,4,2),
 (148354980953,16,1),
 (148354980953,23,0),
 (148355020359,4,2),
 (148355020359,16,1),
 (148355020359,23,0),
 (148355031578,4,2),
 (148355031578,16,1),
 (148355031578,23,0),
 (148355045296,4,2),
 (148355045296,16,1),
 (148355045296,23,0),
 (148355053984,4,2),
 (148355053984,16,1),
 (148355053984,23,0),
 (148355062234,4,2),
 (148355062234,16,1),
 (148355062234,23,0),
 (148355172296,4,2),
 (148355172296,16,1),
 (148355172296,23,0),
 (148355249296,4,2),
 (148355249296,16,1),
 (148355249296,23,0),
 (148355284281,4,2),
 (148355284281,16,1),
 (148355284281,23,2),
 (148355300875,4,2),
 (148355300875,16,1),
 (148355300875,23,2),
 (148355329359,4,2),
 (148355329359,16,1),
 (148355329359,23,2),
 (148355577531,4,2),
 (148355577531,16,1),
 (148355577531,23,2),
 (148355650921,4,1),
 (148355650921,16,1),
 (148355650921,23,2),
 (148355671546,4,1),
 (148355671546,16,1),
 (148355671546,23,2),
 (148355686921,4,2),
 (148355686921,16,1),
 (148355686921,23,2),
 (148357218718,4,2),
 (148357218718,16,1),
 (148357218718,23,0),
 (148357221359,4,2),
 (148357221359,16,1),
 (148357221359,23,0),
 (148357225109,4,2),
 (148357225109,16,1),
 (148357225109,23,0),
 (148560103625,4,2),
 (148560103625,16,1),
 (148560103625,23,0),
 (148560520906,4,2),
 (148560520906,16,1),
 (148560520906,23,0),
 (148560536968,4,1),
 (148560536968,16,1),
 (148560536968,23,0),
 (148561293953,4,2),
 (148561293953,16,1),
 (148561293953,23,0),
 (148561298000,4,2),
 (148561298000,16,1),
 (148561298000,23,0),
 (148561298921,4,2),
 (148561298921,16,1),
 (148561298921,23,0),
 (148562016687,4,2),
 (148562016687,16,1),
 (148562016687,23,0),
 (148562031093,4,1),
 (148562031093,16,1),
 (148562031093,23,0),
 (148564322906,4,2),
 (148564322906,16,1),
 (148564322906,23,0),
 (148564338546,4,1),
 (148564338546,16,1),
 (148564338546,23,0),
 (169280250500,4,2),
 (169280250500,16,1),
 (169280250500,23,0),
 (169280254515,4,2),
 (169280254515,16,1),
 (169280254515,23,0),
 (169280259468,4,2),
 (169280259468,16,1),
 (169280259468,23,0),
 (169280268234,4,1),
 (169280268234,16,1),
 (169280268234,23,0),
 (169280271031,4,1),
 (169280271031,16,1),
 (169280271031,23,0),
 (169280274468,4,1),
 (169280274468,16,1),
 (169280274468,23,0),
 (169280276671,4,1),
 (169280276671,16,1),
 (169280276671,23,0),
 (169280278859,4,1),
 (169280278859,16,1),
 (169280278859,23,0),
 (169280286578,4,2),
 (169280286578,16,1),
 (169280286578,23,0),
 (169280288453,4,2),
 (169280288453,16,1),
 (169280288453,23,0),
 (169280455531,4,2),
 (169280455531,16,1),
 (169280455531,23,0),
 (169280458953,4,2),
 (169280458953,16,1),
 (169280458953,23,0),
 (169280496750,4,2),
 (169280496750,16,1),
 (169280496750,23,0),
 (169280498906,4,2),
 (169280498906,16,1),
 (169280498906,23,0),
 (169280500765,4,2),
 (169280500765,16,1),
 (169280500765,23,0),
 (169280671265,4,2),
 (169280671265,16,1),
 (169280671265,23,2),
 (169300526343,4,1),
 (169300526343,16,1),
 (169300526343,23,2),
 (169348731015,4,2),
 (169348731015,16,1),
 (169348731015,23,2),
 (169348767265,4,2),
 (169348767265,16,1),
 (169348767265,23,2),
 (169348788156,4,1),
 (169348788156,16,1),
 (169348788156,23,2),
 (169348808015,4,2),
 (169348808015,16,1),
 (169348808015,23,2),
 (169348860812,4,1),
 (169348860812,102  Clave duplicada con duplicacion permitida.
04  Longitud de registro incorrecta.
10  Fin de archivo.
14  Quiere acceder a un registro fuera del fin del archivo.
21  Fuera de secuencia grabando archivo de acceso secuencial.
22  Clave duplicada.
23  Clave no existe.
24  Falta de espacio en disco.
30  Archivo inexistente o no puede abrir archivo.
34  Falta de espacio en disco.
35  Archivo inexistente.
37  Acceso denegado al archivo.
38  No puede abrir archivo. Archivo Lockeado.
39  Se detecto un conflicto con los atributos del archivo.
41  Se quiere abrir un archivo ya abierto.
42  Se quiere Cerrar un archivo no abierto.
43  Se quiere borrar o regrabar un registro no leido.
44  Se intenta grabar registro de longitud incorrecta.
46  No se puede leer el proximo registro.
47  Operacion invalida.
48  Operacion invalida.
49  Operacion invalida.
9002Archivo no abierto.
9004Nombre de archivo invalido.
9005Nombre de dispositivo invalido.
9006Se intenta grabar un archivo abierto para leer.
9007No hay mas espacio en disco.
9008Se intenta leer un archivo abierto para grabacion.
9009No hay mas lugar en el directorio.
9010No se especifico el nombre del archivo.
9012Se intenta abrir un archivo ya abierto.
9013No se encontro archivo.
9014Demasiados archivos abiertos simultaneamente.
9015Demasiados archivos indexados abiertos.
9016Demasiados archivos de dispositivos abiertos.
9017Error en registro.
9018Fin de archivo antes de fin de registro o modo erroneo.
9019Error regrabando. Modo de apertura/acceso a archivo invalido.
9020Dispositivo ocupado.
9021El archivo es un directorio.
9022No puede o es ilegal el modo de abrir el archivo.
9023No puede o es ilegal el modo de cerrar el archivo.
9024Error de lectura/grabacion de disco.
9025Error de dato del sistema operativo.
9026Error de lectura/grabacion de bloque.
9027Dispositivo no disponible.
9028No hay espacio en ese dispositivo.
9029Se intenta borrar un archivo todavia abierto.
9030Archivo de sistema es solo de lectura.
9031No es el propietario de este archivo.
9032Demasiados archivos indexados.
9033Error fisico de lectura/grabacion.
9034Modo o descriptor de archivo incorrecto.
9035Se intenta acceder a un archivo con permiso incorrecto.
9036El archivo ya existe.
9037Acceso a archivo denegado.
9038Disco no compatible.
9039Archivo no compatible.
9041Archivo indexado corrupto.
9043Falta archivo de informacion de archivo indexado.
9047Fuera de rango en estructura indexada.
9065Archivo lockeado.
9066Se intenta agregar registros duplicados en archivo indexado.
9067Archivo indexado no abierto.
9068Registro lockeado.
9069Argumento ilegal para el modulo ISAM.
9070Demasiados archivos indexados abiertos.
9071Formato de archivo indexado erroneo.
9072Fin de archivo indexado.
9073No encontro registro en archivo indexado.
9074Registro no corriente en archivo indexado.
9075Nombre de archivo indexado de datos muy largo.
9076No puede crear archivo lock en directorio ISAM.
9077Error interno en modulo ISAM.
9078Descripcion de clave ilegal en archivo indexado.
9081Clave ya existe en archivo indexado.
9100Operacion de archivo invalida.
9101Operacion de archivo indexado invalida.
9102Numero de registros no enteros en archivo secuencial.
9104Nombre de archivo nulo.
9129Se intenta leer registro 0 de archivo relativo.
9135El archivo no debe existir y existe.
9138Archivo cerrado con lock. No puede abrirse.
9139Longitud de registro o clave inconsistente.
9141Se quiere abrir un archivo ya abierto.
9142Se quiere Cerrar un archivo no abierto.
9143Se quiere borrar o regrabar un registro no leido.
9144Se intenta grabar registro de longitud incorrecta.
9146No se puede leer el proximo registro.
9147Operacion invalida.
9148Operacion invalida.
9149Operacion invalida.
9151Lectura al azar en archivo secuencial.
9152Regrabacion en archivo no abierto para lectura/grabacion.
9158Se intenta regrabar un archivo secuencial de linea.
9159Archivo secuencial de linea malformado.
9188Nombre de archivo demasiado largo.
9194Archivo demasiado grande.
9195Se intenta borrar o regrabar registro no leido.
9196Numero de registro demasiado grande.
9208Error en sistema multiusuario.
9209Error de comunicacion en la red.
9210Archivo cerrado con lock.
9213Demasiados locks.
9219Se excedio el limite del S.O. de compartir archivos.
9220No se puede ejecutar mas de un SORT/MERGE.
9221Error de SORT/MERGE.
9222Error de SORT/MERGE.
9223Error de SORT/MERGE.
                                                                                                 �N��B�гg �{����~l HY���.��|f
�7of��ՠ�L@�h�f�R�Y����ѹE��������Ϝ�g�L*�����0݊dTw��]^����?��Ӛ��奔";l򰡀��G&,	d?���.	�s��*�����!���)�P]��	�,O ��f�bwS�TП���q��j�Kl.Z3�M��?���y�	P<����?�1rW����\��[��H��x�]�& ��M��,nſjC�C"k�������E��c�6t	"�,�)�%ͺ�蜩>����<:JW �y��Ȟ!w	t.|?Ό0S	�$;`�d��n����l1��L ��?Lⳙ���u�CL���0B>��O�B��Ǉ`�r �	)���'�aN<p8t�#�/�;#�C� {�W^y%��S���i���\c<����ǘ�f�;��h�n���br~TQ��^FsY��˖\E�衇~��_e�� �`����g�}��;b�߇<�!K��Ǧ��gA<   *��z�]�zW^arWA �u���)�!s�̢���w��w��( =�� �F5Ġ�J��w���h���G^	��&ÙGˬ^�>蠃p&�|����Moz�ŵH :����y�s�q�{��PRcc)��BF(�#���;\s�5��g����c?�^�W���Z��R��x�hܘ��~�#��Z��O~�@BT���4H~��< ��}?8h�9��+�ϼ�s�����w?�u�����g�羟ր�{
\  �eT�σ��3��T��8��D#�� �%�\>�p#���mz�E ���u�Y���oڴ���2G�M'=K.� F`���f~N;�%~�-ڔG'_���
" ��#��}�ݗ�|v�$)�BW���3�x�C�S'�U�J|��מ��0�*�2Nj�Gp�}
����������1;<�����mx�`���z2�X���йx�ٹr�w�P�_��\�����ufr�D@c��#�����-ߏb0W*֞"5A"3Qc7Ђٴ�9���op�	�B�ܞ�`y�^�?�1��l�!�
96
�9
�z�j��X(��ˇy����o��G1�a$�>�oy�[֯_O]d?G�"|Σ�h ���w�G���ɽȸJ�E&�gm�	_�VԕH����dA{>����\l����#�d�
Mz�A��ט�<�����ǎ�򾊝~�vp�F���o���@�h�-(�8>�G!��l�0�c�����y�P��#h��!�����?��Z#
�D��>���s�ISX$�B����1l{ @x���Z����R���bј�C1X�8�ꎚ���/�U�� �	�e�b�lu� ���%@h�ȋAvx�2xt0Aj�;�FFtM1�r�
|83�,�	� �}�F�% =(�D��	|-�Se���S� o㾟��T^q����'���g����1hr����\������;��Z��w�_U���GF9u��_�����ѭ8� �4��ew�6���P��Ł5|?Pii�~���g1�0���P@)ȼ�կ����y��Y )���!)��C���_��L���DI�[�܀� �s� L�]|���gO�ɂGg��x|�;�<C�'>񉥴瓳5�pc��Kq�"�{ �A~��_��)C�z�lC67�8� S��X.=5�4)�q-q�^����Ux̍R9��q���c	ox�x�	!L�Y�`Lo�P�04-�=���4y2�	 0�c�
U���y�k�>-`�ls��1T�)WǼ�-/yz�-A�?s(F :7�l��Īg�s���1v�ٿ��	.X8
����`7�� A.�T�b�����z���x��@qJ���� D�@�p������7��/o�(O����ѳ
�����	g�}v��5مb
��I�::��9���%�?mp-�	���W@�r��].��i�.���g?��n� ���Ch�ȎO�� �1���~��z������[GCF�җ��քF������8�3ñ��� .���h{⑏|�U�����i?����hx��{�X��)�����~��}��"<4C��,�2�`Wy���ToR`�������`�����Y�B2� �mo'�l��+�ŉ`�G���#���|??:�������%~Hon`a	��0R ��������@�(����o?�,��d���'=I��`���5k���5#���>'`1�����=%,������q����	��Y� -�j$�f��}���@���z� ���p2�L��� ���k_�Z>��*d$�QX�S�h�9���A�>߭~��e�/Ę���1��c���6ओN�?�:N���:!6? D����Y;���=��_L�L� !��{��&���|&o�Z]F�`�XP�r	�"�#R4{Q�=(��3VQ9�Z�H��>�>���J�~)�8<����w���E]�'<A�(�����	+���Ql#��3����e/�T	�a����@�+`�c�� ��\Bb��
�&�L[y%�~�zu@#Ѓ����a! P�¼�cz0��p�� 󰊌b��
�4�0M� 8܏���B@\��!�6���q��́6G�
DG}4oՉ|M�U0#�%)�D�O�1�� hܓ��z˳��K���m�1lq�_-���A.gc���#���muV�TR�����x��$H�w��FNn���~�A�H��Zd�Ķt*V�߯=���|��|�S�
F�&��\H|�Rk��,X�/������q0 ��L
P�����A�7S�m�El�Y/�)/�%��iV�D�(pl�@��མ%�}��+�9%��G�����A��|� TA�ɂ���?bAe���$5����իy���������:�å� tZBp
�U�zc�@s4h��W8"P�K^٢+�b����~�x��ҏIɄ�Cw��;d�/�#�_z��~4�ڌ9�3{��l8���|?z�)/����.����s6&��"����a���V��m��U�p	����!��7>p�����G�4�����x2����1>ie#ܗ���L�St�灃Ḅ_�
͹o>�&��e���"��$��.�,]�a{��XO����<3����`�����q^�fO2�x%®;h �_���%ex���[�����hQ��'�s>z�"���� 9��x���)[q��f7�=<65	��E��=}}���,h	cD|)G�K�h���$5��q�{�������'�_wI%����Z��9���d��g޿r�J�d')����6�� <p�a6t�~�\��?G����ue����R��~�	��ϯ���>�h�G�`�ǔ{�1g��{P�_¼��?�`$t�o��b���&�����61),
 (169469239078,23,0),
 (169470169484,4,1),
 (169470169484,16,1),
 (169470169484,23,2),
 (169472498000,4,2),
 (169472498000,16,1),
 (169472498000,23,2),
 (169472507843,4,2),
 (169472507843,16,1),
 (169472507843,23,2),
 (169472527812,4,2),
 (169472527812,16,1),
 (169472527812,23,2),
 (169472580031,4,2),
 (169472580031,16,1),
 (169472580031,23,2),
 (169473860359,4,2),
 (169473860359,16,1),
 (169473860359,23,2),
 (169474851796,4,2),
 (169474851796,16,1),
 (169474851796,23,0),
 (169474956187,4,2),
 (169474956187,16,1),
 (169474956187,23,2),
 (169475405203,4,2),
 (169475405203,16,1),
 (169475405203,23,0),
 (169475409015,4,2),
 (169475409015,16,1),
 (169475409015,23,0),
 (169475411171,4,2),
 (169475411171,16,1),
 (169475411171,23,0),
 (169475449281,4,2),
 (169475449281,16,1),
 (169475449281,23,0),
 (169475450859,4,2),
 (169475450859,16,1),
 (169475450859,23,0),
 (169475452390,4,2),
 (169475452390,16,1),
 (169475452390,23,0),
 (169475453328,4,2),
 (169475453328,16,1),
 (169475453328,23,0),
 (169475471390,4,2),
 (169475471390,16,1),
 (169475471390,23,0),
 (169475473187,4,2),
 (169475473187,16,1),
 (169475473187,23,0),
 (169475581609,4,2),
 (169475581609,16,1),
 (169475581609,23,0),
 (169475583828,4,2),
 (169475583828,16,1),
 (169475583828,23,0),
 (169475587078,4,2),
 (169475587078,16,1),
 (169475587078,23,0),
 (169476009187,4,2),
 (169476009187,16,1),
 (169476009187,23,0),
 (169476012281,4,2),
 (169476012281,16,1),
 (169476012281,23,0),
 (169476013531,4,2),
 (169476013531,16,1),
 (169476013531,23,0),
 (169476653312,4,2),
 (169476653312,16,1),
 (169476653312,23,0),
 (169476654843,4,2),
 (169476654843,16,1),
 (169476654843,23,0),
 (169476657343,4,2),
 (169476657343,16,1),
 (169476657343,23,0),
 (169476661093,4,2),
 (169476661093,16,1),
 (169476661093,23,2),
 (169476678218,4,1),
 (169476678218,16,1),
 (169476678218,23,2),
 (169476683421,4,1),
 (169476683421,16,1),
 (169476683421,23,0),
 (169477531390,4,2),
 (169477531390,16,1),
 (169477531390,23,2),
 (169477532421,4,1),
 (169477532421,16,1),
 (169477532421,23,2),
 (169477599203,4,2),
 (169477599203,16,1),
 (169477599203,23,2),
 (169483777937,4,1),
 (169483777937,16,1),
 (169483777937,23,2),
 (169545331937,4,1),
 (169545331937,16,1),
 (169545331937,23,0),
 (169555747859,4,2),
 (169555747859,16,1),
 (169555747859,23,0),
 (169555750828,4,2),
 (169555750828,16,1),
 (169555750828,23,0),
 (169555753328,4,2),
 (169555753328,16,1),
 (169555753328,23,0),
 (169556991406,4,2),
 (169556991406,16,1),
 (169556991406,23,0),
 (169556993671,4,2),
 (169556993671,16,1),
 (169556993671,23,0),
 (169557019546,4,2),
 (169557019546,16,1),
 (169557019546,23,0),
 (169557022671,4,2),
 (169557022671,16,1),
 (169557022671,23,0),
 (169557028640,4,2),
 (169557028640,16,1),
 (169557028640,23,0),
 (169557032078,4,2),
 (169557032078,16,1),
 (169557032078,23,0),
 (169557038031,4,2),
 (169557038031,16,1),
 (169557038031,23,0),
 (169557040500,4,2),
 (169557040500,16,1),
 (169557040500,23,0),
 (169557042687,4,2),
 (169557042687,16,1),
 (169557042687,23,0),
 (169558040046,4,2),
 (169558040046,16,1),
 (169558040046,23,0),
 (169558047968,4,2),
 (169558047968,16,1),
 (169558047968,23,0),
 (169558051453,4,2),
 (169558051453,16,1),
 (169558051453,23,0),
 (169558183562,4,2),
 (169558183562,16,1),
 (169558183562,23,0),
 (169558444406,4,2),
 (169558444406,16,1),
 (169558444406,23,0),
 (169558446375,4,2),
 (169558446375,16,1),
 (169558446375,23,0),
 (169558447265,4,2),
 (169558447265,16,1),
 (169558447265,23,0),
 (169558448500,4,2),
 (169558448500,16,1),
 (169558448500,23,0),
 (169558449406,4,2),
 (169558449406,16,1),
 (169558449406,23,0),
 (169558461562,4,2),
 (169558461562,16,1),
 (169558461562,23,0),
 (169558463078,4,2),
 (169558463078,16,1),
 (169558463078,23,0),
 (169558464625,4,2),
 (169558464625,16,1),
 (169558464625,23,0),
 (169558466171,4,2),
 (169558466171,16,1),
 (169558466171,23,0),
 (169558470265,4,2),
 (169558470265,16,1),
 (169558470265,23,0),
 (169558471812,4,2),
 (169558471812,16,1),
 (169558471812,23,0),
 (169558475281,4,2),
 (169558475281,16,1),
 (169558475281,23,0),
 (169558479390,4,2),
 (169558479390,16,1),
 (169558479390,23,0),
 (169564646984,4,2),
 (169564646984,16,1),
 (169564646984,23,0),
 (169579237328,4,1),
 (169579237328,16,1),
 (169579237328,23,0),
 (169581054625,4,2),
 (169581054625,16,1),
 (169581054625,23,0),
 (169644741031,4,1),
 (169644741031,16,1),
 (169644741031,23,0),
 (169644754421,4,1),
 (169644754421,16,1),
 (169644754421,23,0),
 (169651566968,4,2),
 (169651566968,16,1),
 (169651566968,23,2),
 (169652679937,4,1),
 (169652679937,16,1),
 (169652679937,23,2),
 (169655639078,4,1),
 (169655639078,16,1),
 (169655639078,23,2),
 (169656221171,4,1),
 (169656221171,16,1),
 (169656221171,23,2),
 (169656273109,4,2),
 (169656273109,16,1),
 (169656273109,23,2),
 (169657800093,4,1),
 (169657800093,16,1),
 (169657800093,23,0),
 (169657802875,4,1),
 (169657802875,16,1),
 (169657802875,23,0),
 (169657810125,4,1),
 (169657810125,16,1),
 (169657810125,23,0),
 (169657812625,4,1),
 (169657812625,16,1),
 (169657812625,23,0),
 (169659978828,4,2),
 (169659978828,16,1),
 (169659978828,23,2),
 (169659997015,4,2),
 (169659997015,16,1),
 (169659997015,23,0),
 (169660001687,4,2),
 (169660001687,16,1),
 (169660001687,23,0),
 (169661292421,4,2),
 (169661292421,16,1),
 (169661292421,23,2),
 (169661303015,4,2),
 (169661303015,16,1),
 (169661303015,23,2),
 (169663179625,4,2),
 (169663179625,16,1),
 (169663179625,23,2),
 (169663246609,4,2),
 (169663246609,16,1),
 (169663246609,23,0),
 (169663255265,4,2),
 (169663255265,16,1),
 (169663255265,23,0),
 (169663262265,4,2),
 (169663262265,16,1),
 (169663262265,23,0),
 (169663267296,4,2),
 (169663267296,16,1),
 (169663267296,23,0),
 (169663270062,4,2),
 (169663270062,16,1),
 (169663270062,23,0),
 (169663281296,4,2),
 (169663281296,16,1),
 (169663281296,23,0),
 (169663284718,4,2),
 (169663284718,16,1),
 (169663284718,23,0),
 (169663288937,4,2),
 (169663288937,16,1),
 (169663288937,23,0),
 (169663289484,4,2),
 (169663289484,16,1),
 (169663289484,23,0),
 (169663296328,4,2),
 (169663296328,16,1),
 (169663296328,23,0),
 (169663300687,4,2),
 (169663300687,16,1),
 (169663300687,23,0),
 (169663309421,4,2),
 (169663309421,16,1),
 (169663309421,23,0),
 (169663320343,4,2),
 (169663320343,16,1),
 (169663320343,23,0),
 (169663321234,4,2),
 (169663321234,16,1),
 (169663321234,23,0),
 (169663323390,4,2),
 (169663323390,16,1),
 (169663323390,23,0),
 (169663325828,4,2),
 (169663325828,16,1),
 (169663325828,23,0),
 (169663326734,4,2),
 (169663326734,16,1),
 (169663326734,23,0),
 (169663332000,4,2),
 (169663332000,16,1),
 (169663332000,23,0),
 (169663349593,4,2),
 (169663349593,16,1),
 (169663349593,23,0),
 (169663353953,4,2),
 (169663353953,16,1),
 (169663353953,23,0),
 (169663355656,4,2),
 (169663355656,16,1),
 (169663355656,23,0),
 (169663356250,4,2),
 (169663356250,16,1),
 (169663356250,23,0),
 (169664263000,4,2),
 (169664263000,16,1),
 (169664263000,23,2),
 (169665777703,4,2),
 (169665777703,16,1),
 (169665777703,23,0),
 (169665783703,4,2),
 (169665783703,16,1),
 (169665783703,23,0),
 (169665795578,4,2),
 (169665795578,16,1),
 (169665795578,23,0),
 (169665799390,4,2),
 (169665799390,16,1),
 (169665799390,23,0),
 (169665824515,4,2),
 (169665824515,16,1),
 (169665824515,23,0),
 (169665841156,4,2),
 (169665841156,16,1),
 (169665841156,23,0),
 (169665843062,4,2),
 (169665843062,16,1),
 (169665843062,23,0),
 (169667794281,4,1),
 (169667794281,16,1),
 (169667794281,23,2),
 (169668226265,4,2),
 (169668226265,16,1),
 (169668226265,23,0),
 (169668227812,4,2),
 (169668227812,16,1),
 (169668227812,23,0),
 (169668229375,4,2),
 (169668229375,16,1),
 (169668229375,23,0),
 (169668234703,4,2),
 (169668234703,16,1),
 (169668234703,23,0),
 (169668236921,4,2),
 (169668236921,16,1),
 (169668236921,23,0),
 (169668239437,4,2),
 (169668239437,16,1),
 (169668239437,23,0),
 (169668240343,4,2),
 (169668240343,16,1),
 (169668240343,23,0),
 (169668241250,4,2),
 (169668241250,16,1),
 (169668241250,23,0),
 (169668242500,4,2),
 (169668242500,16,1),
 (169668242500,23,0),
 (169668261203,4,2),
 (169668261203,16,1),
 (169668261203,23,0),
 (169668262140,4,2),
 (169668262140,16,1),
 (169668262140,23,0),
 (169668263828,4,2),
 (169668263828,16,1),
 (169668263828,23,0),
 (169668265375,4,2),
 (169668265375,16,1),
 (169668265375,23,0),
 (169668265968,4,2),
 (169668265968,16,1),
 (169668265968,23,0),
 (169668266562,4,2),
 (169668266562,16,1),
 (169668266562,23,0),
 (169668503875,4,2),
 (169668503875,16,1),
 (169668503875,23,2),
 (169668859234,4,2),
 (169668859234,16,1),
 (169668859234,23,2),
 (169669481500,4,2),
 (169669481500,16,1),
 (169669481500,23,2),
 (169669761921,4,2),
 (169669761921,16,1),
 (169669761921,23,2),
 (169669770453,4,2),
 (169669770453,16,1),
 (169669770453,23,2),
 (169670370453,4,2),
 (169670370453,16,1),
 (169670370453,23,2),
 (169670766468,4,2),
 (169670766468,16,1),
 (169670766468,23,2),
 (169671199656,4,1),
 (169671199656,16,1),
 (169671199656,23,0),
 (169671203703,4,1),
 (169671203703,16,1),
 (169671203703,23,0),
 (169671208750,4,1),
 (169671208750,16,1),
 (169671208750,23,0),
 (169671209312,4,1),
 (169671209312,16,1),
 (169671209312,23,0),
 (169671212687,4,1),
 (169671212687,16,1),
 (169671212687,23,0),
 (169671215484,4,1),
 (169671215484,16,1),
 (169671215484,23,0),
 (169671223031,4,1),
 (169671223031,16,1),
 (169671223031,23,0),
 (169671225843,4,1),
 (169671225843,16,1),
 (169671225843,23,0),
 (169671231140,4,1),
 (169671231140,16,1),
 (169671231140,23,0),
 (169671232703,4,1),
 (169671232703,16,1),
 (169671232703,23,0),
 (169671233296,4,1),
 (169671233296,16,1),
 (169671233296,23,0),
 (169671235125,4,1),
 (169671235125,16,1),
 (169671235125,23,0),
 (169671237000,4,1),
 (169671237000,16,1),
 (169671237000,23,0),
 (169671238250,4,1),
 (169671238250,16,1),
 (169671238250,23,0),
 (169671241609,4,1),
 (169671241609,16,1),
 (169671241609,23,0),
 (169671242546,4,1),
 (169671242546,16,1),
 (169671242546,23,0),
 (169671244859,4,1),
 (169671244859,16,1),
 (169671244859,23,0),
 (169671475656,4,2),
 (169671475656,16,1),
 (169671475656,23,2),
 (169672492484,4,1),
 (169672492484,16,1),
 (169672492484,23,2),
 (169672987625,4,1),
 (169672987625,16,1),
 (169672987625,23,2),
 (169673621515,4,2),
 (169673621515,16,1),
 (169673621515,23,2),
 (169673711125,4,2),
 (169673711125,16,1),
 (169673711125,23,0),
 (169673712781,4,2),
 (169673712781,16,1),
 (169673712781,23,0),
 (169673713375,4,2),
 (169673713375,16,1),
 (169673713375,23,0),
 (169673721406,4,2),
 (169673721406,16,1),
 (169673721406,23,0),
 (169673722625,4,2),
 (169673722625,16,1),
 (169673722625,23,0),
 (169673800890,4,2),
 (169673800890,16,1),
 (169673800890,23,2),
 (169675272531,4,1),
 (169675272531,16,1),
 (169675272531,23,2),
 (169675302046,4,1),
 (169675302046,16,1),
 (169675302046,23,0),
 (169675303515,4,1),
 (169675303515,16,1),
 (169675303515,23,0),
 (169675308265,4,1),
 (169675308265,16,1),
 (169675308265,23,0),
 (169675315875,4,1),
 (169675315875,16,1),
 (169675315875,23,0),
 (169675328812,4,1),
 (169675328812,16,1),
 (169675328812,23,0),
 (169675340843,4,1),
 (169675340843,16,1),
 (169675340843,23,0),
 (169675351953,4,1),
 (169675351953,16,1),
 (169675351953,23,0),
 (169675352531,4,1),
 (169675352531,16,1),
 (169675352531,23,0),
 (169675363718,4,1),
 (169675363718,16,1),
 (169675363718,23,0),
 (169675364281,4,1),
 (169675364281,16,1),
 (169675364281,23,0),
 (169675364828,4,1),
 (169675364828,16,1),
 (169675364828,23,0),
 (169675366640,4,1),
 (169675366640,16,1),
 (169675366640,23,0),
 (169675384609,4,1),
 (169675384609,16,1),
 (169675384609,23,0),
 (169675394125,4,1),
 (169675394125,16,1),
 (169675394125,23,0),
 (169675395640,4,1),
 (169675395640,16,1),
 (169675395640,23,0),
 (169675475531,4,1),
 (169675475531,16,1),
 (169675475531,23,2),
 (169676574468,4,1),
 (169676574468,16,1),
 (169676574468,23,2),
 (169676586187,4,2),
 (169676586187,16,1),
 (169676586187,23,0),
 (169676587437,4,2),
 (169676587437,16,1),
 (169676587437,23,0),
 (169677022687,4,2),
 (169677022687,16,1),
 (169677022687,23,2),
 (169677372906,4,2),
 (169677372906,16,1),
 (169677372906,23,2),
 (169677395953,4,2),
 (169677395953,16,1),
 (169677395953,23,2),
 (169700343187,4,1),
 (169700343187,16,1),
 (169700343187,23,2),
 (169700382171,4,2),
 (169700382171,16,1),
 (169700382171,23,2),
 (169700402562,4,2),
 (169700402562,16,1),[ZoneTransfer]
ZoneId=3
HostUrl=https://r1---sn-uxaxjvh5gbxoupo5-x1x6.googlevideo.com/videoplayback?ratebypass=yes&ip=149.13.117.213&requiressl=yes&lmt=1513428659112828&ei=Jch7WsibEZCvWJTKqNAN&id=o-ANzlZlr6Kqghk0ZznREm4X8pZNw_RiHK1Ct_hXKyJDx0&mime=video%2Fmp4&expire=1518083205&ipbits=0&fvip=5&key=cms1&itag=22&signature=1580EB955D1DFC85F3E8CEA62008791FF98EEAA1.3FE8B018BE59197639637B997FFC0D7EC31C7016&c=WEB&dur=1701.047&pl=22&source=youtube&sparams=dur,ei,expire,id,initcwndbps,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pcm2cms,pl,ratebypass,requiressl,source&video_id=v1zbFY4Kmtk&title=Curso+Android+desde+cero+%2310+-+Mi+primer+Aplicaci%C3%B3n+en+Android+-+Dise%C3%B1o+l%C3%B3gico&redirect_counter=1&rm=sn-n4ves76&req_id=84afb98042c1a3ee&cms_redirect=yes&ipbypass=yes&mip=181.93.83.71&mm=31&mn=sn-uxaxjvh5gbxoupo5-x1x6&ms=au&mt=1518061540&mv=m&pcm2cms=yes
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           (169744773031,23,0),
 (169745273875,4,1),
 (169745273875,16,1),
 (169745273875,23,0),
 (169745276406,4,1),
 (169745276406,16,1),
 (169745276406,23,0),
 (169745281796,4,1),
 (169745281796,16,1),
 (169745281796,23,0),
 (169745283015,4,1),
 (169745283015,16,1),
 (169745283015,23,0),
 (169745290015,4,1),
 (169745290015,16,1),
 (169745290015,23,0),
 (169745291656,4,1),
 (169745291656,16,1),
 (169745291656,23,0),
 (169746002328,4,1),
 (169746002328,16,1),
 (169746002328,23,0),
 (169746011656,4,1),
 (169746011656,16,1),
 (169746011656,23,0),
 (169746014171,4,1),
 (169746014171,16,1),
 (169746014171,23,0),
 (169746025546,4,1),
 (169746025546,16,1),
 (169746025546,23,0),
 (169746026437,4,1),
 (169746026437,16,1),
 (169746026437,23,0),
 (169746059734,4,1),
 (169746059734,16,1),
 (169746059734,23,2),
 (169746069578,4,1),
 (169746069578,16,1),
 (169746069578,23,2),
 (169746078062,4,1),
 (169746078062,16,1),
 (169746078062,23,2),
 (169746435468,4,1),
 (169746435468,16,1),
 (169746435468,23,0),
 (169746438062,4,1),
 (169746438062,16,1),
 (169746438062,23,0),
 (169746442437,4,1),
 (169746442437,16,1),
 (169746442437,23,0),
 (169746446203,4,1),
 (169746446203,16,1),
 (169746446203,23,0),
 (169746495343,4,1),
 (169746495343,16,1),
 (169746495343,23,2),
 (169746503250,4,1),
 (169746503250,16,1),
 (169746503250,23,2),
 (169746658890,4,1),
 (169746658890,16,1),
 (169746658890,23,2),
 (169746988875,4,1),
 (169746988875,16,1),
 (169746988875,23,2),
 (169747711921,4,1),
 (169747711921,16,1),
 (169747711921,23,0),
 (169747722265,4,1),
 (169747722265,16,1),
 (169747722265,23,0),
 (169747723140,4,1),
 (169747723140,16,1),
 (169747723140,23,0),
 (169747739984,4,2),
 (169747739984,16,1),
 (169747739984,23,0),
 (169748082625,4,1),
 (169748082625,16,1),
 (169748082625,23,2),
 (169748253859,4,1),
 (169748253859,16,1),
 (169748253859,23,0),
 (169748348781,4,1),
 (169748348781,16,1),
 (169748348781,23,0),
 (169748356640,4,1),
 (169748356640,16,1),
 (169748356640,23,0),
 (169748357218,4,1),
 (169748357218,16,1),
 (169748357218,23,0),
 (169748667718,4,1),
 (169748667718,16,1),
 (169748667718,23,0),
 (169748669218,4,1),
 (169748669218,16,1),
 (169748669218,23,0),
 (169748673953,4,1),
 (169748673953,16,1),
 (169748673953,23,0),
 (169748676453,4,1),
 (169748676453,16,1),
 (169748676453,23,0),
 (169749440828,4,1),
 (169749440828,16,1),
 (169749440828,23,2),
 (169749455328,4,1),
 (169749455328,16,1),
 (169749455328,23,0),
 (169749455937,4,1),
 (169749455937,16,1),
 (169749455937,23,0),
 (169749491031,4,1),
 (169749491031,16,1),
 (169749491031,23,0),
 (169749492250,4,1),
 (169749492250,16,1),
 (169749492250,23,0),
 (169749602250,4,1),
 (169749602250,16,1),
 (169749602250,23,2),
 (169749754812,4,1),
 (169749754812,16,1),
 (169749754812,23,2),
 (169749770015,4,1),
 (169749770015,16,1),
 (169749770015,23,0),
 (169749772828,4,1),
 (169749772828,16,1),
 (169749772828,23,0),
 (169750421453,4,1),
 (169750421453,16,1),
 (169750421453,23,2),
 (169751023343,4,1),
 (169751023343,16,1),
 (169751023343,23,2),
 (169751202937,4,2),
 (169751202937,16,1),
 (169751202937,23,2),
 (169751356937,4,1),
 (169751356937,16,1),
 (169751356937,23,2),
 (169751373437,4,1),
 (169751373437,16,1),
 (169751373437,23,2),
 (169751766453,4,1),
 (169751766453,16,1),
 (169751766453,23,0),
 (169751768343,4,1),
 (169751768343,16,1),
 (169751768343,23,0),
 (169751778468,4,1),
 (169751778468,16,1),
 (169751778468,23,0),
 (169751781875,4,1),
 (169751781875,16,1),
 (169751781875,23,0),
 (169751789109,4,1),
 (169751789109,16,1),
 (169751789109,23,0),
 (169751792250,4,1),
 (169751792250,16,1),
 (169751792250,23,0),
 (169751795031,4,1),
 (169751795031,16,1),
 (169751795031,23,0),
 (169751801015,4,1),
 (169751801015,16,1),
 (169751801015,23,0),
 (169751804156,4,1),
 (169751804156,16,1),
 (169751804156,23,0),
 (169751808562,4,1),
 (169751808562,16,1),
 (169751808562,23,0),
 (169751811375,4,1),
 (169751811375,16,1),
 (169751811375,23,0),
 (169751814484,4,1),
 (169751814484,16,1),
 (169751814484,23,0),
 (169751819843,4,1),
 (169751819843,16,1),
 (169751819843,23,0),
 (169751824703,4,1),
 (169751824703,16,1),
 INDX( 	 ��            (   x  �       �                    9�    p Z     8�    Di%p��U�39j��U�39j��Di%p��                      s e g m e n t s . g e n       :�    h V     8�    %Is%p����29j����29j��%Is%p���       �               
s e g m e n t s _ 6   :�    h R     8�    %Is%p����29j����29j��%Is%p���       �               S E G M E N ~ 1       ;�    ` N     8�     \~%p��l@&9j��l@&9j�� \~%p�� �j     p�j             _ 5 . f d t   <�    ` N     8�    ��%p� �"9j���"9j����%p�� �     �             _ 5 . f d x   =�    ` N     8�    8w�%p����&9j����&9j��8w�%p��x       q               _ 5 . f n m   >�    ` N     8�    ���%p��	�(9j��	�(9j�����%p��       �             _ 5 . f r q   ?�    ` N     8�    ﭽ%p���.#9j���.#9j��ﭽ%p�� �     ��             _ 5 . n r m   @�    ` N     8�    T��%p���$9j���$9j��T��%p�� �     ��             _ 5 . p r x   A�    ` N     8�    ��%p��q49j��q49j����%p�� p     j              _ 5 . t i i   B�    ` N     8�    �T�%p���� 9j���� 9j���T�%p�� �     �             _ 5 . t i s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           169770192890,23,0),
 (169770195015,4,1),
 (169770195015,16,1),
 (169770195015,23,0),
 (169770195906,4,1),
 (169770195906,16,1),
 (169770195906,23,0),
 (169770196468,4,1),
 (169770196468,16,1),
 (169770196468,23,0),
 (169770197687,4,1),
 (169770197687,16,1),
 (169770197687,23,0),
 (169770201125,4,1),
 (169770201125,16,1),
 (169770201125,23,0),
 (169770203015,4,1),
 (169770203015,16,1),
 (169770203015,23,0),
 (169770204859,4,1),
 (169770204859,16,1),
 (169770204859,23,0),
 (169770206078,4,1),
 (169770206078,16,1),
 (169770206078,23,0),
 (169770207921,4,1),
 (169770207921,16,1),
 (169770207921,23,0),
 (169770208515,4,1),
 (169770208515,16,1),
 (169770208515,23,0),
 (169770209406,4,1),
 (169770209406,16,1),
 (169770209406,23,0),
 (169770222453,4,1),
 (169770222453,16,1),
 (169770222453,23,0),
 (169770223375,4,1),
 (169770223375,16,1),
 (169770223375,23,0),
 (169770225203,4,1),
 (169770225203,16,1),
 (169770225203,23,0),
 (169770229343,4,1),
 (169770229343,16,1),
 (169770229343,23,0),
 (169770235890,4,1),
 (169770235890,16,1),
 (169770235890,23,0),
 (169770370484,4,1),
 (169770370484,16,1),
 (169770370484,23,2),
 (169770660328,4,2),
 (169770660328,16,1),
 (169770660328,23,2),
 (169771555468,4,2),
 (169771555468,16,1),
 (169771555468,23,2),
 (169771973765,4,2),
 (169771973765,16,1),
 (169771973765,23,2),
 (169772900609,4,2),
 (169772900609,16,1),
 (169772900609,23,2),
 (169773539140,4,2),
 (169773539140,16,1),
 (169773539140,23,2),
 (169773970078,4,2),
 (169773970078,16,1),
 (169773970078,23,2),
 (169773977250,4,2),
 (169773977250,16,1),
 (169773977250,23,2),
 (169774060625,4,2),
 (169774060625,16,1),
 (169774060625,23,0),
 (169774062515,4,2),
 (169774062515,16,1),
 (169774062515,23,0),
 (169774070203,4,2),
 (169774070203,16,1),
 (169774070203,23,0),
 (169774072671,4,2),
 (169774072671,16,1),
 (169774072671,23,0),
 (169776074656,4,2),
 (169776074656,16,1),
 (169776074656,23,2),
 (169777214171,4,2),
 (169777214171,16,1),
 (169777214171,23,0),
 (169777217031,4,2),
 (169777217031,16,1),
 (169777217031,23,0),
 (169777243656,4,2),
 (169777243656,16,1),
 (169777243656,23,2),
 (169777253875,4,2),
 (169777253875,16,1),
 (169777253875,23,2),
 (169777267718,4,2),
 (169777267718,16,1),
 (169777267718,23,2),
 (169777921828,4,2),
 (169777921828,16,1),
 (169777921828,23,2),
 (169778386937,4,2),
 (169778386937,16,1),
 (169778386937,23,2),
 (169778411968,4,2),
 (169778411968,16,1),
 (169778411968,23,2),
 (169778597750,4,1),
 (169778597750,16,1),
 (169778597750,23,0),
 (169778609140,4,1),
 (169778609140,16,1),
 (169778609140,23,0),
 (169778611312,4,1),
 (169778611312,16,1),
 (169778611312,23,0),
 (169778613812,4,1),
 (169778613812,16,1),
 (169778613812,23,0),
 (169778627109,4,1),
 (169778627109,16,1),
 (169778627109,23,0),
 (169778652468,4,1),
 (169778652468,16,1),
 (169778652468,23,0),
 (169779973187,4,1),
 (169779973187,16,1),
 (169779973187,23,2),
 (169781065171,4,1),
 (169781065171,16,1),
 (169781065171,23,0),
 (169781073812,4,1),
 (169781073812,16,1),
 (169781073812,23,0),
 (169781078140,4,1),
 (169781078140,16,1),
 (169781078140,23,0),
 (169781087109,4,1),
 (169781087109,16,1),
 (169781087109,23,0),
 (169781092140,4,1),
 (169781092140,16,1),
 (169781092140,23,0),
 (169781093390,4,1),
 (169781093390,16,1),
 (169781093390,23,0),
 (169781100890,4,1),
 (169781100890,16,1),
 (169781100890,23,0),
 (169781103078,4,1),
 (169781103078,16,1),
 (169781103078,23,0),
 (169781106125,4,1),
 (169781106125,16,1),
 (169781106125,23,0),
 (169781107687,4,1),
 (169781107687,16,1),
 (169781107687,23,0),
 (169781109484,4,1),
 (169781109484,16,1),
 (169781109484,23,0),
 (169781117328,4,1),
 (169781117328,16,1),
 (169781117328,23,0),
 (169781120718,4,1),
 (169781120718,16,1),
 (169781120718,23,0),
 (169781123515,4,1),
 (169781123515,16,1),
 (169781123515,23,0),
 (169781127875,4,1),
 (169781127875,16,1),
 (169781127875,23,0),
 (169781129750,4,1),
 (169781129750,16,1),
 (169781129750,23,0),
 (169781133187,4,1),
 (169781133187,16,1),
 (169781133187,23,0),
 (169781141031,4,1),
 (169781141031,16,1),
 (169781141031,23,0),
 (169781158375,4,1),
 (169781158375,16,1),
 (169781158375,23,0),
 (169781162046,4,1),
 (169781162046,16,1),
 (169781162046,23,0),
 (169781164484,4,1),
 (169781164484,16,1),
 (169781164484,23,0),
 (169781165062,4,1),
 (169781165062,16,1),
 (169781165062,23,0),
 (169781168781,4,1),
 (169781168781,16,1),
 (169781168781,23,0),
 (169781177406,4,2),
 (169781177406,16,1),
 (169781177406,23,0),
 (169781181156,4,2),
 (169781181156,16,1),
 (169781181156,23,0),
 (169781183640,4,2),
 (169781183640,16,1),
 (169781183640,23,0),
 (169781302937,4,1),
 (169781302937,16,1),
 (169781302937,23,0),
 (169781304437,4,1),
 (169781304437,16,1),
 (169781304437,23,0),
 (169781306109,4,1),
 (169781306109,16,1),
 (169781306109,23,0),
 (169781431046,4,1),
 (169781431046,16,1),
 (169781431046,23,2),
 (169781499953,4,1),
 (169781499953,16,1),
 (169781499953,23,2),
 (169781601125,4,1),
 (169781601125,16,1),
 (169781601125,23,2),
 (169782035890,4,2),
 (169782035890,16,1),
 (169782035890,23,2),
 (169782252125,4,2),
 (169782252125,16,1),
 (169782252125,23,2),
 (169782503031,4,2),
 (169782503031,16,1),
 (169782503031,23,2),
 (169782609671,4,2),
 (169782609671,16,1),
 (169782609671,23,2),
 (169782617328,4,2),
 (169782617328,16,1),
 (169782617328,23,2),
 (169782630187,4,2),
 (169782630187,16,1),
 (169782630187,23,2),
 (169782636875,4,2),
 (169782636875,16,1),
 (169782636875,23,2),
 (169782645156,4,2),
 (169782645156,16,1),
 (169782645156,23,2),
 (169782790250,4,1),
 (169782790250,16,1),
 (169782790250,23,2),
 (169782948781,4,2),
 (169782948781,16,1),
 (169782948781,23,2),
 (169783403234,4,2),
 (169783403234,16,1),
 (169783403234,23,2),
 (169783720906,4,2),
 (169783720906,16,1),
 (169783720906,23,2),
 (169784696343,4,2),
 (169784696343,16,1),
 (169784696343,23,2),
 (169785615718,4,2),
 (169785615718,16,1),
 (169785615718,23,0),
 (169785617531,4,2),
 (169785617531,16,1),
 (169785617531,23,0),
 (169785620343,4,2),
 (169785620343,16,1),
 (169785620343,23,0),
 (169786225843,4,1),
 (169786225843,16,1),
 (169786225843,23,2),
 (169786386765,4,2),
 (169786386765,16,1),
 (169786386765,23,2),
 (169843030203,4,1),
 (169843030203,16,1),
 (169843030203,23,0),
 (169843035062,4,1),
 (169843035062,16,1),
 (169843035062,23,0),
 (169843036296,4,1),
 (169843036296,16,1),
 (169843036296,23,0),
 (169843044421,4,1),
 (169843044421,16,1),
 (169843044421,23,0),
 (169846828875,4,1),
 (169846828875,16,1),
 (169846828875,23,2),
 (169847039640,4,2),
 (169847039640,16,1),
 (169847039640,23,2),
 (169847046203,4,2),
 (169847046203,16,1),
 (169847046203,23,2),
 (169847068890,4,2),
 (169847068890,16,1),
 (169847068890,23,2),
 (169847081781,4,1),
 (169847081781,16,1),
 (169847081781,23,0),
 (169847082359,4,1),
 (169847082359,16,1),
 (169847082359,23,0),
 (169847082953,4,1),
 (169847082953,16,1),
 (169847082953,23,0),
 (169847083531,4,1),
 (169847083531,16,1),
 (169847083531,23,0),
 (169847084468,4,1),
 (169847084468,16,1),
 (169847084468,23,0),
 (169847085390,4,1),
 (169847085390,16,1),
 (169847085390,23,0),
 (169847087890,4,1),
 (169847087890,16,1),
 (169847087890,23,0),
 (169847089109,4,1),
 (169847089109,16,1),
 (169847089109,23,0),
 (169847091859,4,1),
 (169847091859,16,1),
 (169847091859,23,0),
 (169847108843,4,1),
 (169847108843,16,1),
 (169847108843,23,0),
 (169847114265,4,1),
 (169847114265,16,1),
 (169847114265,23,0),
 (169851372421,4,1),
 (169851372421,16,1),
 (169851372421,23,2),
 (169900153046,4,2),
 (169900153046,16,1),
 (169900153046,23,0),
 (169900155500,4,2),
 (169900155500,16,1),
 (169900155500,23,0),
 (169900160000,4,2),
 (169900160000,16,1),
 (169900160000,23,0),
 (169900163796,4,2),
 (169900163796,16,1),
 (169900163796,23,0),
 (169900173265,4,2),
 (169900173265,16,1),
 (169900173265,23,0),
 (169900174156,4,2),
 (169900174156,16,1),
 (169900174156,23,0),
 (169900177625,4,2),
 (169900177625,16,1),
 (169900177625,23,0),
 (169900182406,4,2),
 (169900182406,16,1),
 (169900182406,23,0),
 (169900193406,4,2),
 (169900193406,16,1),
 (169900193406,23,0),
 (169900196203,4,2),
 (169900196203,16,1),
 (169900196203,23,0),
 (169900207593,4,2),
 (169900207593,16,1),
 (169900207593,23,0),
 (169900210390,4,2),
 (169900210390,16,1),
 (1602  Clave duplicada con duplicacion permitida.
04  Longitud de registro incorrecta.
10  Fin de archivo.
14  Quiere acceder a un registro fuera del fin del archivo.
21  Fuera de secuencia grabando archivo de acceso secuencial.
22  Clave duplicada.
23  Clave no existe.
24  Falta de espacio en disco.
30  Archivo inexistente o no puede abrir archivo.
34  Falta de espacio en disco.
35  Archivo inexistente.
37  Acceso denegado al archivo.
38  No puede abrir archivo. Archivo Lockeado.
39  Se detecto un conflicto con los atributos del archivo.
41  Se quiere abrir un archivo ya abierto.
42  Se quiere Cerrar un archivo no abierto.
43  Se quiere borrar o regrabar un registro no leido.
44  Se intenta grabar registro de longitud incorrecta.
46  No se puede leer el proximo registro.
47  Operacion invalida.
48  Operacion invalida.
49  Operacion invalida.
9002Archivo no abierto.
9004Nombre de archivo invalido.
9005Nombre de dispositivo invalido.
9006Se intenta grabar un archivo abierto para leer.
9007No hay mas espacio en disco.
9008Se intenta leer un archivo abierto para grabacion.
9009No hay mas lugar en el directorio.
9010No se especifico el nombre del archivo.
9012Se intenta abrir un archivo ya abierto.
9013No se encontro archivo.
9014Demasiados archivos abiertos simultaneamente.
9015Demasiados archivos indexados abiertos.
9016Demasiados archivos de dispositivos abiertos.
9017Error en registro.
9018Fin de archivo antes de fin de registro o modo erroneo.
9019Error regrabando. Modo de apertura/acceso a archivo invalido.
9020Dispositivo ocupado.
9021El archivo es un directorio.
9022No puede o es ilegal el modo de abrir el archivo.
9023No puede o es ilegal el modo de cerrar el archivo.
9024Error de lectura/grabacion de disco.
9025Error de dato del sistema operativo.
9026Error de lectura/grabacion de bloque.
9027Dispositivo no disponible.
9028No hay espacio en ese dispositivo.
9029Se intenta borrar un archivo todavia abierto.
9030Archivo de sistema es solo de lectura.
9031No es el propietario de este archivo.
9032Demasiados archivos indexados.
9033Error fisico de lectura/grabacion.
9034Modo o descriptor de archivo incorrecto.
9035Se intenta acceder a un archivo con permiso incorrecto.
9036El archivo ya existe.
9037Acceso a archivo denegado.
9038Disco no compatible.
9039Archivo no compatible.
9041Archivo indexado corrupto.
9043Falta archivo de informacion de archivo indexado.
9047Fuera de rango en estructura indexada.
9065Archivo lockeado.
9066Se intenta agregar registros duplicados en archivo indexado.
9067Archivo indexado no abierto.
9068Registro lockeado.
9069Argumento ilegal para el modulo ISAM.
9070Demasiados archivos indexados abiertos.
9071Formato de archivo indexado erroneo.
9072Fin de archivo indexado.
9073No encontro registro en archivo indexado.
9074Registro no corriente en archivo indexado.
9075Nombre de archivo indexado de datos muy largo.
9076No puede crear archivo lock en directorio ISAM.
9077Error interno en modulo ISAM.
9078Descripcion de clave ilegal en archivo indexado.
9081Clave ya existe en archivo indexado.
9100Operacion de archivo invalida.
9101Operacion de archivo indexado invalida.
9102Numero de registros no enteros en archivo secuencial.
9104Nombre de archivo nulo.
9129Se intenta leer registro 0 de archivo relativo.
9135El archivo no debe existir y existe.
9138Archivo cerrado con lock. No puede abrirse.
9139Longitud de registro o clave inconsistente.
9141Se quiere abrir un archivo ya abierto.
9142Se quiere Cerrar un archivo no abierto.
9143Se quiere borrar o regrabar un registro no leido.
9144Se intenta grabar registro de longitud incorrecta.
9146No se puede leer el proximo registro.
9147Operacion invalida.
9148Operacion invalida.
9149Operacion invalida.
9151Lectura al azar en archivo secuencial.
9152Regrabacion en archivo no abierto para lectura/grabacion.
9158Se intenta regrabar un archivo secuencial de linea.
9159Archivo secuencial de linea malformado.
9188Nombre de archivo demasiado largo.
9194Archivo demasiado grande.
9195Se intenta borrar o regrabar registro no leido.
9196Numero de registro demasiado grande.
9208Error en sistema multiusuario.
9209Error de comunicacion en la red.
9210Archivo cerrado con lock.
9213Demasiados locks.
9219Se excedio el limite del S.O. de compartir archivos.
9220No se puede ejecutar mas de un SORT/MERGE.
9221Error de SORT/MERGE.
9222Error de SORT/MERGE.
9223Error de SORT/MERGE.
                                                                                                 ��;� 'm���B}:;�8���C$�*2�������g�3��il����������Y���}?Z�K���/nYW�v�Yc��H���n+�|Y�ٍh1��s*�G�u�����I�2�H��k� >�Zk]����!(¤��ݗﮗ�Vғ��� �>Rb���b˓wˏ��=��B�fM>�5�k-�i��F�I7��g����h��^��������<��7��6-��g?�ן��ٲ��!�bK�3�D����g��e�q�G��� M�~�q]8Y���ÞՕ[Q��?�ڿ����)�������� ���.���ӡ�L1N`��� $7̿���~�'_+�Yg����s�0n�����Ƒ��$�G�� ��|�� ��U�J���fd�+c�������^� ��^�$�伐�M�����{������)�I��+:*��t�.�o�}��V�J�-oХ�ãjr����#��VQ������O�k���#��]�[N�bY��$�M��o+�Tq��¾}�k���������n��Ǔj�[���~LE�y��:�~s�_L�B�|�p������j�>YB����;�T��������{BҊ��>�G{�{_'�M�E�eȗ�W��y�x�=>��{V��ty���[d���ʓ�� �����$p�`H��i�U��?�� �<��~�<ӿ�d�]NV5�G�5ݍ�?�霞�����^3�jto�E�ZUR]��N��XwKF轿��U�]���
� ���:�������Y���j�mV��*��#|�R��?���v+�:������ ��sP	YdtD�{\yj�$�$3ʋ�}�_֜\���[��~֟��^~Zn���ﾚ��/��76�:I�w��$�� �#��z�=zu��Oh}�G��%���휿�������H�5�}���]�4;�W� ��}c�}kX��Ynug��΍� ]$��ki{Қ�+_��-� s�E��K�w��Ofx֕��gW�y�*,2I �^):�� <��{���-'Kh,�R>�iD�M��X� �*��H��T�h�f�YF~e����I �G��!��`���	��/�t��d�c�����.��?��[?�{?��
�-E%?�~���-;y�f��Zȋ6̪���++G�� �yg��~�O� \|���"�;�j֬�3,��q�����s^����U���ߵ[��I��g��߭|��
�+�0���|�����R�� �S��n�ҥ8�NU%oco�S� ��K4�_M�ok�Ǜ��ˣ����ޛ�v<��.n�;D�ke��Ei<���� <� Ǐ�t���[{D]Q�f�?t��� U� =s� ���;��mEI-����c�~u0����������dft�G�nݸ�������� �.O�7�<��oZV�/��|�}Ë�⹯wE.�+����r'�W�/c�U�w��|��O����M|��(-FyPʬ��$~a� �~����s��h���I:��0���o���L��� ���'�R�X�71F�t��Ó!�� tf��,�s���߹���[4���~��f�ܹe� .�� �տ���U�i趽�΋���r�(��#��+~�+�Y�9��<���z[E�̍��Uw7�T� �_A��~=�D���YF�`�)��6�z��_*�O�e�� ���.��9`[H�)%����̗E!�X��� ��O�{��x(�;�4�������]_���Ϲ�y����� u����v6�Ȝ+JSo��N�_�k����3���ť���X�5fh|�e���1� ]#� �UӬ��2�'��̒:l��}{�\���4��]G3���#C� -d'��� ת��	���7�\���_�,?����U������>r��m��O#C���I�d���)<���y���WG��Z�,۞E��������vjz|�yNy��ZFH�o�Nm�N?x<�������y���U_/��� �y���gӯ�6���ЩE���g��W�J��]R�����Q%B���M=�������H�>9)�L^\{|�]� ��w�*ƣ&�#Ą�yeo��T�$� �� ��M�0DQ�[�Q�U~x_��lrs����n���v��^�r�>"�����"�|��e� ,� ��7Sr�^���.���ky��m�Q�OO�+���<��5�p��(�f�9$D���rv$��g���{i0��F�N�y$V���<������t��2���uq�9'Fh���!��H#?���&l����^���:�Y�?-�������֒Z�K�� E�J_��q^�� ��_�~L��q*[�҅W�ج���-�?���� ��1�k���a^@�mf��L�^_����[�4�6�bTB�1R���"?��/�_Nk����[�f����2F���~_���W��禖�5}��7���ߴ��F�گw��� �~/՞�#̹u���F�+�G��� ����SxdUBʲ2���a��N� �����ƾY�4�����==OjX�pY|ȑ���H��p��H���������:���j]t��ַ��p����֗�?����c��H�/����g����kz�1+���Vf?(c�9����`����ȫ�y���3��?���֑-FIZ	E�������;Z���cg/��K�W��5����rK����Ӿ��	�� �mx~Y�i?�y��8�q'Ӵ�ʃ,%�����/��>������x����w������4��]���r�ȯ�?/�ӿ�BU99%����t�ӲJ�&�mma(��������$���f��VGgf�?���G!� ����C2ln�[j�]��O���ޛ�I�S���>����zV�Z+�/��ho��� �:c��DW,}�ӽn��}?y�[���6�� �B����_���]<;L�T�l�F�_�i���� �s�蒔±ݵY~s����޶��IP��;�YW�c���w���i9Sq���k���{� ��{���2O�/.�=kQ��KF�*�k4h]����9���u���).�c���%�Ǒfe߇�8��2?�����}�M,��7�ʾ_Ȟ����U��/]աMͽ����� ����4�h��m�(�+N�D�׿g��h�{���o�u���N[��a���X�|�S�zw��>���[��]^�$�Ii��6e�&d�@���f� 
������g"=�hfX��+1�H��{C�c����u6�lV��m��L�����N#�������
S����k�촧�������o�r�Z�ϳvI���q~,��� @:p[���+-�<��� �r�� j�����܎���hc@��2�$�����Gēy~T�I������^��OmofI�#ڱ��2������Ҫ�V�K
�Q*��tm7��� ������ ��R�cRQt�����oK������sB�?�ϲ�����~��s �%��$7˿��ߗ���V�X3���;7�U[��g��P8���9,�ZM��� ?���?�j��fh�
�����g�4� ?Ӆh5%�j�����Zm��0���%/b��}z_�Vn�RX�M�fYdj�~��d���c��uf�B�26�E��Y�A���v?��qJ�@�LCG
�pnm�'����~��s�; ْ"ٓii�O�fd79573000,23,0),
 (169979574546,4,2),
 (169979574546,16,1),
 (169979574546,23,0),
 (169979578156,4,2),
 (169979578156,16,1),
 (169979578156,23,0),
 (169979580359,4,2),
 (169979580359,16,1),
 (169979580359,23,0),
 (169979580937,4,2),
 (169979580937,16,1),
 (169979580937,23,0),
 (169979581515,4,2),
 (169979581515,16,1),
 (169979581515,23,0),
 (169979583046,4,2),
 (169979583046,16,1),
 (169979583046,23,0),
 (169979584921,4,2),
 (169979584921,16,1),
 (169979584921,23,0),
 (169979588359,4,2),
 (169979588359,16,1),
 (169979588359,23,0),
 (169979589265,4,2),
 (169979589265,16,1),
 (169979589265,23,0),
 (169979591125,4,2),
 (169979591125,16,1),
 (169979591125,23,0),
 (169979592656,4,2),
 (169979592656,16,1),
 (169979592656,23,0),
 (169979594781,4,2),
 (169979594781,16,1),
 (169979594781,23,0),
 (169979595343,4,2),
 (169979595343,16,1),
 (169979595343,23,0),
 (169979595906,4,2),
 (169979595906,16,1),
 (169979595906,23,0),
 (169979598656,4,2),
 (169979598656,16,1),
 (169979598656,23,0),
 (169979599515,4,2),
 (169979599515,16,1),
 (169979599515,23,0),
 (169979600078,4,2),
 (169979600078,16,1),
 (169979600078,23,0),
 (169979600625,4,2),
 (169979600625,16,1),
 (169979600625,23,0),
 (169979603703,4,2),
 (169979603703,16,1),
 (169979603703,23,0),
 (169979610250,4,2),
 (169979610250,16,1),
 (169979610250,23,0),
 (169979610843,4,2),
 (169979610843,16,1),
 (169979610843,23,0),
 (169979611734,4,2),
 (169979611734,16,1),
 (169979611734,23,0),
 (169979612296,4,2),
 (169979612296,16,1),
 (169979612296,23,0),
 (169979614109,4,2),
 (169979614109,16,1),
 (169979614109,23,0),
 (169979615984,4,2),
 (169979615984,16,1),
 (169979615984,23,0),
 (169979618156,4,2),
 (169979618156,16,1),
 (169979618156,23,0),
 (169979619703,4,2),
 (169979619703,16,1),
 (169979619703,23,0),
 (169979626750,4,1),
 (169979626750,16,1),
 (169979626750,23,0),
 (169979628578,4,1),
 (169979628578,16,1),
 (169979628578,23,0),
 (169979629156,4,1),
 (169979629156,16,1),
 (169979629156,23,0),
 (169979630078,4,1),
 (169979630078,16,1),
 (169979630078,23,0),
 (169979630656,4,1),
 (169979630656,16,1),
 (169979630656,23,0),
 (169979631546,4,1),
 (169979631546,16,1),
 (169979631546,23,0),
 (169979632437,4,1),
 (169979632437,16,1),
 (169979632437,23,0),
 (169979633328,4,1),
 (169979633328,16,1),
 (169979633328,23,0),
 (169979633906,4,1),
 (169979633906,16,1),
 (169979633906,23,0),
 (169979635109,4,1),
 (169979635109,16,1),
 (169979635109,23,0),
 (169979636328,4,1),
 (169979636328,16,1),
 (169979636328,23,0),
 (169979636937,4,1),
 (169979636937,16,1),
 (169979636937,23,0),
 (169979637828,4,1),
 (169979637828,16,1),
 (169979637828,23,0),
 (169979639390,4,1),
 (169979639390,16,1),
 (169979639390,23,0),
 (169979640296,4,1),
 (169979640296,16,1),
 (169979640296,23,0),
 (169979641828,4,1),
 (169979641828,16,1),
 (169979641828,23,0),
 (169979642437,4,1),
 (169979642437,16,1),
 (169979642437,23,0),
 (169979643015,4,1),
 (169979643015,16,1),
 (169979643015,23,0),
 (169979644281,4,1),
 (169979644281,16,1),
 (169979644281,23,0),
 (169979652578,4,2),
 (169979652578,16,1),
 (169979652578,23,0),
 (169979653765,4,2),
 (169979653765,16,1),
 (169979653765,23,0),
 (169979654359,4,2),
 (169979654359,16,1),
 (169979654359,23,0),
 (169980910671,4,1),
 (169980910671,16,1),
 (169980910671,23,2),
 (169980917234,4,1),
 (169980917234,16,1),
 (169980917234,23,2),
 (169980934921,4,1),
 (169980934921,16,1),
 (169980934921,23,2),
 (169980963625,4,1),
 (169980963625,16,1),
 (169980963625,23,2),
 (169981109421,4,1),
 (169981109421,16,1),
 (169981109421,23,2),
 (169981536765,4,1),
 (169981536765,16,1),
 (169981536765,23,2),
 (169981578156,4,1),
 (169981578156,16,1),
 (169981578156,23,2),
 (169981586046,4,1),
 (169981586046,16,1),
 (169981586046,23,2),
 (169982427796,4,1),
 (169982427796,16,1),
 (169982427796,23,2),
 (169983469421,4,1),
 (169983469421,16,1),
 (169983469421,23,0),
 (169983494750,4,1),
 (169983494750,16,1),
 (169983494750,23,0),
 (169983498859,4,1),
 (169983498859,16,1),
 (169983498859,23,0),
 (169983502578,4,1),
 (169983502578,16,1),
 (169983502578,23,0),
 (169983507312,4,1),
 (169983507312,16,1),
 (169983507312,23,0),
 (169983512187,4,1),
 (169983512187,16,1),
 (169983512187,23,0),
 (169983515296,4,1),
 (169983515296,16,1),
 (169983515296,23,0),
 (169983517156,4,1),
 (169983517156,16,1),
 (169983517156,23,0),
 (169983522187,4,1),
 (169983522187,16,1),
 (169983522187,23,0),
 (169983525125,4,1),
 (169983525125,16,1),
 (169983525125,23,0),
 (169983527906,4,1),
 (169983527906,16,1),
 (169983527906,23,0),
 (169983529953,4,2),
 (169983529953,16,1),
 (169983529953,23,2),
 (169983533562,4,1),
 (169983533562,16,1),
 (169983533562,23,0),
 (169983557781,4,2),
 (169983557781,16,1),
 (169983557781,23,2),
 (169985855203,4,1),
 (169985855203,16,1),
 (169985855203,23,2),
 (169985882500,4,2),
 (169985882500,16,1),
 (169985882500,23,2),
 (169985895953,4,2),
 (169985895953,16,1),
 (169985895953,23,2),
 (169986012671,4,2),
 (169986012671,16,1),
 (169986012671,23,2),
 (170000278343,4,1),
 (170000278343,16,1),
 (170000278343,23,2),
 (170001485515,4,2),
 (170001485515,16,1),
 (170001485515,23,0),
 (170001501546,4,2),
 (170001501546,16,1),
 (170001501546,23,0),
 (170001603281,4,2),
 (170001603281,16,1),
 (170001603281,23,0),
 (170002009546,4,2),
 (170002009546,16,1),
 (170002009546,23,2),
 (170002035250,4,2),
 (170002035250,16,1),
 (170002035250,23,2),
 (170002617015,4,2),
 (170002617015,16,1),
 (170002617015,23,0),
 (170002620156,4,2),
 (170002620156,16,1),
 (170002620156,23,0),
 (170002623250,4,2),
 (170002623250,16,1),
 (170002623250,23,0),
 (170002625062,4,2),
 (170002625062,16,1),
 (170002625062,23,0),
 (170002806437,4,1),
 (170002806437,16,1),
 (170002806437,23,2),
 (170003343421,4,1),
 (170003343421,16,1),
 (170003343421,23,2),
 (170003401171,4,1),
 (170003401171,16,1),
 (170003401171,23,2),
 (170004508140,4,2),
 (170004508140,16,1),
 (170004508140,23,2),
 (170004625812,4,1),
 (170004625812,16,1),
 (170004625812,23,0),
 (170004629812,4,1),
 (170004629812,16,1),
 (170004629812,23,0),
 (170005788171,4,2),
 (170005788171,16,1),
 (170005788171,23,2),
 (170006078218,4,1),
 (170006078218,16,1),
 (170006078218,23,2),
 (170007677109,4,1),
 (170007677109,16,1),
 (170007677109,23,2),
 (170008176906,4,2),
 (170008176906,16,1),
 (170008176906,23,2),
 (170008321343,4,2),
 (170008321343,16,1),
 (170008321343,23,2),
 (170008465546,4,2),
 (170008465546,16,1),
 (170008465546,23,2),
 (170009856140,4,2),
 (170009856140,16,1),
 (170009856140,23,2),
 (170011260265,4,2),
 (170011260265,16,1),
 (170011260265,23,0),
 (170011263718,4,2),
 (170011263718,16,1),
 (170011263718,23,0),
 (170011265890,4,2),
 (170011265890,16,1),
 (170011265890,23,0),
 (170011268046,4,2),
 (170011268046,16,1),
 (170011268046,23,0),
 (170011270234,4,2),
 (170011270234,16,1),
 (170011270234,23,0),
 (170011273796,4,2),
 (170011273796,16,1),
 (170011273796,23,0),
 (170011275046,4,2),
 (170011275046,16,1),
 (170011275046,23,0),
 (170011276906,4,2),
 (170011276906,16,1),
 (170011276906,23,0),
 (170011278453,4,2),
 (170011278453,16,1),
 (170011278453,23,0),
 (170011280296,4,2),
 (170011280296,16,1),
 (170011280296,23,0),
 (170011284093,4,2),
 (170011284093,16,1),
 (170011284093,23,0),
 (170011286625,4,2),
 (170011286625,16,1),
 (170011286625,23,0),
 (170011293312,4,2),
 (170011293312,16,1),
 (170011293312,23,0),
 (170011294875,4,2),
 (170011294875,16,1),
 (170011294875,23,0),
 (170011297062,4,2),
 (170011297062,16,1),
 (170011297062,23,0),
 (170011298625,4,2),
 (170011298625,16,1),
 (170011298625,23,0),
 (170011303687,4,2),
 (170011303687,16,1),
 (170011303687,23,0),
 (170011305546,4,2),
 (170011305546,16,1),
 (170011305546,23,0),
 (170011307546,4,2),
 (170011307546,16,1),
 (170011307546,23,0),
 (170011309093,4,2),
 (170011309093,16,1),
 (170011309093,23,0),
 (170011310640,4,2),
 (170011310640,16,1),
 (170011310640,23,0),
 (170011313781,4,2),
 (170011313781,16,1),
 (170011313781,23,0),
 (170011314703,4,2),
 (170011314703,16,1),
 (170011314703,23,0),
 (170011315281,4,2),
 (170011315281,16,1),
 (170011315281,23,0),
 (170011318453,4,2),
 (170011318453,16,1),
 (170011318453,23,0),
 (170011320000,4,2),
 (170011320000,16,1),
 (170011320000,23,0),
 (170011490125,4,2),
 (170011490125,16,1),
 (170011�       �ͫ   �      \ D e v i c e \ H a r d d i s k V o l u m e 4 \ S y s t e m   V o l u m e   I n f o r m a t i o n \ _ r e s t o r e { A 8 4 1 B 0 E 2 - 7 2 8 A - 4 5 A F - B A B 9 - F A 0 D 4 1 3 5 5 1 E 5 } \ R P 7 0 \ c h a n g e . l o g   �   Z      �ͫ�       �����                                           \ g e c o m   Z   n      �ͫ�       �����                                     *      \ g e c o m \ g e s t i o n X E   n   �      �ͫ        �����                                     \      \ g e c o m \ g e s t i o n X E \ D e s i n s t a l a r G e c o m G C 1 0 . e x e   �   v      �ͫ�       �����                                     2      \ g e c o m \ g e s t i o n X E \ e j e   v   �      �ͫ        �����                                     H      \ g e c o m \ g e s t i o n X E \ e j e \ C L A V E S . I N S   �   �      �ͫ        �����                                     d      \ g e c o m \ g e s t i o n X E \ e j e \ D e s i n s t a l a r G e c o m G C 1 0 . e x e   �   �      �ͫ        �����                                     d      \ g e c o m \ g e s t i o n X E \ e j e \ D e s i n s t a l a r G e c o m G C 1 1 . e x e   �   �      �ͫ        �����                                     J      \ g e c o m \ g e s t i o n X E \ e j e \ E R R O R E S . I N S   �   �      �ͫ        �����                                     F      \ g e c o m \ g e s t i o n X E \ e j e \ G C 0 0 0 . e x e   �   �      �ͫ        �����                                     R      \ g e c o m \ g e s t i o n X E \ e j e \ G c B d t C a m b i o . e x e   �   �      �ͫ        �����                                     J      \ g e c o m \ g e s t i o n X E \ e j e \ G c M o t o r . e x e   �   �      �ͫ        �����                                     J      \ g e c o m \ g e s t i o n X E \ e j e \ G e c o m A A . d l l   �   �      �ͫ        �����                                     J      \ g e c o m \ g e s t i o n X E \ e j e \ g e s t i o n . e x e   �   �      �ͫ        �����                                     L      \ g e c o m \ g e s t i o n X E \ e j e \ m l u s e r 3 2 . d l l   �   �      �ͫ        �����                                     L      \ g e c o m \ g e s t i o n X E \ e j e \ p a n t a s i s . I N S   �   �      �ͫ        �����                                     J      \ g e c o m \ g e s t i o n X E \ e j e \ s i s t e m a . i n i   �   ~      �ͫ�       �����                                     :      \ g e c o m \ g e s t i o n X E \ e j e \ e j e   ~   �      �ͫ        �����                                     R      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ E R R O R E S . I N S   �   �      �ͫ        �����                                     N      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ G C 0 0 0 . e x e   �   �      �ͫ        �����                                     Z      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ G c B d t C a m b i o . e x e   �   �      �ͫ        ���� �                                     R      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ G c M o t o r . e x e   �   �      �ͫ        ����!�                                     R      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ G e c o m A A . d l l   �   �      �ͫ        ����"�                                     R      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ g e s t i o n . e x e   �   �      �ͫ        ����#�                                     T      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ m l u s e r 3 2 . d l l   �   �      �ͫ        ����$�                                     T      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ p a n t a s i s . I N S   �   �      �ͫ        ����%�                                     R      \ g e c o m \ g e s t i o n X E \ e j e \ e j e \ s i s t e m a . i n i   �   ~      �ͫ�       ����&�                                     :      \ g e c o m \ g e s t i o n X E \ e j e \ d c n   ~   �      �ͫ�       ����'�                                     >      \ g e c o m \ g e s t i o n X E \ e j e \ a y u d a   �   v      �ͫ�       ����(�                                     2      \ g e c o m \ g e s t i o n X E \ d c n   v   z      �ͫ�       ����)�                                     6      \ g e c o m \ g e s t i o n X E \ a y u d a   z   �      �ͫ�       ����*�                                     D      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2   �   �      �ͫ        ����+�                                     |      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ D e s i n s t a l a r A F I P C o m W S 1 R 2 . e x e   �   �      �ͫ        ����,�                                     ^      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ l i b e a y 3 2 . d l l   �   �      �ͫ        ����-�                                     \      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ M S V C R 7 1 . d l l   �   �      �ͫ        ����.�                                     ^      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y a f i p w s . d l l   �   �      �ͫ        ����/�                                     \      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y e m a i l . d l l   �   �      �ͫ        ����0�                                     \      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y f e p d f . d l l   �   �      �ͫ        ����1�                                     X      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y i 2 5 . d l l   �   �      �ͫ        ����2�                                     ^      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y t h o n 2 5 . d l l   �   �      �ͫ        ����3�                                     d      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y t h o n c o m 2 5 . d l l   �   �      �ͫ        ����4�                                     f      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ p y w i n t y p e s 2 5 . d l l   �   �      �ͫ        ����5�                                     ^      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ s s l e a y 3 2 . d l l   �   �      �ͫ        ����6�                                     X      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ t c l 8 4 . d l l   �   �      �ͫ        ����7�                                     V      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ t k 8 4 . d l l   �   �      �ͫ        ����8�                                     V      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ w s a a . d l l   �   �      �ͫ        ����9�                                     Z      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ w s f e v 1 . d l l   �   �      �ͫ        ����:�                                     \      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ w s f e x v 1 . d l l   �   �      �ͫ        ����;�                                     X      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ w s m t x . d l l   �   �      �ͫ�       ����<�                                     P      \ g e c o m \ g e s t i o n X E \ a f i p c o m w s 1 r 2 \ c a c h e   �   r      �ͫ�       ����=�                                     .      \ g e c o m \ g e s t i o n p v x e   r   l      �ͫ�       ����>�                                     (      \ g e c o m \ c a p t u r a s   l                                                                                                                                                                                                                                                                                                                                                                                                                                                                               170050016359,23,0),
 (170050016937,4,1),
 (170050016937,16,1),
 (170050016937,23,0),
 (170050017500,4,1),
 (170050017500,16,1),
 (170050017500,23,0),
 (170050018406,4,1),
 (170050018406,16,1),
 (170050018406,23,0),
 (170050018968,4,1),
 (170050018968,16,1),
 (170050018968,23,0),
 (170050020171,4,1),
 (170050020171,16,1),
 (170050020171,23,0),
 (170050021375,4,1),
 (170050021375,16,1),
 (170050021375,23,0),
 (170050022906,4,1),
 (170050022906,16,1),
 (170050022906,23,0),
 (170050024156,4,1),
 (170050024156,16,1),
 (170050024156,23,0),
 (170050025359,4,1),
 (170050025359,16,1),
 (170050025359,23,0),
 (170050025937,4,1),
 (170050025937,16,1),
 (170050025937,23,0),
 (170050026515,4,1),
 (170050026515,16,1),
 (170050026515,23,0),
 (170050028015,4,1),
 (170050028015,16,1),
 (170050028015,23,0),
 (170050030218,4,1),
 (170050030218,16,1),
 (170050030218,23,0),
 (170050031765,4,1),
 (170050031765,16,1),
 (170050031765,23,0),
 (170050032656,4,1),
 (170050032656,16,1),
 (170050032656,23,0),
 (170050033531,4,1),
 (170050033531,16,1),
 (170050033531,23,0),
 (170050036328,4,1),
 (170050036328,16,1),
 (170050036328,23,0),
 (170050036921,4,1),
 (170050036921,16,1),
 (170050036921,23,0),
 (170050037515,4,1),
 (170050037515,16,1),
 (170050037515,23,0),
 (170050038703,4,1),
 (170050038703,16,1),
 (170050038703,23,0),
 (170050039921,4,1),
 (170050039921,16,1),
 (170050039921,23,0),
 (170050040515,4,1),
 (170050040515,16,1),
 (170050040515,23,0),
 (170050042390,4,1),
 (170050042390,16,1),
 (170050042390,23,0),
 (170050043296,4,1),
 (170050043296,16,1),
 (170050043296,23,0),
 (170050044843,4,1),
 (170050044843,16,1),
 (170050044843,23,0),
 (170050047656,4,1),
 (170050047656,16,1),
 (170050047656,23,0),
 (170050048281,4,1),
 (170050048281,16,1),
 (170050048281,23,0),
 (170050049500,4,1),
 (170050049500,16,1),
 (170050049500,23,0),
 (170050050406,4,1),
 (170050050406,16,1),
 (170050050406,23,0),
 (170050051640,4,1),
 (170050051640,16,1),
 (170050051640,23,0),
 (170050052546,4,1),
 (170050052546,16,1),
 (170050052546,23,0),
 (170050053453,4,1),
 (170050053453,16,1),
 (170050053453,23,0),
 (170050054046,4,1),
 (170050054046,16,1),
 (170050054046,23,0),
 (170050055906,4,1),
 (170050055906,16,1),
 (170050055906,23,0),
 (170050056812,4,1),
 (170050056812,16,1),
 (170050056812,23,0),
 (170050057703,4,1),
 (170050057703,16,1),
 (170050057703,23,0),
 (170050058593,4,1),
 (170050058593,16,1),
 (170050058593,23,0),
 (170050059500,4,1),
 (170050059500,16,1),
 (170050059500,23,0),
 (170050061031,4,1),
 (170050061031,16,1),
 (170050061031,23,0),
 (170050061593,4,1),
 (170050061593,16,1),
 (170050061593,23,0),
 (170050063734,4,1),
 (170050063734,16,1),
 (170050063734,23,0),
 (170050064671,4,1),
 (170050064671,16,1),
 (170050064671,23,0),
 (170050065234,4,1),
 (170050065234,16,1),
 (170050065234,23,0),
 (170050066125,4,1),
 (170050066125,16,1),
 (170050066125,23,0),
 (170050067640,4,1),
 (170050067640,16,1),
 (170050067640,23,0),
 (170050069484,4,1),
 (170050069484,16,1),
 (170050069484,23,0),
 (170050072921,4,1),
 (170050072921,16,1),
 (170050072921,23,0),
 (170050074562,4,1),
 (170050074562,16,1),
 (170050074562,23,0),
 (170050075781,4,1),
 (170050075781,16,1),
 (170050075781,23,0),
 (170050077609,4,1),
 (170050077609,16,1),
 (170050077609,23,0),
 (170050080750,4,1),
 (170050080750,16,1),
 (170050080750,23,0),
 (170050081640,4,1),
 (170050081640,16,1),
 (170050081640,23,0),
 (170050085187,4,1),
 (170050085187,16,1),
 (170050085187,23,0),
 (170050086718,4,1),
 (170050086718,16,1),
 (170050086718,23,0),
 (170050088281,4,1),
 (170050088281,16,1),
 (170050088281,23,0),
 (170050089156,4,1),
 (170050089156,16,1),
 (170050089156,23,0),
 (170050095156,4,1),
 (170050095156,16,1),
 (170050095156,23,0),
 (170050096062,4,1),
 (170050096062,16,1),
 (170050096062,23,0),
 (170050102062,4,1),
 (170050102062,16,1),
 (170050102062,23,0),
 (170050104015,4,1),
 (170050104015,16,1),
 (170050104015,23,0),
 (170050106187,4,1),
 (170050106187,16,1),
 (170050106187,23,0),
 (170050109625,4,1),
 (170050109625,16,1),
 (170050109625,23,0),
 (170050110843,4,1),
 (170050110843,16,1),
 (1
public class Automovil {

	private String marca,modelo,patente;		// Aqui se definen los ATRIBUTOS de la Clase Automovil
	private int  velocidad,aceleracion;
		
/*	public Automovil () {						// Aqui creamos un constructor DEFAULT que permitira crear una INSTANCIA u OBJETO 
	  this.marca="Sin Marca";                   // de la CLASE Automovil
	  this.modelo="Sin modelo";
	  this.patente="sin Patente";
	  this.aceleracion=0;
	  this.velocidad=0;
	}  */
	
	public Automovil(marca,modelo,patente,aceleracion,velocidad) {
	  this.marca = marca;                  
	  this.modelo = modelo;
	  this.patente = patente;
	  this.aceleracion = aceleracion;
	  this.velocidad = velocidad;	
	}	
	
		
	
	
	public String getMarca() {
		return marca;
	}




	public void setMarca(String marca) {
		this.marca = marca;
	}




	public String getModelo() {
		return modelo;
	}




	public void setModelo(String modelo) {
		this.modelo = modelo;
	}




	public String getPatente() {
		return patente;
	}




	public void setPatente(String patente) {
		this.patente = patente;
	}




	public int getVelocidad() {
		return velocidad;
	}




	public void setVelocidad(int velocidad) {
		this.velocidad = velocidad;
	}




	public int getAceleracion() {
		return aceleracion;
	}




	public void setAceleracion(int aceleracion) {
		this.aceleracion = aceleracion;
	}




	public void acelerar ( int aceleracion) {				// Creo el METODO acelerar para transferir el aumento de velocidad
	    this.aceleracion = aceleracion;
		velocidad = velocidad + this.aceleracion;
	}
		
		
		
		
	
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              0064973312,23,0),
 (170064977687,4,2),
 (170064977687,16,1),
 (170064977687,23,0),
 (170064985359,4,2),
 (170064985359,16,1),
 (170064985359,23,0),
 (170064989156,4,2),
 (170064989156,16,1),
 (170064989156,23,0),
 (170066782718,4,2),
 (170066782718,16,1),
 (170066782718,23,0),
 (170066785546,4,2),
 (170066785546,16,1),
 (170066785546,23,0),
 (170066799296,4,2),
 (170066799296,16,1),
 (170066799296,23,0),
 (170066834890,4,2),
 (170066834890,16,1),
 (170066834890,23,0),
 (170066856171,4,2),
 (170066856171,16,1),
 (170066856171,23,0),
 (170067638109,4,2),
 (170067638109,16,1),
 (170067638109,23,0),
 (170067662562,4,2),
 (170067662562,16,1),
 (170067662562,23,0),
 (170067757546,4,2),
 (170067757546,16,1),
 (170067757546,23,0),
 (170067795562,4,1),
 (170067795562,16,1),
 (170067795562,23,0),
 (170070698890,4,2),
 (170070698890,16,1),
 (170070698890,23,2),
 (170072316109,4,2),
 (170072316109,16,1),
 (170072316109,23,2),
 (170072524906,4,2),
 (170072524906,16,1),
 (170072524906,23,2),
 (170076910859,4,1),
 (170076910859,16,1),
 (170076910859,23,0),
 (170076913062,4,1),
 (170076913062,16,1),
 (170076913062,23,0),
 (170076918359,4,1),
 (170076918359,16,1),
 (170076918359,23,0),
 (170076920562,4,1),
 (170076920562,16,1),
 (170076920562,23,0),
 (170077109406,4,2),
 (170077109406,16,1),
 (170077109406,23,0),
 (170077202437,4,1),
 (170077202437,16,1),
 (170077202437,23,2),
 (170077608468,4,1),
 (170077608468,16,1),
 (170077608468,23,0),
 (170077616765,4,1),
 (170077616765,16,1),
 (170077616765,23,0),
 (170077619625,4,1),
 (170077619625,16,1),
 (170077619625,23,0),
 (170077626625,4,1),
 (170077626625,16,1),
 (170077626625,23,0),
 (170077644390,4,2),
 (170077644390,16,1),
 (170077644390,23,0),
 (170077646921,4,2),
 (170077646921,16,1),
 (170077646921,23,0),
 (170077648468,4,2),
 (170077648468,16,1),
 (170077648468,23,0),
 (170077650921,4,2),
 (170077650921,16,1),
 (170077650921,23,0),
 (170077654500,4,2),
 (170077654500,16,1),
 (170077654500,23,0),
 (170077656968,4,2),
 (170077656968,16,1),
 (170077656968,23,0),
 (170077659828,4,2),
 (170077659828,16,1),
 (170077659828,23,0),
 (170077660687,4,2),
 (170077660687,16,1),
 (170077660687,23,0),
 (170077661578,4,2),
 (170077661578,16,1),
 (170077661578,23,0),
 (170077663718,4,2),
 (170077663718,16,1),
 (170077663718,23,0),
 (170079018828,4,1),
 (170079018828,16,1),
 (170079018828,23,2),
 (170079238781,4,2),
 (170079238781,16,1),
 (170079238781,23,2),
 (170079934406,4,2),
 (170079934406,16,1),
 (170079934406,23,2),
 (170079951359,4,2),
 (170079951359,16,1),
 (170079951359,23,2),
 (170085048000,4,2),
 (170085048000,16,1),
 (170085048000,23,2),
 (170085310609,4,2),
 (170085310609,16,1),
 (170085310609,23,2),
 (170085318125,4,2),
 (170085318125,16,1),
 (170085318125,23,2),
 (170085324734,4,2),
 (170085324734,16,1),
 (170085324734,23,2),
 (170085866015,4,2),
 (170085866015,16,1),
 (170085866015,23,2),
 (170085913046,4,1),
 (170085913046,16,1),
 (170085913046,23,0),
 (170085940718,4,1),
 (170085940718,16,1),
 (170085940718,23,2),
 (170086309093,4,2),
 (170086309093,16,1),
 (170086309093,23,2),
 (170086359656,4,2),
 (170086359656,16,1),
 (170086359656,23,2),
 (170100106671,4,1),
 (170100106671,16,1),
 (170100106671,23,2),
 (170100197562,4,2),
 (170100197562,16,1),
 (170100197562,23,2),
 (170100234890,4,2),
 (170100234890,16,1),
 (170100234890,23,2),
 (170100296109,4,2),
 (170100296109,16,1),
 (170100296109,23,2),
 (170101415375,4,2),
 (170101415375,16,1),
 (170101415375,23,2),
 (170101477937,4,1),
 (170101477937,16,1),
 (170101477937,23,2),
 (170102144187,4,2),
 (170102144187,16,1),
 (170102144187,23,2),
 (170102153703,4,2),
 (170102153703,16,1),
 (170102153703,23,2),
 (170102364031,4,2),
 (170102364031,16,1),
 (170102364031,23,2),
 (170103432625,4,2),
 (170103432625,16,1),
 (170103432625,23,2),
 (170103607218,4,2),
 (170103607218,16,1),
 (170103607218,23,2),
 (170104151234,4,2),
 (170104151234,16,1),
 (170104151234,23,2),
 (170106154812,4,1),
 (170106154812,16,1),
 (170106154812,23,2),
 (170106164109,4,1),
 (170106164109,16,1),
 (170106164109,23,2),
 (170106176578,4,1),
 (170106176578,16,1),
 (170106176578,23,2),
 (170106421609,4,2),
 (170106421609,16,1),
 (170106421609,23,2),
 (170106753265,4,1),
 (170106753265,16,1),
 (170106753265,23,2),
 (170107817265,4,1),
 (170107817265,16,1),
 (170107817265,23,2),
 (170107839390,4,1),
 (170107839390,16,1),
 (170107839390,23,2),
 (170108467171,4,2),
 (170108467171,16,1),
 (170108467171,23,2),
 (170108560765,4,2),
 (170108560765,16,1),
 (170108560765,23,2),
 (170108878734,4,2),
 (170108878734,16,1),
 (170108878734,23,2),
 (170109143375,4,2),
 (170109143375,16,1),
 (170109143375,23,2),
 (170109149734,4,2),
 (170109149734,16,1),
 (170109149734,23,2),
 (170109763140,4,2),
 (170109763140,16,1),
 (170109763140,23,0),
 (170109765953,4,2),
 (170109765953,16,1),
 (170109765953,23,0),
 (170109771312,4,2),
 (170109771312,16,1),
 (170109771312,23,0),
 (170109776359,4,2),
 (170109776359,16,1),
 (170109776359,23,0),
 (170109779171,4,2),
 (170109779171,16,1),
 (170109779171,23,0),
 (170109781031,4,2),
 (170109781031,16,1),
 (170109781031,23,0),
 (170109785093,4,2),
 (170109785093,16,1),
 (170109785093,23,0),
 (170109825203,4,2),
 (170109825203,16,1),
 (170109825203,23,0),
 (170109827671,4,2),
 (170109827671,16,1),
 (170109827671,23,0),
 (170109835843,4,2),
 (170109835843,16,1),
 (170109835843,23,0),
 (170109838328,4,2),
 (170109838328,16,1),
 (170109838328,23,0),
 (170109839515,4,2),
 (170109839515,16,1),
 (170109839515,23,0),
 (170109921656,4,1),
 (170109921656,16,1),
 (170109921656,23,0),
 (170109923656,4,1),
 (170109923656,16,1),
 (170109923656,23,0),
 (170109926265,4,1),
 (170109926265,16,1),
 (170109926265,23,0),
 (170109928265,4,1),
 (170109928265,16,1),
 (170109928265,23,0),
 (170109930062,4,1),
 (170109930062,16,1),
 (170109930062,23,0),
 (170109931984,4,1),
 (170109931984,16,1),
 (170109931984,23,0),
 (170109933343,4,1),
 (170109933343,16,1),
 (170109933343,23,0),
 (170109934703,4,1),
 (170109934703,16,1),
 (170109934703,23,0),
 (170109936734,4,1),
 (170109936734,16,1),
 (170109936734,23,0),
 (170109971593,4,2),
 (170109971593,16,1),
 (170109971593,23,0),
 (170109972968,4,2),
 (170109972968,16,1),
 (170109972968,23,0),
 (170109976828,4,2),
 (170109976828,16,1),
 (170109976828,23,0),
 (170109980687,4,2),
 (170109980687,16,1),
 (170109980687,23,0),
 (170109982062,4,2),
 (170109982062,16,1),
 (170109982062,23,0),
 (170109985937,4,2),
 (170109985937,16,1),
 (170109985937,23,0),
 (170109990421,4,2),
 (170109990421,16,1),
 (170109990421,23,0),
 (170109991796,4,2),
 (170109991796,16,1),
 (170109991796,23,0),
 (170109992546,4,2),
 (170109992546,16,1),
 (170109992546,23,0),
 (170110019406,4,2),
 (170110019406,16,1),
 (170110019406,23,0),
 (170110020015,4,2),
 (170110020015,16,1),
 (170110020015,23,0),
 (170113403953,4,1),
 (170113403953,16,1),
 (170113403953,23,2),
 (170113807015,4,2),
 (170113807015,16,1),
 (170113807015,23,0),
 (170113808875,4,2),
 (170113808875,16,1),
 (170113808875,23,0),
 (170113814125,4,2),
 (170113814125,16,1),
 (170113814125,23,0),
 (170113816609,4,2),
 (170113816609,16,1),
 (170113816609,23,0),
 (170113819109,4,2),
 (170113819109,16,1),
 (170113819109,23,0),
 (170114271125,4,2),
 (170114271125,16,1),
 (170114271125,23,2),
 (170115681593,4,2),
 (170115681593,16,1),
 (170115681593,23,0),
 (170115683156,4,2),
 (170115683156,16,1),
 (170115683156,23,0),
 (170115687578,4,2),
 (170115687578,16,1),
 (170115687578,23,0),
 (170115690078,4,2),
 (170115690078,16,1),
 (170115690078,23,0),
 (170115693250,4,2),
 (170115693250,16,1),
 (170115693250,23,0),
 (170115694500,4,2),
 (170115694500,16,1),
 (170115694500,23,0),
 (170115701171,4,2),
 (170115701171,16,1),
 (170115701171,23,0),
 (170115704468,4,2),
 (170115704468,16,1),
 (170115704468,23,0),
 (170115706968,4,2),
 (170115706968,16,1),
 (170115706968,23,0),
 (170115707890,4,2),
 (170115707890,16,1),
 (170115707890,23,0),
 (170115708828,4,2),
 (170115708828,16,1),
 (170115708828,23,0),
 (170115709718,4,2),
 (170115709718,16,1),
 (170115709718,23,0),
 (170115710609,4,2),
 (170115710609,16,1),
 (170115710609,23,0),
 (170115711828,4,2),
 (170115711828,16,1),
 (170115711828,23,0),
 (170115712750,4,2),
 (170115712750,16,1),
 (170115712750,23,0),
 (170115714265,4,2),
 (170115714265,16,1),
 (170115714265,23,0),
 (170115721859,4,2),
 (170115721859,16,1),
 (170115721859,23,0),
 (170115724046,4,2),
 (170115724046,16,1),
 (170115724046,23,0),
 (170117112281,4,2),
 (170117112281,16,1),
 (170117112281,23,0),
 (170117113218,4,2),
 (170117113218,16,1),
 (170117113218,23,0),
 (170117114109,4,2),
 (170117114109,16,1),
 (170117114109,23,0),
 (170117115000,4,2),
 (170117115000,16,1),
 (170117115000,23,0),
 (170117115890,4,2),
 (170117115890,16,1),
 (170117115890,23,0),
 (170117120968,4,2),
 (170117120968,16,1),
 (170117120968,23,0),
 (170117121859,4,2),
 (170117121859,16,1),
 (170117121859,23,0),
 (170117124000,4,2),
 (170117124000,16,1),
 (170117124000,23,0),
 (170117124890,4,2),
 (170117124890,16,1),
 (170117124890,23,0),
 (170117126109,4,2),
 (170117126109,16,1),
 (170117126109,23,0),
 (170117127000,4,2),
 (170117127000,16,1),
 (170117127000,23,0),
 (170117128250,4,2),
 (170117128250,16,1),
 (170117128250,23,0),
 (170117129218,4,2),
 (170117129218,16,1),
 (170117129218,23,0),
 (170117131109,4,2),
 (170117131109,16,1),
 (170117131109,23,0),
 (170117132687,4,2),
 (170117132687,16,1),
 (170117132687,23,0),
 (170117135218,4,2),
 (170117135218,16,1),
 (170117135218,23,0),
 (170117139328,4,2),
 (170117139328,16,1),
 (170117139328,23,0),
 (170117144359,4,2),
 (170117144359,16,1),
 (170117144359,23,0),
 (170117147000,4,2),
 (170117147000,16,1),
 (170117147000,23,0),
 (170117147906,4,2),
 (170117147906,16,1),
 (170117147906,23,0),
 (170117151359,4,2),
 (170117151359,16,1),
 (170117151359,23,0),
 (170117152921,4,2),
 (170117152921,16,1),
 (170117152921,23,0),
 (170117154796,4,2),
 (170117154796,16,1),
 (170117154796,23,0),
 (170117157968,4,2),
 (170117157968,16,1),
 (170117157968,23,0),
 (170117158906,4,2),
 (170117158906,16,1),
 (170117158906,23,0),
 (170117159515,4,2),
 (170117159515,16,1),
 (170117159515,23,0),
 (170117160437,4,2),
 (170117160437,16,1),
 (170117160437,23,0),
 (170117161031,4,2),
 (170117161031,16,1),
 (170117161031,23,0),
 (170117162265,4,2),
 (170117162265,16,1),
 (170117162265,23,0),
 (170117175875,4,2),
 (170117175875,16,1),
 (170117175875,23,0),
 (170117178046,4,2),
 (170117178046,16,1),
 (170117178046,23,0),
 (170117182453,4,2),
 (170117182453,16,1),
 (170117182453,23,0),
 (170118309484,4,2),
 (170118309484,16,1),
 (170118309484,23,2),
 (170132343046,4,1),
 (170132343046,16,1),
 (170132343046,23,0),
 (170132346796,4,1),
 (170132346796,16,1),
 (170132346796,23,0),
 (170132352406,4,1),
 (170132352406,16,1),
 (170132352406,23,0),
 (170132353328,4,1),
 (170132353328,16,1),
 (170132353328,23,0),
 (170145198203,4,1),
 (170145198203,16,1),
 (170145198203,23,0),
 (170145202015,4,1),
 (170145202015,16,1),
 (170145202015,23,0),
 (170145205515,4,1),
 (170145205515,16,1),
 (170145205515,23,0),
 (170145210234,4,1),
 (170145210234,16,1),
 (170145210234,23,0),
 (170145427531,4,1),
 (170145427531,16,1),
 (170145427531,23,0),
 (170145432015,4,1),
 (170145432015,16,1),
 (170145432015,23,0),
 (170145436515,4,1),
 (170145436515,16,1),
 (170145436515,23,0),
 (170145440500,4,1),
 (170145440500,16,1),
 (170145440500,23,0),
 (170145441859,4,1),
 (170145441859,16,1),
 (170145441859,23,0),
 (170145442609,4,1),
 (170145442609,16,1),
 (170145442609,23,0),
 (170145443359,4,1),
 (170145443359,16,1),
 (170145443359,23,0),
 (170145444062,4,1),
 (170145444062,16,1),
 (170145444062,23,0),
 (170145465437,4,1),
 (170145465437,16,1),
 (170145465437,23,0),
 (170145472437,4,1),
 (170145472437,16,1),
 (170145472437,23,0),
 (170145476921,4,1),
 (170145476921,16,1),
 (170145476921,23,0),
 (170145481406,4,1),
 (170145481406,16,1),
 (170145481406,23,0),
 (170145489328,4,2),
 (170145489328,16,1),
 (170145489328,23,0),
 (170145494500,4,2),
 (170145494500,16,1),
 (170145494500,23,0),
 (170145497750,4,2),
 (170145497750,16,1),
 (170145497750,23,0),
 (170145499156,4,2),
 (170145499156,16,1),
 (170145499156,23,0),
 (170145504296,4,2),
 (170145504296,16,1),
 (170145504296,23,0),
 (170145507046,4,2),
 (170145507046,16,1),
 (170145507046,23,0),
 (170145508453,4,2),
 (170145508453,16,1),
 (170145508453,23,0),
 (170145509203,4,2),
 (170145509203,16,1),
 (170145509203,23,0),
 (170145819890,4,1),
 (170145819890,16,1),
 (170145819890,23,2),
 (170146812750,4,1),
 (170146812750,16,1),
 (170146812750,23,0),
 (170146818421,4,1),
 (170146818421,16,1),
 (170146818421,23,0),
 (170146820906,4,1),
 (170146820906,16,1),
 (170146820906,23,0),
 (170146826843,4,1),
 (170146826843,16,1),
 (170146826843,23,0),
 (170146827453,4,1),
 (170146827453,16,1),
 (170146827453,23,0),
 (170146828671,4,1),
 (170146828671,16,1),
 (170146828671,23,0),
 (170146830203,4,1),
 (170146830203,16,1),
 (170146830203,23,0),
 (170147337093,4,1),
 (170147337093,16,1),
 (170147337093,23,0),
 (170147341843,4,1),
 (170147341843,16,1),
 (170147341843,23,0),
 (170147344046,4,1),
 (170147344046,16,1),
 (170147344046,23,0),
 (170147348562,4,1),
 (170147348562,16,1),
 (170147348562,23,0),
 (170147352312,4,1),
 (170147352312,16,1),
 (170147352312,23,0),
 (170147352890,4,1),
 (170147352890,16,1),
 (170147352890,23,0),
 (170147367453,4,1),
 (170147367453,16,1),
 (170147367453,23,0),
 (170147369609,4,1),
 (170147369609,16,1),
 (170147369609,23,0),
 (170147370843,4,1),
 (170147370843,16,1),
 (170147370843,23,0),
 (170147373046,4,1),
 (170147373046,16,1),
 (170147373046,23,0),
 (170147375531,4,1),
 (170147375531,16,1),
 (170147375531,23,0),
 (170147377718,4,1),
 (170147377718,16,1),
 (170147377718,23,0),
 (170147379265,4,1),
 (170147379265,16,1),
 (170147379265,23,0),
 (170147380171,4,1),
 (170147380171,16,1),
 (170147380171,23,0),
 (170147381390,4,1),
 (170147381390,16,1),
 (170147381390,23,0),
 (170147383265,4,1),
 (170147383265,16,1),
 (170147383265,23,0),
 (170147713093,4,2),
 (170147713093,16,1),
 (170147713093,23,2),
 (170147755484,4,1),
 (170147755484,16,1),
 (170147755484,23,0),
 (170147758328,4,1),
 (170147758328,16,1),
 (170147758328,23,0),
 (170147761156,4,1),
 (170147761156,16,1),
 (170147761156,23,0),
 (170147762718,4,1),
 (170147762718,16,1),
 (170147762718,23,0),
 (170147782296,4,1),
 (170147782296,16,1),
 (170147782296,23,0),
 (170147787015,4,1),
 (170147787015,16,1),
 (170147787015,23,0),
 (170147788265,4,1),
 (170147788265,16,1),
 (170147788265,23,0),
 (170147789781,4,1),
 (170147789781,16,1),
 (170147789781,23,0),
 (170147792328,4,1),
 (170147792328,16,1),
 (170147792328,23,0),
 (170147794515,4,1),
 (170147794515,16,1),
 (170147794515,23,0),
 (170147798015,4,1),
 (170147798015,16,1),
 (170147798015,23,0),
 (170147801140,4,1),
 (170147801140,16,1),
 (170147801140,23,0),
 (170147804906,4,1),
 (170147804906,16,1),
 (170147804906,23,0),
 (170147807093,4,1),
 (170147807093,16,1),
 (170147807093,23,0),
 (170147816218,4,2),
 (170147816218,16,1),
 (170147816218,23,2),
 (170147861296,4,2),
 (170147861296,16,1),
 (170147861296,23,2),
 (170147966140,4,1),
 (170147966140,16,1),
 (170147966140,23,0),
 (170147979781,4,1),
 (170147979781,16,1),
 (170147979781,23,0),
 (170147983390,4,1),
 (170147983390,16,1),
 (170147983390,23,0),
 (170148368250,4,1),
 (170148368250,16,1),
 (170148368250,23,2),
 (170148398031,4,1),
 (170148398031,16,1),
 (170148398031,23,2),
 (170149487593,4,2),
 (170149487593,16,1),
 (170149487593,23,2),
 (170149676265,4,1),
 (170149676265,16,1),
 (170149676265,23,2),
 (170150579593,4,1),
 (170150579593,16,1),
 (170150579593,23,2),
 (170150645656,4,1),
 (170150645656,16,1),
 (170150645656,23,2),
 (170151120218,4,1),
 (170151120218,16,1),
 (170151120218,23,0),
 (170151123328,4,1),
 (170151123328,16,1),
 (170151123328,23,0),
 (170151125828,4,1),
 (170151125828,16,1),
 (170151125828,23,0),
 (170151126750,4,1),
 (170151126750,16,1),
 (170151126750,23,0),
 (170151127687,4,1),
 (170151127687,16,1),
 (170151127687,23,0),
 (170151129218,4,1),
 (170151129218,16,1),
 (170151129218,23,0),
 (170151130468,4,1),
 (170151130468,16,1),
 (170151130468,23,0),
 (170151131046,4,1),
 (170151131046,16,1),
 (170151131046,23,0),
 (170151131625,4,1),
 (170151131625,16,1),
 (170151131625,23,0),
 (170151137046,4,1),
 (170151137046,16,1),
 (170151137046,23,0),
 (170151144078,4,1),
 (170151144078,16,1),
 (170151144078,23,0),
 (170151145656,4,1),
 (170151145656,16,1),
 (170151 INDEX VERSION 1.130  � 2sun/net/spi/nameservice/dns/DNSNameService$1.class+ 2+ ThreadContext*  * 
Descriptor    dirCtxt���� nsList���� 
contextRef���� val$name���� val$ctx���� 
domainList���� nameProviderUrl���� this$0     $assertionsDisabled���� val$ids���� val$env       H NameServiceDescriptor���� 	ArrayList���� 	Hashtable     $assertionsDisabled���� DNSNameService$ThreadContext    String    val$env     nameservice     PrivilegedActionException���� Context     
DirContext     val$ids���� nsList���� 
contextRef���� NamingException     val$name���� PrivilegedExceptionAction     lang     
Attributes    naming     
LinkedList���� NameService    boolean���� IPAddressUtil���� 	directory     Integer���� int���� UnknownHostException���� security     dns     Object     ThreadContext    util���� void���� Iterator���� DNSNameService     sun     AccessController���� java     NamingEnumeration���� Error���� dirCtxt���� action���� nameProviderUrl���� GetPropertyAction���� ResolverConfiguration���� InetAddress���� StringTokenizer���� ref���� ThreadLocal���� 	Attribute���� StringBuilder���� byte[]���� InetAddress[]���� String[]    spi     
domainList���� javax     AssertionError���� val$ctx���� StringBuffer���� List    Class���� this$0     NamingManager     	Exception     SoftReference���� RuntimeException���� DNSNameServiceDescriptor���� DNSNameService$1     DNSNameService$2    net        UnknownHostException/0���� Hashtable/0���� StringBuilder/0���� StringTokenizer/2���� UnknownHostException/1���� DNSNameService$2/3���� 2/3���� Error/1���� DNSNameService$ThreadContext/2���� RuntimeException/1���� AssertionError/0���� ThreadContext/2���� DNSNameService/0���� GetPropertyAction/1���� Object/0     1/1���� DNSNameService$1/1���� LinkedList/0���� StringBuffer/0���� ArrayList/0���� SoftReference/1���� ThreadLocal/0����   - textToNumericFormatV4/1���� length/0���� size/0���� appendIfLiteralAddress/2���� 
toString/0���� getException/0���� isIPv4LiteralAddress/1���� 
iterator/0���� desiredAssertionStatus/0���� doPrivileged/1���� getID/0���� append/1���� 
endsWith/1���� 	isEmpty/0���� 	hasNext/0���� open/0���� get/0���� get/1���� equals/1���� getMessage/0���� getAll/0���� add/1���� hasMoreTokens/0���� toHexString/1���� getTemporaryContext/0���� dirContext/0���� 	resolve/4���� getInitialContext/1     next/0���� nameservers/0���� getAttributes/2���� addAll/1���� run/0     textToNumericFormatV6/1���� 	indexOf/1���� set/1���� substring/1���� substring/2���� hasMoreElements/0���� createProviderURL/1���� searchlist/0���� put/2���� isIPv6LiteralAddress/1���� nextToken/0���� getByAddress/2����    NObject/java.lang/ThreadContext/DNSNameService//sun.net.spi.nameservice.dns/CC
���� KPrivilegedExceptionAction/java.security//0//sun.net.spi.nameservice.dns/IC      AObject/java.lang/DNSNameService///sun.net.spi.nameservice.dns/CC1���� hNameServiceDescriptor/sun.net.spi.nameservice/DNSNameServiceDescriptor///sun.net.spi.nameservice.dns/IC1���� TNameService/sun.net.spi.nameservice/DNSNameService///sun.net.spi.nameservice.dns/IC1���� 4Object/java.lang//0//sun.net.spi.nameservice.dns/CC      KObject/java.lang/DNSNameServiceDescriptor///sun.net.spi.nameservice.dns/CC1����    <DNSNameServiceDescriptor/0/1 /sun.net.spi.nameservice.dns/ ���� 2DNSNameService/0/1 /sun.net.spi.nameservice.dns/ ���� ThreadContext/1/
⠀���� /1/ ⠀     /3/ ⠀����    ~createProviderURL/1//DNSNameService/1ࠀ/sun.net.spi.nameservice.dns/(Ljava\lang\String;)Ljava\lang\String;//
 /java.lang.String���� adirContext/0//ThreadContext/
 /sun.net.spi.nameservice.dns/// /javax.naming.directory.DirContext���� `getProviderName/0//DNSNameServiceDescriptor/1 /sun.net.spi.nameservice.dns/// /java.lang.String���� XgetType/0//DNSNameServiceDescriptor/1 /sun.net.spi.nameservice.dns/// /java.lang.String���� ~appendIfLiteralAddress/2//DNSNameService/1ࠀ/sun.net.spi.nameservice.dns/(Ljava\lang\String;Ljava\lang\StringBuffer;)V//
 /void���� ucreateNameService/0//DNSNameServiceDescriptor/1 /sun.net.spi.nameservice.dns/// /sun.net.spi.nameservice.NameService���� �resolve/4//DNSNameService/1ࠀ/sun.net.spi.nameservice.dns/(Ljavax\naming\directory\DirContext;Ljava\lang\String;[Ljava\lang\String;I)Ljava\util\ArrayList<Ljava\lang\String;>;// /java.util.ArrayList���� �createProviderURL/1//DNSNameService/1ࠀ/sun.net.spi.nameservice.dns/(Ljava\util\List<Ljava\lang\String;>;)Ljava\lang\String;//
 /java.lang.String���� �lookupAllHostAddr/1//DNSNameService/1ࠀ/sun.net.spi.nameservice.dns/(Ljava\lang\String;)[Ljava\net\InetAddress;// /java.net.InetAddress[]���� Onameservers/0//ThreadContext/
 /sun.net.spi.nameservice.dns/// /java.util.List���� jgetHostByAddr/1//DNSNameService/1ࠀ/sun.net.spi.nameservice.dns/([B)Ljava\lang\String;// /java.lang.String���� kgetTemporaryContext/0//DNSNameService/1 /sun.net.spi.nameservice.dns/// /javax.naming.directory.DirContext����    run/0     nameservers/0���� getProviderName/0���� createNameService/0���� appendIfLiteralAddress/2���� getTemporaryContext/0���� createProviderURL/1���� dirContext/0���� lookupAllHostAddr/1���� 	getType/0���� getHostByAddr/1���� 	resolve/4����    .DNSNameService/sun.net.spi.nameservice.dns//1 ���� !/sun.net.spi.nameservice.dns/0/       ;ThreadContext/sun.net.spi.nameservice.dns/DNSNameService/
 ���� 8DNSNameServiceDescriptor/sun.net.spi.nameservice.dns//1 ����   |      v   	 	fieldDecl   u ref  # constructorRef  + 	methodRef  � superRef  - constructorDecl  t methodDeclPlus  & 
methodDecl   typeDecl                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             7718,23,0),
 (170177340546,4,2),
 (170177340546,16,1),
 (170177340546,23,0),
 (170177410843,4,1),
 (170177410843,16,1),
 (170177410843,23,2),
 (170177538156,4,1),
 (170177538156,16,1),
 (170177538156,23,2),
 (170177827671,4,2),
 (170177827671,16,1),
 (170177827671,23,2),
 (170178026953,4,1),
 (170178026953,16,1),
 (170178026953,23,2),
 (170178820468,4,2),
 (170178820468,16,1),
 (170178820468,23,2),
 (170179275796,4,2),
 (170179275796,16,1),
 (170179275796,23,2),
 (170179283078,4,2),
 (170179283078,16,1),
 (170179283078,23,2),
 (170180510203,4,1),
 (170180510203,16,1),
 (170180510203,23,2),
 (170181115265,4,2),
 (170181115265,16,1),
 (170181115265,23,2),
 (170181193796,4,1),
 (170181193796,16,1),
 (170181193796,23,2),
 (170181298359,4,2),
 (170181298359,16,1),
 (170181298359,23,2),
 (170182098109,4,1),
 (170182098109,16,1),
 (170182098109,23,2),
 (170182615562,4,1),
 (170182615562,16,1),
 (170182615562,23,2),
 (170183631546,4,1),
 (170183631546,16,1),
 (170183631546,23,2),
 (170183950156,4,1),
 (170183950156,16,1),
 (170183950156,23,0),
 (170183953015,4,1),
 (170183953015,16,1),
 (170183953015,23,0),
 (170183957125,4,1),
 (170183957125,16,1),
 (170183957125,23,0),
 (170183960906,4,1),
 (170183960906,16,1),
 (170183960906,23,0),
 (170183962125,4,1),
 (170183962125,16,1),
 (170183962125,23,0),
 (170183967031,4,1),
 (170183967031,16,1),
 (170183967031,23,0),
 (170183969234,4,1),
 (170183969234,16,1),
 (170183969234,23,0),
 (170183970140,4,1),
 (170183970140,16,1),
 (170183970140,23,0),
 (170183975203,4,1),
 (170183975203,16,1),
 (170183975203,23,0),
 (170183976765,4,1),
 (170183976765,16,1),
 (170183976765,23,0),
 (170183988937,4,2),
 (170183988937,16,1),
 (170183988937,23,0),
 (170183989703,4,2),
 (170183989703,16,1),
 (170183989703,23,0),
 (170184360375,4,2),
 (170184360375,16,1),
 (170184360375,23,2),
 (170184369625,4,2),
 (170184369625,16,1),
 (170184369625,23,2),
 (170184483093,4,2),
 (170184483093,16,1),
 (170184483093,23,2),
 (170184592578,4,2),
 (170184592578,16,1),
 (170184592578,23,2),
 (170184893718,4,1),
 (170184893718,16,1),
 (170184893718,23,2),
 (170185273250,4,2),
 (170185273250,16,1),
 (170185273250,23,2),
 (170214100046,4,2),
 (170214100046,16,1),
 (170214100046,23,0),
 (170214325671,4,2),
 (170214325671,16,1),
 (170214325671,23,0),
 (170214326281,4,2),
 (170214326281,16,1),
 (170214326281,23,0),
 (170214330421,4,2),
 (170214330421,16,1),
 (170214330421,23,0),
 (170214331312,4,2),
 (170214331312,16,1),
 (170214331312,23,0),
 (170214335937,4,2),
 (170214335937,16,1),
 (170214335937,23,0),
 (170216034046,4,1),
 (170216034046,16,1),
 (170216034046,23,0),
 (170216037515,4,1),
 (170216037515,16,1),
 (170216037515,23,0),
 (170216041312,4,1),
 (170216041312,16,1),
 (170216041312,23,0),
 (170216042843,4,1),
 (170216042843,16,1),
 (170216042843,23,0),
 (170216046937,4,1),
 (170216046937,16,1),
 (170216046937,23,0),
 (170216047625,4,1),
 (170216047625,16,1),
 (170216047625,23,0),
 (170216048843,4,1),
 (170216048843,16,1),
 (170216048843,23,0),
 (170216051453,4,1),
 (170216051453,16,1),
 (170216051453,23,0),
 (170216053953,4,1),
 (170216053953,16,1),
 (170216053953,23,0),
 (170216058093,4,1),
 (170216058093,16,1),
 (170216058093,23,0),
 (170216059000,4,1),
 (170216059000,16,1),
 (170216059000,23,0),
 (170216060531,4,1),
 (170216060531,16,1),
 (170216060531,23,0),
 (170216061109,4,1),
 (170216061109,16,1),
 (170216061109,23,0),
 (170216063906,4,1),
 (170216063906,16,1),
 (170216063906,23,0),
 (170216067703,4,1),
 (170216067703,16,1),
 (170216067703,23,0),
 (170216068296,4,1),
 (170216068296,16,1),
 (170216068296,23,0),
 (170216070468,4,1),
 (170216070468,16,1),
 (170216070468,23,0),
 (170216071359,4,1),
 (170216071359,16,1),
 (170216071359,23,0),
 (170216072281,4,1),
 (170216072281,16,1),
 (170216072281,23,0),
 (170216073171,4,1),
 (170216073171,16,1),
 (170216073171,23,0),
 (170216099015,4,2),
 (170216099015,16,1),
 (170216099015,23,0),
 (170216101546,4,2),
 (170216101546,16,1),
 (170216101546,23,0),
 (170216103734,4,2),
 (170216103734,16,1),
 (170216103734,23,0),
 (170216105312,4,2),
 (170216105312,16,1),
 (170216105Signature-Version: 1.0
SHA-256-Digest-Manifest-Main-Attributes: QZ4kU9li4MUUJNvB7ohlCS+hcnlRb
 vtwZmrpTt0zP6g=
SHA-256-Digest-Manifest: jlVPc8SN5pCp/hPH/oY6uHhpZwLb3+Wvka55PZ4KvuY=
Created-By: 1.8.0_131 (Oracle Corporation)

Name: epl-v10.html
SHA-256-Digest: LwwHH6Ww/ppPhKyMXRScvLbxGP4nFRALCbHbbwSA0SA=

Name: feature.xml
SHA-256-Digest: kKzTMY/YtDkSknzKJ6YHbTEBIYMEstJlrgsQpCKmteA=

Name: eclipse_update_120.jpg
SHA-256-Digest: D0fcUhJi81TIzNC+lAri7RDcArlCr58r7+VK17FdonE=

Name: feature.properties
SHA-256-Digest: fgCTtVssWm76i51i5BWKUqWzs0/WM9l7CVAKu2nM7U8=

Name: license.html
SHA-256-Digest: gb5ZzrbOyFArzDLUIG4huZV/GHHBYb0EtixuMKXnhqs=

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      53,23,0),
 (170242030640,4,1),
 (170242030640,16,1),
 (170242030640,23,0),
 (170242055671,4,1),
 (170242055671,16,1),
 (170242055671,23,0),
 (170242260718,4,1),
 (170242260718,16,1),
 (170242260718,23,0),
 (170242262859,4,1),
 (170242262859,16,1),
 (170242262859,23,0),
 (170242264359,4,1),
 (170242264359,16,1),
 (170242264359,23,0),
 (170242294906,4,1),
 (170242294906,16,1),
 (170242294906,23,0),
 (170242295484,4,1),
 (170242295484,16,1),
 (170242295484,23,0),
 (170242296703,4,1),
 (170242296703,16,1),
 (170242296703,23,0),
 (170242298218,4,1),
 (170242298218,16,1),
 (170242298218,23,0),
 (170242299453,4,1),
 (170242299453,16,1),
 (170242299453,23,0),
 (170242301328,4,1),
 (170242301328,16,1),
 (170242301328,23,0),
 (170242305078,4,1),
 (170242305078,16,1),
 (170242305078,23,0),
 (170243026015,4,1),
 (170243026015,16,1),
 (170243026015,23,0),
 (170243029093,4,1),
 (170243029093,16,1),
 (170243029093,23,0),
 (170243032875,4,1),
 (170243032875,16,1),
 (170243032875,23,0),
 (170243037281,4,1),
 (170243037281,16,1),
 (170243037281,23,0),
 (170243040421,4,1),
 (170243040421,16,1),
 (170243040421,23,0),
 (170243042312,4,1),
 (170243042312,16,1),
 (170243042312,23,0),
 (170243043562,4,1),
 (170243043562,16,1),
 (170243043562,23,0),
 (170243046812,4,1),
 (170243046812,16,1),
 (170243046812,23,0),
 (170243986625,4,1),
 (170243986625,16,1),
 (170243986625,23,0),
 (170243988437,4,1),
 (170243988437,16,1),
 (170243988437,23,0),
 (170243991671,4,1),
 (170243991671,16,1),
 (170243991671,23,0),
 (170243995484,4,1),
 (170243995484,16,1),
 (170243995484,23,0),
 (170244001781,4,1),
 (170244001781,16,1),
 (170244001781,23,0),
 (170244004968,4,1),
 (170244004968,16,1),
 (170244004968,23,0),
 (170244008203,4,1),
 (170244008203,16,1),
 (170244008203,23,0),
 (170244013250,4,1),
 (170244013250,16,1),
 (170244013250,23,0),
 (170244017187,4,1),
 (170244017187,16,1),
 (170244017187,23,0),
 (170244022296,4,1),
 (170244022296,16,1),
 (170244022296,23,0),
 (170244025546,4,1),
 (170244025546,16,1),
 (170244025546,23,0),
 (170244030593,4,1),
 (170244030593,16,1),
 (170244030593,23,0),
 (170244038140,4,1),
 (170244038140,16,1),
 (170244038140,23,0),
 (170244041375,4,1),
 (170244041375,16,1),
 (170244041375,23,0),
 (170244055484,4,2),
 (170244055484,16,1),
 (170244055484,23,0),
 (170244057843,4,2),
 (170244057843,16,1),
 (170244057843,23,0),
 (170244061734,4,2),
 (170244061734,16,1),
 (170244061734,23,0),
 (170244065156,4,2),
 (170244065156,16,1),
 (170244065156,23,0),
 (170244553062,4,1),
 (170244553062,16,1),
 (170244553062,23,0),
 (170244555546,4,1),
 (170244555546,16,1),
 (170244555546,23,0),
 (170244563796,4,1),
 (170244563796,16,1),
 (170244563796,23,0),
 (170244565796,4,1),
 (170244565796,16,1),
 (170244565796,23,0),
 (170244567937,4,1),
 (170244567937,16,1),
 (170244567937,23,0),
 (170244571015,4,1),
 (170244571015,16,1),
 (170244571015,23,0),
 (170244572390,4,1),
 (170244572390,16,1),
 (170244572390,23,0),
 (170244575015,4,1),
 (170244575015,16,1),
 (170244575015,23,0),
 (170244576390,4,1),
 (170244576390,16,1),
 (170244576390,23,0),
 (170244577125,4,1),
 (170244577125,16,1),
 (170244577125,23,0),
 (170245763906,4,1),
 (170245763906,16,1),
 (170245763906,23,0),
 (170245767640,4,1),
 (170245767640,16,1),
 (170245767640,23,0),
 (170245772734,4,1),
 (170245772734,16,1),
 (170245772734,23,0),
 (170245774625,4,1),
 (170245774625,16,1),
 (170245774625,23,0),
 (170245778093,4,1),
 (170245778093,16,1),
 (170245778093,23,0),
 (170245780296,4,1),
 (170245780296,16,1),
 (170245780296,23,0),
 (170245782796,4,1),
 (170245782796,16,1),
 (170245782796,23,0),
 (170245789093,4,1),
 (170245789093,16,1),
 (170245789093,23,0),
 (170245792343,4,1),
 (170245792343,16,1),
 (170245792343,23,0),
 (170245792953,4,1),
 (170245792953,16,1),
 (170245792953,23,0),
 (170245801437,4,1),
 (170245801437,16,1),
 (170245801437,23,0),
 (170245803312,4,1),
 (170245803312,16,1),
 (170245803312,23,0),
 (170245805437,4,1),
 (170245805437,16,1),
 (170245805437,23,0),
 (170245806359,4,1),
 (170245806359,16,1),
 (170245806359,23,0),
 (170245811609,4,1),
 (170245811609,16,1),
 (17024581160<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Eclipse Foundation Software User Agreement</title>
</head>

<body lang="EN-US">
<h2>Eclipse Foundation Software User Agreement</h2>
<p>April 9, 2014</p>

<h3>Usage Of Content</h3>

<p>THE ECLIPSE FOUNDATION MAKES AVAILABLE SOFTWARE, DOCUMENTATION, INFORMATION AND/OR OTHER MATERIALS FOR OPEN SOURCE PROJECTS
   (COLLECTIVELY &quot;CONTENT&quot;).  USE OF THE CONTENT IS GOVERNED BY THE TERMS AND CONDITIONS OF THIS AGREEMENT AND/OR THE TERMS AND
   CONDITIONS OF LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED BELOW.  BY USING THE CONTENT, YOU AGREE THAT YOUR USE
   OF THE CONTENT IS GOVERNED BY THIS AGREEMENT AND/OR THE TERMS AND CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS OR
   NOTICES INDICATED OR REFERENCED BELOW.  IF YOU DO NOT AGREE TO THE TERMS AND CONDITIONS OF THIS AGREEMENT AND THE TERMS AND
   CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED BELOW, THEN YOU MAY NOT USE THE CONTENT.</p>

<h3>Applicable Licenses</h3>

<p>Unless otherwise indicated, all Content made available by the Eclipse Foundation is provided to you under the terms and conditions of the Eclipse Public License Version 1.0
   (&quot;EPL&quot;).  A copy of the EPL is provided with this Content and is also available at <a href="http://www.eclipse.org/legal/epl-v10.html">http://www.eclipse.org/legal/epl-v10.html</a>.
   For purposes of the EPL, &quot;Program&quot; will mean the Content.</p>

<p>Content includes, but is not limited to, source code, object code, documentation and other files maintained in the Eclipse Foundation source code
   repository (&quot;Repository&quot;) in software modules (&quot;Modules&quot;) and made available as downloadable archives (&quot;Downloads&quot;).</p>

<ul>
       <li>Content may be structured and packaged into modules to facilitate delivering, extending, and upgrading the Content.  Typical modules may include plug-ins (&quot;Plug-ins&quot;), plug-in fragments (&quot;Fragments&quot;), and features (&quot;Features&quot;).</li>
       <li>Each Plug-in or Fragment may be packaged as a sub-directory or JAR (Java&trade; ARchive) in a directory named &quot;plugins&quot;.</li>
       <li>A Feature is a bundle of one or more Plug-ins and/or Fragments and associated material.  Each Feature may be packaged as a sub-directory in a directory named &quot;features&quot;.  Within a Feature, files named &quot;feature.xml&quot; may contain a list of the names and version numbers of the Plug-ins
      and/or Fragments associated with that Feature.</li>
       <li>Features may also include other Features (&quot;Included Features&quot;). Within a Feature, files named &quot;feature.xml&quot; may contain a list of the names and version numbers of Included Features.</li>
</ul>

<p>The terms and conditions governing Plug-ins and Fragments should be contained in files named &quot;about.html&quot; (&quot;Abouts&quot;). The terms and conditions governing Features and
Included Features should be contained in files named &quot;license.html&quot; (&quot;Feature Licenses&quot;).  Abouts and Feature Licenses may be located in any directory of a Download or Module
including, but not limited to the following locations:</p>

<ul>
       <li>The top-level (root) directory</li>
       <li>Plug-in and Fragment directories</li>
       <li>Inside Plug-ins and Fragments packaged as JARs</li>
       <li>Sub-directories of the directory named &quot;src&quot; of certain Plug-ins</li>
       <li>Feature directories</li>
</ul>

<p>Note: if a Feature made available by the Eclipse Foundation is installed using the Provisioning Technology (as defined below), you must agree to a license (&quot;Feature Update License&quot;) during the
installation process.  If the Feature contains Included Features, the Feature Update License should either provide you with the terms and conditions governing the Included Features or
inform you where you can locate them.  Feature Update Licenses may be found in the &quot;license&quot; property of files named &quot;feature.properties&quot; found within a Feature.
Such Abouts, Feature Licenses, and Feature Update Licenses contain the terms and conditions (or references to such terms and conditions) that govern your use of the associated Content in
that directory.</p>

<p>THE ABOUTS, FEATURE LICENSES, AND FEATURE UPDATE LICENSES MAY REFER TO THE EPL OR OTHER LICENSE AGREEMENTS, NOTICES OR TERMS AND CONDITIONS.  SOME OF THESE
OTHER LICENSE AGREEMENTS MAY INCLUDE (BUT ARE NOT LIMITED TO):</p>

<ul>
       <li>Eclipse Distribution License Version 1.0 (available at <a href="http://www.eclipse.org/licenses/edl-v10.html">http://www.eclipse.org/licenses/edl-v1.0.html</a>)</li>
       <li>Common Public License Version 1.0 (available at <a href="http://www.eclipse.org/legal/cpl-v10.html">http://www.eclipse.org/legal/cpl-v10.html</a>)</li>
       <li>Apache Software License 1.1 (available at <a href="http://www.apache.org/licenses/LICENSE">http://www.apache.org/licenses/LICENSE</a>)</li>
       <li>Apache Software License 2.0 (available at <a href="http://www.apache.org/licenses/LICENSE-2.0">http://www.apache.org/licenses/LICENSE-2.0</a>)</li>
       <li>Mozilla Public License Version 1.1 (available at <a href="http://www.mozilla.org/MPL/MPL-1.1.html">http://www.mozilla.org/MPL/MPL-1.1.html</a>)</li>
</ul>

<p>IT IS YOUR OBLIGATION TO READ AND ACCEPT ALL SUCH TERMS AND CONDITIONS PRIOR TO USE OF THE CONTENT.  If no About, Feature License, or Feature Update License is provided, please
contact the Eclipse Foundation to determine what terms and conditions govern that particular Content.</p>


<h3>Use of Provisioning Technology</h3>

<p>The Eclipse Foundation makes available provisioning software, examples of which include, but are not limited to, p2 and the Eclipse
   Update Manager (&quot;Provisioning Technology&quot;) for the purpose of allowing users to install software, documentation, information and/or
   other materials (collectively &quot;Installable Software&quot;). This capability is provided with the intent of allowing such users to
   install, extend and update Eclipse-based products. Information about packaging Installable Software is available at <a
       href="http://eclipse.org/equinox/p2/repository_packaging.html">http://eclipse.org/equinox/p2/repository_packaging.html</a>
   (&quot;Specification&quot;).</p>

<p>You may use Provisioning Technology to allow other parties to install Installable Software. You shall be responsible for enabling the
   applicable license agreements relating to the Installable Software to be presented to, and accepted by, the users of the Provisioning Technology
   in accordance with the Specification. By using Provisioning Technology in such a manner and making it available in accordance with the
   Specification, you further acknowledge your agreement to, and the acquisition of all necessary rights to permit the following:</p>

<ol>
       <li>A series of actions may occur (&quot;Provisioning Process&quot;) in which a user may execute the Provisioning Technology
       on a machine (&quot;Target Machine&quot;) with the intent of installing, extending or updating the functionality of an Eclipse-based
       product.</li>
       <li>During the Provisioning Process, the Provisioning Technology may cause third party Installable Software or a portion thereof to be
       accessed and copied to the Target Machine.</li>
       <li>Pursuant to the Specification, you will provide to the user the terms and conditions that govern the use of the Installable
       Software (&quot;Installable Software Agreement&quot;) and such Installable Software Agreement shall be accessed from the Target
       Machine in accordance with the Specification. Such Installable Software Agreement must inform the user of the terms and conditions that govern
       the Installable Software and must solicit acceptance by the end user in the manner prescribed in such Installable Software Agreement. Upon such
       indication of agreement by the user, the provisioning Technology will complete installation of the Installable Software.</li>
</ol>

<h3>Cryptography</h3>

<p>Content may contain encryption software. The country in which you are currently may have restrictions on the import, possession, and use, and/or re-export to
   another country, of encryption software. BEFORE using any encryption software, please check the country's laws, regulations and policies concerning the import,
   possession, or use, and re-export of encryption software, to see if this is permitted.</p>

<p><small>Java and all Java-based trademarks are trademarks of Oracle Corporation in the United States, other countries, or both.</small></p>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           298859,23,0),
 (170255303000,4,1),
 (170255303000,16,1),
 (170255303000,23,0),
 (170255305968,4,1),
 (170255305968,16,1),
 (170255305968,23,0),
 (170255311171,4,1),
 (170255311171,16,1),
 (170255311171,23,0),
 (170453567421,4,2),
 (170453567421,16,1),
 (170453567421,23,2),
 (170702060375,4,2),
 (170702060375,16,1),
 (170702060375,23,2),
 (170704202015,4,2),
 (170704202015,16,1),
 (170704202015,23,2),
 (170744575218,4,2),
 (170744575218,16,1),
 (170744575218,23,2),
 (170754658328,4,2),
 (170754658328,16,1),
 (170754658328,23,2),
 (170754667578,4,2),
 (170754667578,16,1),
 (170754667578,23,2),
 (170754673093,4,2),
 (170754673093,16,1),
 (170754673093,23,2),
 (170754683015,4,2),
 (170754683015,16,1),
 (170754683015,23,2),
 (170754686546,4,2),
 (170754686546,16,1),
 (170754686546,23,2),
 (170754689765,4,2),
 (170754689765,16,1),
 (170754689765,23,2),
 (170754693234,4,2),
 (170754693234,16,1),
 (170754693234,23,2),
 (170754696062,4,2),
 (170754696062,16,1),
 (170754696062,23,2),
 (170754699343,4,2),
 (170754699343,16,1),
 (170754699343,23,2),
 (170754702593,4,2),
 (170754702593,16,1),
 (170754702593,23,2),
 (170754705234,4,2),
 (170754705234,16,1),
 (170754705234,23,2),
 (170754708203,4,2),
 (170754708203,16,1),
 (170754708203,23,2),
 (170754710546,4,2),
 (170754710546,16,1),
 (170754710546,23,0),
 (170754713062,4,2),
 (170754713062,16,1),
 (170754713062,23,2),
 (170754718593,4,2),
 (170754718593,16,1),
 (170754718593,23,0),
 (170754727250,4,2),
 (170754727250,16,1),
 (170754727250,23,2),
 (170754730390,4,2),
 (170754730390,16,1),
 (170754730390,23,2),
 (170754735812,4,2),
 (170754735812,16,1),
 (170754735812,23,2),
 (170755770171,4,2),
 (170755770171,16,1),
 (170755770171,23,0),
 (170755777015,4,2),
 (170755777015,16,1),
 (170755777015,23,0),
 (170755790640,4,2),
 (170755790640,16,1),
 (170755790640,23,2),
 (170755796687,4,2),
 (170755796687,16,1),
 (170755796687,23,2),
 (170755801078,4,2),
 (170755801078,16,1),
 (170755801078,23,2),
 (170755815375,4,2),
 (170755815375,16,1),
 (170755815375,23,2),
 (170755821093,4,2),
 (170755821093,16,1),
 (170755821093,23,2),
 (170755826156,4,2),
 (170755826156,16,1),
 (170755826156,23,2),
 (170755830546,4,2),
 (170755830546,16,1),
 (170755830546,23,2),
 (170755837125,4,2),
 (170755837125,16,1),
 (170755837125,23,2),
 (170755840593,4,2),
 (170755840593,16,1),
 (170755840593,23,2),
 (170755846625,4,2),
 (170755846625,16,1),
 (170755846625,23,2),
 (170755853312,4,2),
 (170755853312,16,1),
 (170755853312,23,2),
 (170755858203,4,2),
 (170755858203,16,1),
 (170755858203,23,2),
 (170755865578,4,2),
 (170755865578,16,1),
 (170755865578,23,2),
 (170755870015,4,2),
 (170755870015,16,1),
 (170755870015,23,2),
 (170755876718,4,2),
 (170755876718,16,1),
 (170755876718,23,2),
 (170755881484,4,2),
 (170755881484,16,1),
 (170755881484,23,2),
 (170755957703,4,2),
 (170755957703,16,1),
 (170755957703,23,2),
 (170756772234,4,2),
 (170756772234,16,1),
 (170756772234,23,0),
 (170756793937,4,2),
 (170756793937,16,1),
 (170756793937,23,2),
 (170756803515,4,2),
 (170756803515,16,1),
 (170756803515,23,0),
 (170756837406,4,2),
 (170756837406,16,1),
 (170756837406,23,2),
 (170770257015,4,2),
 (170770257015,16,1),
 (170770257015,23,2),
 (170773676703,4,2),
 (170773676703,16,1),
 (170773676703,23,2),
 (170781638000,4,2),
 (170781638000,16,1),
 (170781638000,23,2),
 (170785705000,4,2),
 (170785705000,16,1),
 (170785705000,23,2),
 (170800014359,4,2),
 (170800014359,16,1),
 (170800014359,23,0),
 (170800016203,4,2),
 (170800016203,16,1),
 (170800016203,23,0),
 (170800019203,4,2),
 (170800019203,16,1),
 (170800019203,23,0),
 (170800464015,4,1),
 (170800464015,16,1),
 (170800464015,23,2),
 (170800693921,4,2),
 (170800693921,16,1),
 (170800693921,23,2),
 (170800853609,4,2),
 (170800853609,16,1),
 (170800853609,23,2),
 (170800907265,4,2),
 (170800907265,16,1),
 (170800907265,23,2),
 (170801173203,4,2),
 (170801173203,16,1),
 (170801173203,23,2),
 (170801528234,4,2),
 (170801528234,16,1),
 (170801528234,23,2),
 (170802124984,4,2),
 (170802124984,16,1),
 (170802124984,23,2),
 (170802207078,4,2),
 (170802207078,16,1),
 (1708022<?xml version="1.0" encoding="UTF-8"?>
<!--
 *************************************************************************
 * Copyright (c) 2009, 2014 Sybase, Inc. and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 * 	Sybase, Inc. - initial API and implementation
 *  Actuate Corporation - fix for Bug 245758; version updates
 *  
 ***************************************************************************
 -->
<feature
      id="org.eclipse.datatools.connectivity.doc.user"
      label="%featureName"
      version="1.14.1.201712071719"
      provider-name="%providerName"
      plugin="org.eclipse.datatools.connectivity.doc.user"
      image="eclipse_update_120.jpg">

   <description>
      %featureDesc
   </description>

   <copyright>
      %featureCopyright
   </copyright>

   <license url="%featureLicenseURL">
      %license
   </license>

   <plugin
         id="org.eclipse.datatools.connectivity.doc.user.contexts"
         download-size="0"
         install-size="0"
         version="1.7.0.20090521092446"
         unpack="false"/>

   <plugin
         id="org.eclipse.datatools.connectivity.doc.user"
         download-size="0"
         install-size="0"
         version="1.7.0.20090521092446"
         unpack="false"/>

</feature>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             9828,23,0),
 (170810654234,4,2),
 (170810654234,16,1),
 (170810654234,23,0),
 (170810654828,4,2),
 (170810654828,16,1),
 (170810654828,23,0),
 (170810656984,4,2),
 (170810656984,16,1),
 (170810656984,23,0),
 (170810657578,4,2),
 (170810657578,16,1),
 (170810657578,23,0),
 (170810659765,4,2),
 (170810659765,16,1),
 (170810659765,23,0),
 (170810669703,4,2),
 (170810669703,16,1),
 (170810669703,23,0),
 (170810681906,4,1),
 (170810681906,16,1),
 (170810681906,23,0),
 (170810685062,4,1),
 (170810685062,16,1),
 (170810685062,23,0),
 (170810685968,4,1),
 (170810685968,16,1),
 (170810685968,23,0),
 (170810686875,4,1),
 (170810686875,16,1),
 (170810686875,23,0),
 (170810687453,4,1),
 (170810687453,16,1),
 (170810687453,23,0),
 (170810688359,4,1),
 (170810688359,16,1),
 (170810688359,23,0),
 (170810696890,4,1),
 (170810696890,16,1),
 (170810696890,23,0),
 (170810698437,4,1),
 (170810698437,16,1),
 (170810698437,23,0),
 (170810699328,4,1),
 (170810699328,16,1),
 (170810699328,23,0),
 (170810700234,4,1),
 (170810700234,16,1),
 (170810700234,23,0),
 (170810701140,4,1),
 (170810701140,16,1),
 (170810701140,23,0),
 (170810701718,4,1),
 (170810701718,16,1),
 (170810701718,23,0),
 (170810702609,4,1),
 (170810702609,16,1),
 (170810702609,23,0),
 (170810710453,4,1),
 (170810710453,16,1),
 (170810710453,23,0),
 (170810711359,4,1),
 (170810711359,16,1),
 (170810711359,23,0),
 (170810712250,4,1),
 (170810712250,16,1),
 (170810712250,23,0),
 (170810726625,4,2),
 (170810726625,16,1),
 (170810726625,23,0),
 (170810727531,4,2),
 (170810727531,16,1),
 (170810727531,23,0),
 (170810729687,4,2),
 (170810729687,16,1),
 (170810729687,23,0),
 (170810731343,4,2),
 (170810731343,16,1),
 (170810731343,23,0),
 (170810734468,4,2),
 (170810734468,16,1),
 (170810734468,23,0),
 (170810735078,4,2),
 (170810735078,16,1),
 (170810735078,23,0),
 (170810739140,4,2),
 (170810739140,16,1),
 (170810739140,23,0),
 (170810741953,4,2),
 (170810741953,16,1),
 (170810741953,23,0),
 (170810744796,4,2),
 (170810744796,16,1),
 (170810744796,23,0),
 (170810746640,4,2),
 (170810746640,16,1),
 (170810746640,23,0),
 (170810747562,4,2),
 (170810747562,16,1),
 (170810747562,23,0),
 (170810749750,4,2),
 (170810749750,16,1),
 (170810749750,23,0),
 (170810764625,4,2),
 (170810764625,16,1),
 (170810764625,23,0),
 (170810766468,4,2),
 (170810766468,16,1),
 (170810766468,23,0),
 (170810768656,4,2),
 (170810768656,16,1),
 (170810768656,23,0),
 (170810795328,4,2),
 (170810795328,16,1),
 (170810795328,23,0),
 (170810799859,4,2),
 (170810799859,16,1),
 (170810799859,23,0),
 (170810918078,4,2),
 (170810918078,16,1),
 (170810918078,23,2),
 (170847017078,4,2),
 (170847017078,16,1),
 (170847017078,23,2),
 (170854019859,4,2),
 (170854019859,16,1),
 (170854019859,23,2),
 (170857444593,4,2),
 (170857444593,16,1),
 (170857444593,23,2),
 (170857586453,4,2),
 (170857586453,16,1),
 (170857586453,23,0),
 (170857589734,4,2),
 (170857589734,16,1),
 (170857589734,23,0),
 (170857609578,4,1),
 (170857609578,16,1),
 (170857609578,23,0),
 (170857611234,4,1),
 (170857611234,16,1),
 (170857611234,23,0),
 (170857844140,4,2),
 (170857844140,16,1),
 (170857844140,23,2),
 (170857853750,4,1),
 (170857853750,16,1),
 (170857853750,23,2),
 (170857862578,4,2),
 (170857862578,16,1),
 (170857862578,23,2),
 (170858553437,4,2),
 (170858553437,16,1),
 (170858553437,23,2),
 (170858561015,4,2),
 (170858561015,16,1),
 (170858561015,23,2),
 (170858612921,4,2),
 (170858612921,16,1),
 (170858612921,23,2),
 (170858953531,4,2),
 (170858953531,16,1),
 (170858953531,23,2),
 (170860647781,4,2),
 (170860647781,16,1),
 (170860647781,23,0),
 (170860651656,4,2),
 (170860651656,16,1),
 (170860651656,23,0),
 (170860969421,4,2),
 (170860969421,16,1),
 (170860969421,23,2),
 (170864391375,4,1),
 (170864391375,16,1),
 (170864391375,23,2),
 (170864406906,4,1),
 (170864406906,16,1),
 (170864406906,23,2),
 (170864417656,4,1),
 (170864417656,16,1),
 (170864417656,23,2),
 (170864443828,4,2),
 (170864443828,16,1),
 (170864443828,23,2),
 (170864606078,4,2),
 (170864606078,16,1),
 (170864606078,23,2),
 (170869069453,4,2),
 (170869069453,16,1),
 (170869069453,23,2),
 (170869299468,4,1),
 (170869299468,16,1),
 (170869299468,23,2),
 (170870543062,4,2),
 (170870543062,16,1),
 (170870543062,23,2),
 (170870557937,4,2),
 (170870557937,16,1),
 (170870557937,23,2),
 (170870907062,4,2),
 (170870907062,16,1),
 (170870907062,23,2),
 (170870934984,4,1),
 (170870934984,16,1),
 (170870934984,23,2),
 (170872393609,4,2),
 (170872393609,16,1),
 (170872393609,23,2),
 (170873408828,4,2),
 (170873408828,16,1),
 (170873408828,23,2),
 (170873768015,4,2),
 (170873768015,16,1),
 (170873768015,23,2),
 (170874440890,4,2),
 (170874440890,16,1),
 (170874440890,23,2),
 (170874451515,4,2),
 (170874451515,16,1),
 (170874451515,23,2),
 (170877314781,4,2),
 (170877314781,16,1),
 (170877314781,23,0),
 (170877318500,4,2),
 (170877318500,16,1),
 (170877318500,23,0),
 (170877320687,4,2),
 (170877320687,16,1),
 (170877320687,23,0),
 (170877323203,4,2),
 (170877323203,16,1),
 (170877323203,23,0),
 (170877327656,4,2),
 (170877327656,16,1),
 (170877327656,23,0),
 (170877328859,4,2),
 (170877328859,16,1),
 (170877328859,23,0),
 (170877331968,4,2),
 (170877331968,16,1),
 (170877331968,23,0),
 (170877335109,4,2),
 (170877335109,16,1),
 (170877335109,23,0),
 (170877337234,4,2),
 (170877337234,16,1),
 (170877337234,23,0),
 (170877339078,4,2),
 (170877339078,16,1),
 (170877339078,23,0),
 (170877340296,4,2),
 (170877340296,16,1),
 (170877340296,23,0),
 (170877342125,4,2),
 (170877342125,16,1),
 (170877342125,23,0),
 (170877343968,4,2),
 (170877343968,16,1),
 (170877343968,23,0),
 (170877345515,4,2),
 (170877345515,16,1),
 (170877345515,23,0),
 (170877347046,4,2),
 (170877347046,16,1),
 (170877347046,23,0),
 (170877350515,4,2),
 (170877350515,16,1),
 (170877350515,23,0),
 (170877351406,4,2),
 (170877351406,16,1),
 (170877351406,23,0),
 (170877354875,4,2),
 (170877354875,16,1),
 (170877354875,23,0),
 (170877355765,4,2),
 (170877355765,16,1),
 (170877355765,23,0),
 (170877358562,4,2),
 (170877358562,16,1),
 (170877358562,23,0),
 (170877361093,4,2),
 (170877361093,16,1),
 (170877361093,23,0),
 (170877364265,4,2),
 (170877364265,16,1),
 (170877364265,23,0),
 (170877368140,4,2),
 (170877368140,16,1),
 (170877368140,23,0),
 (170877370015,4,2),
 (170877370015,16,1),
 (170877370015,23,0),
 (170877372156,4,2),
 (170877372156,16,1),
 (170877372156,23,0),
 (170877373375,4,2),
 (170877373375,16,1),
 (170877373375,23,0),
 (170877374921,4,2),
 (170877374921,16,1),
 (170877374921,23,0),
 (170877379890,4,2),
 (170877379890,16,1),
 (170877379890,23,0),
 (170877382703,4,2),
 (170877382703,16,1),
 (170877382703,23,0),
 (170877385875,4,2),
 (170877385875,16,1),
 (170877385875,23,0),
 (170877387062,4,2),
 (170877387062,16,1),
 (170877387062,23,0),
 (170877389531,4,2),
 (170877389531,16,1),
 (170877389531,23,0),
 (170877390421,4,2),
 (170877390421,16,1),
 (170877390421,23,0),
 (170877395500,4,2),
 (170877395500,16,1),
 (170877395500,23,0),
 (170877396703,4,2),
 (170877396703,16,1),
 (170877396703,23,0),
 (170877397906,4,2),
 (170877397906,16,1),
 (170877397906,23,0),
 (170877401953,4,2),
 (170877401953,16,1),
 (170877401953,23,0),
 (170877403500,4,2),
 (170877403500,16,1),
 (170877403500,23,0),
 (170877404390,4,2),
 (170877404390,16,1),
 (170877404390,23,0),
 (170877499312,4,1),
 (170877499312,16,1),
 (170877499312,23,2),
 (170877507375,4,1),
 (170877507375,16,1),
 (170877507375,23,2),
 (170877732937,4,1),
 (170877732937,16,1),
 (170877732937,23,2),
 (170878353640,4,1),
 (170878353640,16,1),
 (170878353640,23,2),
 (170879097859,4,2),
 (170879097859,16,1),
 (170879097859,23,0),
 (170879100031,4,2),
 (170879100031,16,1),
 (170879100031,23,0),
 (170879107671,4,2),
 (170879107671,16,1),
 (170879107671,23,0),
 (170879109250,4,2),
 (170879109250,16,1),
 (170879109250,23,0),
 (170879112421,4,2),
 (170879112421,16,1),
 (170879112421,23,0),
 (170879115609,4,2),
 (170879115609,16,1),
 (170879115609,23,0),
 (170879119437,4,2),
 (170879119437,16,1),
 (170879119437,23,0),
 (170879122250,4,2),
 (170879122250,16,1),
 (170879122250,23,0),
 (170879123828,4,2),
 (170879123828,16,1),
 (170879123828,23,0),
 (170879125359,4,2),
 (170879125359,16,1),
 (170879125359,23,0),
 (170879126578,4,2),
 (170879126578,16,1),
 (170879126578,23,0),
 (170879127796,4,2),
 (170879127796,16,1),
 (170879127796,23,0),
 (170879128718,4,2),
 (170879128718,16,1),
 (170879128718,23,0),
 (170879131218,4,2),
 (170879131218,16,1),
 (170879131218,23,0),
 (170879132109,4,2),
 (170879132109,16,1),
 (170879132109,23,0),
 (170879133328,4,2),
 (170879133328,16,1),
 (170879133328,23,0),
 (170879135187,4,2),
 (170879135187,16,1),
 (170879135187,23,0),
 (170879135734,4,2),
 (170879135734,16,1),
 (170879135734,23,0),
 (170879136296,4,2),
 (170879136296,16,1),
 (170879136296,23,0),
 (170879148875,4,2),
 (170879148875,16,1),
 (170879148875,23,0),
 (170879152015,4,2),
 (170879152015,16,1),
 (170879152015,23,0),
 (170879153546,4,2),
 (170879153546,16,1),
 (170879153546,23,0),
 (170879156015,4,2),
 (170879156015,16,1),
 (170879156015,23,0),
 (170879157593,4,2),
 (170879157593,16,1),
 (170879157593,23,0),
 (170879159437,4,2),
 (170879159437,16,1),
 (170879159437,23,0),
 (170879162375,4,2),
 (170879162375,16,1),
 (170879162375,23,0),
 (170879164875,4,2),
 (170879164875,16,1),
 (170879164875,23,0),
 (170879166734,4,2),
 (170879166734,16,1),
 (170879166734,23,0),
 (170879168265,4,2),
 (170879168265,16,1),
 (170879168265,23,0),
 (170879171093,4,2),
 (170879171093,16,1),
 (170879171093,23,0),
 (170879173234,4,2),
 (170879173234,16,1),
 (170879173234,23,0),
 (170879176062,4,2),
 (170879176062,16,1),
 (170879176062,23,0),
 (170879177593,4,2),
 (170879177593,16,1),
 (170879177593,23,0),
 (170879178484,4,2),
 (170879178484,16,1),
 (170879178484,23,0),
 (170879179062,4,2),
 (170879179062,16,1),
 (170879179062,23,0),
 (170879212218,4,2),
 (170879212218,16,1),
 (170879212218,23,0),
 (170879213453,4,2),
 (170879213453,16,1),
 (170879213453,23,0),
 (170879216281,4,2),
 (170879216281,16,1),
 (170879216281,23,0),
 (170879218140,4,2),
 (170879218140,16,1),
 (170879218140,23,0),
 (170879220000,4,2),
 (170879220000,16,1),
 (170879220000,23,0),
 (170879222218,4,2),
 (170879222218,16,1),
 (170879222218,23,0),
 (170879224718,4,2),
 (170879224718,16,1),
 (170879224718,23,0),
 (170879227250,4,2),
 (170879227250,16,1),
 (170879227250,23,0),
 (170879231687,4,2),
 (170879231687,16,1),
 (170879231687,23,0),
 (170879233859,4,2),
 (170879233859,16,1),
 (170879233859,23,0),
 (170879241796,4,2),
 (170879241796,16,1),
 (170879241796,23,0),
 (170879245234,4,2),
 (170879245234,16,1),
 (170879245234,23,0),
 (170879253828,4,2),
 (170879253828,16,1),
 (170879253828,23,0),
 (170879256015,4,2),
 (170879256015,16,1),
 (170879256015,23,0),
 (170879258187,4,2),
 (170879258187,16,1),
 (170879258187,23,0),
 (170879285859,4,1),
 (170879285859,16,1),
 (170879285859,23,0),
 (170879831078,4,1),
 (170879831078,16,1),
 (170879831078,23,2),
 (170880053218,4,2),
 (170880053218,16,1),
 (170880053218,23,2),
 (170880146734,4,2),
 (170880146734,16,1),
 (170880146734,23,2),
 (170880385609,4,2),
 (170880385609,16,1),
 (170880385609,23,2),
 (170881175218,4,1),
 (170881175218,16,1),
 (170881175218,23,2),
 (170881451687,4,2),
 (170881451687,16,1),
 (170881451687,23,0),
 (170881454250,4,2),
 (170881454250,16,1),
 (170881454250,23,0),
 (170881456125,4,2),
 (170881456125,16,1),
 (170881456125,23,0),
 (170881457343,4,2),
 (170881457343,16,1),
 (170881457343,23,0),
 (170881459546,4,2),
 (170881459546,16,1),
 (170881459546,23,0),
 (170881462406,4,2),
 (170881462406,16,1),
 (170881462406,23,0),
 (170881470703,4,2),
 (170881470703,16,1),
 (170881470703,23,0),
 (170881472375,4,2),
 (170881472375,16,1),
 (170881472375,23,0),
 (170881475562,4,2),
 (170881475562,16,1),
 (170881475562,23,0),
 (170881476453,4,2),
 (170881476453,16,1),
 (170881476453,23,0),
 (170881479921,4,2),
 (170881479921,16,1),
 (170881479921,23,0),
 (170881483421,4,2),
 (170881483421,16,1),
 (170881483421,23,0),
 (170881484312,4,2),
 (170881484312,16,1),
 (170881484312,23,0),
 (170881616984,4,2),
 (170881616984,16,1),
 (170881616984,23,2),
 (170881715593,4,2),
 (170881715593,16,1),
 (170881715593,23,2),
 (170881813281,4,2),
 (170881813281,16,1),
 (170881813281,23,2),
 (170882635953,4,1),
 (170882635953,16,1),
 (170882635950�m	*�H����^0�Z10	`�He 0	*�H����00��0�������F���`��090	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0061110000000Z311110000000Z0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0�"0	*�H�� � 0�
� ���C�\���`�q���&������ 9(X`��ک�2a<��(���ܟ
�z�����yS\1�*��26v���<���j�!�Raߟ ����d�[_�X5�G͡6�k԰8>�Ì3��/�(�����nD�a5��Y��vm��K+�rڞ`Ў�5�xU� ���m
�I|1�3l"��2Z����9��:r������1u��}"�?F��(yȱ��W�~����V��������Ũ?������_wO �c0a0U��0U�0�0UE뢯��˂1-Q���!��m�0U#0�E뢯��˂1-Q���!��m�0	*�H�� � �������rszd���rf�2�Bub�������V����(��`\LX��=�IEX�5i�G�V�y��g���	<��&, �=�(��_�"◄�e����gI�]�	*�&�x�}?+�&5m_��I[���=%�̶��o���dh�-��B����b�Pg�l���k67|�[mz�F`��'�KΗ��g*h߀�3f�n�c��%ml���a�ң&�q�����ÙQ�+�.�P���
E/���0�00��	_ջfuSC�o�P0	*�H�� 0e10	UUS10U
DigiCert Inc10Uwww.digicert.com1$0"UDigiCert Assured ID Root CA0131022120000Z281022120000Z0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0�"0	*�H�� � 0�
� �ӳ�gw�1I���E��:�D�娝�2�q�v�.����C�����7׶�𜆥�%�y(:~��g���)'��{#��#��w����#fT3Pt�(&�$i��R�g��E�-���, ��J����M`��Ĳ�p1f3q>�p����|˒��;1���
�W�J��t�+�l�~t96���N���j
���gN����� %#�d>R����Ŏ���,Q�s����b�sA��8�js �ds<���3���%�� ���0��0U�0� 0U��0U%0
+0y+m0k0$+0�http://ocsp.digicert.com0C+0�7http://cacerts.digicert.com/DigiCertAssuredIDRootCA.crt0��Uz0x0:�8�6�4http://crl4.digicert.com/DigiCertAssuredIDRootCA.crl0:�8�6�4http://crl3.digicert.com/DigiCertAssuredIDRootCA.crl0OU H0F08
`�H��l 0*0(+https://www.digicert.com/CPS0
`�H��l0UZĹ{*
���q�`�-�euX0U#0�E뢯��˂1-Q���!��m�0	*�H�� � >�Z$��"��,|%)v�]-:��0a�~`��=į���*� U7���ђuQ�n��Z�^$�N��?q�cK��_Dy�6���FN\��������Q$�$��'*�)(:q(<.���%�G�zhh���\ \�q������h��@�@D���d%B2�6�$�/r~�IE��Y��tdk��fCڳ������ Ι1c=���OƓ�������I�bn�S���.���hlD2�f����dQ�0�=0�%�.�)�N_���!A�?0	*�H�� 0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA0150304000000Z180308120000Z0��10	UCA10UOntario10UOttawa1!0U
Eclipse Foundation, Inc.10	UIT1!0UEclipse Foundation, Inc.0�"0	*�H�� � 0�
� �I�-o��;Ѝ#h�����߄Ȑ:Q��꿛�_+�����%s�v�IWe�є�9r�0�:Ӿ��WƉ�!�,g$_Q��<|�y��O��{��=������[�4n'������F^��k�s$3�WN����0�����-H��@B�{��Kn���\�h�֌ �:$!G�u���I�?K�KI��Ί��"�=�!
�7��"�3��J��HyVm@}ޣSQ�:13�NX�c��
H��r)�{#a���l��� ���0��0U#0�ZĹ{*
���q�`�-�euX0Ueۺ7g��m��G%$�m�P�@�0U��0U%0
+0wUp0n05�3�1�/http://crl3.digicert.com/sha2-assured-cs-g1.crl05�3�1�/http://crl4.digicert.com/sha2-assured-cs-g1.crl0BU ;0907	`�H��l0*0(+https://www.digicert.com/CPS0��+x0v0$+0�http://ocsp.digicert.com0N+0�Bhttp://cacerts.digicert.com/DigiCertSHA2AssuredIDCodeSigningCA.crt0U�0 0	*�H�� � ^*�)�(}f �K0	�X"�U��Bً���!�:o;gfƔe�8]��\���.��|�v�U�-s������~�u���lkh�g���_BPT�zO>0�.�:@s�A����ȸ�{�A0J�n��%�$�c�)^�:��C��枕��o����I:w�eg��%�Olh���DզU#`"��Q�����t�1sPg��m̅��ep�zN��3���C*G@��2gDa?��d�'8�yAޓ{?R��K����z;1�0��0��0r10	UUS10U
DigiCert Inc10Uwww.digicert.com110/U(DigiCert SHA2 Assured ID Code Signing CA.�)�N_���!A�?0	`�He 0	*�H�� � )�"�h6Q�̉�Ev<%��(S�����G�`aJ9ˠ��
�M�M?Ye��2�fmP�[���eS���s�Px�1wW�n*��  aA���E`�HW� ��C9�#�	��02f��j/g	0�w�֞W8�X�<�>v��"9kO�YJ\ع����Jx��wG�Tf�� V>T/�� �.�IC'r�Q(��gTV�y����񁬀d��_�j�T�aH��.w"�IHݎ��w�J�Jg�I%����r\��h�U��s��K0�G*�H��	1�60�2	*�H����#0�10	`�He0�*�H��	���0�`�H��E010	`�He  �|y�
Z*g=�R�`��7iP�eDw7��L{~b?߳d�-qK�k& F�VSe20171207222308Z0	 ��|���������0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G2��
�0�80� �{��IhQD�ɉҜ�0	*�H�� 0��10	UUS10U
VeriSign, Inc.10UVeriSign Trust Network1:08U1(c) 2008 VeriSign, Inc. - For authorized use only1806U/VeriSign Universal Root Certification Authority0160112000000Z310111235959Z0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0�"0	*�H�� � 0�
� �Y�YUO��r]���U��<q�2�k��' 2�jM�dK)���)�.�c���?V��b~���^m@8ԑ�A|y�˭�ؕ����l���9.�'�x9ń������΍�m�Ҙ�:9���������|q�)�?�&�{>M�
�3I��;����Kሙ���3��ǀۑ����Wrw�ͨ��	��7���j����K���	�_��y5�x�2�#�2AY�>����+����m:���ɜ�H�S�6��xš7 ��w0�s0U�0U�0� 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0.+"0 0+0�http://s.symcd.com06U/0-0+�)�'�%http://s.symcb.com/universal-root.crl0U%0
+0(U!0�010UTimeStamp-2048-30U�c�ʣN�rৼA�)�8�ub0U#0��w�iHG�S���2vї0	*�H�� � u�-�4\2E���O�x�o����O�ȁ�����@)��]���Vd�q0*�af V��]q����	��G����̐/�
lN3�ִ��L�cH9@!���n��<�����	ɏSWA�/�MN��xlBn���a\R�N�k��Jz���������S�
u��u.�f����W���������: �Ί��۞�8�R���`
M��'m2�?�@Ῑ���9������+Z��XU}ǚ�#��*����a�0�K0�3�TX��A�D���{��R�0	*�H�� 0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CA0170102000000Z280401235959Z0��10	UUS10U
Symantec Corporation10USymantec Trust Network110/U(Symantec SHA256 TimeStamping Signer - G20�"0	*�H�� � 0�
� ����	���\���B|�|c�] ����ߏ)�ꔷ��װ�s���
�J|����9��E�":p�9E���\�EhF$cv���l*�V�Rq��5�F#�H-�͸�v#��>��\i�e�^�}.�M�5��� B�(��]rB	���D���G����-�X�����D��w�Cp�n�R��qٺ"U��훝;�^L���{�U�N����nG��ߥ�Q�U��'pL��*KᱹL��Ue_ixf�? ���0��0U�0 0fU _0]0[`�H��E0L0#+https://d.symcb.com/cps0%+0https://d.symcb.com/rpa0@U90705�3�1�/http://ts-crl.ws.symantec.com/sha256-tss-ca.crl0U%�0
+0U��0w+k0i0*+0�http://ts-ocsp.ws.symantec.com0;+0�/http://ts-aia.ws.symantec.com/sha256-tss-ca.cer0(U!0�010UTimeStamp-2048-50U	����r�)C�������/��0U#0��c�ʣN�rৼA�)�8�ub0	*�H�� � �
��\Z^ k;
�lũ�2�ӱ�S���?��׼�����R~���a�ԧ���ɓ�5=�h
]V���";�Dz׿�mQ2��#�87��S+z+��Mlz3|k	����X�!e���%�,u���ɻ*h��}�ϣ�l��� ��
w��M��1;�n��P����B��v�rZ���o��ݮ��"e�Y�̀�ؗGB��q�FS�Բգ�PuH����AO2~͕���=��g��$L��A��`��2KӼϤ��1�Z0�V0��0w10	UUS10U
Symantec Corporation10USymantec Trust Network1(0&USymantec SHA256 TimeStamping CATX��A�D���{��R�0	`�He���0	*�H��	1*�H��	0	*�H��	1171207222308Z0/	*�H��	1" ��S�p�{�4�͘\�3(�#�d�K2�Ʒ�07*�H��	/1(0&0$0" �z�z�G����h"���o+L^k����K�g0	*�H��� ` ��Z'�X���/�¡���ł�b��n&�aY�:K�/��d��W`���t��pb��d�g�P<X,4�y**�L1�aWq4a�I�����N��d�$A$����7K��$���y�L �U��nL�����
��qaJZv�{���1VZ<�J{vв�Z__��+���Lײ�)ʑ`=��!$<J4N���kD�h���ݕ�n��������$�`nP&��]�T55Kڐ?�?���kL@ľb������                                                                                                                                                                                                                                                                                                                                                                                                               23,0),
 (170902222593,4,2),
 (170902222593,16,1),
 (170902222593,23,0),
 (170902223171,4,2),
 (170902223171,16,1),
 (170902223171,23,0),
 (170902224703,4,2),
 (170902224703,16,1),
 (170902224703,23,0),
 (170902225593,4,2),
 (170902225593,16,1),
 (170902225593,23,0),
 (170902226171,4,2),
 (170902226171,16,1),
 (170902226171,23,0),
 (170902232843,4,2),
 (170902232843,16,1),
 (170902232843,23,0),
 (170902233421,4,2),
 (170902233421,16,1),
 (170902233421,23,0),
 (170902234312,4,2),
 (170902234312,16,1),
 (170902234312,23,0),
 (170902235203,4,2),
 (170902235203,16,1),
 (170902235203,23,0),
 (170902236109,4,2),
 (170902236109,16,1),
 (170902236109,23,0),
 (170902237312,4,2),
 (170902237312,16,1),
 (170902237312,23,0),
 (170902240078,4,2),
 (170902240078,16,1),
 (170902240078,23,0),
 (170902241578,4,2),
 (170902241578,16,1),
 (170902241578,23,0),
 (170902246937,4,2),
 (170902246937,16,1),
 (170902246937,23,0),
 (170902248000,4,2),
 (170902248000,16,1),
 (170902248000,23,0),
 (170902249250,4,2),
 (170902249250,16,1),
 (170902249250,23,0),
 (170902290578,4,2),
 (170902290578,16,1),
 (170902290578,23,0),
 (170902293375,4,2),
 (170902293375,16,1),
 (170902293375,23,0),
 (170902294906,4,2),
 (170902294906,16,1),
 (170902294906,23,0),
 (170902307843,4,2),
 (170902307843,16,1),
 (170902307843,23,0),
 (170902310984,4,2),
 (170902310984,16,1),
 (170902310984,23,0),
 (170902311578,4,2),
 (170902311578,16,1),
 (170902311578,23,0),
 (170902315015,4,2),
 (170902315015,16,1),
 (170902315015,23,0),
 (170902315609,4,2),
 (170902315609,16,1),
 (170902315609,23,0),
 (170902317140,4,2),
 (170902317140,16,1),
 (170902317140,23,0),
 (170902318343,4,2),
 (170902318343,16,1),
 (170902318343,23,0),
 (170902319562,4,2),
 (170902319562,16,1),
 (170902319562,23,0),
 (170902320171,4,2),
 (170902320171,16,1),
 (170902320171,23,0),
 (170902321078,4,2),
 (170902321078,16,1),
 (170902321078,23,0),
 (170902388078,4,1),
 (170902388078,16,1),
 (170902388078,23,2),
 (170903345875,4,1),
 (170903345875,16,1),
 (170903345875,23,2),
 (170903539906,4,2),
 (170903539906,16,1),
 (170903539906,23,2),
 (170903579031,4,2),
 (170903579031,16,1),
 (170903579031,23,2),
 (170903915531,4,1),
 (170903915531,16,1),
 (170903915531,23,0),
 (170903918031,4,1),
 (170903918031,16,1),
 (170903918031,23,0),
 (170903919250,4,1),
 (170903919250,16,1),
 (170903919250,23,0),
 (170903920140,4,1),
 (170903920140,16,1),
 (170903920140,23,0),
 (170903920703,4,1),
 (170903920703,16,1),
 (170903920703,23,0),
 (170903921593,4,1),
 (170903921593,16,1),
 (170903921593,23,0),
 (170903922500,4,1),
 (170903922500,16,1),
 (170903922500,23,0),
 (170903923359,4,1),
 (170903923359,16,1),
 (170903923359,23,0),
 (170903924562,4,1),
 (170903924562,16,1),
 (170903924562,23,0),
 (170903927390,4,1),
 (170903927390,16,1),
 (170903927390,23,0),
 (170903927953,4,1),
 (170903927953,16,1),
 (170903927953,23,0),
 (170903928859,4,1),
 (170903928859,16,1),
 (170903928859,23,0),
 (170903929750,4,1),
 (170903929750,16,1),
 (170903929750,23,0),
 (170903930968,4,1),
 (170903930968,16,1),
 (170903930968,23,0),
 (170903932859,4,1),
 (170903932859,16,1),
 (170903932859,23,0),
 (170903933781,4,1),
 (170903933781,16,1),
 (170903933781,23,0),
 (170903934718,4,1),
 (170903934718,16,1),
 (170903934718,23,0),
 (170903935625,4,1),
 (170903935625,16,1),
 (170903935625,23,0),
 (170903938468,4,1),
 (170903938468,16,1),
 (170903938468,23,0),
 (170903939390,4,1),
 (170903939390,16,1),
 (170903939390,23,0),
 (170903940968,4,1),
 (170903940968,16,1),
 (170903940968,23,0),
 (170903941546,4,1),
 (170903941546,16,1),
 (170903941546,23,0),
 (170903943718,4,1),
 (170903943718,16,1),
 (170903943718,23,0),
 (170903944640,4,1),
 (170903944640,16,1),
 (170903944640,23,0),
 (170903946187,4,1),
 (170903946187,16,1),
 (170903946187,23,0),
 (170903947093,4,1),
 (170903947093,16,1),
 (170903947093,23,0),
 (170903948000,4,1),
 (170903948000,16,1),
 (170903948000,23,0),
 (170903948937,4,1),
 (170903948937,16,1),
 (170903948937,23,0),
 (170903950796,4,1),
 (170903950796,16,1),
 (170903950796,23,0),
 (170903951703,4,1),
 (170903951703,16,1),
 (170903951703,23,0),
 (170903952609,4,1),
 (170903952609,16,1),
 (170903952609,23,0),
 (170903953500,4,1),
 (170903953500,16,1),
 (170903953500,23,0),
 (170903954703,4,1),
 (170903954703,16,1),
 (170903954703,23,0),
 (170903956250,4,1),
 (170903956250,16,1),
 (170903956250,23,0),
 (170903957468,4,1),
 (170903957468,16,1),
 (170903957468,23,0),
 (170903958359,4,1),
 (170903958359,16,1),
 (170903958359,23,0),
 (170903960015,4,1),
 (170903960015,16,1),
 (170903960015,23,0),
 (170903964421,4,1),
 (170903964421,16,1),
 (170903964421,23,0),
 (170903965609,4,1),
 (170903965609,16,1),
 (170903965609,23,0),
 (170903966843,4,1),
 (170903966843,16,1),
 (170903966843,23,0),
 (170903967421,4,1),
 (170903967421,16,1),
 (170903967421,23,0),
 (170903968625,4,1),
 (170903968625,16,1),
 (170903968625,23,0),
 (170903970156,4,1),
 (170903970156,16,1),
 (170903970156,23,0),
 (170903970734,4,1),
 (170903970734,16,1),
 (170903970734,23,0),
 (170903972281,4,1),
 (170903972281,16,1),
 (170903972281,23,0),
 (170903973156,4,1),
 (170903973156,16,1),
 (170903973156,23,0),
 (170903975328,4,1),
 (170903975328,16,1),
 (170903975328,23,0),
 (170903976234,4,1),
 (170903976234,16,1),
 (170903976234,23,0),
 (170903977890,4,1),
 (170903977890,16,1),
 (170903977890,23,0),
 (170903978796,4,1),
 (170903978796,16,1),
 (170903978796,23,0),
 (170903982296,4,1),
 (170903982296,16,1),
 (170903982296,23,0),
 (170903983875,4,1),
 (170903983875,16,1),
 (170903983875,23,0),
 (170903985406,4,1),
 (170903985406,16,1),
 (170903985406,23,0),
 (170903986000,4,1),
 (170903986000,16,1),
 (170903986000,23,0),
 (170903987859,4,1),
 (170903987859,16,1),
 (170903987859,23,0),
 (170903988781,4,1),
 (170903988781,16,1),
 (170903988781,23,0),
 (170903989359,4,1),
 (170903989359,16,1),
 (170903989359,23,0),
 (170903991546,4,1),
 (170903991546,16,1),
 (170903991546,23,0),
 (170903994031,4,1),
 (170903994031,16,1),
 (170903994031,23,0),
 (170903995265,4,1),
 (170903995265,16,1),
 (170903995265,23,0),
 (170904003828,4,1),
 (170904003828,16,1),
 (170904003828,23,0),
 (170904005062,4,1),
 (170904005062,16,1),
 (170904005062,23,0),
 (170904005671,4,1),
 (170904005671,16,1),
 (170904005671,23,0),
 (170904006234,4,1),
 (170904006234,16,1),
 (170904006234,23,0),
 (170904007125,4,1),
 (170904007125,16,1),
 (170904007125,23,0),
 (170904007687,4,1),
 (170904007687,16,1),
 (170904007687,23,0),
 (170904009031,4,1),
 (170904009031,16,1),
 (170904009031,23,0),
 (170905662218,4,2),
 (170905662218,16,1),
 (170905662218,23,2),
 (170905822234,4,1),
 (170905822234,16,1),
 (170905822234,23,2),
 (170905968140,4,2),
 (170905968140,16,1),
 (170905968140,23,2),
 (170906640578,4,2),
 (170906640578,16,1),
 (170906640578,23,0),
 (170906650359,4,2),
 (170906650359,16,1),
 (170906650359,23,0),
 (170906651578,4,2),
 (170906651578,16,1),
 (170906651578,23,0),
 (170906658609,4,2),
 (170906658609,16,1),
 (170906658609,23,0),
 (170906676046,4,2),
 (170906676046,16,1),
 (170906676046,23,0),
 (170906805515,4,2),
 (170906805515,16,1),
 (170906805515,23,2),
 (170907330187,4,2),
 (170907330187,16,1),
 (170907330187,23,2),
 (170907614781,4,2),
 (170907614781,16,1),
 (170907614781,23,2),
 (170907760140,4,1),
 (170907760140,16,1),
 (170907760140,23,2),
 (170908181890,4,1),
 (170908181890,16,1),
 (170908181890,23,2),
 (170908851593,4,2),
 (170908851593,16,1),
 (170908851593,23,2),
 (170909525296,4,2),
 (170909525296,16,1),
 (170909525296,23,0),
 (170909528062,4,2),
 (170909528062,16,1),
 (170909528062,23,0),
 (170909528968,4,2),
 (170909528968,16,1),
 (170909528968,23,0),
 (170909529843,4,2),
 (170909529843,16,1),
 (170909529843,23,0),
 (170909530421,4,2),
 (170909530421,16,1),
 (170909530421,23,0),
 (170909531921,4,2),
 (170909531921,16,1),
 (170909531921,23,0),
 (170909532515,4,2),
 (170909532515,16,1),
 (170909532515,23,0),
 (170909533093,4,2),
 (170909533093,16,1),
 (170909533093,23,0),
 (170909533671,4,2),
 (170909533671,16,1),
 (170909533671,23,0),
 (170909534578,4,2),
 (170909534578,16,1),
 (170909534578,23,0),
 (170909535171,4,2),
 (170909535171,16,1),
 (170909535171,23,0),
 (170909535765,4,2),
 (170909535765,16,1),
 (170909535765,23,0),
 (170909536343,4,2),
 (170909536343,16,1),
 (170909536343,23,0),
 (170909540718,4,2),
 (170909540718,16,1),
 (170909540718,23,0),
 (170909541265,4,2),
 (170909541265,16,1),
 (170909541265,23,0),
 (170909541843,4,2),
 (170909541843,16,1),
 (170909541843,23,0),
 (170909543406,4,2),
 (170909543406,16,1),
 (170909543406,23,0),
 (170909544265,4,2),
 (170909544265,16,1),
 (170909544265,23,0),
 (170909546703,4,2),
 (170909546703,16,1),
 (170909546703,23,0),
 (170909614640,4,1),
 (170909614640,16,1),
 (170909614640,23,0),
 (170909707671,4,2),
 (170909707671,16,1),
 (170909707671,23,2),
 (170910808359,4,2),
 (170910808359,16,1),
 (170910808359,23,0),
 (170910811500,4,2),
 (170910811500,16,1),
 (170910811500,23,0),
 (170910812406,4,2),
 (170910812406,16,1),
 (170910812406,23,0),
 (170910816468,4,2),
 (170910816468,16,1),
 (170910816468,23,0),
 (170910818640,4,2),
 (170910818640,16,1),
 (170910818640,23,0),
 (170910823640,4,2),
 (170910823640,16,1),
 (170910823640,23,0),
 (170910825828,4,2),
 (170910825828,16,1),
 (170910825828,23,0),
 (170910827968,4,2),
 (170910827968,16,1),
 (170910827968,23,0),
 (170910832984,4,2),
 (170910832984,16,1),
 (170910832984,23,0),
 (170910837359,4,2),
 (170910837359,16,1),
 (170910837359,23,0),
 (170910838218,4,2),
 (170910838218,16,1),
 (170910838218,23,0),
 (170910840687,4,2),
 (170910840687,16,1),
 (170910840687,23,0),
 (170910844437,4,2),
 (170910844437,16,1),
 (170910844437,23,0),
 (170910845359,4,2),
 (170910845359,16,1),
 (170910845359,23,0),
 (170910850046,4,2),
 (170910850046,16,1),
 (170910850046,23,0),
 (170910855375,4,2),
 (170910855375,16,1),
 (170910855375,23,0),
 (170910856609,4,2),
 (170910856609,16,1),
 (170910856609,23,0),
 (170910859421,4,2),
 (170910859421,16,1),
 (170910859421,23,0),
 (170910863515,4,2),
 (170910863515,16,1),
 (170910863515,23,0),
 (170910868046,4,2),
 (170910868046,16,1),
 (170910868046,23,0),
 (170910870265,4,2),
 (170910870265,16,1),
 (170910870265,23,0),
 (170910873390,4,2),
 (170910873390,16,1),
 (170910873390,23,0),
 (170910874312,4,2),
 (170910874312,16,1),
 (170910874312,23,0),
 (170910875234,4,2),
 (170910875234,16,1),
 (170910875234,23,0),
 (170910891593,4,2),
 (170910891593,16,1),
 (170910891593,23,0),
 (170910893781,4,2),
 (170910893781,16,1),
 (170910893781,23,0),
 (170910913859,4,1),
 (170910913859,16,1),
 (170910913859,23,0),
 (170910917625,4,1),
 (170910917625,16,1),
 (170910917625,23,0),
 (170910946250,4,1),
 (170910946250,16,1),
 (170910946250,23,0),
 (170910953656,4,1),
 (170910953656,16,1),
 (170910953656,23,0),
 (170910954562,4,1),
 (170910954562,16,1),
 (170910954562,23,0),
 (170910958328,4,1),
 (170910958328,16,1),
 (170910958328,23,0),
 (170910958937,4,1),
 (170910958937,16,1),
 (170910958937,23,0),
 (170910959515,4,1),
 (170910959515,16,1),
 (170910959515,23,0),
 (170910965593,4,2),
 (170910965593,16,1),
 (170910965593,23,0),
 (170910966187,4,2),
 (170910966187,16,1),
 (170910966187,23,0),
 (170910967093,4,2),
 (170910967093,16,1),
 (170910967093,23,0),
 (170910967968,4,2),
 (170910967968,16,1),
 (170910967968,23,0),
 (170910970437,4,2),
 (170910970437,16,1),
 (170910970437,23,0),
 (170910971343,4,2),
 (170910971343,16,1),
 (170910971343,23,0),
 (170910971921,4,2),
 (170910971921,16,1),
 (170910971921,23,0),
 (170910972828,4,2),
 (170910972828,16,1),
 (170910972828,23,0),
 (170910973703,4,2),
 (170910973703,16,1),
 (170910973703,23,0),
 (170910976515,4,2),
 (170910976515,16,1),
 (170910976515,23,0),
 (170910977406,4,2),
 (170910977406,16,1),
 (170910977406,23,0),
 (170910977984,4,2),
 (170910977984,16,1),
 (170910977984,23,0),
 (170910982015,4,2),
 (170910982015,16,1),
 (170910982015,23,0),
 (170910983234,4,2),
 (170910983234,16,1),
 (170910983234,23,0),
 (170910983843,4,2),
 (170910983843,16,1),
 (170910983843,23,0),
 (170910984765,4,2),
 (170910984765,16,1),
 (170910984765,23,0),
 (170910985359,4,2),
 (170910985359,16,1),
 (170910985359,23,0),
 (170911008203,4,2),
 (170911008203,16,1),
 (170911008203,23,0),
 (170911009843,4,2),
 (170911009843,16,1),
 (170911009843,23,0),
 (170911010734,4,2),
 (170911010734,16,1),
 (170911010734,23,<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<launchHistory>
<launchGroup id="org.eclipse.debug.ui.launchGroup.debug">
<mruHistory>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EjemploDeClase&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;PrimeraClase&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EntradaDatosPorFormulario&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EntradaDatosPorConsola&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;UsoDeLaClaseString&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;Variables&quot;/&gt;&#13;&#10;"/>
</mruHistory>
<favorites/>
</launchGroup>
<launchGroup id="org.eclipse.debug.ui.launchGroup.profile">
<mruHistory/>
<favorites/>
</launchGroup>
<launchGroup id="org.eclipse.eclemma.ui.launchGroup.coverage">
<mruHistory>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EjemploDeClase&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;PrimeraClase&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EntradaDatosPorFormulario&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EntradaDatosPorConsola&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;UsoDeLaClaseString&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;Variables&quot;/&gt;&#13;&#10;"/>
</mruHistory>
<favorites/>
</launchGroup>
<launchGroup id="org.eclipse.ui.externaltools.launchGroup">
<mruHistory/>
<favorites/>
</launchGroup>
<launchGroup id="org.eclipse.debug.ui.launchGroup.run">
<mruHistory>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EjemploDeClase&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;PrimeraClase&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EntradaDatosPorFormulario&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;EntradaDatosPorConsola&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;UsoDeLaClaseString&quot;/&gt;&#13;&#10;"/>
<launch memento="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot; standalone=&quot;no&quot;?&gt;&#13;&#10;&lt;launchConfiguration local=&quot;true&quot; path=&quot;Variables&quot;/&gt;&#13;&#10;"/>
</mruHistory>
<favorites/>
</launchGroup>
</launchHistory>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ,
 (170939557093,4,2),
 (170939557093,16,1),
 (170939557093,23,0),
 (170939560234,4,2),
 (170939560234,16,1),
 (170939560234,23,0),
 (170939569921,4,2),
 (170939569921,16,1),
 (170939569921,23,0),
 (170939573203,4,2),
 (170939573203,16,1),
 (170939573203,23,0),
 (170944137156,4,1),
 (170944137156,16,1),
 (170944137156,23,0),
 (170944139734,4,1),
 (170944139734,16,1),
 (170944139734,23,0),
 (170944142218,4,1),
 (170944142218,16,1),
 (170944142218,23,0),
 (170944145031,4,1),
 (170944145031,16,1),
 (170944145031,23,0),
 (170944145984,4,1),
 (170944145984,16,1),
 (170944145984,23,0),
 (170944149453,4,1),
 (170944149453,16,1),
 (170944149453,23,0),
 (170944151640,4,1),
 (170944151640,16,1),
 (170944151640,23,0),
 (170944442750,4,2),
 (170944442750,16,1),
 (170944442750,23,0),
 (170944444671,4,2),
 (170944444671,16,1),
 (170944444671,23,0),
 (170944449109,4,2),
 (170944449109,16,1),
 (170944449109,23,0),
 (170944452250,4,2),
 (170944452250,16,1),
 (170944452250,23,0),
 (170944457359,4,2),
 (170944457359,16,1),
 (170944457359,23,0),
 (170944457968,4,2),
 (170944457968,16,1),
 (170944457968,23,0),
 (170944460531,4,2),
 (170944460531,16,1),
 (170944460531,23,0),
 (170944461140,4,2),
 (170944461140,16,1),
 (170944461140,23,0),
 (170944462390,4,2),
 (170944462390,16,1),
 (170944462390,23,0),
 (170944462968,4,2),
 (170944462968,16,1),
 (170944462968,23,0),
 (170944463859,4,2),
 (170944463859,16,1),
 (170944463859,23,0),
 (170944470531,4,2),
 (170944470531,16,1),
 (170944470531,23,0),
 (170944471750,4,2),
 (170944471750,16,1),
 (170944471750,23,0),
 (170944570453,4,1),
 (170944570453,16,1),
 (170944570453,23,0),
 (170944572312,4,1),
 (170944572312,16,1),
 (170944572312,23,0),
 (170944575234,4,1),
 (170944575234,16,1),
 (170944575234,23,0),
 (170944670359,4,2),
 (170944670359,16,1),
 (170944670359,23,0),
 (170944672828,4,2),
 (170944672828,16,1),
 (170944672828,23,0),
 (170944675031,4,2),
 (170944675031,16,1),
 (170944675031,23,0),
 (170944675625,4,2),
 (170944675625,16,1),
 (170944675625,23,0),
 (170945798156,4,1),
 (170945798156,16,1),
 (170945798156,23,0),
 (170945801421,4,1),
 (170945801421,16,1),
 (170945801421,23,0),
 (170945807437,4,1),
 (170945807437,16,1),
 (170945807437,23,0),
 (170945812187,4,1),
 (170945812187,16,1),
 (170945812187,23,0),
 (170945814046,4,1),
 (170945814046,16,1),
 (170945814046,23,0),
 (170945814984,4,1),
 (170945814984,16,1),
 (170945814984,23,0),
 (170945825859,4,1),
 (170945825859,16,1),
 (170945825859,23,0),
 (170945826484,4,1),
 (170945826484,16,1),
 (170945826484,23,0),
 (170945827093,4,1),
 (170945827093,16,1),
 (170945827093,23,0),
 (170945845125,4,1),
 (170945845125,16,1),
 (170945845125,23,0),
 (170945847625,4,1),
 (170945847625,16,1),
 (170945847625,23,0),
 (170945848515,4,1),
 (170945848515,16,1),
 (170945848515,23,0),
 (170945869781,4,1),
 (170945869781,16,1),
 (170945869781,23,0),
 (170945873312,4,1),
 (170945873312,16,1),
 (170945873312,23,0),
 (170947706890,4,1),
 (170947706890,16,1),
 (170947706890,23,0),
 (170947711328,4,1),
 (170947711328,16,1),
 (170947711328,23,0),
 (170947784062,4,2),
 (170947784062,16,1),
 (170947784062,23,0),
 (170947790468,4,2),
 (170947790468,16,1),
 (170947790468,23,0),
 (170947794625,4,2),
 (170947794625,16,1),
 (170947794625,23,0),
 (170947799984,4,2),
 (170947799984,16,1),
 (170947799984,23,0),
 (170947803546,4,2),
 (170947803546,16,1),
 (170947803546,23,0),
 (170947806359,4,2),
 (170947806359,16,1),
 (170947806359,23,0),
 (170947809781,4,2),
 (170947809781,16,1),
 (170947809781,23,0),
 (170947811328,4,2),
 (170947811328,16,1),
 (170947811328,23,0),
 (170947812515,4,2),
 (170947812515,16,1),
 (170947812515,23,0),
 (170947941171,4,1),
 (170947941171,16,1),
 (170947941171,23,0),
 (170947942078,4,1),
 (170947942078,16,1),
 (170947942078,23,0),
 (170947944859,4,1),
 (170947944859,16,1),
 (170947944859,23,0),
 (170947948968,4,1),
 (170947948968,16,1),
 (170947948968,23,0),
 (170947950187,4,1),
 (170947950187,16,1),
 (170947950187,23,0),
 (170947952031,4,1),
 (170947952031,16,1),
 (170947952031,23,0),
 (170947959046,4,1),
 (170947959046,16,1),
 (170947959046,23,0),INDX( 	 ��	�            (   �  �       ~ �                  �    � n     �    �$2p��;U����;U�����$2p�� `      �T              e c l i p s e _ u p d a t e _ 1 2 0 . j p g   �    p Z     �    �$2p��;U����;U�����$2p�� `      �T              E C L I P S ~ 1 . J P G       �    p Z     �    v�82p��������������v�82p�� @      �<              e p l - v 1 0 . h t m l       �    p Z     �    v�82p��������������v�82p�� @      �<              E P L - V 1  1 . H T M       �    x f     �    �N2p��a�����a������N2p�� 0      �$              f e a t u r e . p r o p e r t i e s   �    h X     �    �c2p���>�����>�����c2p��       �              f e a t u r e . x m l �    p Z     �    �N2p��a�����a������N2p�� 0      �$              F E A T U R ~ 1 . P R O       �    p Z     �    ��t2p��������������t2p�� 0      5#              l i c e n s e . h t m l       �    p Z     �    ��t2p����������� ��t2p�� 0      5#              L I C E N S ~ 1 . H T M       �    h R     �    �'}2p���3�����N}2p���\�V_6�                       M E T A - I N F                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (170949442562,4,1),
 (170949442562,16,1),
 (170949442562,23,0),
 (170949444453,4,1),
 (170949444453,16,1),
 (170949444453,23,0),
 (170949446343,4,1),
 (170949446343,16,1),
 (170949446343,23,0),
 (170949447546,4,1),
 (170949447546,16,1),
 (170949447546,23,0),
 (170949449421,4,1),
 (170949449421,16,1),
 (170949449421,23,0),
 (170949477578,4,2),
 (170949477578,16,1),
 (170949477578,23,0),
 (170949479453,4,2),
 (170949479453,16,1),
 (170949479453,23,0),
 (170949480375,4,2),
 (170949480375,16,1),
 (170949480375,23,0),
 (170949481281,4,2),
 (170949481281,16,1),
 (170949481281,23,0),
 (170949483781,4,2),
 (170949483781,16,1),
 (170949483781,23,0),
 (170949484375,4,2),
 (170949484375,16,1),
 (170949484375,23,0),
 (170949484953,4,2),
 (170949484953,16,1),
 (170949484953,23,0),
 (170949485531,4,2),
 (170949485531,16,1),
 (170949485531,23,0),
 (170949486734,4,2),
 (170949486734,16,1),
 (170949486734,23,0),
 (170949487937,4,2),
 (170949487937,16,1),
 (170949487937,23,0),
 (170949489171,4,2),
 (170949489171,16,1),
 (170949489171,23,0),
 (170949492234,4,2),
 (170949492234,16,1),
 (170949492234,23,0),
 (170949493093,4,2),
 (170949493093,16,1),
 (170949493093,23,0),
 (170949495234,4,2),
 (170949495234,16,1),
 (170949495234,23,0),
 (170949496781,4,2),
 (170949496781,16,1),
 (170949496781,23,0),
 (170949498593,4,2),
 (170949498593,16,1),
 (170949498593,23,0),
 (170949499500,4,2),
 (170949499500,16,1),
 (170949499500,23,0),
 (170949501656,4,2),
 (170949501656,16,1),
 (170949501656,23,0),
 (170949503328,4,2),
 (170949503328,16,1),
 (170949503328,23,0),
 (170949505765,4,2),
 (170949505765,16,1),
 (170949505765,23,0),
 (170949506359,4,2),
 (170949506359,16,1),
 (170949506359,23,0),
 (170949507578,4,2),
 (170949507578,16,1),
 (170949507578,23,0),
 (170949508453,4,2),
 (170949508453,16,1),
 (170949508453,23,0),
 (170949509312,4,2),
 (170949509312,16,1),
 (170949509312,23,0),
 (170949524078,4,2),
 (170949524078,16,1),
 (170949524078,23,0),
 (170949524968,4,2),
 (170949524968,16,1),
 (170949524968,23,0),
 (170949526828,4,2),
 (170949526828,16,1),
 (170949526828,23,0),
 (170949528093,4,2),
 (170949528093,16,1),
 (170949528093,23,0),
 (170949531531,4,2),
 (170949531531,16,1),
 (170949531531,23,0),
 (170949534359,4,2),
 (170949534359,16,1),
 (170949534359,23,0),
 (170949534968,4,2),
 (170949534968,16,1),
 (170949534968,23,0),
 (170949535546,4,2),
 (170949535546,16,1),
 (170949535546,23,0),
 (170949536140,4,2),
 (170949536140,16,1),
 (170949536140,23,0),
 (170949537078,4,2),
 (170949537078,16,1),
 (170949537078,23,0),
 (170949538390,4,2),
 (170949538390,16,1),
 (170949538390,23,0),
 (170949539296,4,2),
 (170949539296,16,1),
 (170949539296,23,0),
 (170949539890,4,2),
 (170949539890,16,1),
 (170949539890,23,0),
 (170949540500,4,2),
 (170949540500,16,1),
 (170949540500,23,0),
 (170949541406,4,2),
 (170949541406,16,1),
 (170949541406,23,0),
 (170949542312,4,2),
 (170949542312,16,1),
 (170949542312,23,0),
 (170949545437,4,2),
 (170949545437,16,1),
 (170949545437,23,0),
 (170949546359,4,2),
 (170949546359,16,1),
 (170949546359,23,0),
 (170949557421,4,1),
 (170949557421,16,1),
 (170949557421,23,0),
 (170949558015,4,1),
 (170949558015,16,1),
 (170949558015,23,0),
 (170950232203,4,1),
 (170950232203,16,1),
 (170950232203,23,0),
 (170950236250,4,1),
 (170950236250,16,1),
 (170950236250,23,0),
 (170950238750,4,1),
 (170950238750,16,1),
 (170950238750,23,0),
 (170950240296,4,1),
 (170950240296,16,1),
 (170950240296,23,0),
 (170950241609,4,1),
 (170950241609,16,1),
 (170950241609,23,0),
 (170950243156,4,1),
 (170950243156,16,1),
 (170950243156,23,0),
 (170950243750,4,1),
 (170950243750,16,1),
 (170950243750,23,0),
 (170950245296,4,1),
 (170950245296,16,1),
 (170950245296,23,0),
 (170950247468,4,1),
 (170950247468,16,1),
 (170950247468,23,0),
 (170950248406,4,1),
 (170950248406,16,1),
 (170950248406,23,0),
 (170950249296,4,1),
 (170950249296,16,1),
 (170950249296,23,0),
 (170950250968,4,1),
 (170950250968,16,1),
 (170950250968,23,0),
 (170950251843,4,1),
 (170950251843,16,1),
 (170950251843,23,0),
 (170950252781,4,1),
 (170950252781,16,1),
 (170950252781,23,0),
 (170950255265,4,1),
 (170950255265,16,1),
 (170950255265,23,0),
 (170950262156,4,1),
 (170950262156,16,1),
 (170950262156,23,0),
 (170950263437,4,1),
 (170950263437,16,1),
 (170950263437,23,0),
 (170950264375,4,1),
 (170950264375,16,1),
 (170950264375,23,0),
 (170950358734,4,1),
 (170950358734,16,1),
 (170950358734,23,0),
 (170950361234,4,1),
 (170950361234,16,1),
 (170950361234,23,0),
 (170950362468,4,1),
 (170950362468,16,1),
 (170950362468,23,0),
 (170950364343,4,1),
 (170950364343,16,1),
 (170950364343,23,0),
 (170950366843,4,1),
 (170950366843,16,1),
 (170950366843,23,0),
 (170950367765,4,1),
 (170950367765,16,1),
 (170950367765,23,0),
 (170950368656,4,1),
 (170950368656,16,1),
 (170950368656,23,0),
 (170950439859,4,1),
 (170950439859,16,1),
 (170950439859,23,2),
 (170950461468,4,1),
 (170950461468,16,1),
 (170950461468,23,0),
 (170950587328,4,1),
 (170950587328,16,1),
 (170950587328,23,0),
 (170950594421,4,1),
 (170950594421,16,1),
 (170950594421,23,0),
 (170950745281,4,2),
 (170950745281,16,1),
 (170950745281,23,2),
 (170950776265,4,1),
 (170950776265,16,1),
 (170950776265,23,2),
 (170950868546,4,1),
 (170950868546,16,1),
 (170950868546,23,2);
INSERT INTO `mvtcatval` (`MovimientoID`,`CategoriaID`,`ValorID`) VALUES 
 (170950934578,4,2),
 (170950934578,16,1),
 (170950934578,23,2),
 (170950999843,4,2),
 (170950999843,16,1),
 (170950999843,23,2),
 (170951048812,4,2),
 (170951048812,16,1),
 (170951048812,23,2),
 (170951073171,4,2),
 (170951073171,16,1),
 (170951073171,23,2),
 (170951171203,4,1),
 (170951171203,16,1),
 (170951171203,23,2),
 (170951183062,4,2),
 (170951183062,16,1),
 (170951183062,23,2),
 (170951184125,4,1),
 (170951184125,16,1),
 (170951184125,23,2),
 (170951246453,4,1),
 (170951246453,16,1),
 (170951246453,23,0),
 (170951258937,4,2),
 (170951258937,16,1),
 (170951258937,23,2),
 (170951269046,4,2),
 (170951269046,16,1),
 (170951269046,23,2),
 (170951294031,4,2),
 (170951294031,16,1),
 (170951294031,23,2),
 (170952093265,4,1),
 (170952093265,16,1),
 (170952093265,23,2),
 (170952381890,4,2),
 (170952381890,16,1),
 (170952381890,23,2),
 (170952394765,4,2),
 (170952394765,16,1),
 (170952394765,23,2),
 (170952859687,4,2),
 (170952859687,16,1),
 (170952859687,23,2),
 (170952956468,4,1),
 (170952956468,16,1),
 (170952956468,23,2),
 (170952995796,4,2),
 (170952995796,16,1),
 (170952995796,23,2),
 (170954353640,4,2),
 (170954353640,16,1),
 (170954353640,23,0),
 (170954358953,4,2),
 (170954358953,16,1),
 (170954358953,23,0),
 (170954361078,4,2),
 (170954361078,16,1),
 (170954361078,23,0),
 (170954368875,4,2),
 (170954368875,16,1),
 (170954368875,23,0),
 (170954384843,4,2),
 (170954384843,16,1),
 (170954384843,23,0),
 (170954386343,4,2),
 (170954386343,16,1),
 (170954386343,23,0),
 (170954386890,4,2),
 (170954386890,16,1),
 (170954386890,23,0),
 (170954389843,4,2),
 (170954389843,16,1),
 (170954389843,23,0),
 (170954392890,4,2),
 (170954392890,16,1),
 (170954392890,23,0),
 (170955584156,4,1),
 (170955584156,16,1),
 (170955584156,23,2),
 (170955693312,4,2),
 (170955693312,16,1),
 (170955693312,23,2),
 (170955755546,4,2),
 (170955755546,16,1),
 (170955755546,23,2),
 (170957484109,4,2),
 (170957484109,16,1),
 (170957484109,23,2),
 (170957507515,4,1),
 (170957507515,16,1),
 (170957507515,23,2),
 (170958251812,4,2),
 (170958251812,16,1),
 (170958251812,23,2),
 (170962595312,4,2),
 (170962595312,16,1),
 (170962595312,23,2),
 (170965796500,4,2),
 (170965796500,16,1),
 (170965796500,23,2),
 (170969212500,4,1),
 (170969212500,16,1),
 (170969212500,23,2),
 (170969356875,4,2),
 (170969356875,16,1),
 (170969356875,23,2),
 (170969659812,4,2),
 (170969659812,16,1),
 (170969659812,23,0),
 (170969668109,4,2),
 (170969668109,16,1),
 (170969668109,23,0),
 (170970161984,4,1),
 (170970161984,16,1),
 (170970161984,23,2),
 (170971138609,4,2),
 (170971138609,16,1),
 (170971138609,23,0),
 (170971141109,4,2),
 (170971141109,16,1),
 (170971141109,23,0),
 (170971147781,4,2),
 (170971147781,16,1),
 (170971147781,23,0),
 (170971151265,4,2),
 (170971151265,16,1),
 (170971151265,23,0),
 (170971165343,4,2),
 (170971165343,16,1),
 (170971165343,23,0),
 (170971170125,4,2),
 (170971170125,16,1),
 (170971170125,23,0),
 (170971171156,4,2),
 (170971171156,16,1),
 (170971171156,23,0),
 (170972113015,4,2),
 (170972113015,16,1),
 (170972113015,23,2),
 (170972591593,4,2),
 (170972591593,16,1),
 (170972591593,23,0),
 (170972621640,4,2),
 (170972621640,16,1),
 (170972621640,23,0),
 (170972849703,4,1),
 (170972849703,16,1),
 (170972849703,23,0),
 (170972853265,4,1),
 (170972853265,16,1),
 (170972853265,23,0),
 (170972855125,4,1),
 (170972855125,16,1),
 (170972855125,23,0),
 (170972857312,4,1),
 (170972857312,16,1),
 (170972857312,23,0),
 (170972859812,4,1),
 (170972859812,16,1),
 (170972859812,23,0),
 (170972862953,4,1),
 (170972862953,16,1),
 (170972862953,23,0),
 (170972865437,4,1),
 (170972865437,16,1),
 (170972865437,23,0),
 (170972866625,4,1),
 (170972866625,16,1),
 (170972866625,23,0),
 (170972867812,4,1),
 (170972867812,16,1),
 (170972867812,23,0),
 (170972868984,4,1),
 (170972868984,16,1),
 (170972868984,23,0),
 (170972870187,4,1),
 (170972870187,16,1),
 (170972870187,23,0),
 (170972871734,4,1),
 (170972871734,16,1),
 (170972871734,23,0),
 (170972872609,4,1),
 (170972872609,16,1),
 (170972872609,23,0),
 (170972873484,4,1),
 (170972873484,16,1),
 (170972873484,23,0),
 (170972874703,4,1),
 (170972874703,16,1),
 (170972874703,23,0),
 (170972876062,4,1),
 (170972876062,16,1),
 (170972876062,23,0),
 (170972877281,4,1),
 (170972877281,16,1),
 (170972877281,23,0),
 (170972878171,4,1),
 (170972878171,16,1),
 (170972878171,23,0),
 (170972879406,4,1),
 (170972879406,16,1),
 (170972879406,23,0),
 (170972880640,4,1),
 (170972880640,16,1),
 (170972880640,23,0),
 (170972882781,4,1),
 (170972882781,16,1),
 (170972882781,23,0),
 (170972884031,4,1),
 (170972884031,16,1),
 (170972884031,23,0),
 (170972885562,4,1),
 (170972885562,16,1),
 (170972885562,23,0),
 (170972886781,4,1),
 (170972886781,16,1),
 (170972886781,23,0),
 (170972887671,4,1),
 (170972887671,16,1),
 (170972887671,23,0),
 (170972889515,4,1),
 (170972889515,16,1),
 (170972889515,23,0),
 (170972890421,4,1),
 (170972890421,16,1),
 (170972890421,23,0),
 (170972891312,4,1),
 (170972891312,16,1),
 (170972891312,23,0),
 (170972891890,4,1),
 (170972891890,16,1),
 (170972891890,23,0),
 (170972893375,4,1),
 (170972893375,16,1),
 (170972893375,23,0),
 (170972894609,4,1),
 (170972894609,16,1),
 (170972894609,23,0),
 (170972895187,4,1),
 (170972895187,16,1),
 (170972895187,23,0),
 (170972896359,4,1),
 (170972896359,16,1),
 (170972896359,23,0),
 (170972896921,4,1),
 (170972896921,16,1),
 (170972896921,23,0),
 (170972899062,4,1),
 (170972899062,16,1),
 (170972899062,23,0),
 (170972899921,4,1),
 (170972899921,16,1),
 (170972899921,23,0),
 (170972900812,4,1),
 (170972900812,16,1),
 (170972900812,23,0),
 (170972901671,4,1),
 (170972901671,16,1),
 (170972901671,23,0),
 (170972902531,4,1),
 (170972902531,16,1),
 (170972902531,23,0),
 (170972903109,4,1),
 (170972903109,16,1),
 (170972903109,23,0),
 (170972904000,4,1),
 (170972904000,16,1),
 (170972904000,23,0),
 (170972907140,4,1),
 (170972907140,16,1),
 (170972907140,23,0),
 (170972908031,4,1),
 (170972908031,16,1),
 (170972908031,23,0),
 (170972908609,4,1),
 (170972908609,16,1),
 (170972908609,23,0),
 (170972909484,4,1),
 (170972909484,16,1),
 (170972909484,23,0),
 (170972910078,4,1),
 (170972910078,16,1),
 (170972910078,23,0),
 (170972912578,4,1),
 (170972912578,16,1),
 (170972912578,23,0),
 (170972913500,4,1),
 (170972913500,16,1),
 (170972913500,23,0),
 (170972914093,4,1),
 (170972914093,16,1),
 (170972914093,23,0),
 (170972915000,4,1),
 (170972915000,16,1),
 (170972915000,23,0),
 (170972915890,4,1),
 (170972915890,16,1),
 (170972915890,23,0),
 (170972916781,4,1),
 (170972916781,16,1),
 (170972916781,23,0),
 (170972917390,4,1),
 (170972917390,16,1),
 (170972917390,23,0),
 (170972918937,4,1),
 (170972918937,16,1),
 (170972918937,23,0),
 (170972920828,4,1),
 (170972920828,16,1),
 (170972920828,23,0),
 (170972922046,4,1),
 (170972922046,16,1),
 (170972922046,23,0),
 (170972923296,4,1),
 (170972923296,16,1),
 (170972923296,23,0),
 (170972924515,4,1),
 (170972924515,16,1),
 (170972924515,23���� JFIF  H H  ���Exif  MM *                  b       j(       1       r2       ��i       �   �   H      H   Adobe Photoshop CS Windows 2005:06:17 09:55:47     �       �       x�       x                          &(             .      k       H      H   ���� JFIF  H H  �� Adobe_CM �� Adobe d�   �� � 			
��  x x" ��  ��?          	
         	
 3 !1AQa"q�2���B#$R�b34r��C%�S���cs5���&D�TdE£t6�U�e���u��F'���������������Vfv��������7GWgw�������� 5 !1AQaq"2����B#�R��3$b�r��CScs4�%���&5��D�T�dEU6te����u��F���������������Vfv��������'7GWgw�������   ? �I!��"�����)Jh*A���ZRR�ʉi	*��d�!I$�JRI$���I$�$�I)���I��!"��U��6P�Ktwp�W�Odؕ���p��CfS%*^�;����v��x�mgEml��>K��l��z�
DF����W����io�ZMԒ���qv
5�'.���'�I��4��򠅖6�yU?I�|
2�(�e>��s<;��B]�N�I�潡�2:r�I$�����S�8m>#�&�fXC�
Lqi���@#���v�J�:+�P%q�>�[hk���?���I��q���oM��W�Z��\�Q���7�"�ʡ���uQ���S��6㪵}�*��R ���AI�J�K��) ���q��O�w௬�����P�F�(K^HuJ�I)����L��J��_�-E�x��KF�<N߸O��O�d�kg���zXk�Ih�y���S_��e#�d�ć�f9B�"{��LmM`��[*��)��T	I��)&@�) �v��R�g��7�J���L�(Q���y�[7RI%e����N"2��X��V�Z�ў=;+�p��� }A��I~#l�??����k��}��������p���K�j#���$��K��ոA
S-�K�I2V��$� � �Mju���%�w��Um|��Q������wĦ�Y/�Q-���J���������w�H���G䠜-B�R0�����)y��|G��l�OA��qʓuޗ��T=��� T����Be������ �%S��:�A�λG��z��1�z��<�H�b�C�-ii*�3*a� )����2SR�^�g�.?O��x,��xq� Ȩ����88��=g��0��B�)�ZƆ�CF���8
�V�I$�z����N�I�����D^���T j��&i��
L��H
�$�ǁ�V+Ȳ����9�Z�K�n>)��&ۺ�^"ւ���8�go�������u����@��g�>i�?>�<#���ɾ�E���*�1�2�˿yڕ2R.P%<D�,%D�I$�2��I%?���mm�W���L�W��Z�N�H{�ֆ�PܸT�_��nO�p�$�^�rbW�J6��q	"���K�I$=�K�I%?����\Photoshop 3.0 8BIM%                     8BIM�      H     H    8BIM&               ?�  8BIM        x8BIM        8BIM�     	         8BIM
       8BIM'     
        8BIM�     H /ff  lff       /ff  ���       2    Z         5    -        8BIM�     p  �����������������������    �����������������������    �����������������������    �����������������������  8BIM       8BIM         8BIM          @  @    8BIM         8BIM    I              x   x   
 U n t i t l e d - 1                                 x   x                                            null      boundsObjc         Rct1       Top long        Leftlong        Btomlong   x    Rghtlong   x   slicesVlLs   Objc        slice      sliceIDlong       groupIDlong       originenum   ESliceOrigin   autoGenerated    Typeenum   
ESliceType    Img    boundsObjc         Rct1       Top long        Leftlong        Btomlong   x    Rghtlong   x   urlTEXT         nullTEXT         MsgeTEXT        altTagTEXT        cellTextIsHTMLbool   cellTextTEXT        	horzAlignenum   ESliceHorzAlign   default   	vertAlignenum   ESliceVertAlign   default   bgColorTypeenum   ESliceBGColorType    None   	topOutsetlong       
leftOutsetlong       bottomOutsetlong       rightOutsetlong     8BIM(        ?�      8BIM        8BIM    �      x   x  h  ��  k  ���� JFIF  H H  �� Adobe_CM �� Adobe d�   �� � 			
��  x x" ��  ��?          	
         	
 3 !1AQa"q�2���B#$R�b34r��C%�S���cs5���&D�TdE£t6�U�e���u��F'���������������Vfv��������7GWgw�������� 5 !1AQaq"2����B#�R��3$b�r��CScs4�%���&5��D�T�dEU6te����u��F���������������Vfv��������'7GWgw�������   ? �I!��"�����)Jh*A���ZRR�ʉi	*��d�!I$�JRI$���I$�$�I)���I��!"��U��6P�Ktwp�W�Odؕ���p��CfS%*^�;����v��x�mgEml��>K��l��z�
DF����W����io�ZMԒ���qv
5�'.���'�I��4��򠅖6�yU?I�|
2�(�e>��s<;��B]�N�I�潡�2:r�I$�����S�8m>#�&�fXC�
Lqi���@#���v�J�:+�P%q�>�[hk���?���I��q���oM��W�Z��\�Q���7�"�ʡ���uQ���S��6㪵}�*��R ���AI�J�K��) ���q��O�w௬�����P�F�(K^HuJ�I)����L��J��_�-E�x��KF�<N߸O��O�d�kg���zXk�Ih�y���S_��e#�d�ć�f9B�"{��LmM`��[*��)��T	I��)&@�) �v��R�g��7�J���L�(Q���y�[7RI%e����N"2��X��V�Z�ў=;+�p��� }A��I~#l�??����k��}��������p���K�j#���$��K��ոA
S-�K�I2V��$� � �Mju���%�w��Um|��Q������wĦ�Y/�Q-���J���������w�H���G䠜-B�R0�����)y��|G��l�OA��qʓuޗ��T=��� T����Be������ �%S��:�A�λG��z��1�z��<�H�b�C�-ii*�3*a� )����2SR�^�g�.?O��x,��xq� Ȩ����88��=g��0��B�)�ZƆ�CF���8
�V�I$�z����N�I�����D^���T j��&i��
L��H
�$�ǁ�V+Ȳ����9�Z�K�n>)��&ۺ�^"ւ���8�go�������u����@��g�>i�?>�<#���ɾ�E���*�1�2�˿yڕ2R.P%<D�,%D�I$�2��I%?���mm�W���L�W��Z�N�H{�ֆ�PܸT�_��nO�p�$�^�rbW�J6��q	"���K�I$=�K�I%?�� 8BIM!     S       A d o b e   P h o t o s h o p    A d o b e   P h o t o s h o p   C S    8BIM          ���http://ns.adobe.com/xap/1.0/ <?xpacket begin='﻿' id='W5M0MpCehiHzreSzNTczkc9d'?>
<x:xmpmeta xmlns:x='adobe:ns:meta/' x:xmptk='XMP toolkit 3.0-28, framework 1.6'>
<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:iX='http://ns.adobe.com/iX/1.0/'>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:exif='http://ns.adobe.com/exif/1.0/'>
  <exif:ColorSpace>1</exif:ColorSpace>
  <exif:PixelXDimension>120</exif:PixelXDimension>
  <exif:PixelYDimension>120</exif:PixelYDimension>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:pdf='http://ns.adobe.com/pdf/1.3/'>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:photoshop='http://ns.adobe.com/photoshop/1.0/'>
  <photoshop:History></photoshop:History>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:tiff='http://ns.adobe.com/tiff/1.0/'>
  <tiff:Orientation>1</tiff:Orientation>
  <tiff:XResolution>72/1</tiff:XResolution>
  <tiff:YResolution>72/1</tiff:YResolution>
  <tiff:ResolutionUnit>2</tiff:ResolutionUnit>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:xap='http://ns.adobe.com/xap/1.0/'>
  <xap:CreateDate>2005-06-17T09:55:47-05:00</xap:CreateDate>
  <xap:ModifyDate>2005-06-17T09:55:47-05:00</xap:ModifyDate>
  <xap:MetadataDate>2005-06-17T09:55:47-05:00</xap:MetadataDate>
  <xap:CreatorTool>Adobe Photoshop CS Windows</xap:CreatorTool>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:xapMM='http://ns.adobe.com/xap/1.0/mm/'>
  <xapMM:DocumentID>adobe:docid:photoshop:5dd9930e-df37-11d9-b295-daca1d068cfc</xapMM:DocumentID>
 </rdf:Description>

 <rdf:Description rdf:about='uuid:818e86a4-df37-11d9-b295-daca1d068cfc'
  xmlns:dc='http://purl.org/dc/elements/1.1/'>
  <dc:format>image/jpeg</dc:format>
 </rdf:Description>

</rdf:RDF>
</x:xmpmeta>
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                       
<?xpacket end='w'?>��XICC_PROFILE   HLino  mntrRGB XYZ �  	  1  acspMSFT    IEC sRGB              ��     �-HP                                                 cprt  P   3desc  �   lwtpt  �   bkpt     rXYZ     gXYZ  ,   bXYZ  @   dmnd  T   pdmdd  �   �vued  L   �view  �   $lumi  �   meas     $tech  0   rTRC  <  gTRC  <  bTRC  <  text    Copyright (c) 1998 Hewlett-Packard Company  desc       sRGB IEC61966-2.1           sRGB IEC61966-2.1                                                  XYZ       �Q    �XYZ                 XYZ       o�  8�  �XYZ       b�  ��  �XYZ       $�  �  ��desc       IEC http://www.iec.ch           IEC http://www.iec.ch                                              desc       .IEC 61966-2.1 Default RGB colour space - sRGB           .IEC 61966-2.1 Default RGB colour space - sRGB                      desc       ,Reference Viewing Condition in IEC61966-2.1           ,Reference Viewing Condition in IEC61966-2.1                          view     �� _. � ��  \�   XYZ      L	V P   W�meas                         �   sig     CRT curv           
     # ( - 2 7 ; @ E J O T Y ^ c h m r w | � � � � � � � � � � � � � � � � � � � � � � � � �%+28>ELRY`gnu|����������������&/8AKT]gqz������������ !-8COZfr~���������� -;HUcq~���������+:IXgw��������'7HYj{�������+=Oat�������2FZn�������		%	:	O	d	y	�	�	�	�	�	�

'
=
T
j
�
�
�
�
�
�"9Qi������*C\u�����&@Zt�����.Id����	%A^z����	&Ca~����1Om����&Ed����#Cc����'Ij����4Vx���&Il����Ae����@e���� Ek���*Qw���;c���*R{���Gp���@j���>i���  A l � � �!!H!u!�!�!�"'"U"�"�"�#
#8#f#�#�#�$$M$|$�$�%	%8%h%�%�%�&'&W&�&�&�''I'z'�'�((?(q(�(�))8)k)�)�**5*h*�*�++6+i+�+�,,9,n,�,�--A-v-�-�..L.�.�.�/$/Z/�/�/�050l0�0�11J1�1�1�2*2c2�2�33F33�3�4+4e4�4�55M5�5�5�676r6�6�7$7`7�7�88P8�8�99B99�9�:6:t:�:�;-;k;�;�<'<e<�<�="=a=�=�> >`>�>�?!?a?�?�@#@d@�@�A)AjA�A�B0BrB�B�C:C}C�DDGD�D�EEUE�E�F"FgF�F�G5G{G�HHKH�H�IIcI�I�J7J}J�KKSK�K�L*LrL�MMJM�M�N%NnN�O OIO�O�P'PqP�QQPQ�Q�R1R|R�SS_S�S�TBT�T�U(UuU�VV\V�V�WDW�W�X/X}X�YYiY�ZZVZ�Z�[E[�[�\5\�\�]']x]�^^l^�__a_�``W`�`�aOa�a�bIb�b�cCc�c�d@d�d�e=e�e�f=f�f�g=g�g�h?h�h�iCi�i�jHj�j�kOk�k�lWl�mm`m�nnkn�ooxo�p+p�p�q:q�q�rKr�ss]s�ttpt�u(u�u�v>v�v�wVw�xxnx�y*y�y�zFz�{{c{�|!|�|�}A}�~~b~�#��G���
�k�͂0����W�������G����r�ׇ;����i�Ή3�����d�ʋ0�����c�ʍ1�����f�Ώ6����n�֑?����z��M��� �����_�ɖ4���
�u���L���$�����h�՛B��������d�Ҟ@��������i�ءG���&����v��V�ǥ8��������n��R�ĩ7�������u��\�ЭD���-������ �u��`�ֲK�³8���%�������y��h��Y�ѹJ�º;���.���!������
�����z���p���g���_���X���Q���K���F���Aǿ�=ȼ�:ɹ�8ʷ�6˶�5̵�5͵�6ζ�7ϸ�9к�<Ѿ�?���D���I���N���U���\���d���l���v��ۀ�܊�ݖ�ޢ�)߯�6��D���S���c���s��������2��F���[���p������(��@���X���r������4���P���m��������8���W���w����)���K���m���� Adobe d@   �� � ��  x x ��  ���             	
            	 
 	u!" 1A2#	QBa$3Rq�b�%C���&4r
��5'�S6��DTsEF7Gc(UVW�����d�t��e�����)8f�u*9:HIJXYZghijvwxyz������������������������������������������������������� m!1 "AQ2aqB�#�R�b3	�$��Cr��4%�ScD�&5T6Ed'
s��Ft����UeuV7��������)��������������(GWf8v��������gw��������HXhx��������9IYiy��������*:JZjz����������   ? �aɰ���?A����{���ߺ�\�?�݂���1�*� ��h=o�n�S�>�T�.�T�.���U���׺��u���{�{�^���׺��u���{�{�^��Щ�$�̓P�]Y*���Ǿ��P��6��Uzz���/Y����ZVA��� ��Z U>})kb��G��8"�F*U��ksnG�!@�^H�]:���Qp��ߏ���X��?.��e�����c�qæ��|���#������E�5r�K{�'�I$��:����Lu߿u���{�{�^���׺��u���{�{�^��ѩ_�>��c��54���S9WC��ˋ�?�����*FVnа�T��]�G�"Z��9������t�?��4�`�����$�%��t,�ު��U_�k��� ��ު�.��L=*�;W�#M������{a7'���Wҝ��ܵ����䊓��]V5�M�H�{��\�f��x��M�� p��Fao�W�gulJ}���,�~U��M
H!����f�;8T=��E>^��?��s�V��n���p@�I����7]U �qm��I����B�~t�I.��J�g4��`���O�dtKwo�PW���R<���W�3�]?j��gt� q�z�S%\O������T��rW��c�ſ���&KG'��(?�� I����m��p�����������<�^	Q��� �{I��D#\@��G��O����cЕ����t�j��ֹ
��@�,��"�WzV��!�]���Y���.�-��æ��T�W�Ћ����:�ߺ�^��׽��u�ҩ9.�x#�q���ip�� �eܑ��ã(��F�0--e,���OR�GR>�� ���}*����	"8���G���Sc�8֨z��u�y,�PO������u[tr^�i��X����\���-��L�cT�!*�2�S@t���.�H��}�������}��2�l�����?��o��_oU���b����#+�� T�Jt��
8�A�G��$dϯGW[�*�6� 
j� 7��Ω��q�g��fydbڞF.���ͽ��y�bO��7;<��#cĜ����Ti���E��?PO�5{OD�+M_��� s(#����?��� m��=���X�X]C���S���G��) �7����އ���t�>�#�n���yi�2.Ot������!�5�J���X�?E�I>���2[�wC^c�� 7�:���0�bJ~߷��|nJ�/CM��T%U\bH'�P�*AV
����+ ����qȓ"�U�C�F�Q�S���z��u��Ӭ��{[)œ��Q`�uM������8*=�%P֨��='�������x�m�N"��)O}C�"�@���?�^��TQ�JF�ú�n���
�u���dt�ȺO_����J�u�ǆ\������i�c�ل�� ��Iꥦt~��yP�O�G���{���n��%kЖ�jt�H��qP?�y~g�V��~��ݨv�V*��9d�	��@T� D�$�y� m���WKv�Ԁ:I1ts�4� T�q�VTV�n�)��9?�{����Qj:��:�έ�� ������$Q�uI��n�W�3_���7?텽��@\S��g���_�O?��8�H�Io�?������Ӑ��
O�� X�� ���'=)A����Q����Lp~����!J�COT��v�bc�&?��2��;z(�X莱nl�M�_���H�������)! ������g˯^Y��~��|ǘ� 7�=rA����{��ԩFP�A� � ��SBY�U�8څ���Zi�ݔ���^��dtomw,D����!��-&7)�x�[']R����4i%�752��{��y�����6�%Gˡ�/����bd� ���c�$��Z�r6��T�^�H���ּ�BB,H��A#�H>�;�܅�z�1�kyny3��|�	3$j�4�+ݚ]D�Rykܛ����9؊����Y���@�~�9�-S���}������E[�x�Fw�����9����k�N�J�'���ra���%�r9��c�	� o�� 8��$�����噹�� ��7��>}�[�����'�y�@(�V�����?�ɷ�o��i��}D������?�� ��S��?�� ?J"�ң�b[� E� y�`���_��� i���_�5��g�U@N>���9�P�#\�,�Κ���}������g��ո��m�t����H��5�-�@ �p���?>?ν-���A��թo}�1�R���58��oCN�G��[���7�UNZ���*��ҶU_����On
0ǯSO�6Z�w¹iB�����c�t��!���B'�J����ZN�8�A�pƴ��J� ����@DJq?�� ��Ýd[[�Zjc��� ?D��bg��po�uq�Z���B��q�8��v#�+�9$� C�G�~?�n�]6�b�};�s��������X�6� {��ǤR�ē�7�˴��Z��� a���� ����I�ޑ�9bo�<���~ğv$^�OϬ6�����-��{DƤ���Ҵ�C�[���E���� F��c�kSӀpb�u���m����o�����}K",iSJ��� �W �������ђ
(�l����8�RS֪��4�4.�>���� ��y���;��c���F����tE�-D/N�۟�t=��z ��֬
Ì����U*��l\�M��>�c��D���q������=76�o׵A��y��@=���x�.��o4�^�;��X��YV�c��ƻ�+S%�2- ��$�de<��tjS�P�r������ҟχE���V�]� ִ�C� �"3"TA�����_��{-ܟ��'�=�ά2m��o��� ���]�-����k�_���֔�QO���u
�u���p��k���� ���t=Q��ӏI����ݏ?��������T%gg=Ǧ)%.~�������}��q괯Q�i� _�I��� i�}X��LiL��G��p/���o�?�>�1������6767��W'�~<ߟ��'�l��t�.F:s���������?��w�!PsфKR:S(
��[�kq� �����kҲB�|�:~`�¾?��v�ȿ�\� ��9��M\�z?��� ��=���]>n?���s�A��שo}8@��S`K��}���������l��,�e����a���#�R.>��~D-��7����z�_0k��������-�Ȟ�H>z���4/���fϝ�⥃��w1WM;"��Y:xj#/oW�dĕ�%���m�h-������:S�}�\햗h��܃�0�+���Mg����>�u����{Y� �������O^|��I�Ѱ� m� 6�C(8�q���{s�����~=��W��)������k���?�����7^�厢��s���p�� ������i����t�?�u�b28Q�c������p:Ut���F�X�� �s�����T��F�GϬ���f'�	'��������I�7�z���n�������~J�e��Q��ib��{�Cjd���;U0}K��4��n����O���љ�:tK��Щ�VfA$�,	� z��Vᎃ��3 ����'kf+�� �� ڨ�"����x�{L�?~΄v0⃡�7N������g�2�fZ�G>�H�O)�1����@'Ld o�т��ҿ>=�b�6��5�'� D�����]X?g�N��;�g�����GG3��B�Xڂy>4��5�ţ,/Ϸ�!6�Bx������;�6˫&�ˏ��?��˭_;i��&��m�$ԓQV���,ѴS<r���pJ�O��� u)(�o�$����d!����ˤ7��W� �Տ��I����>�E��7n~�~���u/_�[��:��^�z����o��y��x��_���kÏ����N���ǩ�����Ƚ�������<?�����ע��������a�$�Z���$��%�Eۃ���+�_֢��tq�$g�Sd_���`���k���6����s)IO'���}Y�����{s�g�Iɩ�G�v��Occ)�h��R�̴n
�^Ac1SH�����8�q�֌>�w�6V��r�	�M�ՖA������U?0z_����с�t&���ѬMՎ��D��4s��J����mH�}x�W\��������P����Q�3��޾�A<CEz@R��<����=:��HF�=b�������?��?��O�٥w$����B�T��փ-�����L�",D�c���@J"�y��AdY!^.P�]�Υ���(���h�d��Kv���(��%��G�������_�����=��诜��˟���fJx���㌇��(Z�����H���> �������� ��)�~X����d����������r4�x�ɱ��KU;�I�
�Z�#pm��@���˨Q�tr�a�?��	k�'�m\,yH#�u�R�qo���ׂ|����	�*�no���~-���Eiӂ2i^���<�J��ܟ�� Z�ˮ/�0j���$^���j5�#�?'�� S�5{��Z�t�c��������������:GϤ�c-$NY������}�/.�\�����=?t�^Uv�M嚧a���^�(�L�n��E
)7����N��$�b�(Ao���&�������z�?貯��X�&����nd�Ъ��:=������ˠ�}a�� I��ҩaŭǾ���dק
w�S������`j�x�,�G(�K#�\����!Bƃ�� =	�U� v�pRJ%�sisQ���!�E �$d\b��ۚV%�� �g�u�Чu)N�OX��UT��}�P��!�p���Qa��h-��2�9p�,mo���"�>_����}z�6��dE����������|�E��������T�^�j
���\��y!\nE�4�6�2)��|,D&��K)��g��d	O���: �.O��5]��,�%|���N���2��ݻ-Q��Xz�eM<���4���c`F�R5[��ǰ=���n��G���Ew[]Ք��%Xz���f� ���?�d�����ģ�zpHU��� ��M��\�\N���!�'�#[ 9�p?ޭ�;u�Z7Ug QzKe�R� ���噏�*�I7������k�צP3Љ�>?nM�So~CY���2�"Q%.w:��D���$��G;���P�UrǷ��đ��h��mk��I'ʜcS�M��
�*Qu0��AA���Rb�Tt��m��QRƱS��¡c�(� ����<�}���v���±�Ơ*�� ` :&�z�k�I�� ��i�D���w���өo}�1��f�� �G����$�&� ?��$_N�[�wTAV=	F��hS�<%*7Lvs�&:6כKc϶� ]M���l-�cQ����M������#K<��Y\ݝ������vixy��^�`������*��坒�w6<���X�� �����=�-� ��5�c�9i�h���R�'����)zi�Hu�F����j&�X(е��C�Ӹ<��h�^_��[�9��6��Xleh�KIKL@�h����I�?��?z�<~�E<?�T���g���
�F���=���ld撣nO��
ʥ�R@%DSRd�]D�����]��ڲ��Z��)���HX��?��f�v�j�9C�8�����'�����n�6�%4���ӯ����Z�6�A6���G��� 5��O��$ܶ��_����G^���O�[?�j%����bb�{X�WU�-�6�~/o�$��P����|�%��[�;�sl�G�n��(��$� ��m�7]lic��`���E�f��S*� Jy���F���y�q���;��-��k�����>`�)� J��kpDK�S�����(�*o~}��:#����I��� �=�E�i*H���
�1����ֺ�ԩ�ZY��H F�G Qs����Mz"3�U'��R��O^:��S�2�ч�o�����zU����z=E�l�[Pܑ�:C-D�J�M#K<�^I\����ܟ������t��W.�jz�6��Ѳta�)��-�P)ҧ3?1��o ?۪�h��W�j}zY\v���A�b�#��Wi����7?�װ��D���ta�N:ǚ���� ��1��St4���پ?�_��� ��z����O�ul�7��� �G���>�K��>.��re��� }Ϸ�>�g�&��?SY{��B�D��ֹ�y�\���ڕON�&��}7;>�"Ӣ�z�>�龽��{��խ8�q�_�F��f�b��%n���� �� c	�I��H��"���N��I,�I4�4�J������I'�ɯ��L����9����ꀑé0y5�eP?<�=���O�!��K��R�1�h�y���Zi�Z�Q[���
�ty5���S�J��Q��>�1��]��ԥ�������<.����#�6�_�?�z��V�����'�G�����"駼'ϨrU��� o�ŏ��I.��������׷�>�<����>�*�Vrz���S�{�^���׺��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 [ZoneTransfer]
ZoneId=3
ReferrerUrl=C:\Java\eclipse-jee-oxygen-2-win32-x86_64.zip
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           171046970515,4,1),
 (171046970515,16,1),
 (171046970515,23,0),
 (171046974703,4,1),
 (171046974703,16,1),
 (171046974703,23,0),
 (171047305296,4,1),
 (171047305296,16,1),
 (171047305296,23,2),
 (171047442046,4,1),
 (171047442046,16,1),
 (171047442046,23,0),
 (171047470140,4,2),
 (171047470140,16,1),
 (171047470140,23,2),
 (171047621500,4,2),
 (171047621500,16,1),
 (171047621500,23,0),
 (171047624000,4,2),
 (171047624000,16,1),
 (171047624000,23,0),
 (171047624750,4,2),
 (171047624750,16,1),
 (171047624750,23,0),
 (171047629937,4,2),
 (171047629937,16,1),
 (171047629937,23,0),
 (171047636921,4,2),
 (171047636921,16,1),
 (171047636921,23,0),
 (171047671015,4,1),
 (171047671015,16,1),
 (171047671015,23,0),
 (171048159078,4,1),
 (171048159078,16,1),
 (171048159078,23,0),
 (171048160859,4,1),
 (171048160859,16,1),
 (171048160859,23,0),
 (171048161765,4,1),
 (171048161765,16,1),
 (171048161765,23,0),
 (171048162656,4,1),
 (171048162656,16,1),
 (171048162656,23,0),
 (171048165093,4,1),
 (171048165093,16,1),
 (171048165093,23,0),
 (171048165656,4,1),
 (171048165656,16,1),
 (171048165656,23,0),
 (171048166515,4,1),
 (171048166515,16,1),
 (171048166515,23,0),
 (171048167406,4,1),
 (171048167406,16,1),
 (171048167406,23,0),
 (171048168625,4,1),
 (171048168625,16,1),
 (171048168625,23,0),
 (171048169515,4,1),
 (171048169515,16,1),
 (171048169515,23,0),
 (171048170406,4,1),
 (171048170406,16,1),
 (171048170406,23,0),
 (171048171281,4,1),
 (171048171281,16,1),
 (171048171281,23,0),
 (171048173140,4,1),
 (171048173140,16,1),
 (171048173140,23,0),
 (171048175953,4,1),
 (171048175953,16,1),
 (171048175953,23,0),
 (171048179734,4,1),
 (171048179734,16,1),
 (171048179734,23,0),
 (171048180328,4,1),
 (171048180328,16,1),
 (171048180328,23,0),
 (171048181875,4,1),
 (171048181875,16,1),
 (171048181875,23,0),
 (171048184375,4,1),
 (171048184375,16,1),
 (171048184375,23,0),
 (171048185265,4,1),
 (171048185265,16,1),
 (171048185265,23,0),
 (171048185843,4,1),
 (171048185843,16,1),
 (171048185843,23,0),
 (171048187359,4,1),
 (171048187359,16,1),
 (171048187359,23,0),
 (171048188593,4,1),
 (171048188593,16,1),
 (171048188593,23,0),
 (171048189953,4,1),
 (171048189953,16,1),
 (171048189953,23,0),
 (171048190859,4,1),
 (171048190859,16,1),
 (171048190859,23,0),
 (171048192093,4,1),
 (171048192093,16,1),
 (171048192093,23,0),
 (171048195171,4,1),
 (171048195171,16,1),
 (171048195171,23,0),
 (171048196062,4,1),
 (171048196062,16,1),
 (171048196062,23,0),
 (171048199781,4,1),
 (171048199781,16,1),
 (171048199781,23,0),
 (171048200375,4,1),
 (171048200375,16,1),
 (171048200375,23,0),
 (171048211687,4,1),
 (171048211687,16,1),
 (171048211687,23,0),
 (171048212921,4,1),
 (171048212921,16,1),
 (171048212921,23,0),
 (171048214750,4,1),
 (171048214750,16,1),
 (171048214750,23,0),
 (171048216921,4,1),
 (171048216921,16,1),
 (171048216921,23,0),
 (171048219093,4,1),
 (171048219093,16,1),
 (171048219093,23,0),
 (171048219953,4,1),
 (171048219953,16,1),
 (171048219953,23,0),
 (171048221578,4,1),
 (171048221578,16,1),
 (171048221578,23,0),
 (171048222484,4,1),
 (171048222484,16,1),
 (171048222484,23,0),
 (171048223109,4,1),
 (171048223109,16,1),
 (171048223109,23,0),
 (171048224000,4,1),
 (171048224000,16,1),
 (171048224000,23,0),
 (171048224890,4,1),
 (171048224890,16,1),
 (171048224890,23,0),
 (171048225500,4,1),
 (171048225500,16,1),
 (171048225500,23,0),
 (171048236296,4,2),
 (171048236296,16,1),
 (171048236296,23,0),
 (171048238156,4,2),
 (171048238156,16,1),
 (171048238156,23,0),
 (171048239968,4,2),
 (171048239968,16,1),
 (171048239968,23,0),
 (171048240531,4,2),
 (171048240531,16,1),
 (171048240531,23,0),
 (171048242078,4,2),
 (171048242078,16,1),
 (171048242078,23,0),
 (171048242984,4,2),
 (171048242984,16,1),
 (171048242984,23,0),
 (171048244515,4,2),
 (171048244515,16,1),
 (171048244515,23,0),
 (171048245421,4,2),
 (171048245421,16,1),
 (171048245421,23,0),
 (171048247890,4,2),
 (171048247890,16,1),
 (171048247890,23,0),
 (171048325328,4,1),
 (171048325328,16,1),
 (171048325328,23,2),
 (171048409875,4,1),
 (171048409875,16,1),
 (171048409875,23,2),
 (171048691062,4,1),
 (171048691062,16,1),
 (171048691062,23,0),
 (171048693812,4,1),
 (171048693812,16,1),
 (171048693812,23,0),
 (171048695671,4,1),
 (171048695671,16,1),
 (171048695671,23,0),
 (171048771359,4,1),
 (171048771359,16,1),
 (171048771359,23,2),
 (171048820937,4,1),
 (171048820937,16,1),
 (171048820937,23,0),
 (171049121796,4,2),
 (171049121796,16,1),
 (171049121796,23,2),
 (171049154312,4,1),
 (171049154312,16,1),
 (171049154312,23,0),
 (171049157765,4,1),
 (171049157765,16,1),
 (171049157765,23,0),
 (171049561046,4,1),
 (171049561046,16,1),
 (171049561046,23,2),
 (171049583593,4,1),
 (171049583593,16,1),
 (171049583593,23,2),
 (171050244750,4,1),
 (171050244750,16,1),
 (171050244750,23,2),
 (171050264203,4,1),
 (171050264203,16,1),
 (171050264203,23,0),
 (171050271437,4,1),
 (171050271437,16,1),
 (171050271437,23,0),
 (171050274562,4,1),
 (171050274562,16,1),
 (171050274562,23,0),
 (171050286781,4,1),
 (171050286781,16,1),
 (171050286781,23,0),
 (171050677265,4,2),
 (171050677265,16,1),
 (171050677265,23,2),
 (171050994015,4,1),
 (171050994015,16,1),
 (171050994015,23,2),
 (171051132937,4,1),
 (171051132937,16,1),
 (171051132937,23,0),
 (171051134500,4,1),
 (171051134500,16,1),
 (171051134500,23,0),
 (171051136359,4,1),
 (171051136359,16,1),
 (171051136359,23,0),
 (171051137593,4,1),
 (171051137593,16,1),
 (171051137593,23,0),
 (171051138765,4,1),
 (171051138765,16,1),
 (171051138765,23,0),
 (171051139656,4,1),
 (171051139656,16,1),
 (171051139656,23,0),
 (171051140546,4,1),
 (171051140546,16,1),
 (171051140546,23,0),
 (171051915250,4,2),
 (171051915250,16,1),
 (171051915250,23,0),
 (171051917812,4,2),
 (171051917812,16,1),
 (171051917812,23,0),
 (171051920000,4,2),
 (171051920000,16,1),
 (171051920000,23,0),
 (171052017328,4,2),
 (171052017328,16,1),
 (171052017328,23,2),
 (171052080437,4,2),
 (171052080437,16,1),
 (171052080437,23,0),
 (171052086734,4,2),
 (171052086734,16,1),
 (171052086734,23,0),
 (171052089796,4,2),
 (171052089796,16,1),
 (171052089796,23,0),
 (171052091656,4,2),
 (171052091656,16,1),
 (171052091656,23,0),
 (171052093843,4,2),
 (171052093843,16,1),
 (171052093843,23,0),
 (171052095062,4,2),
 (171052095062,16,1),
 (171052095062,23,0),
 (171052098125,4,2),
 (171052098125,16,1),
 (171052098125,23,0),
 (171052099015,4,2),
 (171052099015,16,1),
 (171052099015,23,0),
 (171052103078,4,2),
 (171052103078,16,1),
 (171052103078,23,0),
 (171052104937,4,2),
 (171052104937,16,1),
 (171052104937,23,0),
 (171052106171,4,2),
 (171052106171,16,1),
 (171052106171,23,0),
 (171052107734,4,2),
 (171052107734,16,1),
 (171052107734,23,0),
 (171052111500,4,2),
 (171052111500,16,1),
 (171052111500,23,0),
 (171052113359,4,2),
 (171052113359,16,1),
 (171052113359,23,0),
 (171052114281,4,2),
 (171052114281,16,1),
 (171052114281,23,0),
 (171052115203,4,2),
 (171052115203,16,1),
 (171052115203,23,0),
 (171052117046,4,2),
 (171052117046,16,1),
 (171052117046,23,0),
 (171052119843,4,2),
 (171052119843,16,1),
 (171052119843,23,0),
 (171052121093,4,2),
 (171052121093,16,1),
 (171052121093,23,0),
 (171052123218,4,2),
 (171052123218,16,1),
 (171052123218,23,0),
 (171052124718,4,2),
 (171052124718,16,1),
 (171052124718,23,0),
 (171052126250,4,2),
 (171052126250,16,1),
 (171052126250,23,0),
 (171052127281,4,2),
 (171052127281,16,1),
 (171052127281,23,0),
 (171052413921,4,2),
 (171052413921,16,1),
 (171052413921,23,2),
 (171052435125,4,1),
 (171052435125,16,1),
 (171052435125,23,2),
 (171052888015,4,1),
 (171052888015,16,1),
 (171052888015,23,2),
 (171052896921,4,1),
 (171052896921,16,1),
 (171052896921,23,2),
 (171052938812,4,2),
 (171052938812,16,1),
 (171052938812,23,2),
 (171052974312,4,1),
 (171052974312,16,1),
 (171052974312,23,2),
 (171052994140,4,1),
 (171052994140,16,1),
 (171052994140,23,2),
 (171053269296,4,2),
 (171053269296,16,1),
 (171053269296,23,2),
 (171053812000,4,2),
 (171053812000,16,1),
 (171053812000,23,2),
 (171054036984,4,2),
 (171054036984,16,1),
 (171054036984,23,2),
 (171054642156,4,2),
 (171054642156,16,1),
 (171054642156,23,2),
 (171054736875,4,2),
 (171054736875,16,1),
 (171054736875,23,2),
 (171055058328,4,2),
 (171055058328,16,1),
 (171055058328,23,2),
 (171056333343,4,2),
 (171056333343,16,1),
 (171056333343,23,0),
 (171057232156,4,2),
 (171057232156,16,1),
 (171057232156,23,2),
 (171057259343,4,1),
 (171057259343,16,1),
 (171057259343,23,2),
 (171057549562,4,1),
 (171057549562,16,1),
 (171057549562,23,2),
 (171057973531,4,2),
 (171057973531,16,1),
 (171057973531,23,0),
 (171058158250,4,2),
 (171058158250,16,1),
 (171058158250,23,2),
 (171058391203,4,1),
 (171058391203,16,1),
 (171058391203,23,0),
 (171058398703,4,1),
 (171058398703,16,1),
 (171058398703,23,0),
 (171058444109,4,2),
 (171058444109,16,1),
 (171058444109,23,0),
 (171058445671,4,2),
 (171058445671,16,1),
 (171058445671,23,0),
 (171058450421,4,2),
 (171058450421,16,1),
 (171058450421,23,0),
 (171058457218,4,2),
 (171058457218,16,1),
 (171058457218,23,0),
 (171058465187,4,2),
 (171058465187,16,1),
 (171058465187,23,0),
 (171058473781,4,2),
 (171058473781,16,1),
 (171058473781,23,0),
 (171058478203,4,2),
 (171058478203,16,1),
 (171058478203,23,0),
 (171058478796,4,2),
 (171058478796,16,1),
 (171058478796,23,0),
 (171059042296,4,1),
 (171059042296,16,1),
 (171059042296,23,0),
 (171059052312,4,1),
 (171059052312,16,1),
 (171059052312,23,0),
 (171059052890,4,1),
 (171059052890,16,1),
 (171059052890,23,0),
 (171059062921,4,1),
 (171059062921,16,1),
 (171059062921,23,0),
 (171059064453,4,1),
 (171059064453,16,1),
 (171059064453,23,0),
 (171059085343,4,1),
 (171059085343,16,1),
 (171059085343,23,0),
 (171059097343,4,1),
 (171059097343,16,1),
 (171059097343,23,0),
 (171059115140,4,1),
 (171059115140,16,1),
 (171059115140,23,0),
 (171059123343,4,1),
 (171059123343,16,1),
 (171059123343,23,0),
 (171059135500,4,1),
 (171059135500,16,1),
 (171059135500,23,0),
 (171059810937,4,2),
 (171059810937,16,1),
 (171059810937,23,0),
 (171059814500,4,2),
 (171059814500,16,1),
 (171059814500,23,0),
 (171059816343,4,2),
 (171059816343,16,1),
 (171059816343,23,0),
 (171059816906,4,2),
 (171059816906,16,1),
 (171059816906,23,0),
 (171059818390,4,2),
 (171059818390,16,1),
 (171059818390,23,0),
 (171059820359,4,2),
 (171059820359,16,1),
 (171059820359,23,0),
 (171059821218,4,2),
 (171059821218,16,1),
 (171059821218,23,0),
 (171059821781,4,2),
 (171059821781,16,1),
 (171059821781,23,0),
 (171059822656,4,2),
 (171059822656,16,1),
 (171059822656,23,0),
 (171059823218,4,2),
 (171059823218,16,1),
 (171059823218,23,0),
 (171059824093,4,2),
 (171059824093,16,1),
 (171059824093,23,0),
 (171059824656,4,2),
 (171059824656,16,1),
 (171059824656,23,0),
 (171059825531,4,2),
 (171059825531,16,1),
 (171059825531,23,0),
 (171059826109,4,2),
 (171059826109,16,1),
 (171059826109,23,0),
 (171059826703,4,2),
 (171059826703,16,1),
 (171059826703,23,0),
 (171059827625,4,2),
 (171059827625,16,1),
 (171059827625,23,0),
 (171059853968,4,2),
 (171059853968,16,1),
 (171059853968,23,0),
 (171059866656,4,2),
 (171059866656,16,1),
 (171059866656,23,0),
 (171059867562,4,2),
 (171059867562,16,1),
 (171059867562,23,0),
 (171059876406,4,2),
 (171059876406,16,1),
 (171059876406,23,0),
 (171059878000,4,2),
 (171059878000,16,1),
 (171059878000,23,0),
 (171059878593,4,2),
 (171059878593,16,1),
 (171059878593,23,0),
 (171059879468,4,2),
 (171059879468,16,1),
 (171059879468,23,0),
 (171059880156,4,2),
 (171059880156,16,1),
 (171059880156,23,0),
 (171059880750,4,2),
 (171059880750,16,1),
 (171059880750,23,0),
 (171059881656,4,2),
 (171059881656,16,1),
 (171059881656,23,0),
 (171059882234,4,2),
 (171059882234,16,1),
 (171059882234,23,0),
 (171059882843,4,2),
 (171059882843,16,1),
 (171059882843,23,0),
 (171059883750,4,2),
 (171059883750,16,1),
 (171059883750,23,0),
 (171059892390,4,2),
 (171059892390,16,1),
 (171059892390,23,0),
 (171059931437,4,2),
 (171059931437,16,1),
 (171059931437,23,0),
 (171059978578,4,1),
 (171059978578,16,1),
 (171059978578,23,2),
 (171060477484,4,2),
 (171060477484,16,1),
 (171060477484,23,0),
 (171060479984,4,2),
 (171060479984,16,1),
 (171060479984,23,0),
 (171062605328,4,1),
 (171062605328,16,1),
 (171062605328,23,2),
 (171062774468,4,1),
 (171062774468,16,1),
 (171062774468,23,0),
 (171Signature-Version: 1.0
SHA-256-Digest-Manifest-Main-Attributes: QZ4kU9li4MUUJNvB7ohlCS+hcnlRb
 vtwZmrpTt0zP6g=
SHA-256-Digest-Manifest: W/dIdTuystJUqLjMPU1RqYtEXspEkcWqRFKhgVxXGNg=
Created-By: 1.8.0_131 (Oracle Corporation)

Name: epl-v10.html
SHA-256-Digest: LwwHH6Ww/ppPhKyMXRScvLbxGP4nFRALCbHbbwSA0SA=

Name: feature.xml
SHA-256-Digest: qtrfRMV7x2cIboJiR893sx7O9BLypacl7f2BQrCddjw=

Name: eclipse_update_120.jpg
SHA-256-Digest: D0fcUhJi81TIzNC+lAri7RDcArlCr58r7+VK17FdonE=

Name: feature.properties
SHA-256-Digest: SyyaOomPS6UPZVs7ASpvkzUdHxi+s02fNDExJEukv8g=

Name: license.html
SHA-256-Digest: gb5ZzrbOyFArzDLUIG4huZV/GHHBYb0EtixuMKXnhqs=

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      69904156,4,2),
 (171069904156,16,1),
 (171069904156,23,0),
 (171069905843,4,2),
 (171069905843,16,1),
 (171069905843,23,0),
 (171069908031,4,2),
 (171069908031,16,1),
 (171069908031,23,0),
 (171069909578,4,2),
 (171069909578,16,1),
 (171069909578,23,0),
 (171069911750,4,2),
 (171069911750,16,1),
 (171069911750,23,0),
 (171069913265,4,2),
 (171069913265,16,1),
 (171069913265,23,0),
 (171069914812,4,2),
 (171069914812,16,1),
 (171069914812,23,0),
 (171069915718,4,2),
 (171069915718,16,1),
 (171069915718,23,0),
 (171069916296,4,2),
 (171069916296,16,1),
 (171069916296,23,0),
 (171069916906,4,2),
 (171069916906,16,1),
 (171069916906,23,0),
 (171069924250,4,2),
 (171069924250,16,1),
 (171069924250,23,0),
 (171069927671,4,2),
 (171069927671,16,1),
 (171069927671,23,0),
 (171069928265,4,2),
 (171069928265,16,1),
 (171069928265,23,0),
 (171069929484,4,2),
 (171069929484,16,1),
 (171069929484,23,0),
 (171069932859,4,2),
 (171069932859,16,1),
 (171069932859,23,0),
 (171070763359,4,2),
 (171070763359,16,1),
 (171070763359,23,0),
 (171070770593,4,2),
 (171070770593,16,1),
 (171070770593,23,0),
 (171071680531,4,1),
 (171071680531,16,1),
 (171071680531,23,2),
 (171072425671,4,2),
 (171072425671,16,1),
 (171072425671,23,2),
 (171072996171,4,1),
 (171072996171,16,1),
 (171072996171,23,2),
 (171074565109,4,1),
 (171074565109,16,1),
 (171074565109,23,2),
 (171074994296,4,2),
 (171074994296,16,1),
 (171074994296,23,2),
 (171076392656,4,2),
 (171076392656,16,1),
 (171076392656,23,2),
 (171076423140,4,2),
 (171076423140,16,1),
 (171076423140,23,2),
 (171076528500,4,1),
 (171076528500,16,1),
 (171076528500,23,2),
 (171077387312,4,2),
 (171077387312,16,1),
 (171077387312,23,2),
 (171077576750,4,1),
 (171077576750,16,1),
 (171077576750,23,2),
 (171077869765,4,2),
 (171077869765,16,1),
 (171077869765,23,2),
 (171078149109,4,2),
 (171078149109,16,1),
 (171078149109,23,2),
 (171078365515,4,1),
 (171078365515,16,1),
 (171078365515,23,0),
 (171078374515,4,1),
 (171078374515,16,1),
 (171078374515,23,0),
 (171078375515,4,1),
 (171078375515,16,1),
 (171078375515,23,0),
 (171078376765,4,1),
 (171078376765,16,1),
 (171078376765,23,0),
 (171078382515,4,1),
 (171078382515,16,1),
 (171078382515,23,0),
 (171078385015,4,1),
 (171078385015,16,1),
 (171078385015,23,0),
 (171078389437,4,1),
 (171078389437,16,1),
 (171078389437,23,0),
 (171078393546,4,1),
 (171078393546,16,1),
 (171078393546,23,0),
 (171078394765,4,1),
 (171078394765,16,1),
 (171078394765,23,0),
 (171078396375,4,1),
 (171078396375,16,1),
 (171078396375,23,0),
 (171078397593,4,1),
 (171078397593,16,1),
 (171078397593,23,0),
 (171078399125,4,1),
 (171078399125,16,1),
 (171078399125,23,0),
 (171078400484,4,1),
 (171078400484,16,1),
 (171078400484,23,0),
 (171078402984,4,1),
 (171078402984,16,1),
 (171078402984,23,0),
 (171078404203,4,1),
 (171078404203,16,1),
 (171078404203,23,0),
 (171078509281,4,1),
 (171078509281,16,1),
 (171078509281,23,2),
 (171079159718,4,1),
 (171079159718,16,1),
 (171079159718,23,2),
 (171079172953,4,1),
 (171079172953,16,1),
 (171079172953,23,2),
 (171079366937,4,2),
 (171079366937,16,1),
 (171079366937,23,2),
 (171080589562,4,2),
 (171080589562,16,1),
 (171080589562,23,2),
 (171080595468,4,2),
 (171080595468,16,1),
 (171080595468,23,2),
 (171081665375,4,1),
 (171081665375,16,1),
 (171081665375,23,2),
 (171081950296,4,2),
 (171081950296,16,1),
 (171081950296,23,0),
 (171081951765,4,2),
 (171081951765,16,1),
 (171081951765,23,0),
 (171081952968,4,2),
 (171081952968,16,1),
 (171081952968,23,0),
 (171081954515,4,2),
 (171081954515,16,1),
 (171081954515,23,0),
 (171081972062,4,2),
 (171081972062,16,1),
 (171081972062,23,0),
 (171081972656,4,2),
 (171081972656,16,1),
 (171081972656,23,0),
 (171081973234,4,2),
 (171081973234,16,1),
 (171081973234,23,0),
 (171081974109,4,2),
 (171081974109,16,1),
 (171081974109,23,0),
 (171081975343,4,2),
 (171081975343,16,1),
 (171081975343,23,0),
 (171081976593,4,2),
 (171081976593,16,1),
 (171081976593,23,0),
 (171081977796,4,2),
 (171081977796,16,1),
 (171081977796,23,0),
 (171081979015,4,2),
 (171081979015,16,1),
 (171081979015,23,0),
 (171081980218,4,2),
 (171081980218,16,1),
 (171081980218,23,0),
 (171081981125,4,2),
 (171081981125,16,1),
 (171081981125,23,0),
 (171081982343,4,2),
 (171081982343,16,1),
 (171081982343,23,0),
 (171081983234,4,2),
 (171081983234,16,1),
 (171081983234,23,0),
 (171081984125,4,2),
 (171081984125,16,1),
 (171081984125,23,0),
 (171081985015,4,2),
 (171081985015,16,1),
 (171081985015,23,0),
 (171081986687,4,2),
 (171081986687,16,1),
 (171081986687,23,0),
 (171082188515,4,1),
 (171082188515,16,1),
 (171082188515,23,2),
 (171082423562,4,1),
 (171082423562,16,1),
 (171082423562,23,2),
 (171082440734,4,1),
 (171082440734,16,1),
 (171082440734,23,2),
 (171083009015,4,1),
 (171083009015,16,1),
 (171083009015,23,2),
 (171083038343,4,2),
 (171083038343,16,1),
 (171083038343,23,2),
 (171083132609,4,1),
 (171083132609,16,1),
 (171083132609,23,2),
 (171083155093,4,2),
 (171083155093,16,1),
 (171083155093,23,2),
 (171083304328,4,1),
 (171083304328,16,1),
 (171083304328,23,2),
 (171083397406,4,2),
 (171083397406,16,1),
 (171083397406,23,2),
 (171083915078,4,1),
 (171083915078,16,1),
 (171083915078,23,2),
 (171084603390,4,2),
 (171084603390,16,1),
 (171084603390,23,0),
 (171084641796,4,1),
 (171084641796,16,1),
 (171084641796,23,0),
 (171084647750,4,1),
 (171084647750,16,1),
 (171084647750,23,0),
 (171084656390,4,1),
 (171084656390,16,1),
 (171084656390,23,0),
 (171084662046,4,1),
 (171084662046,16,1),
 (171084662046,23,0),
 (171084669875,4,1),
 (171084669875,16,1),
 (171084669875,23,0),
 (171084673687,4,1),
 (171084673687,16,1),
 (171084673687,23,0),
 (171084792890,4,2),
 (171084792890,16,1),
 (171084792890,23,2),
 (171084823875,4,2),
 (171084823875,16,1),
 (171084823875,23,2),
 (171085085906,4,2),
 (171085085906,16,1),
 (171085085906,23,2),
 (171085346109,4,2),
 (171085346109,16,1),
 (171085346109,23,2),
 (171085471562,4,1),
 (171085471562,16,1),
 (171085471562,23,2),
 (171085603578,4,1),
 (171085603578,16,1),
 (171085603578,23,2),
 (171085623328,4,1),
 (171085623328,16,1),
 (171085623328,23,2),
 (171085646015,4,1),
 (171085646015,16,1),
 (171085646015,23,2),
 (171085654875,4,1),
 (171085654875,16,1),
 (171085654875,23,2),
 (171085686156,4,2),
 (171085686156,16,1),
 (171085686156,23,2),
 (171085717171,4,2),
 (171085717171,16,1),
 (171085717171,23,0),
 (171085723421,4,2),
 (171085723421,16,1),
 (171085723421,23,0),
 (171085726500,4,2),
 (171085726500,16,1),
 (171085726500,23,0),
 (171085754687,4,2),
 (171085754687,16,1),
 (171085754687,23,0),
 (171085806375,4,2),
 (171085806375,16,1),
 (171085806375,23,2),
 (171100491328,4,2),
 (171100491328,16,1),
 (171100491328,23,2),
 (171100670156,4,2),
 (171100670156,16,1),
 (171100670156,23,2),
 (171100796812,4,2),
 (171100796812,16,1),
 (171100796812,23,2),
 (171101038640,4,1),
 (171101038640,16,1),
 (171101038640,23,2),
 (171101794859,4,2),
 (171101794859,16,1),
 (171101794859,23,2),
 (171101974562,4,2),
 (171101974562,16,1),
 (171101974562,23,2),
 (171102009546,4,2),
 (171102009546,16,1),
 (171102009546,23,2),
 (171102266921,4,1),
 (171102266921,16,1),
 (171102266921,23,2),
 (171102714375,4,2),
 (171102714375,16,1),
 (171102714375,23,2),
 (171102931375,4,1),
 (171102931375,16,1),
 (171102931375,23,2),
 (171102954250,4,2),
 (171102954250,16,1),
 (171102954250,23,2),
 (171103021718,4,1),
 (171103021718,16,1),
 (171103021718,23,2),
 (171103101781,4,1),
 (171103101781,16,1),
 (171103101781,23,2),
 (171103839625,4,2),
 (171103839625,16,1),
 (171103839625,23,2),
 (171103847906,4,2),
 (171103847906,16,1),
 (171103847906,23,2),
 (171104609187,4,1),
 (171104609187,16,1),
 (171104609187,23,2),
 (171104760890,4,2),
 (171104760890,16,1),
 (171104760890,23,2),
 (171105339593,4,2),
 (171105339593,16,1),
 (171105339593,23,2),
 (171105591375,4,1),
 (171105591375,16,1),
 (171105591375,23,2),
 (171106082906,4,2),
 (171106082906,16,1),
 (171106082906,23,2),
 (171106118921,4,2),
 (171106118921,16,1),
 (171106118921,23,2),
 (171108027812,4,1),
 (171108027812,16,1),
 (171108027812,23,2),
 (171108240218,4,1),
 (171108240218,16,1),
 (171108240218,23,2),
 (171108642171,4,2),
 (171108642171,16,1),
 (171108642171,23,2),
 (171108<?xml version="1.0" encoding="UTF-8"?>
<feature
      id="org.eclipse.datatools.connectivity.oda.feature"
      label="%featureName"
      version="1.14.1.201712071719"
      provider-name="%providerName"
      plugin="org.eclipse.datatools.connectivity.oda"
      image="eclipse_update_120.jpg">

   <description>
      %description
   </description>

   <copyright>
      %featureCopyright
   </copyright>

   <license url="%licenseURL">
      %license
   </license>

   <plugin
         id="org.eclipse.datatools.connectivity.oda.consumer"
         download-size="0"
         install-size="0"
         version="3.4.1.201712071719"
         unpack="false"/>

   <plugin
         id="org.eclipse.datatools.connectivity.oda.design"
         download-size="0"
         install-size="0"
         version="3.5.1.201712071719"
         unpack="false"/>

   <plugin
         id="org.eclipse.datatools.connectivity.oda.profile"
         download-size="0"
         install-size="0"
         version="3.4.1.201712071719"
         unpack="false"/>

   <plugin
         id="org.eclipse.datatools.connectivity.oda"
         download-size="0"
         install-size="0"
         version="3.6.1.201712071719"
         unpack="false"/>

   <plugin
         id="org.eclipse.datatools.connectivity"
         download-size="0"
         install-size="0"
         version="1.14.1.201712071719"
         unpack="false"/>

</feature>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            (171145266718,4,1),
 (171145266718,16,1),
 (171145266718,23,0),
 (171146316328,4,1),
 (171146316328,16,1),
 (171146316328,23,0),
 (171146318187,4,1),
 (171146318187,16,1),
 (171146318187,23,0),
 (171146321984,4,1),
 (171146321984,16,1),
 (171146321984,23,0),
 (171146325750,4,1),
 (171146325750,16,1),
 (171146325750,23,0),
 (171146328250,4,1),
 (171146328250,16,1),
 (171146328250,23,0),
 (171146329468,4,1),
 (171146329468,16,1),
 (171146329468,23,0),
 (171146331015,4,1),
 (171146331015,16,1),
 (171146331015,23,0),
 (171146334156,4,1),
 (171146334156,16,1),
 (171146334156,23,0),
 (171146337890,4,1),
 (171146337890,16,1),
 (171146337890,23,0),
 (171146341171,4,1),
 (171146341171,16,1),
 (171146341171,23,0),
 (171146350765,4,2),
 (171146350765,16,1),
 (171146350765,23,0),
 (171146351359,4,2),
 (171146351359,16,1),
 (171146351359,23,0),
 (171146353203,4,2),
 (171146353203,16,1),
 (171146353203,23,0),
 (171146355375,4,2),
 (171146355375,16,1),
 (171146355375,23,0),
 (171147212171,4,1),
 (171147212171,16,1),
 (171147212171,23,2),
 (171147520218,4,1),
 (171147520218,16,1),
 (171147520218,23,0),
 (171147526890,4,1),
 (171147526890,16,1),
 (171147526890,23,0),
 (171147531593,4,1),
 (171147531593,16,1),
 (171147531593,23,0),
 (171147535343,4,1),
 (171147535343,16,1),
 (171147535343,23,0),
 (171147538796,4,1),
 (171147538796,16,1),
 (171147538796,23,0),
 (171147541265,4,1),
 (171147541265,16,1),
 (171147541265,23,0),
 (171147543109,4,1),
 (171147543109,16,1),
 (171147543109,23,0),
 (171147563093,4,2),
 (171147563093,16,1),
 (171147563093,23,0),
 (171147566812,4,2),
 (171147566812,16,1),
 (171147566812,23,0),
 (171147570734,4,2),
 (171147570734,16,1),
 (171147570734,23,0),
 (171147573968,4,2),
 (171147573968,16,1),
 (171147573968,23,0),
 (171147578453,4,2),
 (171147578453,16,1),
 (171147578453,23,0),
 (171147584203,4,2),
 (171147584203,16,1),
 (171147584203,23,0),
 (171147584953,4,2),
 (171147584953,16,1),
 (171147584953,23,0),
 (171147585687,4,2),
 (171147585687,16,1),
 (171147585687,23,0),
 (171147603890,4,2),
 (171147603890,16,1),
 (171147603890,23,0),
 (171147624843,4,1),
 (171147624843,16,1),
 (171147624843,23,0),
 (171147628953,4,1),
 (171147628953,16,1),
 (171147628953,23,0),
 (171147630796,4,1),
 (171147630796,16,1),
 (171147630796,23,0),
 (171147632781,4,1),
 (171147632781,16,1),
 (171147632781,23,0),
 (171147639953,4,1),
 (171147639953,16,1),
 (171147639953,23,0),
 (171147646234,4,1),
 (171147646234,16,1),
 (171147646234,23,0),
 (171147654703,4,1),
 (171147654703,16,1),
 (171147654703,23,0),
 (171147673593,4,1),
 (171147673593,16,1),
 (171147673593,23,0),
 (171147685562,4,1),
 (171147685562,16,1),
 (171147685562,23,0),
 (171147689500,4,1),
 (171147689500,16,1),
 (171147689500,23,0),
 (171148114468,4,1),
 (171148114468,16,1),
 (171148114468,23,0),
 (171148116046,4,1),
 (171148116046,16,1),
 (171148116046,23,0),
 (171148117906,4,1),
 (171148117906,16,1),
 (171148117906,23,0),
 (171148120718,4,1),
 (171148120718,16,1),
 (171148120718,23,0),
 (171148123546,4,1),
 (171148123546,16,1),
 (171148123546,23,0),
 (171148126359,4,1),
 (171148126359,16,1),
 (171148126359,23,0),
 (171148131718,4,1),
 (171148131718,16,1),
 (171148131718,23,0),
 (171148134218,4,1),
 (171148134218,16,1),
 (171148134218,23,0),
 (171148139265,4,1),
 (171148139265,16,1),
 (171148139265,23,0),
 (171148142406,4,1),
 (171148142406,16,1),
 (171148142406,23,0),
 (171148145187,4,1),
 (171148145187,16,1),
 (171148145187,23,0),
 (171148152796,4,1),
 (171148152796,16,1),
 (171148152796,23,0),
 (171148153359,4,1),
 (171148153359,16,1),
 (171148153359,23,0),
 (171148155812,4,1),
 (171148155812,16,1),
 (171148155812,23,0),
 (171148157984,4,1),
 (171148157984,16,1),
 (171148157984,23,0),
 (171148162062,4,1),
 (171148162062,16,1),
 (171148162062,23,0),
 (171148164234,4,1),
 (171148164234,16,1),
 (171148164234,23,0),
 (171148166390,4,1),
 (171148166390,16,1),
 (171148166390,23,0),
 (171148170453,4,1),
 (171148170453,16,1),
 (171148170453,23,0),
 (171148180953,4,1),
 (171148180953,16,1),
 (171148180953,23,0),
 (171148182843,4,1),
 (171148182843,16,1),
 (171148182843,23,0),
 (171148185031,4,1),
 (171148185031,16,1),
 (171148185031,23,0),
 (171148186890,4,1),
 (171148186890,16,1),
 (171148186890,23,0),
 (171148191640,4,1),
 (171148191640,16,1),
 (171148191640,23,0),
 (171148193140,4,1),
 (171148193140,16,1),
 (171148193140,23,0),
 (171148215265,4,1),
 (171148215265,16,1),
 (171148215265,23,0),
 (171148216468,4,1),
 (171148216468,16,1),
 (171148216468,23,0),
 (171148217078,4,1),
 (171148217078,16,1),
 (171148217078,23,0),
 (171148218000,4,1),
 (171148218000,16,1),
 (171148218000,23,0),
 (171148237875,4,1),
 (171148237875,16,1),
 (171148237875,23,0),
 (171148239765,4,1),
 (171148239765,16,1),
 (171148239765,23,0),
 (171148241953,4,1),
 (171148241953,16,1),
 (171148241953,23,0),
 (171148583750,4,1),
 (171148583750,16,1),
 (171148583750,23,2),
 (171149765078,4,1),
 (171149765078,16,1),
 (171149765078,23,0),
 (171149766015,4,1),
 (171149766015,16,1),
 (171149766015,23,0),
 (171149769765,4,1),
 (171149769765,16,1),
 (171149769765,23,0),
 (171149771937,4,1),
 (171149771937,16,1),
 (171149771937,23,0),
 (171149772828,4,1),
 (171149772828,16,1),
 (171149772828,23,0),
 (171149773406,4,1),
 (171149773406,16,1),
 (171149773406,23,0),
 (171149776546,4,1),
 (171149776546,16,1),
 (171149776546,23,0),
 (171149779687,4,1),
 (171149779687,16,1),
 (171149779687,23,0),
 (171149780578,4,1),
 (171149780578,16,1),
 (171149780578,23,0),
 (171149781125,4,1),
 (171149781125,16,1),
 (171149781125,23,0),
 (171149783250,4,1),
 (171149783250,16,1),
 (171149783250,23,0),
 (171149784062,4,1),
 (171149784062,16,1),
 (171149784062,23,0),
 (171150159468,4,1),
 (171150159468,16,1),
 (171150159468,23,2),
 (171150197375,4,1),
 (171150197375,16,1),
 (171150197375,23,0),
 (171150199546,4,1),
 (171150199546,16,1),
 (171150199546,23,0),
 (171150203343,4,1),
 (171150203343,16,1),
 (171150203343,23,0),
 (171150206453,4,1),
 (171150206453,16,1),
 (171150206453,23,0),
 (171150208656,4,1),
 (171150208656,16,1),
 (171150208656,23,0),
 (171150210843,4,1),
 (171150210843,16,1),
 (171150210843,23,0),
 (171150215625,4,1),
 (171150215625,16,1),
 (171150215625,23,0),
 (171150255031,4,1),
 (171150255031,16,1),
 (171150255031,23,2),
 (171150484109,4,1),
 (171150484109,16,1),
 (171150484109,23,2),
 (171150756187,4,1),
 (171150756187,16,1),
 (171150756187,23,2),
 (171150799437,4,1),
 (171150799437,16,1),
 (171150799437,23,2),
 (171150839046,4,1),
 (171150839046,16,1),
 (171150839046,23,2),
 (171151143406,4,1),
 (171151143406,16,1),
 (171151143406,23,2),
 (171151419937,4,1),
 (171151419937,16,1),
 (171151419937,23,0),
 (171151422781,4,1),
 (171151422781,16,1),
 (171151422781,23,0),
 (171151423468,4,1),
 (171151423468,16,1),
 (171151423468,23,0),
 (171151426609,4,1),
 (171151426609,16,1),
 (171151426609,23,0),
 (171151437234,4,1),
 (171151437234,16,1),
 (171151437234,23,0),
 (171151437796,4,1),
 (171151437796,16,1),
 (171151437796,23,0),
 (171151438968,4,1),
 (171151438968,16,1),
 (171151438968,23,0),
 (171151441109,4,1),
 (171151441109,16,1),
 (171151441109,23,0),
 (171151441687,4,1),
 (171151441687,16,1),
 (171151441687,23,0),
 (171151442296,4,1),
 (171151442296,16,1),
 (171151442296,23,0),
 (171151443515,4,1),
 (171151443515,16,1),
 (171151443515,23,0),
 (171151444093,4,1),
 (171151444093,16,1),
 (171151444093,23,0),
 (171151444656,4,1),
 (171151444656,16,1),
 (171151444656,23,0),
 (171151447796,4,1),
 (171151447796,16,1),
 (171151447796,23,0),
 (171151449015,4,1),
 (171151449015,16,1),
 (171151449015,23,0),
 (171151449593,4,1),
 (171151449593,16,1),
 (171151449593,23,0),
 (171151450171,4,1),
 (171151450171,16,1),
 (171151450171,23,0),
 (171151451078,4,1),
 (171151451078,16,1),
 (171151451078,23,0),
 (171151452625,4,1),
 (171151452625,16,1),
 (171151452625,23,0),
 (171151457046,4,1),
 (171151457046,16,1),
 (171151457046,23,0),
 (171151457984,4,1),
 (171151457984,16,1),
 (171151457984,23,0),
 (171151458875,4,1),
 (171151458875,16,1),
 (171151458875,23,0),
 (171151464265,4,1),
 (171151464265,16,1),
 (171151464265,23,0),
 (171151466484,4,1),
 (171151466484,16,1),
 (171151466484,23,0),
 (171151469296,4,1),
 (171151469296,16,1),
 (171151469296,23,0),
 (171151478234,4,1),
 (171151478234,16,1),
 (171151478234,23,0),
 (171151482375,4,1),
 (171151482375,16,1),
 (171151482375,23,0),
 (171151724359,4,1),
 (171151724359,16,1),
 (171151724359,23,2),
 (171151732671,4,1),
 (171151732671,16,1),
 (171151732671,23,2),
 (171152624671,4,2),
 (171152624671,16,1),
 (171152624671,23,2),
 (171153351437,4,2),
 (171153351437,16,1),
 (171153351437,23,2),
 (171154048531,4,1),
 (171154048531,16,1),
 (171154048531,23,2),
 (171154146781,4,1),
 (171154146781,16,1),
 (171154146781,23,0),
 (171154148312,4,1),
 (171154148312,16,1),
 (171154148312,23,0),
 (171154150796,4,1),
 (171154150796,16,1),
 (171154150796,23,0),
 (171154155203,4,1),
 (171154155203,16,1),
 (171154155203,23,0),
 (171154157828,4,1),
 (171154157828,16,1),
 (171154157828,23,0),
 (171154158390,4,1),
 (171154158390,16,1),
 (171154158390,23,0),
 (171154160265,4,1),
 (171154160265,16,1),
 (171154160265,23,0),
 (171154163015,4,1),
 (171154163015,16,1),
 (171154163015,23,0),
 (171154163875,4,1),
 (171154163875,16,1),
 (171154163875,23,0),
 (171154166265,4,1),
 (171154166265,16,1),
 (171154166265,23,0),
 (171154168109,4,1),
 (171154168109,16,1),
 (171154168109,23,0),
 (171154169328,4,1),
 (171154169328,16,1),
 (171154169328,23,0),
 (171154170640,4,1),
 (171154170640,16,1),
 (171154170640,23,0),
 (171154171703,4,1),
 (171154171703,16,1),
 (171154171703,23,0),
 (171154182156,4,1),
 (171154182156,16,1),
 (171154182156,23,2),
 (171154376515,4,2),
 (171154376515,16,1),
 (171154376515,23,2),
 (171154384312,4,2),
 (171154384312,16,1),
 (171154384312,23,2),
 (171154765437,4,1),
 (171154765437,16,1),
 (171154765437,23,2),
 (171154959093,4,2),
 (171154959093,16,1),
 (171154959093,23,0),
 (171154960609,4,2),
 (171154960609,16,1),
 (171154960609,23,0),
 (171154963093,4,2),
 (171154963093,16,1),
 (171154963093,23,0),
 (171154964000,4,2),
 (171154964000,16,1),
 (171154964000,23,0),
 (171154965843,4,2),
 (171154965843,16,1),
 (171154965843,23,0),
 (171154968093,4,2),
 (171154968093,16,1),
 (171154968093,23,0),
 (171154972812,4,2),
 (171154972812,16,1),
 (171154972812,23,0),
 (171154980562,4,2),
 (171154980562,16,1),
 (171154980562,23,0),
 (171154981468,4,2),
 (171154981468,16,1),
 (171154981468,23,0),
 (171154982359,4,2),
 (171154982359,16,1),
 (171154982359,23,0),
 (171154983890,4,2),
 (171154983890,16,1),
 (171154983890,23,0),
 (171154985109,4,2),
 (171154985109,16,1),
 (171154985109,23,0),
 (171154986000,4,2),
 (171154986000,16,1),
 (171154986000,23,0),
 (171154986890,4,2),
 (171154986890,16,1),
 (171154986890,23,0),
 (171155001296,4,2),
 (171155001296,16,1),
 (171155001296,23,0),
 (171155001890,4,2),
 (171155001890,16,1),
 (171155001890,23,0),
 (171155003437,4,2),
 (171155003437,16,1),
 (171155003437,23,0),
 (171155005609,4,2),
 (171155005609,16,1),
 (171155005609,23,0),
 (171155006218,4,2),
 (171155006218,16,1),
 (171155006218,23,0),
 (171155007109,4,2),
 (171155007109,16,1),
 (171155007109,23,0),
 (171155008000,4,2),
 (171155008000,16,1),
 (171155008000,23,0),
 (171155026265,4,2),
 (171155026265,16,1),
 (171155026265,23,0),
 (171155058937,4,1),
 (171155058937,16,1),
 (171155058937,23,2),
 (171155179093,4,1),
 (171155179093,16,1),
 (171155179093,23,2),
 (171155454546,4,1),
 (171155454546,16,1),
 (171155454546,23,2),
 (171155585453,4,2),
 (171155585453,16,1),
 (171155585453,23,2),
 (171155674703,4,1),
 (171155674703,16,1),
 (171155674703,23,2),
 (171155702875,4,2),
 (171155702875,16,1),
 (171155702875,23,2),
 (171156041046,4,2),
 (171156041046,16,1),
 (171156041046,23,2),
 (171156055375,4,2),
 (171156055375,16,1),
 (171156055375,23,2),
 (171156071890,4,2),
 (171156071890,16,1),
 (171156071890,23,2),
 (171156558671,4,2),
 (171156558671,16,1),
 (171156558671,23,2),
 (171156615984,4,2),
 (171156615984,16,1),
 (171156615984,23,2),
 (171156739828,4,1),
 (171156739828,16,1),
 (171156739828,23,2),
 (171156764562,4,2),
 (171156764562,16,1),
 (171156764562,23,2),
 (171156884343,4,1),
 (171156884343,16,1),
 (171156884343,23,2),
 (171157040078,4,1),
 (171157040078,16,1),
 (171157040078,23,2),
 (171157693187,4,1),
 (171157693187,16,1),
 (171157693187,23,2),
 (17[ZoneTransfer]
ZoneId=3
ReferrerUrl=https://mail.yahoo.com/
HostUrl=https://dl-mail.ymail.com/ws/download/mailboxes/@.id==VjN-2yJE4dxYGfo68UqVZgaU0Qnm_LTT8QONTNzz67XxWmiCRcLQNhiFDsZnbfkHLtO86Oln5siucf1AVwRpVtm6UatgezLTFbuWDfCaMFLPdGs/messages/@.id==ACCT3mtW38a3Ww4jzQCE0KiP6N8/content/parts/@.id==2/raw?appid=YahooMailNeo&ymreqid=e1623382-f609-3daf-0188-210017010000&token=3KzW8ObYDecV-VILNmI2BNSctDmqQRScWInjQZfeAAUauaVY4glprKRZd-jfvWXuy66h4cupWQfBRIASFYeke4XuxIG33Zy6llogrQXlef03jSR_SxLyJze_Isrs7ftG&error=https%3A%2F%2Fmg.mail.yahoo.com%2Fneo%2Fiframemsg%3Fid%3Ddebb8bd8-6545-2953-6297-31bcf392d990%26origin%3Dmail.yahoo.com
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        INDX( 	 w��            (   P  �                            c�    � �     b�    ]�����?Ł����H�А��Z��ʐ�� �      a�              "2 0 1 8 1 3 8 4 0 2 7 _ 0 0 6 _ 0 0 0 0 2 _ 0 0 0 0 0 0 1 1 . p d f o c�    p Z     b�    ]�����?Ł����H�А��Z��ʐ�� �      a�              2 0 1 8 1 3 ~ 1 . P D F a s   d�    � �     b�    �ܘ"u���Ƥ����Ƥ���o��#u�� @     �9             %R e p o r t e   d e   l a s   3   v i s i t a s   T e c n i c a s . o d t     d�    p Z     b�    �ܘ"u���Ƥ����Ƥ���o��#u�� @     �9             R E P O R T ~ 1 . O D T                    3   v i s i t a s   T e c n i c a s . o d t     d�    p Z     b�    �ܘ"u���Ƥ����Ƥ���o��#u�� @     �9             R E P O R T ~ 1 . O D T                    b�    ��D���Jp����H������Jp����h       h       "       ~ L O C K R ~ 1 . O D T                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     11455453,4,2),
 (171211455453,16,1),
 (171211455453,23,0),
 (171211457609,4,2),
 (171211457609,16,1),
 (171211457609,23,0),
 (171211459468,4,2),
 (171211459468,16,1),
 (171211459468,23,0),
 (171211461015,4,2),
 (171211461015,16,1),
 (171211461015,23,0),
 (171211462562,4,2),
 (171211462562,16,1),
 (171211462562,23,0),
 (171211467578,4,2),
 (171211467578,16,1),
 (171211467578,23,0),
 (171211470703,4,2),
 (171211470703,16,1),
 (171211470703,23,0),
 (171211474140,4,2),
 (171211474140,16,1),
 (171211474140,23,0),
 (171211475968,4,2),
 (171211475968,16,1),
 (171211475968,23,0),
 (171211477609,4,2),
 (171211477609,16,1),
 (171211477609,23,0),
 (171211479453,4,2),
 (171211479453,16,1),
 (171211479453,23,0),
 (171211480968,4,2),
 (171211480968,16,1),
 (171211480968,23,0),
 (171211483140,4,2),
 (171211483140,16,1),
 (171211483140,23,0),
 (171211486562,4,2),
 (171211486562,16,1),
 (171211486562,23,0),
 (171211488078,4,2),
 (171211488078,16,1),
 (171211488078,23,0),
 (171211491828,4,2),
 (171211491828,16,1),
 (171211491828,23,0),
 (171211495281,4,2),
 (171211495281,16,1),
 (171211495281,23,0),
 (171211495875,4,2),
 (171211495875,16,1),
 (171211495875,23,0),
 (171211496781,4,2),
 (171211496781,16,1),
 (171211496781,23,0),
 (171211503718,4,2),
 (171211503718,16,1),
 (171211503718,23,0),
 (171211505250,4,2),
 (171211505250,16,1),
 (171211505250,23,0),
 (171213169312,4,2),
 (171213169312,16,1),
 (171213169312,23,2),
 (171213667406,4,1),
 (171213667406,16,1),
 (171213667406,23,2),
 (171214251031,4,2),
 (171214251031,16,1),
 (171214251031,23,2),
 (171214928937,4,2),
 (171214928937,16,1),
 (171214928937,23,2),
 (171215989765,4,2),
 (171215989765,16,1),
 (171215989765,23,2),
 (171216018671,4,2),
 (171216018671,16,1),
 (171216018671,23,2),
 (171219298906,4,2),
 (171219298906,16,1),
 (171219298906,23,2),
 (171219707859,4,2),
 (171219707859,16,1),
 (171219707859,23,2),
 (171220115828,4,2),
 (171220115828,16,1),
 (171220115828,23,2),
 (171227826437,4,2),
 (171227826437,16,1),
 (171227826437,23,2),
 (171242011265,4,1),
 (171242011265,16,1),
 (171242011265,23,0),
 (171242013562,4,1),
 (171242013562,16,1),
 (171242013562,23,0),
 (171242014765,4,1),
 (171242014765,16,1),
 (171242014765,23,0),
 (171242017921,4,1),
 (171242017921,16,1),
 (171242017921,23,0),
 (171242020421,4,1),
 (171242020421,16,1),
 (171242020421,23,0),
 (171242024203,4,1),
 (171242024203,16,1),
 (171242024203,23,0),
 (171242025062,4,1),
 (171242025062,16,1),
 (171242025062,23,0),
 (171242025921,4,1),
 (171242025921,16,1),
 (171242025921,23,0),
 (171242026812,4,1),
 (171242026812,16,1),
 (171242026812,23,0),
 (171242027984,4,1),
 (171242027984,16,1),
 (171242027984,23,0),
 (171242028890,4,1),
 (171242028890,16,1),
 (171242028890,23,0),
 (171242040703,4,1),
 (171242040703,16,1),
 (171242040703,23,0),
 (171242041921,4,1),
 (171242041921,16,1),
 (171242041921,23,0),
 (171243111640,4,1),
 (171243111640,16,1),
 (171243111640,23,2),
 (171244158515,4,1),
 (171244158515,16,1),
 (171244158515,23,0),
 (171244161015,4,1),
 (171244161015,16,1),
 (171244161015,23,0),
 (171244162562,4,1),
 (171244162562,16,1),
 (171244162562,23,0),
 (171244163812,4,1),
 (171244163812,16,1),
 (171244163812,23,0),
 (171244164718,4,1),
 (171244164718,16,1),
 (171244164718,23,0),
 (171244165968,4,1),
 (171244165968,16,1),
 (171244165968,23,0),
 (171244399984,4,1),
 (171244399984,16,1),
 (171244399984,23,0),
 (171244403468,4,1),
 (171244403468,16,1),
 (171244403468,23,0),
 (171244406640,4,1),
 (171244406640,16,1),
 (171244406640,23,0),
 (171244409140,4,1),
 (171244409140,16,1),
 (171244409140,23,0),
 (171244411968,4,1),
 (171244411968,16,1),
 (171244411968,23,0),
 (171244420578,4,1),
 (171244420578,16,1),
 (171244420578,23,0),
 (171244423187,4,1),
 (171244423187,16,1),
 (171244423187,23,0),
 (171244424406,4,1),
 (171244424406,16,1),
 (171244424406,23,0),
 (171244427546,4,1),
 (171244427546,16,1),
 (171244427546,23,0),
 (171244429718,4,1),
 (171244429718,16,1),
 (171244429718,23,0),
 (171244431859,4,1),
 (171244431859,16,1),
 (171244431859,23,0),
 (171244435687,4,1),
 (171244435687,16,1),
 (171244435687,23,0),
 (17124INDX( 	 &��            (   H  �       �                    w�    � �     u�    ��<���U�X=���S��M���}��K��� p     �a              B a r r e r a s   S r   J o r g e   1 7 - 0 5 - 2 0 1 8 . p d f x l s v�    � �     u�    ��H���R�����R�������H��� �	      �	              B a r r e r a s   S r   J o r g e   1 7 - 0 5 - 2 0 1 8 . x l s x l s w�    p Z     u�    ��<���U�X=���S��M���}��K��� p     �a             B A R R E R ~ 1 . P D F       v�    p Z     u�    ��H�� R�����R�������H��� �	      �	             B A R R E R ~ 1 . X L S                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            INDX( 	 [E�            (   �  �         �g               q�   
 � n     k�    �"�G��� <���x�����"�G��� �      ��              B a s e   -   F u l l - M o d e l o . p d f F q�   
 p Z     k�    �"�G��� <���x�����"�G��� �      ��              B A S E - F ~ 1 . P D F b r o t�    � �     k�     �Ht���8�
u���Ո�����xR0���� �     ��             3E t a p a   1   P . C o b r o     C C T V   F a b i a n   S a n c h e z   1 4 - 0 5 - 2 0 1 8 . p d f n�    � �     k�    �;�b������������������;�b��� 0      $             3E t a p a   1   P . C o b r o     C C T V   F a b i a n   S a n c h e z   1 4 - 0 5 - 2 0 1 8 . x l s r�    � �     k�    ��������a�����K�ͮ���������� �     ��             .E t a p a   2   B a r r e r a s   F a b i a n   S a n c h e z   1 4 - 0 5 - 2 0 1 8 . p d f  o�    � �     k�    �b�b����	�����	�����b�b��� �      �             .E t a p a   2   B a r r e r a s   F a b i a n   S a n c h e z   1 4 - 0 5 - 2 0 1 8 . x l s  s�    � �     k�    �U������������������p����       8�             .E t a p a   3   P o s t e s     B a r r e r a   S a n c h e z   1 4 - 0 5 - 2 0 1 8 . p d f   m�    � �     k�    %P�b����? H����ϰ���%P�b��� @
      <
             .E t a p a   3   P o s t e s     B a r r e r a   S a n c h e z   1 4 - 0 5 - 2 0 1 8 . x l s   t�    p Z     k�     �Ht���8�
u���Ո�����xR0���� �     ��             E T A P A 1 ~ 1 . P D F i n g n�    p Z     k�    �;�b���������������� �;�b��� 0      $             E T A P A 1 ~ 1 . X L S i n g r�    p Z     k�    ��������a�����K�ͮ���������� �     ��             E T A P A 2 ~ 1 . P D F i n g o�    p Z     k�    �b�b����	�����	�����b�b��� �      �             E T A P A 2 ~ 1 . X L S i n g s�    p Z     k�    �U������������������p����       8�             E T A P A 3 ~ 1 . P D F i n g m�    p Z     k�    %P�b����? H����ϰ���%P�b��� @
      <
             E T A P A 3 ~ 1 . X L S i n                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            58812,4,1),
 (171257558812,16,1),
 (171257558812,23,0),
 (171257645531,4,2),
 (171257645531,16,1),
 (171257645531,23,0),
 (171257646750,4,2),
 (171257646750,16,1),
 (171257646750,23,0),
 (171257648250,4,2),
 (171257648250,16,1),
 (171257648250,23,0),
 (171257649140,4,2),
 (171257649140,16,1),
 (171257649140,23,0),
 (171257650687,4,2),
 (171257650687,16,1),
 (171257650687,23,0),
 (171257653828,4,2),
 (171257653828,16,1),
 (171257653828,23,0),
 (171257655312,4,2),
 (171257655312,16,1),
 (171257655312,23,0),
 (171257662312,4,2),
 (171257662312,16,1),
 (171257662312,23,0),
 (171257663609,4,2),
 (171257663609,16,1),
 (171257663609,23,0),
 (171257664515,4,2),
 (171257664515,16,1),
 (171257664515,23,0),
 (171257665406,4,2),
 (171257665406,16,1),
 (171257665406,23,0),
 (171257674234,4,2),
 (171257674234,16,1),
 (171257674234,23,0),
 (171257723437,4,1),
 (171257723437,16,1),
 (171257723437,23,0),
 (171257724328,4,1),
 (171257724328,16,1),
 (171257724328,23,0),
 (171257725234,4,1),
 (171257725234,16,1),
 (171257725234,23,0),
 (171257726109,4,1),
 (171257726109,16,1),
 (171257726109,23,0),
 (171257728609,4,1),
 (171257728609,16,1),
 (171257728609,23,0),
 (171257730109,4,1),
 (171257730109,16,1),
 (171257730109,23,0),
 (171257735859,4,1),
 (171257735859,16,1),
 (171257735859,23,0),
 (171257736468,4,1),
 (171257736468,16,1),
 (171257736468,23,0),
 (171257737406,4,1),
 (171257737406,16,1),
 (171257737406,23,0),
 (171257739687,4,1),
 (171257739687,16,1),
 (171257739687,23,0),
 (171257740265,4,1),
 (171257740265,16,1),
 (171257740265,23,0),
 (171258080281,4,2),
 (171258080281,16,1),
 (171258080281,23,2),
 (171258191500,4,2),
 (171258191500,16,1),
 (171258191500,23,0),
 (171258437093,4,2),
 (171258437093,16,1),
 (171258437093,23,0),
 (171258449593,4,2),
 (171258449593,16,1),
 (171258449593,23,0),
 (171258451093,4,2),
 (171258451093,16,1),
 (171258451093,23,0),
 (171258454531,4,2),
 (171258454531,16,1),
 (171258454531,23,0),
 (171258459250,4,2),
 (171258459250,16,1),
 (171258459250,23,0),
 (171258462062,4,2),
 (171258462062,16,1),
 (171258462062,23,0),
 (171258472968,4,2),
 (171258472968,16,1),
 (171258472968,23,0),
 (171258497656,4,2),
 (171258497656,16,1),
 (171258497656,23,0),
 (171258518125,4,2),
 (171258518125,16,1),
 (171258518125,23,0),
 (171258663312,4,2),
 (171258663312,16,1),
 (171258663312,23,0),
 (171258664515,4,2),
 (171258664515,16,1),
 (171258664515,23,0),
 (171258665703,4,2),
 (171258665703,16,1),
 (171258665703,23,0),
 (171258671031,4,2),
 (171258671031,16,1),
 (171258671031,23,0),
 (171258680109,4,2),
 (171258680109,16,1),
 (171258680109,23,0),
 (171258690109,4,2),
 (171258690109,16,1),
 (171258690109,23,0),
 (171258704859,4,2),
 (171258704859,16,1),
 (171258704859,23,0),
 (171258726156,4,2),
 (171258726156,16,1),
 (171258726156,23,0),
 (171259334156,4,2),
 (171259334156,16,1),
 (171259334156,23,2),
 (171259423890,4,2),
 (171259423890,16,1),
 (171259423890,23,0),
 (171259426093,4,2),
 (171259426093,16,1),
 (171259426093,23,0),
 (171259429843,4,2),
 (171259429843,16,1),
 (171259429843,23,0),
 (171259432328,4,2),
 (171259432328,16,1),
 (171259432328,23,0),
 (171259436843,4,2),
 (171259436843,16,1),
 (171259436843,23,0),
 (171259440562,4,2),
 (171259440562,16,1),
 (171259440562,23,0),
 (171259444937,4,2),
 (171259444937,16,1),
 (171259444937,23,0),
 (171259447109,4,2),
 (171259447109,16,1),
 (171259447109,23,0),
 (171259448984,4,2),
 (171259448984,16,1),
 (171259448984,23,0),
 (171259451546,4,2),
 (171259451546,16,1),
 (171259451546,23,0),
 (171259452171,4,2),
 (171259452171,16,1),
 (171259452171,23,0),
 (171259452750,4,2),
 (171259452750,16,1),
 (171259452750,23,0),
 (171259455843,4,2),
 (171259455843,16,1),
 (171259455843,23,0),
 (171259459593,4,2),
 (171259459593,16,1),
 (171259459593,23,0),
 (171259464578,4,2),
 (171259464578,16,1),
 (171259464578,23,0),
 (171259467703,4,2),
 (171259467703,16,1),
 (171259467703,23,0),
 (171259471125,4,2),
 (171259471125,16,1),
 (171259471125,23,0),
 (171259474906,4,2),
 (171259474906,16,1),
 (171259474906,23,0),
 (171259475500,4,2),
 (171259475500,16,1),
 (171259475500,23,0),
 (17125947INDX( 	 J��            (   @  �       �                    ��    � p     ��    vhK/p��q�'����'��vhK/p��       ��              c o m m o n s - l o g g i n g - 1 . 2 . j a r ��    p Z     ��    vhK/p��q�'����'��vhK/p��       ��              C O M M O N ~ 1 . J A R       ��    � �     ��    Y�L/p��R�'��%�'��Y�L/p��       �             *s p r i n g - b o o t - l o a d e r - t o o l s - 1 . 2 . 3 . R E L E A S E . j a r   ��    � |     ��    �N/p���I'� �p'���N/p�� p     2a             s p r i n g - c o r e - 4 . 1 . 6 . R E L E A S E . j a r     ��    p Z     ��    Y�L/p��R�'��%�'��Y�L/p��       �             S P R I N G ~ 1 . J A R       ��    p Z     ��    �N/p���I'���p'���N/p�� p     2a             S P R I N G ~ 2 . J A R                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      750,4,2),
 (171260941750,16,1),
 (171260941750,23,0),
 (171260944828,4,2),
 (171260944828,16,1),
 (171260944828,23,0),
 (171260946046,4,2),
 (171260946046,16,1),
 (171260946046,23,0),
 (171260947250,4,2),
 (171260947250,16,1),
 (171260947250,23,0),
 (171260948796,4,2),
 (171260948796,16,1),
 (171260948796,23,0),
 (171260963078,4,2),
 (171260963078,16,1),
 (171260963078,23,0),
 (171260963968,4,2),
 (171260963968,16,1),
 (171260963968,23,0),
 (171260965187,4,2),
 (171260965187,16,1),
 (171260965187,23,0),
 (171260966078,4,2),
 (171260966078,16,1),
 (171260966078,23,0),
 (171260966640,4,2),
 (171260966640,16,1),
 (171260966640,23,0),
 (171260967500,4,2),
 (171260967500,16,1),
 (171260967500,23,0),
 (171260968375,4,2),
 (171260968375,16,1),
 (171260968375,23,0),
 (171260969265,4,2),
 (171260969265,16,1),
 (171260969265,23,0),
 (171260970187,4,2),
 (171260970187,16,1),
 (171260970187,23,0),
 (171260971750,4,2),
 (171260971750,16,1),
 (171260971750,23,0),
 (171260972656,4,2),
 (171260972656,16,1),
 (171260972656,23,0),
 (171260973546,4,2),
 (171260973546,16,1),
 (171260973546,23,0),
 (171260974437,4,2),
 (171260974437,16,1),
 (171260974437,23,0),
 (171260975046,4,2),
 (171260975046,16,1),
 (171260975046,23,0),
 (171260976296,4,2),
 (171260976296,16,1),
 (171260976296,23,0),
 (171260976906,4,2),
 (171260976906,16,1),
 (171260976906,23,0),
 (171260977484,4,2),
 (171260977484,16,1),
 (171260977484,23,0),
 (171260978078,4,2),
 (171260978078,16,1),
 (171260978078,23,0),
 (171260979296,4,2),
 (171260979296,16,1),
 (171260979296,23,0),
 (171260981171,4,2),
 (171260981171,16,1),
 (171260981171,23,0),
 (171260981765,4,2),
 (171260981765,16,1),
 (171260981765,23,0),
 (171260983015,4,2),
 (171260983015,16,1),
 (171260983015,23,0),
 (171260986781,4,2),
 (171260986781,16,1),
 (171260986781,23,0),
 (171260987734,4,2),
 (171260987734,16,1),
 (171260987734,23,0),
 (171260988328,4,2),
 (171260988328,16,1),
 (171260988328,23,0),
 (171260988890,4,2),
 (171260988890,16,1),
 (171260988890,23,0),
 (171260989453,4,2),
 (171260989453,16,1),
 (171260989453,23,0),
 (171260990343,4,2),
 (171260990343,16,1),
 (171260990343,23,0),
 (171260995703,4,2),
 (171260995703,16,1),
 (171260995703,23,0),
 (171260996890,4,2),
 (171260996890,16,1),
 (171260996890,23,0),
 (171260998218,4,2),
 (171260998218,16,1),
 (171260998218,23,0),
 (171260998781,4,2),
 (171260998781,16,1),
 (171260998781,23,0),
 (171261016375,4,1),
 (171261016375,16,1),
 (171261016375,23,0),
 (171261017625,4,1),
 (171261017625,16,1),
 (171261017625,23,0),
 (171261018843,4,1),
 (171261018843,16,1),
 (171261018843,23,0),
 (171261019406,4,1),
 (171261019406,16,1),
 (171261019406,23,0),
 (171261021250,4,1),
 (171261021250,16,1),
 (171261021250,23,0),
 (171261021843,4,1),
 (171261021843,16,1),
 (171261021843,23,0),
 (171261022406,4,1),
 (171261022406,16,1),
 (171261022406,23,0),
 (171261023296,4,1),
 (171261023296,16,1),
 (171261023296,23,0),
 (171261024843,4,1),
 (171261024843,16,1),
 (171261024843,23,0),
 (171261025734,4,1),
 (171261025734,16,1),
 (171261025734,23,0),
 (171261026343,4,1),
 (171261026343,16,1),
 (171261026343,23,0),
 (171261026953,4,1),
 (171261026953,16,1),
 (171261026953,23,0),
 (171261027843,4,1),
 (171261027843,16,1),
 (171261027843,23,0),
 (171261028734,4,1),
 (171261028734,16,1),
 (171261028734,23,0),
 (171261029312,4,1),
 (171261029312,16,1),
 (171261029312,23,0),
 (171261030234,4,1),
 (171261030234,16,1),
 (171261030234,23,0),
 (171261030843,4,1),
 (171261030843,16,1),
 (171261030843,23,0),
 (171261056203,4,2),
 (171261056203,16,1),
 (171261056203,23,0),
 (171261056812,4,2),
 (171261056812,16,1),
 (171261056812,23,0),
 (171261057718,4,2),
 (171261057718,16,1),
 (171261057718,23,0),
 (171261058296,4,2),
 (171261058296,16,1),
 (171261058296,23,0),
 (171261059187,4,2),
 (171261059187,16,1),
 (171261059187,23,0),
 (171261060078,4,2),
 (171261060078,16,1),
 (171261060078,23,0),
 (171261060671,4,2),
 (171261060671,16,1),
 (171261060671,23,0),
 (171261061265,4,2),
 (171261061265,16,1),
 (171261061265,23,0),
 (171261061859,4,2),
 (171261061859,16,1),
 (171261061859,23,0),
 (1712610627<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=File-List
href="./Eclipse%20EPL%202003_11_10%20Final_files/filelist.xml">
<title>Eclipse Public License - Version 1.0</title>
<style>
<!--
 /* Font Definitions */
@font-face
	{
	panose-1:2 11 6 4 3 5 4 4 2 4;
	mso-font-charset:0;
	mso-font-pitch:variable;
	mso-font-signature:553679495 -2147483648 8 0 66047 0;}
 /* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	}
p
	{margin-right:0in;
	mso-margin-top-alt:auto;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	}
p.BalloonText, li.BalloonText, div.BalloonText
	{mso-style-name:"Balloon Text";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:8.0pt;
	
	}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style>
</head>

<body lang="EN-US" style='tab-interval:.5in'>

<div class=Section1>

<p align=center style='text-align:center'><b>Eclipse Public License - v 1.0</b>
</p>

<p><span style='font-size:10.0pt'>THE ACCOMPANYING PROGRAM IS PROVIDED UNDER
THE TERMS OF THIS ECLIPSE PUBLIC LICENSE (&quot;AGREEMENT&quot;). ANY USE,
REPRODUCTION OR DISTRIBUTION OF THE PROGRAM CONSTITUTES RECIPIENT'S ACCEPTANCE
OF THIS AGREEMENT.</span> </p>

<p><b><span style='font-size:10.0pt'>1. DEFINITIONS</span></b> </p>

<p><span style='font-size:10.0pt'>&quot;Contribution&quot; means:</span> </p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>a)
in the case of the initial Contributor, the initial code and documentation
distributed under this Agreement, and<br clear=left>
b) in the case of each subsequent Contributor:</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>i)
changes to the Program, and</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>ii)
additions to the Program;</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>where
such changes and/or additions to the Program originate from and are distributed
by that particular Contributor. A Contribution 'originates' from a Contributor
if it was added to the Program by such Contributor itself or anyone acting on
such Contributor's behalf. Contributions do not include additions to the
Program which: (i) are separate modules of software distributed in conjunction
with the Program under their own license agreement, and (ii) are not derivative
works of the Program. </span></p>

<p><span style='font-size:10.0pt'>&quot;Contributor&quot; means any person or
entity that distributes the Program.</span> </p>

<p><span style='font-size:10.0pt'>&quot;Licensed Patents &quot; mean patent
claims licensable by a Contributor which are necessarily infringed by the use
or sale of its Contribution alone or when combined with the Program. </span></p>

<p><span style='font-size:10.0pt'>&quot;Program&quot; means the Contributions
distributed in accordance with this Agreement.</span> </p>

<p><span style='font-size:10.0pt'>&quot;Recipient&quot; means anyone who
receives the Program under this Agreement, including all Contributors.</span> </p>

<p><b><span style='font-size:10.0pt'>2. GRANT OF RIGHTS</span></b> </p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>a)
Subject to the terms of this Agreement, each Contributor hereby grants Recipient
a non-exclusive, worldwide, royalty-free copyright license to<span
style='color:red'> </span>reproduce, prepare derivative works of, publicly
display, publicly perform, distribute and sublicense the Contribution of such
Contributor, if any, and such derivative works, in source code and object code
form.</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>b)
Subject to the terms of this Agreement, each Contributor hereby grants
Recipient a non-exclusive, worldwide,<span style='color:green'> </span>royalty-free
patent license under Licensed Patents to make, use, sell, offer to sell, import
and otherwise transfer the Contribution of such Contributor, if any, in source
code and object code form. This patent license shall apply to the combination
of the Contribution and the Program if, at the time the Contribution is added
by the Contributor, such addition of the Contribution causes such combination
to be covered by the Licensed Patents. The patent license shall not apply to
any other combinations which include the Contribution. No hardware per se is
licensed hereunder. </span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>c)
Recipient understands that although each Contributor grants the licenses to its
Contributions set forth herein, no assurances are provided by any Contributor
that the Program does not infringe the patent or other intellectual property
rights of any other entity. Each Contributor disclaims any liability to Recipient
for claims brought by any other entity based on infringement of intellectual
property rights or otherwise. As a condition to exercising the rights and
licenses granted hereunder, each Recipient hereby assumes sole responsibility
to secure any other intellectual property rights needed, if any. For example,
if a third party patent license is required to allow Recipient to distribute
the Program, it is Recipient's responsibility to acquire that license before
distributing the Program.</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>d)
Each Contributor represents that to its knowledge it has sufficient copyright
rights in its Contribution, if any, to grant the copyright license set forth in
this Agreement. </span></p>

<p><b><span style='font-size:10.0pt'>3. REQUIREMENTS</span></b> </p>

<p><span style='font-size:10.0pt'>A Contributor may choose to distribute the
Program in object code form under its own license agreement, provided that:</span>
</p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>a)
it complies with the terms and conditions of this Agreement; and</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>b)
its license agreement:</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>i)
effectively disclaims on behalf of all Contributors all warranties and
conditions, express and implied, including warranties or conditions of title
and non-infringement, and implied warranties or conditions of merchantability
and fitness for a particular purpose; </span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>ii)
effectively excludes on behalf of all Contributors all liability for damages,
including direct, indirect, special, incidental and consequential damages, such
as lost profits; </span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>iii)
states that any provisions which differ from this Agreement are offered by that
Contributor alone and not by any other party; and</span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>iv)
states that source code for the Program is available from such Contributor, and
informs licensees how to obtain it in a reasonable manner on or through a
medium customarily used for software exchange.<span style='color:blue'> </span></span></p>

<p><span style='font-size:10.0pt'>When the Program is made available in source
code form:</span> </p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>a)
it must be made available under this Agreement; and </span></p>

<p class=MsoNormal style='margin-left:.5in'><span style='font-size:10.0pt'>b) a
copy of this Agreement must be included with each copy of the Program. </span></p>

<p><span style='font-size:10.0pt'>Contributors may not remove or alter any
copyright notices contained within the Program. </span></p>

<p><span style='font-size:10.0pt'>Each Contributor must identify itself as the
originator of its Contribution, if any, in a manner that reasonably allows
subsequent Recipients to identify the originator of the Contribution. </span></p>

<p><b><span style='font-size:10.0pt'>4. COMMERCIAL DISTRIBUTION</span></b> </p>

<p><span style='font-size:10.0pt'>Commercial distributors of software may
accept certain responsibilities with respect to end users, business partners
and the like. While this license is intended to facilitate the commercial use
of the Program, the Contributor who includes the Program in a commercial
product offering should do so in a manner which does not create potential
liability for other Contributors. Therefore, if a Contributor includes the
Program in a commercial product offering, such Contributor (&quot;Commercial
Contributor&quot;) hereby agrees to defend and indemnify every other
Contributor (&quot;Indemnified Contributor&quot;) against any losses, damages and
costs (collectively &quot;Losses&quot;) arising from claims, lawsuits and other
legal actions brought by a third party against the Indemnified Contributor to
the extent caused by the acts or omissions of such Commercial Contributor in
connection with its distribution of the Program in a commercial product
offering. The obligations in this section do not apply to any claims or Losses
relating to any actual or alleged intellectual property infringement. In order
to qualify, an Indemnified Contributor must: a) promptly notify the Commercial
Contributor in writing of such claim, and b) allow the Commercial Contributor
to control, and cooperate with the Commercial Contributor in, the defense and
any related settlement negotiations. The Indemnified Contributor may participate
in any such claim at its own expense.</span> </p>

<p><span style='font-size:10.0pt'>For example, a Contributor might include the
Program in a commercial product offering, Product X. That Contributor is then a
Commercial Contributor. If that Commercial Contributor then makes performance
claims, or offers warranties related to Product X, those performance claims and
warranties are such Commercial Contributor's responsibility alone. Under this
section, the Commercial Contributor would have to defend claims against the
other Contributors related to those performance claims and warranties, and if a
court requires any other Contributor to pay any damages as a result, the
Commercial Contributor must pay those damages.</span> </p>

<p><b><span style='font-size:10.0pt'>5. NO WARRANTY</span></b> </p>

<p><span style='font-size:10.0pt'>EXCEPT AS EXPRESSLY SET FORTH IN THIS
AGREEMENT, THE PROGRAM IS PROVIDED ON AN &quot;AS IS&quot; BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING,
WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is solely
responsible for determining the appropriateness of using and distributing the
Program and assumes all risks associated with its exercise of rights under this
Agreement , including but not limited to the risks and costs of program errors,
compliance with applicable laws, damage to or loss of data, programs or
equipment, and unavailability or interruption of operations. </span></p>

<p><b><span style='font-size:10.0pt'>6. DISCLAIMER OF LIABILITY</span></b> </p>

<p><span style='font-size:10.0pt'>EXCEPT AS EXPRESSLY SET FORTH IN THIS
AGREEMENT, NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OR DISTRIBUTION OF
THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED HEREUNDER, EVEN IF ADVISED OF
THE POSSIBILITY OF SUCH DAMAGES.</span> </p>

<p><b><span style='font-size:10.0pt'>7. GENERAL</span></b> </p>

<p><span style='font-size:10.0pt'>If any provision of this Agreement is invalid
or unenforceable under applicable law, it shall not affect the validity or
enforceability of the remainder of the terms of this Agreement, and without
further action by the parties hereto, such provision shall be reformed to the
minimum extent necessary to make such provision valid and enforceable.</span> </p>

<p><span style='font-size:10.0pt'>If Recipient institutes patent litigation
against any entity (including a cross-claim or counterclaim in a lawsuit)
alleging that the Program itself (excluding combinations of the Program with
other software or hardware) infringes such Recipient's patent(s), then such
Recipient's rights granted under Section 2(b) shall terminate as of the date
such litigation is filed. </span></p>

<p><span style='font-size:10.0pt'>All Recipient's rights under this Agreement
shall terminate if it fails to comply with any of the material terms or
conditions of this Agreement and does not cure such failure in a reasonable
period of time after becoming aware of such noncompliance. If all Recipient's
rights under this Agreement terminate, Recipient agrees to cease use and
distribution of the Program as soon as reasonably practicable. However,
Recipient's obligations under this Agreement and any licenses granted by
Recipient relating to the Program shall continue and survive. </span></p>

<p><span style='font-size:10.0pt'>Everyone is permitted to copy and distribute
copies of this Agreement, but in order to avoid inconsistency the Agreement is
copyrighted and may only be modified in the following manner. The Agreement
Steward reserves the right to publish new versions (including revisions) of
this Agreement from time to time. No one other than the Agreement Steward has
the right to modify this Agreement. The Eclipse Foundation is the initial
Agreement Steward. The Eclipse Foundation may assign the responsibility to
serve as the Agreement Steward to a suitable separate entity. Each new version
of the Agreement will be given a distinguishing version number. The Program
(including Contributions) may always be distributed subject to the version of
the Agreement under which it was received. In addition, after a new version of
the Agreement is published, Contributor may elect to distribute the Program
(including its Contributions) under the new version. Except as expressly stated
in Sections 2(a) and 2(b) above, Recipient receives no rights or licenses to
the intellectual property of any Contributor under this Agreement, whether
expressly, by implication, estoppel or otherwise. All rights in the Program not
expressly granted under this Agreement are reserved.</span> </p>

<p><span style='font-size:10.0pt'>This Agreement is governed by the laws of the
State of New York and the intellectual property laws of the United States of
America. No party to this Agreement will bring a legal action under this
Agreement more than one year after the cause of action arose. Each party waives
its rights to a jury trial in any resulting litigation.</span> </p>

<p class=MsoNormal></p>

</div>

</body>

</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <?xml version="1.0" encoding="UTF-8"?>
<!--
 *************************************************************************
 * Copyright (c) 2009, 2014 Sybase, Inc. and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 * 	Sybase, Inc. - initial API and implementation
 *  Actuate Corporation - fix for Bug 245758; version updates
 *  
 ***************************************************************************
 -->
<feature
      id="org.eclipse.datatools.common.doc.user"
      label="%featureName"
      version="1.14.1.201712071719"
      provider-name="%providerName"
      plugin="org.eclipse.datatools.common.doc.user"
      image="eclipse_update_120.jpg">

   <description>
      %featureDesc
   </description>

   <copyright>
      %featureCopyright
   </copyright>

   <license url="%featureLicenseURL">
      %license
   </license>

   <plugin
         id="org.eclipse.datatools.common.doc.user"
         download-size="0"
         install-size="0"
         version="1.7.0.20090521092446"
         unpack="false"/>

</feature>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     72359,4,1),
 (171354972359,16,1),
 (171354972359,23,2),
 (171355289703,4,1),
 (171355289703,16,1),
 (171355289703,23,2),
 (171355567515,4,1),
 (171355567515,16,1),
 (171355567515,23,2),
 (171355644640,4,2),
 (171355644640,16,1),
 (171355644640,23,0),
 (171355645703,4,2),
 (171355645703,16,1),
 (171355645703,23,0),
 (171355646750,4,2),
 (171355646750,16,1),
 (171355646750,23,0),
 (171355650140,4,2),
 (171355650140,16,1),
 (171355650140,23,0),
 (171355653062,4,2),
 (171355653062,16,1),
 (171355653062,23,0),
 (171355655062,4,2),
 (171355655062,16,1),
 (171355655062,23,0),
 (171355656906,4,2),
 (171355656906,16,1),
 (171355656906,23,0),
 (171355659859,4,2),
 (171355659859,16,1),
 (171355659859,23,0),
 (171356482531,4,1),
 (171356482531,16,1),
 (171356482531,23,2),
 (171356506421,4,2),
 (171356506421,16,1),
 (171356506421,23,2),
 (171356953406,4,1),
 (171356953406,16,1),
 (171356953406,23,2),
 (171357284578,4,1),
 (171357284578,16,1),
 (171357284578,23,2),
 (171357314703,4,1),
 (171357314703,16,1),
 (171357314703,23,2),
 (171357524984,4,1),
 (171357524984,16,1),
 (171357524984,23,0),
 (171357525906,4,1),
 (171357525906,16,1),
 (171357525906,23,0),
 (171357534843,4,1),
 (171357534843,16,1),
 (171357534843,23,0),
 (171357571250,4,1),
 (171357571250,16,1),
 (171357571250,23,2),
 (171357594531,4,1),
 (171357594531,16,1),
 (171357594531,23,2),
 (171357607906,4,1),
 (171357607906,16,1),
 (171357607906,23,0),
 (171357611359,4,1),
 (171357611359,16,1),
 (171357611359,23,0),
 (171357613828,4,1),
 (171357613828,16,1),
 (171357613828,23,0),
 (171357615687,4,1),
 (171357615687,16,1),
 (171357615687,23,0),
 (171357617515,4,1),
 (171357617515,16,1),
 (171357617515,23,0),
 (171357620656,4,1),
 (171357620656,16,1),
 (171357620656,23,0),
 (171357622625,4,1),
 (171357622625,16,1),
 (171357622625,23,0),
 (171357624140,4,1),
 (171357624140,16,1),
 (171357624140,23,0),
 (171357626015,4,1),
 (171357626015,16,1),
 (171357626015,23,0),
 (171357665734,4,1),
 (171357665734,16,1),
 (171357665734,23,0),
 (171357667921,4,1),
 (171357667921,16,1),
 (171357667921,23,0),
 (171357670093,4,1),
 (171357670093,16,1),
 (171357670093,23,0),
 (171357672281,4,1),
 (171357672281,16,1),
 (171357672281,23,0),
 (171357674453,4,1),
 (171357674453,16,1),
 (171357674453,23,0),
 (171357675359,4,1),
 (171357675359,16,1),
 (171357675359,23,0),
 (171357676578,4,1),
 (171357676578,16,1),
 (171357676578,23,0),
 (171357678750,4,1),
 (171357678750,16,1),
 (171357678750,23,0),
 (171357681265,4,1),
 (171357681265,16,1),
 (171357681265,23,0),
 (171357682500,4,1),
 (171357682500,16,1),
 (171357682500,23,0),
 (171357683546,4,1),
 (171357683546,16,1),
 (171357683546,23,0),
 (171357939156,4,1),
 (171357939156,16,1),
 (171357939156,23,2),
 (171358613937,4,2),
 (171358613937,16,1),
 (171358613937,23,2),
 (171359277968,4,1),
 (171359277968,16,1),
 (171359277968,23,2),
 (171359390921,4,2),
 (171359390921,16,1),
 (171359390921,23,2),
 (171359498671,4,2),
 (171359498671,16,1),
 (171359498671,23,2),
 (171359731625,4,2),
 (171359731625,16,1),
 (171359731625,23,2),
 (171359919031,4,1),
 (171359919031,16,1),
 (171359919031,23,2),
 (171359935218,4,1),
 (171359935218,16,1),
 (171359935218,23,2),
 (171360262656,4,1),
 (171360262656,16,1),
 (171360262656,23,2),
 (171360558781,4,1),
 (171360558781,16,1),
 (171360558781,23,2),
 (171361272421,4,2),
 (171361272421,16,1),
 (171361272421,23,2),
 (171361451515,4,2),
 (171361451515,16,1),
 (171361451515,23,2),
 (171362069531,4,2),
 (171362069531,16,1),
 (171362069531,23,2),
 (171362276609,4,2),
 (171362276609,16,1),
 (171362276609,23,2),
 (171362311187,4,2),
 (171362311187,16,1),
 (171362311187,23,2),
 (171362458187,4,1),
 (171362458187,16,1),
 (171362458187,23,2),
 (171362664750,4,1),
 (171362664750,16,1),
 (171362664750,23,2),
 (171363060359,4,1),
 (171363060359,16,1),
 (171363060359,23,2),
 (171363204578,4,2),
 (171363204578,16,1),
 (171363204578,23,2),
 (171363480343,4,2),
 (171363480343,16,1),
 (171363480343,23,2),
 (171365413500,4,2),
 (171365413500,16,1),
 (171365413500,23,2),
 (171367292937,4,1),
 (171367292937,16,1),
 (171367292937,23,2),
 (17136854# /**
#  * <copyright>
#  *
#  * Copyright (c) 2002-2006 IBM Corporation and others.
#  * All rights reserved.   This program and the accompanying materials
#  * are made available under the terms of the Eclipse Public License v1.0
#  * which accompanies this distribution, and is available at
#  * http://www.eclipse.org/legal/epl-v10.html
#  * 
#  * Contributors: 
#  *   IBM - Initial API and implementation
#  *
#  * </copyright>
#  *
#  * $Id: feature.properties,v 1.5 2011/06/03 02:56:21 xgu Exp $
#  */

# "featureName" property - name of the feature
featureName=Data Tools Platform Open Data Access Runtime

# "providerName" property - name of the company that provides the feature
providerName=Eclipse Data Tools Platform

# "description" property - description of the feature
description=Binaries for Data Tools Platform Open Data Access Runtime
#
featureCopyright = Copyright (c) 2004, 2014 Actuate Corporation. All rights reserved. This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
#
# "licenseURL" property - URL of the "Feature License"
# do not translate value - just change to point to a locale-specific HTML page
licenseURL=license.html

# "license" property - text of the "Feature Update License"
# should be plain text version of license agreement pointed to be "licenseURL"
license=\
Eclipse Foundation Software User Agreement\n\
April 9, 2014\n\
\n\
Usage Of Content\n\
\n\
THE ECLIPSE FOUNDATION MAKES AVAILABLE SOFTWARE, DOCUMENTATION, INFORMATION AND/OR\n\
OTHER MATERIALS FOR OPEN SOURCE PROJECTS (COLLECTIVELY "CONTENT").\n\
USE OF THE CONTENT IS GOVERNED BY THE TERMS AND CONDITIONS OF THIS\n\
AGREEMENT AND/OR THE TERMS AND CONDITIONS OF LICENSE AGREEMENTS OR\n\
NOTICES INDICATED OR REFERENCED BELOW.  BY USING THE CONTENT, YOU\n\
AGREE THAT YOUR USE OF THE CONTENT IS GOVERNED BY THIS AGREEMENT\n\
AND/OR THE TERMS AND CONDITIONS OF ANY APPLICABLE LICENSE AGREEMENTS\n\
OR NOTICES INDICATED OR REFERENCED BELOW.  IF YOU DO NOT AGREE TO THE\n\
TERMS AND CONDITIONS OF THIS AGREEMENT AND THE TERMS AND CONDITIONS\n\
OF ANY APPLICABLE LICENSE AGREEMENTS OR NOTICES INDICATED OR REFERENCED\n\
BELOW, THEN YOU MAY NOT USE THE CONTENT.\n\
\n\
Applicable Licenses\n\
\n\
Unless otherwise indicated, all Content made available by the\n\
Eclipse Foundation is provided to you under the terms and conditions of\n\
the Eclipse Public License Version 1.0 ("EPL"). A copy of the EPL is\n\
provided with this Content and is also available at http://www.eclipse.org/legal/epl-v10.html.\n\
For purposes of the EPL, "Program" will mean the Content.\n\
\n\
Content includes, but is not limited to, source code, object code,\n\
documentation and other files maintained in the Eclipse Foundation source code\n\
repository ("Repository") in software modules ("Modules") and made available\n\
as downloadable archives ("Downloads").\n\
\n\
       - Content may be structured and packaged into modules to facilitate delivering,\n\
         extending, and upgrading the Content. Typical modules may include plug-ins ("Plug-ins"),\n\
         plug-in fragments ("Fragments"), and features ("Features").\n\
       - Each Plug-in or Fragment may be packaged as a sub-directory or JAR (Java(TM) ARchive)\n\
         in a directory named "plugins".\n\
       - A Feature is a bundle of one or more Plug-ins and/or Fragments and associated material.\n\
         Each Feature may be packaged as a sub-directory in a directory named "features".\n\
         Within a Feature, files named "feature.xml" may contain a list of the names and version\n\
         numbers of the Plug-ins and/or Fragments associated with that Feature.\n\
       - Features may also include other Features ("Included Features"). Within a Feature, files\n\
         named "feature.xml" may contain a list of the names and version numbers of Included Features.\n\
\n\
The terms and conditions governing Plug-ins and Fragments should be\n\
contained in files named "about.html" ("Abouts"). The terms and\n\
conditions governing Features and Included Features should be contained\n\
in files named "license.html" ("Feature Licenses"). Abouts and Feature\n\
Licenses may be located in any directory of a Download or Module\n\
including, but not limited to the following locations:\n\
\n\
       - The top-level (root) directory\n\
       - Plug-in and Fragment directories\n\
       - Inside Plug-ins and Fragments packaged as JARs\n\
       - Sub-directories of the directory named "src" of certain Plug-ins\n\
       - Feature directories\n\
\n\
Note: if a Feature made available by the Eclipse Foundation is installed using the\n\
Provisioning Technology (as defined below), you must agree to a license ("Feature \n\
Update License") during the installation process. If the Feature contains\n\
Included Features, the Feature Update License should either provide you\n\
with the terms and conditions governing the Included Features or inform\n\
you where you can locate them. Feature Update Licenses may be found in\n\
the "license" property of files named "feature.properties" found within a Feature.\n\
Such Abouts, Feature Licenses, and Feature Update Licenses contain the\n\
terms and conditions (or references to such terms and conditions) that\n\
govern your use of the associated Content in that directory.\n\
\n\
THE ABOUTS, FEATURE LICENSES, AND FEATURE UPDATE LICENSES MAY REFER\n\
TO THE EPL OR OTHER LICENSE AGREEMENTS, NOTICES OR TERMS AND CONDITIONS.\n\
SOME OF THESE OTHER LICENSE AGREEMENTS MAY INCLUDE (BUT ARE NOT LIMITED TO):\n\
\n\
       - Eclipse Distribution License Version 1.0 (available at http://www.eclipse.org/licenses/edl-v1.0.html)\n\
       - Common Public License Version 1.0 (available at http://www.eclipse.org/legal/cpl-v10.html)\n\
       - Apache Software License 1.1 (available at http://www.apache.org/licenses/LICENSE)\n\
       - Apache Software License 2.0 (available at http://www.apache.org/licenses/LICENSE-2.0)\n\
       - Mozilla Public License Version 1.1 (available at http://www.mozilla.org/MPL/MPL-1.1.html)\n\
\n\
IT IS YOUR OBLIGATION TO READ AND ACCEPT ALL SUCH TERMS AND CONDITIONS PRIOR\n\
TO USE OF THE CONTENT. If no About, Feature License, or Feature Update License\n\
is provided, please contact the Eclipse Foundation to determine what terms and conditions\n\
govern that particular Content.\n\
\n\
\n\Use of Provisioning Technology\n\
\n\
The Eclipse Foundation makes available provisioning software, examples of which include,\n\
but are not limited to, p2 and the Eclipse Update Manager ("Provisioning Technology") for\n\
the purpose of allowing users to install software, documentation, information and/or\n\
other materials (collectively "Installable Software"). This capability is provided with\n\
the intent of allowing such users to install, extend and update Eclipse-based products.\n\
Information about packaging Installable Software is available at\n\
http://eclipse.org/equinox/p2/repository_packaging.html ("Specification").\n\
\n\
You may use Provisioning Technology to allow other parties to install Installable Software.\n\
You shall be responsible for enabling the applicable license agreements relating to the\n\
Installable Software to be presented to, and accepted by, the users of the Provisioning Technology\n\
in accordance with the Specification. By using Provisioning Technology in such a manner and\n\
making it available in accordance with the Specification, you further acknowledge your\n\
agreement to, and the acquisition of all necessary rights to permit the following:\n\
\n\
       1. A series of actions may occur ("Provisioning Process") in which a user may execute\n\
          the Provisioning Technology on a machine ("Target Machine") with the intent of installing,\n\
          extending or updating the functionality of an Eclipse-based product.\n\
       2. During the Provisioning Process, the Provisioning Technology may cause third party\n\
          Installable Software or a portion thereof to be accessed and copied to the Target Machine.\n\
       3. Pursuant to the Specification, you will provide to the user the terms and conditions that\n\
          govern the use of the Installable Software ("Installable Software Agreement") and such\n\
          Installable Software Agreement shall be accessed from the Target Machine in accordance\n\
          with the Specification. Such Installable Software Agreement must inform the user of the\n\
          terms and conditions that govern the Installable Software and must solicit acceptance by\n\
          the end user in the manner prescribed in such Installable Software Agreement. Upon such\n\
          indication of agreement by the user, the provisioning Technology will complete installation\n\
          of the Installable Software.\n\
\n\
Cryptography\n\
\n\
Content may contain encryption software. The country in which you are\n\
currently may have restrictions on the import, possession, and use,\n\
and/or re-export to another country, of encryption software. BEFORE\n\
using any encryption software, please check the country's laws,\n\
regulations and policies concerning the import, possession, or use, and\n\
re-export of encryption software, to see if this is permitted.\n\
\n\
Java and all Java-based trademarks are trademarks of Oracle Corporation in the United States, other countries, or both.\n
########### end of license property ##########################################
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         0,4,2),
 (171485737250,16,1),
 (171485737250,23,2),
 (171485965671,4,2),
 (171485965671,16,1),
 (171485965671,23,2),
 (171486204859,4,2),
 (171486204859,16,1),
 (171486204859,23,2),
 (171500075390,4,1),
 (171500075390,16,1),
 (171500075390,23,2),
 (171500268546,4,2),
 (171500268546,16,1),
 (171500268546,23,2),
 (171500409718,4,2),
 (171500409718,16,1),
 (171500409718,23,2),
 (171500571343,4,2),
 (171500571343,16,1),
 (171500571343,23,2),
 (171500608953,4,2),
 (171500608953,16,1),
 (171500608953,23,2),
 (171500671468,4,2),
 (171500671468,16,1),
 (171500671468,23,2),
 (171501379828,4,1),
 (171501379828,16,1),
 (171501379828,23,2),
 (171501419828,4,2),
 (171501419828,16,1),
 (171501419828,23,2),
 (171502157812,4,1),
 (171502157812,16,1),
 (171502157812,23,2),
 (171503097750,4,2),
 (171503097750,16,1),
 (171503097750,23,2),
 (171503254375,4,2),
 (171503254375,16,1),
 (171503254375,23,2),
 (171503276906,4,2),
 (171503276906,16,1),
 (171503276906,23,2),
 (171503363750,4,1),
 (171503363750,16,1),
 (171503363750,23,2),
 (171503766796,4,1),
 (171503766796,16,1),
 (171503766796,23,2),
 (171503811593,4,1),
 (171503811593,16,1),
 (171503811593,23,2),
 (171504020546,4,2),
 (171504020546,16,1),
 (171504020546,23,2),
 (171504969703,4,1),
 (171504969703,16,1),
 (171504969703,23,2),
 (171505451281,4,1),
 (171505451281,16,1),
 (171505451281,23,2),
 (171505465296,4,1),
 (171505465296,16,1),
 (171505465296,23,2),
 (171505609875,4,1),
 (171505609875,16,1),
 (171505609875,23,2),
 (171505828078,4,1),
 (171505828078,16,1),
 (171505828078,23,2),
 (171505882312,4,2),
 (171505882312,16,1),
 (171505882312,23,2),
 (171506397156,4,1),
 (171506397156,16,1),
 (171506397156,23,2),
 (171507201828,4,2),
 (171507201828,16,1),
 (171507201828,23,2),
 (171508362953,4,1),
 (171508362953,16,1),
 (171508362953,23,2),
 (171509580078,4,1),
 (171509580078,16,1),
 (171509580078,23,2),
 (171510982687,4,2),
 (171510982687,16,1),
 (171510982687,23,2),
 (171511428250,4,1),
 (171511428250,16,1),
 (171511428250,23,0),
 (171511429468,4,1),
 (171511429468,16,1),
 (171511429468,23,0),
 (171511433000,4,1),
 (171511433000,16,1),
 (171511433000,23,0),
 (171511436078,4,1),
 (171511436078,16,1),
 (171511436078,23,0),
 (171511437750,4,1),
 (171511437750,16,1),
 (171511437750,23,0),
 (171511438968,4,1),
 (171511438968,16,1),
 (171511438968,23,0),
 (171511442468,4,1),
 (171511442468,16,1),
 (171511442468,23,0),
 (171511443234,4,1),
 (171511443234,16,1),
 (171511443234,23,0),
 (171511444140,4,1),
 (171511444140,16,1),
 (171511444140,23,0),
 (171511615687,4,2),
 (171511615687,16,1),
 (171511615687,23,0),
 (171511616578,4,2),
 (171511616578,16,1),
 (171511616578,23,0),
 (171511619750,4,2),
 (171511619750,16,1),
 (171511619750,23,0),
 (171511621328,4,2),
 (171511621328,16,1),
 (171511621328,23,0),
 (171511629468,4,2),
 (171511629468,16,1),
 (171511629468,23,0),
 (171511630718,4,2),
 (171511630718,16,1),
 (171511630718,23,0),
 (171511634812,4,2),
 (171511634812,16,1),
 (171511634812,23,0),
 (171511635421,4,2),
 (171511635421,16,1),
 (171511635421,23,0),
 (171511636328,4,2),
 (171511636328,16,1),
 (171511636328,23,0),
 (171511637218,4,2),
 (171511637218,16,1),
 (171511637218,23,0),
 (171511637796,4,2),
 (171511637796,16,1),
 (171511637796,23,0),
 (171511661843,4,2),
 (171511661843,16,1),
 (171511661843,23,0),
 (171511671453,4,2),
 (171511671453,16,1),
 (171511671453,23,0),
 (171511672062,4,2),
 (171511672062,16,1),
 (171511672062,23,0),
 (171511673312,4,2),
 (171511673312,16,1),
 (171511673312,23,0),
 (171511683187,4,2),
 (171511683187,16,1),
 (171511683187,23,0),
 (171511685984,4,2),
 (171511685984,16,1),
 (171511685984,23,0),
 (171511735906,4,2),
 (171511735906,16,1),
 (171511735906,23,0),
 (171511738406,4,2),
 (171511738406,16,1),
 (171511738406,23,0),
 (171511739296,4,2),
 (171511739296,16,1),
 (171511739296,23,0),
 (171512087734,4,2),
 (171512087734,16,1),
 (171512087734,23,2),
 (171513059171,4,1),
 (171513059171,16,1),
 (171513059171,23,2),
 (171514429437,4,2),
 (171514429437,16,1),
 (171514429437,23,0),
 (171515247000,4,2),
 (171515247000,16,1),
 (171515247000,23,2),
 (171515533484,4,2),
 (171515533484,16,1),
 (171515533484,23,2),
 (171516013796,4,2),
 (171516013796,16,1),
 (171516013796,23,0),
 (171516015609,4,2),
 (171516015609,16,1),
 (171516015609,23,0),
 (171516016796,4,2),
 (171516016796,16,1),
 (171516016796,23,0),
 (171516018156,4,2),
 (171516018156,16,1),
 (171516018156,23,0),
 (171516134578,4,2),
 (171516134578,16,1),
 (171516134578,23,2),
 (171516408812,4,2),
 (171516408812,16,1),
 (171516408812,23,2),
 (171517799953,4,2),
 (171517799953,16,1),
 (171517799953,23,2),
 (171519083968,4,2),
 (171519083968,16,1),
 (171519083968,23,2),
 (171519504203,4,2),
 (171519504203,16,1),
 (171519504203,23,0),
 (171519506093,4,2),
 (171519506093,16,1),
 (171519506093,23,0),
 (171519506984,4,2),
 (171519506984,16,1),
 (171519506984,23,0),
 (171519508203,4,2),
 (171519508203,16,1),
 (171519508203,23,0),
 (171519508812,4,2),
 (171519508812,16,1),
 (171519508812,23,0),
 (171519509875,4,2),
 (171519509875,16,1),
 (171519509875,23,0),
 (171536375765,4,1),
 (171536375765,16,1),
 (171536375765,23,2),
 (171538655593,4,1),
 (171538655593,16,1),
 (171538655593,23,2),
 (171539691562,4,2),
 (171539691562,16,1),
 (171539691562,23,2),
 (171541780859,4,1),
 (171541780859,16,1),
 (171541780859,23,0),
 (171541782718,4,1),
 (171541782718,16,1),
 (171541782718,23,0),
 (171541785859,4,1),
 (171541785859,16,1),
 (171541785859,23,0),
 (171541789390,4,1),
 (171541789390,16,1),
 (171541789390,23,0),
 (171541791250,4,1),
 (171541791250,16,1),
 (171541791250,23,0),
 (171541792500,4,1),
 (171541792500,16,1),
 (171541792500,23,0),
 (171541934187,4,2),
 (171541934187,16,1),
 (171541934187,23,2),
 (171542088187,4,2),
 (171542088187,16,1),
 (171542088187,23,2),
 (171542441000,4,1),
 (171542441000,16,1),
 (171542441000,23,0),
 (171542441890,4,1),
 (171542441890,16,1),
 (171542441890,23,0),
 (171542442500,4,1),
 (171542442500,16,1),
 (171542442500,23,0),
 (171542443718,4,1),
 (171542443718,16,1),
 (171542443718,23,0),
 (171542446531,4,1),
 (171542446531,16,1),
 (171542446531,23,0),
 (171542447125,4,1),
 (171542447125,16,1),
 (171542447125,23,0),
 (171542449000,4,1),
 (171542449000,16,1),
 (171542449000,23,0),
 (171542449578,4,1),
 (171542449578,16,1),
 (171542449578,23,0),
 (171542450484,4,1),
 (171542450484,16,1),
 (171542450484,23,0),
 (171542451375,4,1),
 (171542451375,16,1),
 (171542451375,23,0),
 (171542451968,4,1),
 (171542451968,16,1),
 (171542451968,23,0),
 (171542452859,4,1),
 (171542452859,16,1),
 (171542452859,23,0),
 (171542453437,4,1),
 (171542453437,16,1),
 (171542453437,23,0),
 (171542455281,4,1),
 (171542455281,16,1),
 (171542455281,23,0),
 (171542467437,4,1),
 (171542467437,16,1),
 (171542467437,23,0),
 (171542468359,4,1),
 (171542468359,16,1),
 (171542468359,23,0),
 (171542474406,4,1),
 (171542474406,16,1),
 (171542474406,23,0),
 (171542475937,4,1),
 (171542475937,16,1),
 (171542475937,23,0),
 (171542476546,4,1),
 (171542476546,16,1),
 (171542476546,23,0),
 (171542478671,4,1),
 (171542478671,16,1),
 (171542478671,23,0),
 (171542479265,4,1),
 (171542479265,16,1),
 (171542479265,23,0),
 (171542480906,4,1),
 (171542480906,16,1),
 (171542480906,23,0),
 (171542481796,4,1),
 (171542481796,16,1),
 (171542481796,23,0),
 (171542482671,4,1),
 (171542482671,16,1),
 (171542482671,23,0),
 (171542483265,4,1),
 (171542483265,16,1),
 (171542483265,23,0),
 (171542484156,4,1),
 (171542484156,16,1),
 (171542484156,23,0),
 (171542484765,4,1),
 (171542484765,16,1),
 (171542484765,23,0),
 (171542550718,4,2),
 (171542550718,16,1),
 (171542550718,23,0),
 (171542551671,4,2),
 (171542551671,16,1),
 (171542551671,23,0),
 (171542552921,4,2),
 (171542552921,16,1),
 (171542552921,23,0),
 (171542554453,4,2),
 (171542554453,16,1),
 (171542554453,23,0),
 (171542555375,4,2),
 (171542555375,16,1),
 (171542555375,23,0),
 (171542556578,4,2),
 (171542556578,16,1),
 (171542556578,23,0),
 (171542558125,4,2),
 (171542558125,16,1),
 (171542558125,23,0),
 (171542559031,4,2),
 (171542559031,16,1),
 (171542559031,23,0),
 (171542559937,4,2),
 (171542559937,16,1),
 (171542559937,23,0),
 (171542609078,4,2),
 (171542609078,16,1),
 (171542609078,23,0),
 (171542630375,4,2),
 (171542630375,16,1),
 (171542630375,23,0),
 (171542631625,4,2),
 (171542631625,16,1),
 (171542631625,23,0),
 (171542632828,4,2),
 (171542632828,16,1),
 (171542632828,23,0),
 (171542633734,4,2),
 (171542633734,16,1),
 (171542633734,23,0),
 (171542636890,4,2),
 (171542636890,16,1),
 (171542636890,23,0),
 (171542639078,4,2),
 (171542639078,16,1),
 (171542639078,23,0),
 (171543808890,4,2),
 (171543808890,16,1),
 (171543808890,23,2),
 (171543846968,4,1),
 (171543846968,16,1),
 (171543846968,23,2),
 (171544412125,4,1),
 (171544412125,16,1),
 (171544412125,23,2),
 (171544499593,4,2),
 (171544499593,16,1),
 (171544499593,23,0),
 (171544500203,4,2),
 (171544500203,16,1),
 (171544500203,23,0),
 (171544501781,4,2),
 (171544501781,16,1),
 (171544501781,23,0),
 (171544502375,4,2),
 (171544502375,16,1),
 (171544502375,23,0),
 (171544503890,4,2),
 (171544503890,16,1),
 (171544503890,23,0),
 (171544506703,4,2),
 (171544506703,16,1),
 (171544506703,23,0),
 (171544507312,4,2),
 (171544507312,16,1),
 (171544507312,23,0),
 (171544509531,4,2),
 (171544509531,16,1),
 (171544509531,23,0),
 (171544510781,4,2),
 (171544510781,16,1),
 (171544510781,23,0),
 (171544519171,4,2),
 (171544519171,16,1),
 (171544519171,23,0),
 (171544522640,4,2),
 (171544522640,16,1),
 (171544522640,23,0),
 (171544525828,4,2),
 (171544525828,16,1),
 (171544525828,23,0),
 (171544541031,4,1),
 (171544541031,16,1),
 (171544541031,23,0),
 (171544546421,4,1),
 (171544546421,16,1),
 (171544546421,23,0),
 (171544598281,4,2),
 (171544598281,16,1),
 (171544598281,23,0),
 (171544600453,4,2),
 (171544600453,16,1),
 (171544600453,23,0),
 (171544601031,4,2),
 (171544601031,16,1),
 (171544601031,23,0),
 (171544604000,4,2),
 (171544604000,16,1),
 (171544604000,23,0),
 (171546202281,4,1),
 (171546202281,16,1),
 (171546202281,23,2),
 (171547768875,4,1),
 (171547768875,16,1),
 (171547768875,23,2),
 (171548091140,4,1),
 (171548091140,16,1),
 (171548091140,23,0),
 (171548094640,4,1),
 (171548094640,16,1),
 (171548094640,23,0),
 (171548099312,4,1),
 (171548099312,16,1),
 (171548099312,23,0),
 (171548105781,4,1),
 (171548105781,16,1),
 (171548105781,23,0),
 (171548122156,4,2),
 (171548122156,16,1),
 (171548122156,23,0),
 (171548123703,4,2),
 (171548123703,16,1),
 (171548123703,23,0),
 (171548125531,4,2),
 (171548125531,16,1),
 (171548125531,23,0),
 (171548126781,4,2),
 (171548126781,16,1),
 (171548126781,23,0),
 (171548129640,4,2),
 (171548129640,16,1),
 (171548129640,23,0),
 (171548130890,4,2),
 (171548130890,16,1),
 (171548130890,23,0),
 (171548133421,4,2),
 (171548133421,16,1),
 (171548133421,23,0),
 (171548228937,4,1),
 (171548228937,16,1),
 (171548228937,23,0),
 (171548229515,4,1),
 (171548229515,16,1),
 (171548229515,23,0),
 (171548231687,4,1),
 (171548231687,16,1),
 (171548231687,23,0),
 (171548234187,4,1),
 (171548234187,16,1),
 (171548234187,23,0),
 (171548397875,4,1),
 (171548397875,16,1),
 (171548397875,23,0),
 (171548399781,4,1),
 (171548399781,16,1),
 (171548399781,23,0),
 (171548400343,4,1),
 (171548400343,16,1),
 (171548400343,23,0),
 (171548401234,4,1),
 (171548401234,16,1),
 (171548401234,23,0),
 (171548419703,4,2),
 (171548419703,16,1),
 (171548419703,23,0),
 (171548422515,4,2),
 (171548422515,16,1),
 (171548422515,23,0),
 (171548423718,4,2),
 (171548423718,16,1),
 (171548423718,23,0),
 (171548579296,4,1),
 (171548579296,16,1),
 (171548579296,23,2),
 (171549248281,4,2),
 (171549248281,16,1),
 (171549248281,23,0),
 (171549250812,4,2),
 (171549250812,16,1),
 (171549250812,23,0),
 (171549251718,4,2),
 (171549251718,16,1),
 (171549251718,23,0),
 (171549252281,4,2),
 (171549252281,16,1),
 (171549252281,23,0),
 (171549257031,4,2),
 (171549257031,16,1),
 (171549257031,23,0),
 (171549259218,4,2),
 (171549259218,16,1),
 (171549259218,23,0),
 (171549262828,4,2),
 (171549262828,16,1),
 (171549262828,23,0),
 (171549263718,4,2),
 (171549263718,16,1),
 (171549263718,23,0),
 (171549274406,4,1),
 (171549274406,16,1),
 (171549274406,23,0),
 (171549276906,4,1),
 (171549276906,16,1),
 (171549276906,23,0),
 (171549281015,4,1),
 (171549281015,16,1),
 (171549281015,23,0),
 (171549282875,4,1),
 (171549282875,16,1),
 (171549282875,23,0),
 (171549284453,4,1),
 (171549284453,16,1),
 (171549284453,23,0),
 (171549285671,4,1),
 (171549285671,16,1),
 (171549285671,23,0),
 (171549286406,4,1),
 (171549286406,16,1),
 (171549286406,23,0),
 (171549301171,4,1),
 (171549301171,16,1),
 (171549301171,23,2),
 (171549805046,4,1),
 (171549805046,16,1),
 (171549805046,23,2),
 (171549855375,4,1),
 (171549855375,16,1),
 (171549855375,23,2),
 (171550380812,4,2),
 (171550380812,16,1),
 (171550380812,23,0),
 (171550381421,4,2),
 (171550381421,16,1),
 (171550381421,23,0),
 (171550382640,4,2),
 (171550382640,16,1),
 (171550382640,23,0),
 (171550384203,4,2),
 (171550384203,16,1),
 (171550384203,23,0),
 (171550385421,4,2),
 (171550385421,16,1),
 (171550385421,23,0),
 (171550391062,4,2),
 (171550391062,16,1),
 (171550391062,23,0),
 (171550392625,4,2),
 (171550392625,16,1),
 (171550392625,23,0),
 (171550393859,4,2),
 (171550393859,16,1),
 (171550393859,23,0),
 (171550394750,4,2),
 (171550394750,16,1),
 (171550394750,23,0),
 (171550396250,4,2),
 (171550396250,16,1),
 (171550396250,23,0),
 (171550618812,4,1),
 (171550618812,16,1),
 (171550618812,23,2),
 (171551059578,4,1),
 (171551059578,16,1),
 (171551059578,23,0),
 (171551061125,4,1),
 (171551061125,16,1),
 (171551061125,23,0),
 (171551065437,4,1),
 (171551065437,16,1),
 (171551065437,23,0),
 (171551119484,4,1),
 (171551119484,16,1),
 (171551119484,23,0),
 (171551170375,4,1),
 (171551170375,16,1),
 (171551170375,23,0),
 (171551189640,4,1),
 (171551189640,16,1),
 (171551189640,23,0),
 (171552224375,4,1),
 (171552224375,16,1),
 (171552224375,23,0),
 (171552225281,4,1),
 (171552225281,16,1),
 (171552225281,23,0),
 (171552227421,4,1),
 (171552227421,16,1),
 (171552227421,23,0),
 (171552228656,4,1),
 (171552228656,16,1),
 (171552228656,23,0),
 (171552230156,4,1),
 (171552230156,16,1),
 (171552230156,23,0),
 (171553499609,4,1),
 (171553499609,16,1),
 (171553499609,23,2),
 (171553913453,4,1),
 (171553913453,16,1),
 (171553913453,23,2),
 (171554327687,4,1),
 (171554327687,16,1),
 (171554327687,23,2),
 (171554884390,4,2),
 (171554884390,16,1),
 (171554884390,23,2),
 (171554898187,4,2),
 (171554898187,16,1),
 (171554898187,23,2),
 (171554905734,4,2),
 (171554905734,16,1),
 (171554905734,23,2),
 (171554935609,4,2),
 (171554935609,16,1),
 (171554935609,23,2),
 (171554943093,4,2),
 (171554943093,16,1),
 (171554943093,23,2),
 (171555189328,4,2),
 (171555189328,16,1),
 (171555189328,23,2),
 (171555420140,4,1),
 (171555420140,16,1),
 (171555420140,23,2),
 (171556010562,4,1),
 (171556010562,16,1),
 (171556010562,23,2),
 (171556464812,4,2),
 (171556464812,16,1),
 (171556464812,23,2),
 (171556656828,4,1),
 (171556656828,16,1),
 (171556656828,23,2),
 (171556781859,4,1),
 (171556781859,16,1),
 (171556781859,23,0),
 (171556782609,4,1),
 (171556782609,16,1),
 (171556782609,23,0),
 (171556783812,4,1),
 (171556783812,16,1),
 (171556783812,23,0),
 (171556785000,4,1),
 (171556785000,16,1),
 (171556785000,23,0),
 (171556785718,4,1),
 (171556785718,16,1),
 (171556785718,23,0),
 (171556786468,4,1),
 (171556786468,16,1),
 (171556786468,23,0),
 (171556789109,4,1),
 (171556789109,16,1),
 (171556789109,23,0),
 (171556789859,4,1),
 (171556789859,16,1),
 (171556789859,23,0),
 (171556790609,4,1),
 (171556790609,16,1),
 (171556790609,23,0),
 (171556791828,4,1),
 (171556791828,16,1),
 (171556791828,23,0),
 (171556793203,4,1),
 (171556793203,16,1),
 (171556793203,23,0),
 (171556840625,4,2),
 (171556840625,16,1),
 (171556840625,23,2),
 (171557015328,4,2),
 (171557015328,16,1),
 (171557015328,23,2),
 (171557248609,4,2),
 (171557248609,16,1),
 (171557248609,23,0),
 (171557250500,4,2),
 (171557250500,16,1),
 (171557250500,23,0),
 (171557252812,4,2),
 (171557252812,16,1),
 (171557252812,23,0),
 (171557552312,4,2),
 (171557552312,16,1),
 (171557552312,23,2),
 (171557853796,4,1),
 (171557853796,16,1),
 (171557853796,23,0),
 (171557855656,4,1),
 (171557855656,16,1),
 (171557855656,23,0),
 (171557865531,4,1),
 (171557865531,16,1),
 (171557865531,23,0),
 (171557879984,4,1),
 (171557879984,16,1),
 (171557879984,23,0),
 (171557881843,4,1),
 (171557881843,16,1),
 (171557881843,23,0),
 (171557885218,4,1),
 (171557885218,16,1),
 (171557885218,23,0),
 (171557885812,4,1),
 (171557885812,16,1),
 (171557885812,23,0),
 (171557886390,4,1),
 (171557886390,16,1),
 (171557886390,23,0),
 (171557889312,4,1),
 (171557889312,16,1),
 (171557889312,23,0),
 (171558172171,4,2),
 (171558172171,16,1),
 (171558172171,23,2),
 (171558188031,4,2),
 (171558188031,16,1),
 (171558188031,23,2),
 (171558394859,4,2),
 (171558394859,16,1),
 (171558394859,23,2),
 (171558493750,4,1),
 (171558493750,16,1),
 (171558493750,23,0),
 (171558495906,4,1),
 (171558495906,16,1),
 (171558495906,23,0),
 (171558496484,4,1),
 (171558496484,16,1),
 (171558496484,23,0),
 (171558501234,4,1),
 (171558501234,16,1),
 (171558501234,23,0),
 (171558504406,4,1),
 (171558504406,16,1),
 (171558504406,23,0),
 (171558509093,4,1),
 (171558509093,16,1),
 (171558509093,23,0),
 (171558509671,4,1),
 (171558509671,16,1),
 (171558509671,23,0),
 (171558518265,4,1),
 (171558518265,16,1),
 (171558518265,23,0),
 (171558519203,4,1),
 (171558519203,16,1),
 (171558519203,23,0),
 (171558527093,4,1),
 (171558527093,16,1),
 (171558527093,23,0),
 (171558529281,4,1),
 (171558529281,16,1),
 (171558529281,23,0),
 (171559124515,4,1),
 (171559124515,16,1),
 (171559124515,23,2),
 (171559183890,4,1),
 (171559183890,16,1),
 (171559183890,23,2),
 (171559200390,4,1),
 (171559200390,16,1),
 (171559200390,23,2),
 (171559407484,4,1),
 (171559407484,16,1),
 (171559407484,23,2),
 (171560059656,4,2),
 (171560059656,16,1),
 (171560059656,23,2),
 (171560681109,4,2),
 (171560681109,16,1),
 (171560681109,23,2),
 (171561246312,4,1),
 (171561246312,16,1),
 (171561246312,23,2),
 (171561386906,4,2),
 (171561386906,16,1),
 (171561386906,23,2),
 (171561955562,4,2),
 (171561955562,16,1),
 (171561955562,23,2),
 (171561986937,4,2),
 (171561986937,16,1),
 (171561986937,23,2),
 (171562614125,4,2),
 (171562614125,16,1),
 (171562614125,23,2),
 (171562857078,4,1),
 (171562857078,16,1),
 (171562857078,23,2),
 (171562877343,4,1),
 (171562877343,16,1),
 (171562877343,23,2),
 (171562894750,4,1),
 (171562894750,16,1),
 (171562894750,23,2),
 (171563729578,4,2),
 (171563729578,16,1),
 (171563729578,23,2),
 (171563898156,4,2),
 (171563898156,16,1),
 (171563898156,23,2),
 (171563909656,4,2),
 (171563909656,16,1),
 (171563909656,23,2),
 (171566472328,4,1),
 (171566472328,16,1),
 (171566472328,23,2),
 (171566923781,4,2),
 (171566923781,16,1),
 (171566923781,23,2),
 (171567918656,4,1),
 (171567918656,16,1),
 (171567918656,23,2),
 (171568255031,4,2),
 (171568255031,16,1),
 (171568255031,23,2),
 (171570435265,4,2),
 (171570435265,16,1),
 (171570435265,23,2),
 (171570727265,4,2),
 (171570727265,16,1),
 (171570727265,23,2),
 (171571454906,4,2),
 (171571454906,16,1),
 (171571454906,23,2),
 (171571469937,4,2),
 (171571469937,16,1),
 (171571469937,23,2),
 (171571483203,4,2),
 (171571483203,16,1),
 (171571483203,23,2),
 (171571501468,4,2),
 (171571501468,16,1),
 (171571501468,23,2),
 (171573096156,4,1),
 (171573096156,16,1),
 (171573096156,23,2),
 (171574777312,4,1),
 (171574777312,16,1),
 (171574777312,23,2),
 (171575019984,4,1),
 (171575019984,16,1),
 (171575019984,23,2),
 (171575851390,4,1),
 (171575851390,16,1),
 (171575851390,23,2),
 (171575873062,4,2),
 (171575873062,16,1),
 (171575873062,23,0),
 (171575875281,4,2),
 (171575875281,16,1),
 (171575875281,23,0),
 (171575877812,4,2),
 (171575877812,16,1),
 (171575877812,23,0),
 (171575884203,4,2),
 (171575884203,16,1),
 (171575884203,23,0),
 (171575885421,4,2),
 (171575885421,16,1),
 (171575885421,23,0),
 (171575886343,4,2),
 (171575886343,16,1),
 (171575886343,23,0),
 (171575888203,4,2),
 (171575888203,16,1),
 (171575888203,23,0),
 (171575889421,4,2),
 (171575889421,16,1),
 (171575889421,23,0),
 (171575891640,4,2),
 (171575891640,16,1),
 (171575891640,23,0),
 (171575897671,4,2),
 (171575897671,16,1),
 (171575897671,23,0),
 (171575898890,4,2),
 (171575898890,16,1),
 (171575898890,23,0),
 (171575899812,4,2),
 (171575899812,16,1),
 (171575899812,23,0),
 (171575900687,4,2),
 (171575900687,16,1),
 (171575900687,23,0),
 (171575903500,4,2),
 (171575903500,16,1),
 (171575903500,23,0),
 (171575904718,4,2),
 (171575904718,16,1),
 (171575904718,23,0),
 (171576197343,4,1),
 (171576197343,16,1),
 (171576197343,23,2),
 (171576721859,4,2),
 (171576721859,16,1),
 (171576721859,23,2),
 (171576740953,4,2),
 (171576740953,16,1),
 (171576740953,23,2),
 (171576749250,4,2),
 (171576749250,16,1),
 (171576749250,23,2),
 (171576796703,4,2),
 (171576796703,16,1),
 (171576796703,23,2),
 (171576813500,4,2),
 (171576813500,16,1),
 (171576813500,23,2),
 (171576854562,4,1),
 (171576854562,16,1),
 (171576854562,23,2),
 (171576862687,4,1),
 (171576862687,16,1),
 (171576862687,23,2),
 (171576929500,4,2),
 (171576929500,16,1),
 (171576929500,23,2),
 (171576937171,4,2),
 (171576937171,16,1),
 (171576937171,23,2),
 (171577368171,4,2),
 (171577368171,16,1),
 (171577368171,23,2),
 (171578138453,4,1),
 (171578138453,16,1),
 (171578138453,23,2),
 (171578573531,4,2),
 (171578573531,16,1),
 (171578573531,23,2),
 (171579067890,4,2),
 (171579067890,16,1),
 (171579067890,23,2),
 (171579112843,4,1),
 (171579112843,16,1),
 (171579112843,23,2),
 (171579166015,4,1),
 (171579166015,16,1),
 (171579166015,23,2),
 (171579174359,4,1),
 (171579174359,16,1),
 (171579174359,23,2),
 (171579954125,4,2),
 (171579954125,16,1),
 (171579954125,23,2),
 (171580952531,4,1),
 (171580952531,16,1),
 (171580952531,23,2),
 (171581227421,4,2),
 (171581227421,16,1),
 (171581227421,23,2),
 (171581458812,4,2),
 (171581458812,16,1),
 (171581458812,23,2),
 (171581579906,4,1),
 (171581579906,16,1),
 (171581579906,23,2),
 (171581723812,4,2),
 (171581723812,16,1),
 (171581723812,23,2),
 (171581744781,4,2),
 (171581744781,16,1),
 (171581744781,23,2),
 (171582245093,4,1),
 (171582245093,16,1),
 (171582245093,23,0),
 (171582249312,4,1),
 (171582249312,16,1),
 (171582249312,23,0),
 (171582342312,4,2),
 (171582342312,16,1),
 (171582342312,23,2),
 (171583048906,4,1),
 (171583048906,16,1),
 (171583048906,23,2),
 (171583232015,4,2),
 (171583232015,16,1),
 (171583232015,23,2),
 (171584020390,4,1),
 (171584020390,16,1),
 (171584020390,23,2),
 (171584142171,4,1),
 (171584142171,16,1),
 (171584142171,23,2),
 (171584947203,4,2),
 (171584947203,16,1),
 (171584947203,23,2),
 (171584960921,4,2),
 (171584960921,16,1),
 (171584960921,23,2),
 (171585460093,4,2),
 (171585460093,16,1),
 (171585460093,23,2),
 (171585719515,4,2),
 (171585719515,16,1),
 (171585719515,23,2),
 (171586044171,4,1),
 (171586044171,16,1),
 (171586044171,23,2),
 (171586098156,4,1),
 (171586098156,16,1),
 (171586098156,23,2),
 (171586105093,4,1),
 (171586105093,16,1),
 (171586105093,23,2),
 (171586112078,4,1),
 (171586112078,16,1),
 (171586112078,23,2),
 (171586197546,4,1),
 (171586197546,16,1),
 (171586197546,23,2),
 (171600210140,4,1),
 (171600210140,16,1),
 (171600210140,23,2),
 (171600459781,4,1),
 (171600459781,16,1),
 (171600459781,23,2),
 (171601301343,4,1),
 (171601301343,16,1),
 (171601301343,23,2),
 (171601309265,4,1),
 (171601309265,16,1),
 (171601309265,23,2),
 (171601326078,4,1),
 (171601326078,16,1),
 (171601326078,23,2),
 (171601473343,4,1),
 (171601473343,16,1),
 (171601473343,23,2),
 (171601987921,4,1),
 (171601987921,16,1),
 (171601987921,23,2),
 (171602087484,4,2),
 (171602087484,16,1),
 (171602087484,23,2),
 (171602194000,4,1),
 (171602194000,16,1),
 (171602194000,23,2),
 (171602777046,4,2),
 (171602777046,16,1),
 (171602777046,23,2),
 (171603020875,4,1),
 (171603020875,16,1),
 (171603020875,23,2),
 (171603118406,4,1),
 (171603118406,16,1),
 (171603118406,23,2),
 (171603393937,4,1),
 (171603393937,16,1),
 (171603393937,23,2),
 (171603819531,4,1),
 (171603819531,16,1),
 (171603819531,23,2),
 (171604136531,4,2),
 (171604136531,16,1),
 (171604136531,23,2),
 (171604213406,4,2),
 (171604213406,16,1),
 (171604213406,23,2),
 (171604340500,4,1),
 (171604340500,16,1),
 (171604340500,23,2),
 (171604437921,4,1),
 (171604437921,16,1),
 (171604437921,23,2),
 (171604446250,4,1),
 (171604446250,16,1),
 (171604446250,23,2),
 (171604812578,4,2),
 (171604812578,16,1),
 (171604812578,23,2),
 (171604866031,4,1),
 (171604866031,16,1),
 (171604866031,23,2),
 (171606059078,4,1),
 (171606059078,16,1),
 (171606059078,23,2),
 (171606387750,4,1),
 (171606387750,16,1),
 (171606387750,23,2),
 (171607780203,4,1),
 (171607780203,16,1),
 (171607780203,23,2),
 (171608040843,4,2),
 (171608040843,16,1),
 (171608040843,23,2),
 (171609207875,4,2),
 (171609207875,16,1),
 (171609207875,23,2),
 (171610026875,4,2),
 (171610026875,16,1),
 (171610026875,23,2),
 (171610231734,4,2),
 (171610231734,16,1),
 (171610231734,23,2),
 (171610310703,4,1),
 (171610310703,16,1),
 (171610310703,23,2),
 (171610950250,4,2),
 (171610950250,16,1),
 (171610950250,23,0),
 (171610952859,4,2),
 (171610952859,16,1),
 (171610952859,23,0),
 (171610955046,4,2),
 (171610955046,16,1),
 (171610955046,23,0),
 (171610956921,4,2),
 (171610956921,16,1),
 (171610956921,23,0),
 (171610959406,4,2),
 (171610959406,16,1),
 (171610959406,23,0),
 (171610962843,4,2),
 (171610962843,16,1),
 (171610962843,23,0),
 (171610966265,4,2),
 (171610966265,16,1),
 (171610966265,23,0),
 (171612223890,4,2),
 (171612223890,16,1),
 (171612223890,23,0),
 (171612229953,4,2),
 (171612229953,16,1),
 (171612229953,23,0),
 (171612230812,4,2),
 (171612230812,16,1),
 (171612230812,23,0),
 (171612231703,4,2),
 (171612231703,16,1),
 (171612231703,23,0),
 (171612233875,4,2),
 (171612233875,16,1),
 (171612233875,23,0),
 (171612234765,4,2),
 (171612234765,16,1),
 (171612234765,23,0),
 (171612236625,4,2),
 (171612236625,16,1),
 (171612236625,23,0),
 (171612238156,4,2),
 (171612238156,16,1),
 (171612238156,23,0),
 (171612239015,4,2),
 (171612239015,16,1),
 (171612239015,23,0),
 (171612239921,4,2),
 (171612239921,16,1),
 (171612239921,23,0),
 (171612240812,4,2),
 (171612240812,16,1),
 (171612240812,23,0),
 (171612241375,4,2),
 (171612241375,16,1),
 (171612241375,23,0),
 (171612642687,4,2),
 (171612642687,16,1),
 (171612642687,23,2),
 (171613294234,4,2),
 (171613294234,16,1),
 (171613294234,23,2),
 (171613342000,4,2),
 (171613342000,16,1),
 (171613342000,23,0),
 (171613343250,4,2),
 (171613343250,16,1),
 (171613343250,23,0),
 (171613344140,4,2),
 (171613344140,16,1),
 (171613344140,23,0),
 (171613346640,4,2),
 (171613346640,16,1),
 (171613346640,23,0),
 (171613350718,4,2),
 (171613350718,16,1),
 (171613350718,23,0),
 (171613351640,4,2),
 (171613351640,16,1),
 (171613351640,23,0),
 (171613355109,4,2),
 (171613355109,16,1),
 (171613355109,23,0),
 (171613360468,4,2),
 (171613360468,16,1),
 (171613360468,23,0),
 (171613362000,4,2),
 (171613362000,16,1),
 (171613362000,23,0),
 (171613365156,4,2),
 (171613365156,16,1),
 (171613365156,23,0),
 (171613366359,4,2),
 (171613366359,16,1),
 (171613366359,23,0),
 (171613377984,4,2),
 (171613377984,16,1),
 (171613377984,23,0),
 (171613379187,4,2),
 (171613379187,16,1),
 (171613379187,23,0),
 (171613383296,4,2),
 (171613383296,16,1),
 (171613383296,23,0),
 (171613384515,4,2),
 (171613384515,16,1),
 (171613384515,23,0),
 (171613396546,4,1),
 (171613396546,16,1),
 (171613396546,23,0),
 (171613397796,4,1),
 (171613397796,16,1),
 (171613397796,23,0),
 (171613403156,4,1),
 (171613403156,16,1),
 (171613403156,23,0),
 (171613404046,4,1),
 (171613404046,16,1),
 (171613404046,23,0),
 (171613410078,4,1),
 (171613410078,16,1),
 (171613410078,23,0),
 (171613410968,4,1),
 (171613410968,16,1),
 (171613410968,23,0),
 (171613416375,4,1),
 (171613416375,16,1),
 (171613416375,23,0),
 (171613417875,4,1),
 (171613417875,16,1),
 (171613417875,23,0),
 (171613419093,4,1),
 (171613419093,16,1),
 (171613419093,23,0),
 (171613420296,4,1),
 (171613420296,16,1),
 (171613420296,23,0),
 (171613421500,4,1),
 (171613421500,16,1),
 (171613421500,23,0),
 (171613422406,4,1),
 (171613422406,16,1),
 (171613422406,23,0),
 (171613423296,4,1),
 (171613423296,16,1),
 (171613423296,23,0),
 (171613430140,4,2),
 (171613430140,16,1),
 (171613430140,23,0),
 (171613431359,4,2),
 (171613431359,16,1),
 (171613431359,23,0),
 (171613432890,4,2),
 (171613432890,16,1),
 (171613432890,23,0),
 (171613434109,4,2),
 (171613434109,16,1),
 (171613434109,23,0),
 (171613435015,4,2),
 (171613435015,16,1),
 (171613435015,23,0),
 (171613436250,4,2),
 (171613436250,16,1),
 (171613436250,23,0),
 (171613437468,4,2),
 (171613437468,16,1),
 (171613437468,23,0),
 (171613438671,4,2),
 (171613438671,16,1),
 (171613438671,23,0),
 (171613439578,4,2),
 (171613439578,16,1),
 (171613439578,23,0),
 (171613447000,4,2),
 (171613447000,16,1),
 (171613447000,23,0),
 (171613448578,4,2),
 (171613448578,16,1),
 (171613448578,23,0),
 (171613459437,4,2),
 (171613459437,16,1),
 (171613459437,23,0),
 (171613460968,4,2),
 (171613460968,16,1),
 (171613460968,23,0),
 (171613486625,4,2),
 (171613486625,16,1),
 (171613486625,23,0),
 (171613488953,4,2),
 (171613488953,16,1),
 (171613488953,23,0),
 (171613493046,4,2),
 (171613493046,16,1),
 (171613493046,23,0),
 (171613499734,4,2),
 (171613499734,16,1),
 (171613499734,23,0),
 (171613503875,4,2),
 (171613503875,16,1),
 (171613503875,23,0),
 (171613505734,4,2),
 (171613505734,16,1),
 (171613505734,23,0),
 (171613507265,4,2),
 (171613507265,16,1),
 (171613507265,23,0),
 (171613509781,4,2),
 (171613509781,16,1),
 (171613509781,23,0),
 (171613512593,4,2),
 (171613512593,16,1),
 (171613512593,23,0),
 (171613516171,4,2),
 (171613516171,16,1),
 (171613516171,23,0),
 (171613524812,4,2),
 (171613524812,16,1),
 (171613524812,23,0),
 (171613537718,4,1),
 (171613537718,16,1),
 (171613537718,23,0),
 (171614321812,4,2),
 (171614321812,16,1),
 (171614321812,23,0),
 (171614325328,4,2),
 (171614325328,16,1),
 (171614325328,23,0),
 (171614325906,4,2),
 (171614325906,16,1),
 (171614325906,23,0),
 (171614327765,4,2),
 (171614327765,16,1),
 (171614327765,23,0),
 (171614333125,4,2),
 (171614333125,16,1),
 (171614333125,23,0),
 (171614338484,4,2),
 (171614338484,16,1),
 (171614338484,23,0),
 (171614340015,4,2),
 (171614340015,16,1),
 (171614340015,23,0),
 (171614350125,4,2),
 (171614350125,16,1),
 (171614350125,23,0),
 (171614351953,4,2),
 (171614351953,16,1),
 (171614351953,23,0),
 (171614356984,4,2),
 (171614356984,16,1),
 (171614356984,23,0),
 (171614357593,4,2),
 (171614357593,16,1),
 (171614357593,23,0),
 (171614373140,4,2),
 (171614373140,16,1),
 (171614373140,23,0),
 (171614374640,4,2),
 (171614374640,16,1),
 (171614374640,23,0),
 (171614375875,4,2),
 (171614375875,16,1),
 (171614375875,23,0),
 (171614376453,4,2),
 (171614376453,16,1),
 (171614376453,23,0),
 (171614377687,4,2),
 (171614377687,16,1),
 (171614377687,23,0),
 (171614379859,4,2),
 (171614379859,16,1),
 (171614379859,23,0),
 (171615549328,4,2),
 (171615549328,16,1),
 (171615549328,23,2),
 (171615684078,4,2),
 (171615684078,16,1),
 (171615684078,23,2),
 (171616262890,4,2),
 (171616262890,16,1),
 (171616262890,23,2),
 (171616707937,4,2),
 (171616707937,16,1),
 (171616707937,23,2),
 (171616723531,4,2),
 (171616723531,16,1),
 (171616723531,23,2),
 (171617476843,4,2),
 (171617476843,16,1),
 (171617476843,23,0),
 (171617481312,4,2),
 (171617481312,16,1),
 (171617481312,23,0),
 (171617482890,4,2),
 (171617482890,16,1),
 (171617482890,23,0),
 (171617486031,4,2),
 (171617486031,16,1),
 (171617486031,23,0),
 (171617487609,4,2),
 (171617487609,16,1),
 (171617487609,23,0),
 (171617491703,4,2),
 (171617491703,16,1),
 (171617491703,23,0),
 (171617492921,4,2),
 (171617492921,16,1),
 (171617492921,23,0),
 (171617498281,4,2),
 (171617498281,16,1),
 (171617498281,23,0),
 (171617499140,4,2),
 (171617499140,16,1),
 (171617499140,23,0),
 (171617501625,4,2),
 (171617501625,16,1),
 (171617501625,23,0),
 (171617505734,4,2),
 (171617505734,16,1),
 (171617505734,23,0),
 (171617507281,4,2),
 (171617507281,16,1),
 (171617507281,23,0),
 (171617508781,4,2),
 (171617508781,16,1),
 (171617508781,23,0),
 (171617510281,4,2),
 (171617510281,16,1),
 (171617510281,23,0),
 (171617651828,4,2),
 (171617651828,16,1),
 (171617651828,23,0),
 (171617653421,4,2),
 (171617653421,16,1),
 (171617653421,23,0),
 (171617655265,4,2),
 (171617655265,16,1),
 (171617655265,23,0),
 (171617656156,4,2),
 (171617656156,16,1),
 (171617656156,23,0),
 (171617657375,4,2),
 (171617657375,16,1),
 (171617657375,23,0),
 (171617658593,4,2),
 (171617658593,16,1),
 (171617658593,23,0),
 (171617664859,4,2),
 (171617664859,16,1),
 (171617664859,23,0),
 (171617666109,4,2),
 (171617666109,16,1),
 (171617666109,23,0),
 (171617667656,4,2),
 (171617667656,16,1),
 (171617667656,23,0),
 (171617668875,4,2),
 (171617668875,16,1),
 (171617668875,23,0),
 (171617670093,4,2),
 (171617670093,16,1),
 (171617670093,23,0),
 (171617671343,4,2),
 (171617671343,16,1),
 (171617671343,23,0),
 (171617673843,4,2),
 (171617673843,16,1),
 (171617673843,23,0),
 (171617674453,4,2),
 (171617674453,16,1),
 (171617674453,23,0),
 (171617675375,4,2),
 (171617675375,16,1),
 (171617675375,23,0),
 (171617675968,4,2),
 (171617675968,16,1),
 (171617675968,23,0),
 (171617676875,4,2),
 (171617676875,16,1),
 (171617676875,23,0),
 (171617677453,4,2),
 (171617677453,16,1),
 (171617677453,23,0),
 (171617678062,4,2),
 (171617678062,16,1),
 (171617678062,23,0),
 (171617678671,4,2),
 (171617678671,16,1),
 (171617678671,23,0),
 (171617679250,4,2),
 (171617679250,16,1),
 (171617679250,23,0),
 (171617680125,4,2),
 (171617680125,16,1),
 (171617680125,23,0),
 (171617683250,4,2),
 (171617683250,16,1),
 (171617683250,23,0),
 (171617685421,4,2),
 (171617685421,16,1),
 (171617685421,23,0),
 (171617685984,4,2),
 (171617685984,16,1),
 (171617685984,23,0),
 (171617686562,4,2),
 (171617686562,16,1),
 (171617686562,23,0),
 (171617687453,4,2),
 (171617687453,16,1),
 (171617687453,23,0),
 (171617688343,4,2),
 (171617688343,16,1),
 (171617688343,23,0),
 (171617693640,4,2),
 (171617693640,16,1),
 (171617693640,23,0),
 (171617699843,4,2),
 (171617699843,16,1),
 (171617699843,23,0),
 (171637088875,4,1),
 (171637088875,16,1),
 (171637088875,23,2),
 (171637150515,4,1),
 (171637150515,16,1),
 (171637150515,23,0),
 (171637153937,4,1),
 (171637153937,16,1),
 (171637153937,23,0),
 (171637155796,4,1),
 (171637155796,16,1),
 (171637155796,23,0),
 (171638027421,4,2),
 (171638027421,16,1),
 (171638027421,23,2),
 (171642079500,4,1),
 (171642079500,16,1),
 (171642079500,23,0),
 (171642082437,4,1),
 (171642082437,16,1),
 (171642082437,23,0),
 (171642084953,4,1),
 (171642084953,16,1),
 (171642084953,23,0),
 (171642085546,4,1),
 (171642085546,16,1),
 (171642085546,23,0),
 (171642088078,4,1),
 (171642088078,16,1),
 (171642088078,23,0),
 (171642089953,4,1),
 (171642089953,16,1),
 (171642089953,23,0),
 (171642091546,4,1),
 (171642091546,16,1),
 (171642091546,23,0),
 (171642095046,4,1),
 (171642095046,16,1),
 (171642095046,23,0),
 (171642095968,4,1),
 (171642095968,16,1),
 (171642095968,23,0),
 (171642109515,4,1),
 (171642109515,16,1),
 (171642109515,23,0),
 (171642112015,4,1),
 (171642112015,16,1),
 (171642112015,23,0),
 (171642117078,4,1),
 (171642117078,16,1),
 (171642117078,23,0),
 (171642133375,4,1),
 (171642133375,16,1),
 (171642133375,23,0),
 (171642135906,4,1),
 (171642135906,16,1),
 (171642135906,23,0),
 (171642789937,4,1),
 (171642789937,16,1),
 (171642789937,23,2),
 (171643642484,4,1),
 (171643642484,16,1),
 (171643642484,23,0),
 (171643644750,4,1),
 (171643644750,16,1),
 (171643644750,23,0),
 (171643646281,4,1),
 (171643646281,16,1),
 (171643646281,23,0),
 (171643650906,4,1),
 (171643650906,16,1),
 (171643650906,23,0),
 (171643655890,4,1),
 (171643655890,16,1),
 (171643655890,23,0),
 (171643658953,4,1),
 (171643658953,16,1),
 (171643658953,23,0),
 (171643663312,4,1),
 (171643663312,16,1),
 (171643663312,23,0),
 (171643670859,4,1),
 (171643670859,16,1),
 (171643670859,23,0),
 (171643680218,4,1),
 (171643680218,16,1),
 (171643680218,23,0),
 (171643688375,4,1),
 (171643688375,16,1),
 (171643688375,23,0),
 (171643690562,4,1),
 (171643690562,16,1),
 (171643690562,23,0),
 (171643692562,4,1),
 (171643692562,16,1),
 (171643692562,23,0),
 (171643694125,4,1),
 (171643694125,16,1),
 (171643694125,23,0),
 (171643708875,4,1),
 (171643708875,16,1),
 (171643708875,23,0),
 (171643734187,4,1),
 (171643734187,16,1),
 (171643734187,23,2),
 (171643763687,4,1),
 (171643763687,16,1),
 (171643763687,23,2),
 (171644836062,4,1),
 (171644836062,16,1),
 (171644836062,23,0),
 (171644839906,4,1),
 (171644839906,16,1),
 (171644839906,23,0),
 (171644843046,4,1),
 (171644843046,16,1),
 (171644843046,23,0),
 (171644844921,4,1),
 (171644844921,16,1),
 (171644844921,23,0),
 (171644845828,4,1),
 (171644845828,16,1),
 (171644845828,23,0),
 (171644853281,4,1),
 (171644853281,16,1),
 (171644853281,23,0),
 (171644869203,4,1),
 (171644869203,16,1),
 (171644869203,23,0),
 (171644870421,4,1),
 (171644870421,16,1),
 (171644870421,23,0),
 (171644871953,4,1),
 (171644871953,16,1),
 (171644871953,23,0),
 (171644874125,4,1),
 (171644874125,16,1),
 (171644874125,23,0),
 (171645331046,4,1),
 (171645331046,16,1),
 (171645331046,23,2),
 (171645882812,4,1),
 (171645882812,16,1),
 (171645882812,23,2),
 (171646029703,4,1),
 (171646029703,16,1),
 (171646029703,23,2),
 (171646106718,4,1),
 (171646106718,16,1),
 (171646106718,23,0),
 (171646110812,4,1),
 (171646110812,16,1),
 (171646110812,23,0),
 (171646111750,4,1),
 (171646111750,16,1),
 (171646111750,23,0),
 (171647133171,4,1),
 (171647133171,16,1),
 (171647133171,23,2),
 (171647460265,4,1),
 (171647460265,16,1),
 (171647460265,23,2),
 (171647680281,4,1),
 (171647680281,16,1),
 (171647680281,23,0),
 (171647682812,4,1),
 (171647682812,16,1),
 (171647682812,23,0),
 (171647684687,4,1),
 (171647684687,16,1),
 (171647684687,23,0),
 (171647692796,4,1),
 (171647692796,16,1),
 (171647692796,23,0),
 (171647696531,4,1),
 (171647696531,16,1),
 (171647696531,23,0),
 (171647700421,4,1),
 (171647700421,16,1),
 (171647700421,23,0),
 (171647748078,4,1),
 (171647748078,16,1),
 (171647748078,23,0),
 (171647752953,4,1),
 (171647752953,16,1),
 (171647752953,23,0),
 (171648185171,4,1),
 (171648185171,16,1),
 (171648185171,23,0),
 (171648187671,4,1),
 (171648187671,16,1),
 (171648187671,23,0),
 (171648190421,4,1),
 (171648190421,16,1),
 (171648190421,23,0),
 (171648192406,4,1),
 (171648192406,16,1),
 (171648192406,23,0),
 (171649005968,4,1),
 (171649005968,16,1),
 (171649005968,23,0),
 (171649006546,4,1),
 (171649006546,16,1),
 (171649006546,23,0),
 (171649009046,4,1),
 (171649009046,16,1),
 (171649009046,23,0),
 (171649009937,4,1),
 (171649009937,16,1),
 (171649009937,23,0),
 (171649011828,4,1),
 (171649011828,16,1),
 (171649011828,23,0),
 (171649013703,4,1),
 (171649013703,16,1),
 (171649013703,23,0),
 (171649014625,4,1),
 (171649014625,16,1),
 (171649014625,23,0),
 (171649015875,4,1),
 (171649015875,16,1),
 (171649015875,23,0),
 (171649031203,4,1),
 (171649031203,16,1),
 (171649031203,23,0),
 (171649740765,4,1),
 (171649740765,16,1),
 (171649740765,23,2),
 (171649820453,4,2),
 (171649820453,16,1),
 (171649820453,23,2),
 (171650508656,4,1),
 (171650508656,16,1),
 (171650508656,23,0),
 (171650513171,4,1),
 (171650513171,16,1),
 (171650513171,23,0),
 (171652177281,4,1),
 (171652177281,16,1),
 (171652177281,23,0),
 (171652179750,4,1),
 (171652179750,16,1),
 (171652179750,23,0),
 (171652181265,4,1),
 (171652181265,16,1),
 (171652181265,23,0),
 (171652182453,4,1),
 (171652182453,16,1),
 (171652182453,23,0),
 (171652183328,4,1),
 (171652183328,16,1),
 (171652183328,23,0),
 (171652187046,4,1),
 (171652187046,16,1),
 (171652187046,23,0),
 (171653775921,4,1),
 (171653775921,16,1),
 (171653775921,23,2),
 (171654544140,4,1),
 (171654544140,16,1),
 (171654544140,23,0),
 (171654545375,4,1),
 (171654545375,16,1),
 (171654545375,23,0),
 (171654546562,4,1),
 (171654546562,16,1),
 (171654546562,23,0),
 (171654547453,4,1),
 (171654547453,16,1),
 (171654547453,23,0),
 (171654551500,4,1),
 (171654551500,16,1),
 (171654551500,23,0),
 (171654553671,4,1),
 (171654553671,16,1),
 (171654553671,23,0),
 (171654554859,4,1),
 (171654554859,16,1),
 (171654554859,23,0),
 (171654557609,4,1),
 (171654557609,16,1),
 (171654557609,23,0),
 (171654559468,4,1),
 (171654559468,16,1),
 (171654559468,23,0),
 (171654560406,4,1),
 (171654560406,16,1),
 (171654560406,23,0),
 (171654566562,4,1),
 (171654566562,16,1),
 (171654566562,23,0),
 (171654741562,4,2),
 (171654741562,16,1),
 (171654741562,23,2),
 (171654748843,4,2),
 (171654748843,16,1),
 (171654748843,23,2),
 (171654932687,4,2),
 (171654932687,16,1),
 (171654932687,23,2),
 (171655591031,4,2),
 (171655591031,16,1),
 (171655591031,23,2),
 (171656123406,4,1),
 (171656123406,16,1),
 (171656123406,23,2),
 (171656402187,4,1),
 (171656402187,16,1),
 (171656402187,23,2),
 (171656516625,4,1),
 (171656516625,16,1),
 (171656516625,23,2),
 (171657756484,4,1),
 (171657756484,16,1),
 (171657756484,23,2),
 (171658723500,4,2),
 (171658723500,16,1),
 (171658723500,23,0),
 (171658725046,4,2),
 (171658725046,16,1),
 (171658725046,23,0),
 (171658726265,4,2),
 (171658726265,16,1),
 (171658726265,23,0),
 (171658727734,4,2),
 (171658727734,16,1),
 (171658727734,23,0),
 (171658728312,4,2),
 (171658728312,16,1),
 (171658728312,23,0),
 (171658732406,4,2),
 (171658732406,16,1),
 (171658732406,23,0),
 (171658739984,4,2),
 (171658739984,16,1),
 (171658739984,23,0),
 (171658742781,4,2),
 (171658742781,16,1),
 (171658742781,23,0),
 (171658748781,4,2),
 (171658748781,16,1),
 (171658748781,23,0),
 (171658750984,4,2),
 (171658750984,16,1),
 (171658750984,23,0),
 (171658751890,4,2),
 (171658751890,16,1),
 (171658751890,23,0),
 (171658752453,4,2),
 (171658752453,16,1),
 (171658752453,23,0),
 (171658755250,4,2),
 (171658755250,16,1),
 (171658755250,23,0),
 (171658759343,4,2),
 (171658759343,16,1),
 (171658759343,23,0),
 (171658760250,4,2),
 (171658760250,16,1),
 (171658760250,23,0),
 (171658763062,4,2),
 (171658763062,16,1),
 (171658763062,23,0),
 (171658764296,4,2),
 (171658764296,16,1),
 (171658764296,23,0),
 (171658764890,4,2),
 (171658764890,16,1),
 (171658764890,23,0),
 (171658766078,4,2),
 (171658766078,16,1),
 (171658766078,23,0),
 (171658768875,4,2),
 (171658768875,16,1),
 (171658768875,23,0),
 (171658770109,4,2),
 (171658770109,16,1),
 (171658770109,23,0),
 (171658771000,4,2),
 (171658771000,16,1),
 (171658771000,23,0),
 (171658772187,4,2),
 (171658772187,16,1),
 (171658772187,23,0),
 (171658775968,4,2),
 (171658775968,16,1),
 (171658775968,23,0),
 (171658777859,4,2),
 (171658777859,16,1),
 (171658777859,23,0),
 (171658784187,4,2),
 (171658784187,16,1),
 (171658784187,23,0),
 (171658810328,4,1),
 (171658810328,16,1),
 (171658810328,23,2),
 (171658828343,4,2),
 (171658828343,16,1),
 (171658828343,23,0),
 (171658830546,4,2),
 (171658830546,16,1),
 (171658830546,23,0),
 (171658831125,4,2),
 (171658831125,16,1),
 (171658831125,23,0),
 (171658831734,4,2),
 (171658831734,16,1),
 (171658831734,23,0),
 (171658832609,4,2),
 (171658832609,16,1),
 (171658832609,23,0),
 (171658833812,4,2),
 (171658833812,16,1),
 (171658833812,23,0),
 (171658836312,4,2),
 (171658836312,16,1),
 (171658836312,23,0),
 (171658836890,4,2),
 (171658836890,16,1),
 (171658836890,23,0),
 (171658837484,4,2),
 (171658837484,16,1),
 (171658837484,23,0),
 (171658839953,4,2),
 (171658839953,16,1),
 (171658839953,23,0),
 (171658841203,4,2),
 (171658841203,16,1),
 (171658841203,23,0),
 (171658841765,4,2),
 (171658841765,16,1),
 (171658841765,23,0),
 (171658842343,4,2),
 (171658842343,16,1),
 (171658842343,23,0),
 (171658844484,4,2),
 (171658844484,16,1),
 (171658844484,23,0),
 (171658845656,4,2),
 (171658845656,16,1),
 (171658845656,23,0),
 (171658847218,4,2),
 (171658847218,16,1),
 (171658847218,23,0),
 (171658847812,4,2),
 (171658847812,16,1),
 (171658847812,23,0),
 (171658850609,4,2),
 (171658850609,16,1),
 (171658850609,23,0),
 (171658863250,4,2),
 (171658863250,16,1),
 (171658863250,23,0),
 (171658866187,4,2),
 (171658866187,16,1),
 (171658866187,23,0),
 (171658869312,4,2),
 (171658869312,16,1),
 (171658869312,23,0),
 (171658870531,4,2),
 (171658870531,16,1),
 (171658870531,23,0),
 (171659128531,4,2),
 (171659128531,16,1),
 (171659128531,23,2),
 (171660803390,4,2),
 (171660803390,16,1),
 (171660803390,23,2),
 (171660982656,4,2),
 (171660982656,16,1),
 (171660982656,23,2),
 (171661013250,4,1),
 (171661013250,16,1),
 (171661013250,23,2),
 (171661229187,4,2),
 (171661229187,16,1),
 (171661229187,23,2),
 (171661570109,4,2),
 (171661570109,16,1),
 (171661570109,23,2),
 (171662317546,4,2),
 (171662317546,16,1),
 (171662317546,23,2),
 (171664558390,4,2),
 (171664558390,16,1),
 (171664558390,23,2),
 (171665621187,4,1),
 (171665621187,16,1),
 (171665621187,23,2),
 (171665671296,4,1),
 (171665671296,16,1),
 (171665671296,23,2),
 (171666295593,4,1),
 (171666295593,16,1),
 (171666295593,23,2),
 (171667129171,4,1),
 (171667129171,16,1),
 (171667129171,23,2),
 (171668137671,4,2),
 (171668137671,16,1),
 (171668137671,23,0),
 (171668140453,4,2),
 (171668140453,16,1),
 (171668140453,23,0),
 (171668141343,4,2),
 (171668141343,16,1),
 (171668141343,23,0),
 (171668144468,4,2),
 (171668144468,16,1),
 (171668144468,23,0),
 (171668146015,4,2),
 (171668146015,16,1),
 (171668146015,23,0),
 (171668147828,4,2),
 (171668147828,16,1),
 (171668147828,23,0),
 (171668149953,4,2),
 (171668149953,16,1),
 (171668149953,23,0),
 (171668152703,4,2),
 (171668152703,16,1),
 (171668152703,23,0),
 (171668157421,4,2),
 (171668157421,16,1),
 (171668157421,23,0),
 (171668165109,4,2),
 (171668165109,16,1),
 (171668165109,23,0),
 (171668169250,4,2),
 (171668169250,16,1),
 (171668169250,23,0),
 (171668185312,4,2),
 (171668185312,16,1),
 (171668185312,23,0),
 (171668186015,4,2),
 (171668186015,16,1),
 (171668186015,23,0);
INSERT INTO `mvtcatval` (`MovimientoID`,`CategoriaID`,`ValorID`) VALUES 
 (171668186906,4,2),
 (171668186906,16,1),
 (171668186906,23,0),
 (171668188437,4,2),
 (171668188437,16,1),
 (171668188437,23,0),
 (171668189000,4,2),
 (171668189000,16,1),
 (171668189000,23,0),
 (171668189546,4,2),
 (171668189546,16,1),
 (171668189546,23,0),
 (171668190718,4,2),
 (171668190718,16,1),
 (171668190718,23,0),
 (171668196859,4,2),
 (171668196859,16,1),
 (171668196859,23,0),
 (171668198046,4,2),
 (171668198046,16,1),
 (171668198046,23,0),
 (171668199968,4,2),
 (171668199968,16,1),
 (171668199968,23,0),
 (171668200828,4,2),
 (171668200828,16,1),
 (171668200828,23,0),
 (171668229640,4,1),
 (171668229640,16,1),
 (171668229640,23,2),
 (171669805140,4,2),
 (171669805140,16,1),
 (171669805140,23,2),
 (171671058875,4,2),
 (171671058875,16,1),
 (171671058875,23,2),
 (171671402750,4,2),
 (171671402750,16,1),
 (171671402750,23,2),
 (171672715250,4,1),
 (171672715250,16,1),
 (171672715250,23,2),
 (171672888937,4,2),
 (171672888937,16,1),
 (171672888937,23,2),
 (171673342781,4,2),
 (171673342781,16,1),
 (171673342781,23,2),
 (171673695421,4,2),
 (171673695421,16,1),
 (171673695421,23,2),
 (171673757000,4,2),
 (171673757000,16,1),
 (171673757000,23,2),
 (171673945453,4,1),
 (171673945453,16,1),
 (171673945453,23,2),
 (171674585734,4,2),
 (171674585734,16,1),
 (171674585734,23,2),
 (171674930921,4,1),
 (171674930921,16,1),
 (171674930921,23,2),
 (171675965828,4,2),
 (171675965828,16,1),
 (171675965828,23,2),
 (171675995750,4,1),
 (171675995750,16,1),
 (171675995750,23,2),
 (171676133937,4,1),
 (171676133937,16,1),
 (171676133937,23,2),
 (171676303140,4,2),
 (171676303140,16,1),
 (171676303140,23,2),
 (171676336656,4,1),
 (171676336656,16,1),
 (171676336656,23,2),
 (171676844546,4,2),
 (171676844546,16,1),
 (171676844546,23,2),
 (171677824875,4,2),
 (171677824875,16,1),
 (171677824875,23,2),
 (171678029937,4,1),
 (171678029937,16,1),
 (171678029937,23,2),
 (171678327984,4,2),
 (171678327984,16,1),
 (171678327984,23,2),
 (171678355828,4,2),
 (171678355828,16,1),
 (171678355828,23,2),
 (171678779250,4,2),
 (171678779250,16,1),
 (171678779250,23,2),
 (171679322187,4,2),
 (171679322187,16,1),
 (171679322187,23,0),
 (171679326875,4,2),
 (171679326875,16,1),
 (171679326875,23,0),
 (171679339531,4,2),
 (171679339531,16,1),
 (171679339531,23,0),
 (171679365187,4,2),
 (171679365187,16,1),
 (171679365187,23,0),
 (171679399093,4,2),
 (171679399093,16,1),
 (171679399093,23,0),
 (171679402218,4,2),
 (171679402218,16,1),
 (171679402218,23,0),
 (171679478734,4,2),
 (171679478734,16,1),
 (171679478734,23,0),
 (171679481968,4,2),
 (171679481968,16,1),
 (171679481968,23,0),
 (171680040640,4,2),
 (171680040640,16,1),
 (171680040640,23,2),
 (171680915093,4,1),
 (171680915093,16,1),
 (171680915093,23,2),
 (171680928640,4,1),
 (171680928640,16,1),
 (171680928640,23,2),
 (171681046890,4,1),
 (171681046890,16,1),
 (171681046890,23,2),
 (171681792796,4,1),
 (171681792796,16,1),
 (171681792796,23,2),
 (171683439593,4,2),
 (171683439593,16,1),
 (171683439593,23,2),
 (171683735796,4,2),
 (171683735796,16,1),
 (171683735796,23,2),
 (171683851203,4,2),
 (171683851203,16,1),
 (171683851203,23,2),
 (171684076890,4,1),
 (171684076890,16,1),
 (171684076890,23,2),
 (171684170734,4,2),
 (171684170734,16,1),
 (171684170734,23,0),
 (171684172265,4,INDX( 	 V�	�            (   �  �       ~ �                  ��    � n     ��    )ĕ1p���n�����n����)ĕ1p�� `      �T              e c l i p s e _ u p d a t e _ 1 2 0 . j p g   ��    p Z     ��    )ĕ1p���n�����n����)ĕ1p�� `      �T              E C L I P S ~ 1 . J P G       ��    p Z     ��    q׭1p��;�����;�����q׭1p�� @      �<              e p l - v 1 0 . h t m l       ��    p Z     ��    q׭1p��;�����;�����q׭1p�� @      �<              E P L - V 1  1 . H T M       ��    x f     ��    r,�1p���٩����٩���r,�1p�� 0      �$              f e a t u r e . p r o p e r t i e s   ��    h X     ��    �i�1p���L�����L�����i�1p��       �              f e a t u r e . x m l ��    p Z     ��    r,�1p���٩����٩���r,�1p�� 0      �$              F E A T U R ~ 1 . P R O       ��    p Z     ��    F�1p���ܮ����ܮ���F�1p�� 0      5#              l i c e n s e . h t m l       ��    p Z     ��    F�1p���ܮ����ܮ�� F�1p�� 0      5#              L I C E N S ~ 1 . H T M       ��    h R     ��     ��1p�������1p�����V_6�                       M E T A - I N F                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ),
 (171713128468,16,1),
 (171713128468,23,0),
 (171713148562,4,2),
 (171713148562,16,1),
 (171713148562,23,0),
 (171713150750,4,2),
 (171713150750,16,1),
 (171713150750,23,0),
 (171713152609,4,2),
 (171713152609,16,1),
 (171713152609,23,0),
 (171713157312,4,2),
 (171713157312,16,1),
 (171713157312,23,0),
 (171713176000,4,2),
 (171713176000,16,1),
 (171713176000,23,0),
 (171713178484,4,2),
 (171713178484,16,1),
 (171713178484,23,0),
 (171713181609,4,2),
 (171713181609,16,1),
 (171713181609,23,0),
 (171713182609,4,2),
 (171713182609,16,1),
 (171713182609,23,0),
 (171713183812,4,2),
 (171713183812,16,1),
 (171713183812,23,0),
 (171713191062,4,2),
 (171713191062,16,1),
 (171713191062,23,0),
 (171713193828,4,2),
 (171713193828,16,1),
 (171713193828,23,0),
 (171713326500,4,2),
 (171713326500,16,1),
 (171713326500,23,2),
 (171713783921,4,2),
 (171713783921,16,1),
 (171713783921,23,0),
 (171713787375,4,2),
 (171713787375,16,1),
 (171713787375,23,0),
 (171713790156,4,2),
 (171713790156,16,1),
 (171713790156,23,0),
 (171713791968,4,2),
 (171713791968,16,1),
 (171713791968,23,0),
 (171713797328,4,2),
 (171713797328,16,1),
 (171713797328,23,0),
 (171713799203,4,2),
 (171713799203,16,1),
 (171713799203,23,0),
 (171713801062,4,2),
 (171713801062,16,1),
 (171713801062,23,0),
 (171713802593,4,2),
 (171713802593,16,1),
 (171713802593,23,0),
 (171713808890,4,2),
 (171713808890,16,1),
 (171713808890,23,0),
 (171713811421,4,2),
 (171713811421,16,1),
 (171713811421,23,0),
 (171713820031,4,2),
 (171713820031,16,1),
 (171713820031,23,0),
 (171713825953,4,2),
 (171713825953,16,1),
 (171713825953,23,0),
 (171713826531,4,2),
 (171713826531,16,1),
 (171713826531,23,0),
 (171713827109,4,2),
 (171713827109,16,1),
 (171713827109,23,0),
 (171713827687,4,2),
 (171713827687,16,1),
 (171713827687,23,0),
 (171713829250,4,2),
 (171713829250,16,1),
 (171713829250,23,0),
 (171713830500,4,2),
 (171713830500,16,1),
 (171713830500,23,0),
 (171713834281,4,2),
 (171713834281,16,1),
 (171713834281,23,0),
 (171713836109,4,2),
 (171713836109,16,1),
 (171713836109,23,0),
 (171713846500,4,2),
 (171713846500,16,1),
 (171713846500,23,0),
 (171713854812,4,2),
 (171713854812,16,1),
 (171713854812,23,0),
 (171713857625,4,2),
 (171713857625,16,1),
 (171713857625,23,0),
 (171713863234,4,2),
 (171713863234,16,1),
 (171713863234,23,0),
 (171714026781,4,2),
 (171714026781,16,1),
 (171714026781,23,0),
 (171714030000,4,2),
 (171714030000,16,1),
 (171714030000,23,0),
 (171714031203,4,2),
 (171714031203,16,1),
 (171714031203,23,0),
 (171714034937,4,2),
 (171714034937,16,1),
 (171714034937,23,0),
 (171714035500,4,2),
 (171714035500,16,1),
 (171714035500,23,0),
 (171714037031,4,2),
 (171714037031,16,1),
 (171714037031,23,0),
 (171714037875,4,2),
 (171714037875,16,1),
 (171714037875,23,0),
 (171715545937,4,2),
 (171715545937,16,1),
 (171715545937,23,2),
 (171716524078,4,2),
 (171716524078,16,1),
 (171716524078,23,0),
 (171716528234,4,2),
 (171716528234,16,1),
 (171716528234,23,0),
 (171716529437,4,2),
 (171716529437,16,1),
 (171716529437,23,0),
 (171716530031,4,2),
 (171716530031,16,1),
 (171716530031,23,0),
 (171716531562,4,2),
 (171716531562,16,1),
 (171716531562,23,0),
 (171716532171,4,2),
 (171716532171,16,1),
 (171716532171,23,0),
 (171716532750,4,2),
 (171716532750,16,1),
 (171716532750,23,0),
 (171716533328,4,2),
 (171716533328,16,1),
 (171716533328,23,0),
 (171716534203,4,2),
 (171716534203,16,1),
 (171716534203,23,0),
 (171716535421,4,2),
 (171716535421,16,1),
 (171716535421,23,0),
 (171716536953,4,2),
 (171716536953,16,1),
 (171716536953,23,0),
 (171716554109,4,2),
 (171716554109,16,1),
 (171716554109,23,0),
 (171716555390,4,2),
 (171716555390,16,1),
 (171716555390,23,0),
 (171716560468,4,2),
 (171716560468,16,1),
 (171716560468,23,0),
 (171716564500,4,2),
 (171716564500,16,1),
 (171716564500,23,0),
 (171716565718,4,2),
 (171716565718,16,1),
 (171716565718,23,0),
 (171716567250,4,2),
 (171716567250,16,1),
 (171716567250,23,0),
 (171716568781,4,2),
 (171716568781,16,1),
 (171716568781,23,0),
 (171716570328,4,2),
 (171716570328,16,1),
 (171716570328,23,0),
 (171716574078,4,2),
 (171716574078,16,1),
 (171716574078,23,0),
 (171716578500,4,2),
 (171716578500,16,1),
 (171716578500,23,0),
 (171716581312,4,2),
 (171716581312,16,1),
 (171716581312,23,0),
 (171716585156,4,2),
 (171716585156,16,1),
 (171716585156,23,0),
 (171716590875,4,2),
 (171716590875,16,1),
 (171716590875,23,0),
 (171716596656,4,2),
 (171716596656,16,1),
 (171716596656,23,0),
 (171716598515,4,2),
 (171716598515,16,1),
 (171716598515,23,0),
 (171716604796,4,2),
 (171716604796,16,1),
 (171716604796,23,0),
 (171716606015,4,2),
 (171716606015,16,1),
 (171716606015,23,0),
 (171716611093,4,2),
 (171716611093,16,1),
 (171716611093,23,0),
 (171716612953,4,2),
 (171716612953,16,1),
 (171716612953,23,0),
 (171716617015,4,2),
 (171716617015,16,1),
 (171716617015,23,0),
 (171716619515,4,2),
 (171716619515,16,1),
 (171716619515,23,0),
 (171716620421,4,2),
 (171716620421,16,1),
 (171716620421,23,0),
 (171716629671,4,2),
 (171716629671,16,1),
 (171716629671,23,0),
 (171716631843,4,2),
 (171716631843,16,1),
 (171716631843,23,0),
 (171716634343,4,2),
 (171716634343,16,1),
 (171716634343,23,0),
 (171716636843,4,2),
 (171716636843,16,1),
 (171716636843,23,0),
 (171716638390,4,2),
 (171716638390,16,1),
 (171716638390,23,0),
 (171716639281,4,2),
 (171716639281,16,1),
 (171716639281,23,0),
 (171716642093,4,2),
 (171716642093,16,1),
 (171716642093,23,0),
 (171716645281,4,2),
 (171716645281,16,1),
 (171716645281,23,0),
 (171716646859,4,2),
 (171716646859,16,1),
 (171716646859,23,0),
 (171716648703,4,2),
 (171716648703,16,1),
 (171716648703,23,0),
 (171716650562,4,2),
 (171716650562,16,1),
 (171716650562,23,0),
 (171716651781,4,2),
 (171716651781,16,1),
 (171716651781,23,0),
 (171716679921,4,1),
 (171716679921,16,1),
 (171716679921,23,0),
 (171716680843,4,1),
 (171716680843,16,1),
 (171716680843,23,0),
 (171716684000,4,1),
 (171716684000,16,1),
 (171716684000,23,0),
 (171716688125,4,1),
 (171716688125,16,1),
 (171716688125,23,0),
 (171716689031,4,1),
 (171716689031,16,1),
 (171716689031,23,0),
 (171716690921,4,1),
 (171716690921,16,1),
 (171716690921,23,0),
 (171719446796,4,2),
 (171719446796,16,1),
 (171719446796,23,2),
 (171719452828,4,2),
 (171719452828,16,1),
 (171719452828,23,2),
 (171719759343,4,2),
 (171719759343,16,1),
 (171719759343,23,0),
 (171719760859,4,2),
 (171719760859,16,1),
 (171719760859,23,0),
 (171719763359,4,2),
 (171719763359,16,1),
 (171719763359,23,0),
 (171719763906,4,2),
 (171719763906,16,1),
 (171719763906,23,0),
 (171719765718,4,2),
 (171719765718,16,1),
 (171719765718,23,0),
 (171719766625,4,2),
 (171719766625,16,1),
 (171719766625,23,0),
 (171719767187,4,2),
 (171719767187,16,1),
 (171719767187,23,0),
 (171719768406,4,2),
 (171719768406,16,1),
 (171719768406,23,0),
 (171719768968,4,2),
 (171719768968,16,1),
 (171719768968,23,0),
 (171719769515,4,2),
 (171719769515,16,1),
 (171719769515,23,0),
 (171719770703,4,2),
 (171719770703,16,1),
 (171719770703,23,0),
 (171719775531,4,2),
 (171719775531,16,1),
 (171719775531,23,0),
 (171719776406,4,2),
 (171719776406,16,1),
 (171719776406,23,0),
 (171719777281,4,2),
 (171719777281,16,1),
 (171719777281,23,0),
 (171719779375,4,2),
 (171719779375,16,1),
 (171719779375,23,0),
 (171719779937,4,2),
 (171719779937,16,1),
 (171719779937,23,0),
 (171719780796,4,2),
 (171719780796,16,1),
 (171719780796,23,0),
 (171719781343,4,2),
 (171719781343,16,1),
 (171719781343,23,0),
 (171719782234,4,2),
 (171719782234,16,1),
 (171719782234,23,0),
 (171719783734,4,2),
 (171719783734,16,1),
 (171719783734,23,0),
 (171729738234,4,2),
 (171729738234,16,1),
 (171729738234,23,0),
 (171729741484,4,2),
 (171729741484,16,1),
 (171729741484,23,0),
 (171729743031,4,2),
 (171729743031,16,1),
 (171729743031,23,0),
 (171729743953,4,2),
 (171729743953,16,1),
 (171729743953,23,0),
 (171729744562,4,2),
 (171729744562,16,1),
 (171729744562,23,0),
 (171729747656,4,2),
 (171729747656,16,1),
 (171729747656,23,0),
 (171729748875,4,2),
 (171729748875,16,1),
 (171729748875,23,0),
 (171729753671,4,2),
 (171729753671,16,1),
 (171729753671,23,0),
 (171732010156,4,2),
 (171732010156,16,1),
 (171732010156,23,2),
 (171732952046,4,2),
 (171732952046,16,1),
 (171732952046,23,0),
 (171732954296,4,2),
 (171732954296,16,1),
 (171732954296,23,0),
 (171732955515,4,2),
 (171732955515,16,1),
 (171732955515,23,0),
 (171732956093,4,2),
 (171732956093,16,1),
 (171732956093,23,0),
 (171732956656,4,2),
 (171732956656,16,1),
 (171732956656,23,0),
 (171732959468,4,2),
 (171732959468,16,1),
 (171732959468,23,0),
 (171732960031,4,2),
 (171732960031,16,1),
 (171732960031,23,0),
 (171732961562,4,2),
 (171732961562,16,1),
 (171732961562,23,0),
 (171732962453,4,2),
 (171732962453,16,1),
 (171732962453,23,0),
 (171732968171,4,2),
 (171732968171,16,1),
 (171732968171,23,0),
 (171732969062,4,2),
 (171732969062,16,1),
 (171732969062,23,0),
 (171732971687,4,2),
 (171732971687,16,1),
 (171732971687,23,0),
 (171732972875,4,2),
 (171732972875,16,1),
 (171732972875,23,0),
 (171739126140,4,1),
 (171739126140,16,1),
 (171739126140,23,0),
 (171739128937,4,1),
 (171739128937,16,1),
 (171739128937,23,0),
 (171739131125,4,1),
 (171739131125,16,1),
 (171739131125,23,0),
 (171739132046,4,1),
 (171739132046,16,1),
 (171739132046,23,0),
 (171739133406,4,1),
 (171739133406,16,1),
 (171739133406,23,0),
 (171739137203,4,1),
 (171739137203,16,1),
 (171739137203,23,0),
 (171739138406,4,1),
 (171739138406,16,1),
 (171739138406,23,0),
 (171739139625,4,1),
 (171739139625,16,1),
 (171739139625,23,0),
 (171739141203,4,1),
 (171739141203,16,1),
 (171739141203,23,0),
 (171739144640,4,1),
 (171739144640,16,1),
 (171739144640,23,0),
 (171739157093,4,1),
 (171739157093,16,1),
 (171739157093,23,0),
 (171739157671,4,1),
 (171739157671,16,1),
 (171739157671,23,0),
 (171739158562,4,1),
 (171739158562,16,1),
 (171739158562,23,0),
 (171739160140,4,1),
 (171739160140,16,1),
 (171739160140,23,0),
 (171739160703,4,1),
 (171739160703,16,1),
 (171739160703,23,0),
 (171739161640,4,1),
 (171739161640,16,1),
 (171739161640,23,0),
 (171739163468,4,1),
 (171739163468,16,1),
 (171739163468,23,0),
 (171739166906,4,1),
 (171739166906,16,1),
 (171739166906,23,0),
 (171739167812,4,1),
 (171739167812,16,1),
 (171739167812,23,0),
 (171739169343,4,1),
 (171739169343,16,1),
 (171739169343,23,0),
 (171739170562,4,1),
 (171739170562,16,1),
 (171739170562,23,0),
 (171739172109,4,1),
 (171739172109,16,1),
 (171739172109,23,0),
 (171739173312,4,1),
 (171739173312,16,1),
 (171739173312,23,0),
 (171739174390,4,1),
 (171739174390,16,1),
 (171739174390,23,0),
 (171742246468,4,1),
 (171742246468,16,1),
 (171742246468,23,0),
 (171742250046,4,1),
 (171742250046,16,1),
 (171742250046,23,0),
 (171742255078,4,1),
 (171742255078,16,1),
 (171742255078,23,0),
 (171742259500,4,1),
 (171742259500,16,1),
 (171742259500,23,0),
 (171742266484,4,1),
 (171742266484,16,1),
 (171742266484,23,0),
 (171742273468,4,1),
 (171742273468,16,1),
 (171742273468,23,0),
 (171742280765,4,1),
 (171742280765,16,1),
 (171742280765,23,0),
 (171742285484,4,1),
 (171742285484,16,1),
 (171742285484,23,0),
 (171742287375,4,1),
 (171742287375,16,1),
 (171742287375,23,0),
 (171742337515,4,1),
 (171742337515,16,1),
 (171742337515,23,0),
 (171744388781,4,1),
 (171744388781,16,1),
 (171744388781,23,0),
 (171744392250,4,1),
 (171744392250,16,1),
 (171744392250,23,0),
 (171744396890,4,1),
 (171744396890,16,1),
 (171744396890,23,0),
 (171744398421,4,1),
 (171744398421,16,1),
 (171744398421,23,0),
 (171744402125,4,1),
 (171744402125,16,1),
 (171744402125,23,0),
 (171744403312,4,1),
 (171744403312,16,1),
 (171744403312,23,0),
 (171744404968,4,1),
 (171744404968,16,1),
 (171744404968,23,0),
 (171744406812,4,1),
 (171744406812,16,1),
 (171744406812,23,0),
 (171744408031,4,1),
 (171744408031,16,1),
 (171744408031,23,0),
 (171744416843,4,1),
 (171744416843,16,1),
 (171744416843,23,0),
 (171744418718,4,1),
 (171744418718,16,1),
 (171744418718,23,0),
 (171744420890,4,1),
 (171744420890,16,1),
 (171744420890,23,0),
 (171744422437,4,1),
 (171744422437,16,1),
 (171744422437,23,0),
 (171744423953,4,1),
 (171744423953,16,1),
 (171744423953,23,0),
 (171744424859,4,1),
 (171744424859,16,1),
 (171744424859,23,0),
 (171744426218,4,1),
 (171744426218,16,1),
 (171744426218,23,0),
 (171745023812,4,2),
 (171745023812,16,1),
 (171745023812,23,0),
 (171745025687,4,2),
 (171745025687,16,1),
 (171745025687,23,0),
 (171745026609,4,2),
 (171745026609,16,1),
 (171745026609,23,0),
 (171745027500,4,2),
 (171745027500,16,1),
 (171745027500,23,0),
 (171745028421,4,2),
 (171745028421,16,1),
 (171745028421,23,0),
 (171745031546,4,2),
 (171745031546,16,1),
 (171745031546,23,0),
 (171745035937,4,2),
 (171745035937,16,1),
 (171745035937,23,0),
 (171745042828,4,2),
 (171745042828,16,1),
 (171745042828,23,0),
 (171745044078,4,2),
 (171745044078,16,1),
 (171745044078,23,0),
 (171745047828,4,2),
 (171745047828,16,1),
 (171745047828,23,0),
 (171745048718,4,2),
 (171745048718,16,1),
 (171745048718,23,0),
 (171746109890,4,1),
 (171746109890,16,1),
 (171746109890,23,2),
 (171746324046,4,1),
 (171746324046,16,1),
 (171746324046,23,2),
 (171747681546,4,1),
 (171747681546,16,1),
 (171747681546,23,0),
 (171747687578,4,1),
 (171747687578,16,1),
 (171747687578,23,0),
 (171747695875,4,1),
 (171747695875,16,1),
 (171747695875,23,0),
 (171747698046,4,1),
 (171747698046,16,1),
 (171747698046,23,0),
 (171747988296,4,1),
 (171747988296,16,1),
 (171747988296,23,2),
 (171748010046,4,1),
 (171748010046,16,1),
 (171748010046,23,2),
 (171748287953,4,1),
 (171748287953,16,1),
 (171748287953,23,0),
 (171748289875,4,1),
 (171748289875,16,1),
 (171748289875,23,0),
 (171748293937,4,1),
 (171748293937,16,1),
 (171748293937,23,0),
 (171748298328,4,1),
 (171748298328,16,1),
 (171748298328,23,0),
 (171748308453,4,1),
 (171748308453,16,1),
 (171748308453,23,0),
 (171748309656,4,1),
 (171748309656,16,1),
 (171748309656,23,0),
 (171748310281,4,1),
 (171748310281,16,1),
 (171748310281,23,0),
 (171748312796,4,1),
 (171748312796,16,1),
 (171748312796,23,0),
 (171748316265,4,1),
 (171748316265,16,1),
 (171748316265,23,0),
 (171748316890,4,1),
 (171748316890,16,1),
 (171748316890,23,0),
 (171748318718,4,1),
 (171748318718,16,1),
 (171748318718,23,0),
 (171748329796,4,1),
 (171748329796,16,1),
 (171748329796,23,0),
 (171748331375,4,1),
 (171748331375,16,1),
 (171748331375,23,0),
 (171748333359,4,1),
 (171748333359,16,1),
 (171748333359,23,0),
 (171748334281,4,1),
 (171748334281,16,1),
 (171748334281,23,0),
 (171748337140,4,1),
 (171748337140,16,1),
 (171748337140,23,0),
 (171748339343,4,1),
 (171748339343,16,1),
 (171748339343,23,0),
 (171748340578,4,1),
 (171748340578,16,1),
 (171748340578,23,0),
 (171748341500,4,1),
 (171748341500,16,1),
 (171748341500,23,0),
 (171748349750,4,1),
 (171748349750,16,1),
 (171748349750,23,0),
 (171748351562,4,1),
 (171748351562,16,1),
 (171748351562,23,0),
 (171749008484,4,1),
 (171749008484,16,1),
 (171749008484,23,2),
 (171749198140,4,1),
 (171749198140,16,1),
 (171749198140,23,2),
 (171749440375,4,1),
 (171749440375,16,1),
 (171749440375,23,0),
 (171749443156,4,1),
 (171749443156,16,1),
 (171749443156,23,0),
 (171749445781,4,1),
 (171749445781,16,1),
 (171749445781,23,0),
 (171749470234,4,1),
 (171749470234,16,1),
 (171749470234,23,2),
 (171749736687,4,1),
 (171749736687,16,1),
 (171749736687,23,0),
 (171749738921,4,1),
 (171749738921,16,1),
 (171749738921,23,0),
 (171749739828,4,1),
 (171749739828,16,1),
 (171749739828,23,0),
 (171749753015,4,1),
 (171749753015,16,1),
 (171749753015,23,0),
 (171749756281,4,1),
 (171749756281,16,1),
 (171749756281,23,0),
 (171749768109,4,1),
 (171749768109,16,1),
 (171749768109,23,0),
 (171749769343,4,1),
 (171749769343,16,1),
 (171749769343,23,0),
 (171751251109,4,1),
 (171751251109,16,1),
 (171751251109,23,2),
 (171751278156,4,1),
 (171751278156,16,1),
 (171751278156,23,2),
 (171751594125,4,2),
 (171751594125,16,1),
 (171751594125,23,2),
 (171751891062,4,1),
 (171751891062,16,1),
 (171751891062,23,2),
 (171752398687,4,1),
 (171752398687,16,1),
 (171752398687,23,2),
 (171752630234,4,2),
 (171752630234,16,1),
 (171752630234,23,2),
 (171752843625,4,2),
 (171752843625,16,1),
 (171752843625,23,2),
 (171753041703,4,1),
 (171753041703,16,1),
 (171753041703,23,2),
 (171754326031,4,2),
 (171754326031,16,1),
 (171754326031,23,2),
 (171754473250,4,1),
 (171754473250,16,1),
 (171754473250,23,2),
 (171754569718,4,2),
 INDX( 	 �4�            (   p  �       D                     U�    � �     P�    {fT�����/�����a�������	���� 0     +#             /B a r r e r a   S r   A l e j a n d r o   P o m p o n i   0 9 - 0 5 - 2 0 1 8   ( 1 ) . p d f S�    � �     P�    ��׾��&��s���&��s�����'� �
      �
             +B a r r e r a   S r   A l e j a n d r o   P o m p o n i   0 9 - 0 5 - 2 0 1 8 . x l s U�    p Z     P�    {fT�����/�����a�������	���� 0     +#             B A R R E R ~ 1 . P  F     S�    p Z     P�    ��׾��&��s���&��s�����'� �
      �
             B A R R E R ~ 1 . X L S                    0     +#             B A R R E R ~ 1 . P D F     S�    p Z     P�    ��׾��&��s���&��s�����'� �
      �
             B A R R E R ~ 1 . X L S                   P�    �"'��"'���!'��"'�h       h       "       ~ L O C K B ~ 1 . X L S                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              [ZoneTransfer]
ZoneId=3
ReferrerUrl=https://mail.yahoo.com/
HostUrl=https://dl-mail.ymail.com/ws/download/mailboxes/@.id==VjN-2yJE4dxYGfo68UqVZgaU0Qnm_LTT8QONTNzz67XxWmiCRcLQNhiFDsZnbfkHLtO86Oln5siucf1AVwRpVtm6UatgezLTFbuWDfCaMFLPdGs/messages/@.id==AIMZAelvuOg6Wxf7cwEVWAK6g3M/content/parts/@.id==2/raw?appid=YahooMailNeo&ymreqid=e1623382-f609-3daf-0179-cb0012010000&token=p6PEgHFqCp1Y_BQrO1Xht-sqs8vSurk4MXMND-EMUTiCLCs9yHPGqlFj3M2zLbb8y66h4cupWQfBRIASFYeke4XuxIG33Zy6llogrQXlef03jSR_SxLyJze_Isrs7ftG&error=https%3A%2F%2Fmg.mail.yahoo.com%2Fneo%2Fiframemsg%3Fid%3D6077b680-32a5-fe10-538b-d1db57d736c3%26origin%3Dmail.yahoo.com
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        71805331109,16,1),
 (171805331109,23,0),
 (171805337750,4,1),
 (171805337750,16,1),
 (171805337750,23,0),
 (171805339609,4,1),
 (171805339609,16,1),
 (171805339609,23,0),
 (171805345328,4,1),
 (171805345328,16,1),
 (171805345328,23,0),
 (171805345906,4,1),
 (171805345906,16,1),
 (171805345906,23,0),
 (171805346796,4,1),
 (171805346796,16,1),
 (171805346796,23,0),
 (171805352828,4,1),
 (171805352828,16,1),
 (171805352828,23,0),
 (171805381640,4,2),
 (171805381640,16,1),
 (171805381640,23,0),
 (171805382859,4,2),
 (171805382859,16,1),
 (171805382859,23,0),
 (171805388250,4,2),
 (171805388250,16,1),
 (171805388250,23,0),
 (171805389140,4,2),
 (171805389140,16,1),
 (171805389140,23,0),
 (171805391328,4,2),
 (171805391328,16,1),
 (171805391328,23,0),
 (171805392218,4,2),
 (171805392218,16,1),
 (171805392218,23,0),
 (171805393109,4,2),
 (171805393109,16,1),
 (171805393109,23,0),
 (171805395937,4,2),
 (171805395937,16,1),
 (171805395937,23,0),
 (171805397500,4,2),
 (171805397500,16,1),
 (171805397500,23,0),
 (171805399046,4,2),
 (171805399046,16,1),
 (171805399046,23,0),
 (171805400578,4,2),
 (171805400578,16,1),
 (171805400578,23,0),
 (171805401765,4,2),
 (171805401765,16,1),
 (171805401765,23,0),
 (171805402968,4,2),
 (171805402968,16,1),
 (171805402968,23,0),
 (171805404156,4,2),
 (171805404156,16,1),
 (171805404156,23,0),
 (171805405359,4,2),
 (171805405359,16,1),
 (171805405359,23,0),
 (171805406265,4,2),
 (171805406265,16,1),
 (171805406265,23,0),
 (171805407468,4,2),
 (171805407468,16,1),
 (171805407468,23,0),
 (171805408343,4,2),
 (171805408343,16,1),
 (171805408343,23,0),
 (171805409546,4,2),
 (171805409546,16,1),
 (171805409546,23,0),
 (171805410765,4,2),
 (171805410765,16,1),
 (171805410765,23,0),
 (171805412296,4,2),
 (171805412296,16,1),
 (171805412296,23,0),
 (171805413796,4,2),
 (171805413796,16,1),
 (171805413796,23,0),
 (171805415656,4,2),
 (171805415656,16,1),
 (171805415656,23,0),
 (171805416234,4,2),
 (171805416234,16,1),
 (171805416234,23,0),
 (171805417765,4,2),
 (171805417765,16,1),
 (171805417765,23,0),
 (171805418984,4,2),
 (171805418984,16,1),
 (171805418984,23,0),
 (171805419875,4,2),
 (171805419875,16,1),
 (171805419875,23,0),
 (171805432734,4,2),
 (171805432734,16,1),
 (171805432734,23,0),
 (171805434593,4,2),
 (171805434593,16,1),
 (171805434593,23,0),
 (171805435812,4,2),
 (171805435812,16,1),
 (171805435812,23,0),
 (171805436703,4,2),
 (171805436703,16,1),
 (171805436703,23,0),
 (171805437281,4,2),
 (171805437281,16,1),
 (171805437281,23,0),
 (171805438171,4,2),
 (171805438171,16,1),
 (171805438171,23,0),
 (171805439062,4,2),
 (171805439062,16,1),
 (171805439062,23,0),
 (171805956562,4,1),
 (171805956562,16,1),
 (171805956562,23,2),
 (171806230328,4,2),
 (171806230328,16,1),
 (171806230328,23,2),
 (171807149859,4,2),
 (171807149859,16,1),
 (171807149859,23,2),
 (171807725062,4,2),
 (171807725062,16,1),
 (171807725062,23,2),
 (171808071890,4,1),
 (171808071890,16,1),
 (171808071890,23,2),
 (171808303218,4,2),
 (171808303218,16,1),
 (171808303218,23,2),
 (171808348218,4,1),
 (171808348218,16,1),
 (171808348218,23,2),
 (171808354562,4,1),
 (171808354562,16,1),
 (171808354562,23,2),
 (171809693921,4,1),
 (171809693921,16,1),
 (171809693921,23,2),
 (171809710234,4,1),
 (171809710234,16,1),
 (171809710234,23,2),
 (171809748671,4,2),
 (171809748671,16,1),
 (171809748671,23,2),
 (171810349484,4,2),
 (171810349484,16,1),
 (171810349484,23,0),
 (171810361625,4,2),
 (171810361625,16,1),
 (171810361625,23,0),
 (171810369203,4,2),
 (171810369203,16,1),
 (171810369203,23,0),
 (171810371968,4,2),
 (171810371968,16,1),
 (171810371968,23,0),
 (171810373531,4,2),
 (171810373531,16,1),
 (171810373531,23,0),
 (171810376312,4,2),
 (171810376312,16,1),
 (171810376312,23,0),
 (171810378890,4,2),
 (171810378890,16,1),
 (171810378890,23,0),
 (171810391828,4,2),
 (171810391828,16,1),
 (171810391828,23,0),
 (171810392390,4,2),
 (171810392390,16,1),
 (171810392390,23,0),
 (171810392953,4,2),
 (171810392953,16,1),
 (171810392953,23,0),
 (171810393843,4,2),
 (171810393843,16,1),
 (171810393843,23,0),
 (171810394390,4,2),
 (171810394390,16,1),
 (171810394390,23,0),
 (171810399718,4,2),
 (171810399718,16,1),
 (171810399718,23,0),
 (171810401250,4,2),
 (171810401250,16,1),
 (171810401250,23,0),
 (171810407875,4,2),
 (171810407875,16,1),
 (171810407875,23,0),
 (171810411328,4,2),
 (171810411328,16,1),
 (171810411328,23,0),
 (171810412890,4,2),
 (171810412890,16,1),
 (171810412890,23,0),
 (171810416296,4,2),
 (171810416296,16,1),
 (171810416296,23,0),
 (171810416843,4,2),
 (171810416843,16,1),
 (171810416843,23,0),
 (171810423718,4,2),
 (171810423718,16,1),
 (171810423718,23,0),
 (171810424625,4,2),
 (171810424625,16,1),
 (171810424625,23,0),
 (171810425515,4,2),
 (171810425515,16,1),
 (171810425515,23,0),
 (171810426765,4,2),
 (171810426765,16,1),
 (171810426765,23,0),
 (171810427359,4,2),
 (171810427359,16,1),
 (171810427359,23,0),
 (171810427937,4,2),
 (171810427937,16,1),
 (171810427937,23,0),
 (171810428828,4,2),
 (171810428828,16,1),
 (171810428828,23,0),
 (171810430406,4,2),
 (171810430406,16,1),
 (171810430406,23,0),
 (171810430984,4,2),
 (171810430984,16,1),
 (171810430984,23,0),
 (171810433109,4,2),
 (171810433109,16,1),
 (171810433109,23,0),
 (171810433687,4,2),
 (171810433687,16,1),
 (171810433687,23,0),
 (171810434937,4,2),
 (171810434937,16,1),
 (171810434937,23,0),
 (171810466671,4,2),
 (171810466671,16,1),
 (171810466671,23,0),
 (171810468531,4,2),
 (171810468531,16,1),
 (171810468531,23,0),
 (171810469093,4,2),
 (171810469093,16,1),
 (171810469093,23,0),
 (171810469968,4,2),
 (171810469968,16,1),
 (171810469968,23,0),
 (171810470843,4,2),
 (171810470843,16,1),
 (171810470843,23,0),
 (171810471453,4,2),
 (171810471453,16,1),
 (171810471453,23,0),
 (171810472062,4,2),
 (171810472062,16,1),
 (171810472062,23,0),
 (171810473906,4,2),
 (171810473906,16,1),
 (171810473906,23,0),
 (171810474484,4,2),
 (171810474484,16,1),
 (171810474484,23,0),
 (171810475062,4,2),
 (171810475062,16,1),
 (171810475062,23,0),
 (171810475625,4,2),
 (171810475625,16,1),
 (171810475625,23,0),
 (171810476203,4,2),
 (171810476203,16,1),
 (171810476203,23,0),
 (171810476843,4,2),
 (171810476843,16,1),
 (171810476843,23,0),
 (171810477750,4,2),
 (171810477750,16,1),
 (171810477750,23,0),
 (171810478640,4,2),
 (171810478640,16,1),
 (171810478640,23,0),
 (171814164171,4,2),
 (171814164171,16,1),
 (171814164171,23,0),
 (171814166000,4,2),
 (171814166000,16,1),
 (171814166000,23,0),
 (171814168203,4,2),
 (171814168203,16,1),
 (171814168203,23,0),
 (171814169203,4,2),
 (171814169203,16,1),
 (171814169203,23,0),
 (171814185781,4,2),
 (171814185781,16,1),
 (171814185781,23,0),
 (171814190421,4,2),
 (171814190421,16,1),
 (171814190421,23,0),
 (171814191906,4,2),
 (171814191906,16,1),
 (171814191906,23,0),
 (171814193859,4,2),
 (171814193859,16,1),
 (171814193859,23,0),
 (171814195718,4,2),
 (171814195718,16,1),
 (171814195718,23,0),
 (171815369093,4,2),
 (171815369093,16,1),
 (171815369093,23,2),
 (171815412140,4,2),
 (171815412140,16,1),
 (171815412140,23,2),
 (171835189593,4,2),
 (171835189593,16,1),
 (171835189593,23,2),
 (171845074968,4,2),
 (171845074968,16,1),
 (171845074968,23,0),
 (171845649218,4,1),
 (171845649218,16,1),
 (171845649218,23,2),
 (171846359125,4,2),
 (171846359125,16,1),
 (171846359125,23,2),
 (171846404781,4,1),
 (171846404781,16,1),
 (171846404781,23,2),
 (171846636796,4,1),
 (171846636796,16,1),
 (171846636796,23,0),
 (171846638734,4,1),
 (171846638734,16,1),
 (171846638734,23,0),
 (171846640250,4,1),
 (171846640250,16,1),
 (171846640250,23,0),
 (171846641484,4,1),
 (171846641484,16,1),
 (171846641484,23,0),
 (171846644593,4,1),
 (171846644593,16,1),
 (171846644593,23,0),
 (171846649906,4,1),
 (171846649906,16,1),
 (171846649906,23,0),
 (171847106218,4,1),
 (171847106218,16,1),
 (171847106218,23,0),
 (171847108937,4,1),
 (171847108937,16,1),
 (171847108937,23,0),
 (171847109687,4,1),
 (171847109687,16,1),
 (171847109687,23,0),
 (171847110437,4,1),
 (171847110437,16,1),
 (171847110437,23,0),
 (171847113250,4,1),
 (171847113250,16,1),
 (171847113250,23,0),
 (171847932234,4,1),
 (171847932234,16,1),
 (171847932234,23,2),
 (171847985921,4,2),
 (171847985921,16,1),
 (171847985921,23,2),
 (171848247703,4,1),
 (171848247703,16,1),
 (171848247703,23,2),
 (171848267500,4,1),
 (171848267500,16,1),
 (171848267500,23,2),
 (171848436156,4,1),
 (171848436156,16,1),
 (171848436156,23,2),
 (171848502656,4,2),
 (171848502656,16,1),
 (171848502656,23,2),
 (171848642906,4,1),
 (171848642906,16,1),
 (171848642906,23,0),
 (171848647968,4,1),
 (171848647968,16,1),
 (171848647968,23,0),
 (171848650140,4,1),
 (171848650140,16,1),
 (171848650140,23,0),
 (171848682750,4,1),
 (171848682750,16,1),
 (171848682750,23,2),
 (171848931187,4,1),
 (171848931187,16,1),
 (171848931187,23,2),
 (171848964500,4,1),
 (171848964500,16,1),
 (171848964500,23,2),
 (171848980468,4,1),
 (171848980468,16,1),
 (171848980468,23,2),
 (171849609859,4,1),
 (171849609859,16,1),
 (171849609859,23,2),
 (171850462343,4,1),
 (171850462343,16,1),
 (171850462343,23,2),
 (171850541796,4,1),
 (171850541796,16,1),
 (171850541796,23,2),
 (171850623171,4,1),
 (171850623171,16,1),
 (171850623171,23,2),
 (171850765406,4,1),
 (171850765406,16,1),
 (171850765406,23,0),
 (171850766296,4,1),
 (171850766296,16,1),
 (171850766296,23,0),
 (171850769812,4,1),
 (171850769812,16,1),
 (171850769812,23,0),
 (171850774484,4,1),
 (171850774484,16,1),
 (171850774484,23,0),
 (171850775687,4,1),
 (171850775687,16,1),
 (171850775687,23,0),
 (171850784781,4,1),
 (171850784781,16,1),
 (171850784781,23,0),
 (171850789140,4,1),
 (171850789140,16,1),
 (171850789140,23,0),
 (171850794437,4,1),
 (171850794437,16,1),
 (171850794437,23,0),
 (171850808593,4,1),
 (171850808593,16,1),
 (171850808593,23,0),
 (171852207578,4,1),
 (171852207578,16,1),
 (171852207578,23,2),
 (171852547234,4,1),
 (171852547234,16,1),
 (171852547234,23,2),
 (171852696796,4,1),
 (171852696796,16,1),
 (171852696796,23,2),
 (171852718515,4,1),
 (171852718515,16,1),
 (171852718515,23,2),
 (171853018468,4,1),
 (171853018468,16,1),
 (171853018468,23,2),
 (171853101500,4,1),
 (171853101500,16,1),
 (171853101500,23,2),
 (171853258671,4,2),
 (171853258671,16,1),
 (171853258671,23,0),
 (171853259562,4,2),
 (171853259562,16,1),
 (171853259562,23,0),
 (171853260468,4,2),
 (171853260468,16,1),
 (171853260468,23,0),
 (171853266421,4,2),
 (171853266421,16,1),
 (171853266421,23,0),
 (171853271593,4,2),
 (171853271593,16,1),
 (171853271593,23,0),
 (171853272187,4,2),
 (171853272187,16,1),
 (171853272187,23,0),
 (171853273078,4,2),
 (171853273078,16,1),
 (171853273078,23,0),
 (171853273687,4,2),
 (171853273687,16,1),
 (171853273687,23,0),
 (171853279640,4,2),
 (171853279640,16,1),
 (171853279640,23,0),
 (171853280546,4,2),
 (171853280546,16,1),
 (171853280546,23,0),
 (171853282703,4,2),
 (171853282703,16,1),
 (171853282703,23,0),
 (171853381796,4,1),
 (171853381796,16,1),
 (171853381796,23,2),
 (171853498906,4,1),
 (171853498906,16,1),
 (171853498906,23,2),
 (171853505515,4,1),
 (171853505515,16,1),
 (171853505515,23,2),
 (171853555718,4,1),
 (171853555718,16,1),
 (171853555718,23,2),
 (171853785703,4,2),
 (171853785703,16,1),
 (171853785703,23,2),
 (171853974546,4,1),
 (171853974546,16,1),
 (171853974546,23,2),
 (171854602625,4,1),
 (171854602625,16,1),
 (171854602625,23,2),
 (171854941984,4,1),
 (171854941984,16,1),
 (171854941984,23,2),
 (171855910671,4,2),
 (171855910671,16,1),
 (171855910671,23,2),
 (171855926125,4,2),
 (171855926125,16,1),
 (171855926125,23,2),
 (171855966078,4,2),
 (171855966078,16,1),
 (171855966078,23,2),
 (171856107281,4,1),
 (171856107281,16,1),
 (171856107281,23,2),
 (171856601359,4,1),
 (171856601359,16,1),
 (171856601359,23,2),
 (171856974140,4,2),
 (171856974140,16,1),
 (171856974140,23,2),
 (171857049906,4,2),
 (171857049906,16,1),
 (171857049906,23,2),
 (171857156718,4,2),
 (171857156718,16,1),
 (171857156718,23,2),
 (171857291937,4,2),
 (171857291937,16,1),
 (171857291937,23,2),
 (171857715781,4,2),
 (171857715781,16,1),
 (171857715781,23,2),
 (171857764046,4,2),
 (171857764046,16,1),
 (171857764046,23,2),
 (171857806187,4,2),
 (171857806187,16,1),
 (171857806187,23,2),
 (171857920359,4,1),
 (171857920359,16,1),
 (171857920359,23,2),
 (171858073593,4,2),
 (171858073593,16,1),
 (171858073593,23,2),
 (171858101953,4,1),
 (171858101953,16,1),
 (171858101953,23,2),
 (171858810031,4,2),
 (171858810031,16,1),
 (171858810031,23,2),
 (171859795281,4,2),
 (171859795281,16,1),
 (171859795281,23,2),
 (171859983406,4,2),
 (171859983406,16,1),
 (171859983406,23,2),
 (171860551937,4,1),
 (171860551937,16,1),
 (171860551937,23,2),
 (171861395640,4,2),
 (171861395640,16,1),
 (171861395640,23,2),
 (171861867609,4,2),
 (171861867609,16,1),
 (171861867609,23,2),
 (171862623953,4,2),
 (171862623953,16,1),
 (171862623953,23,2),
 (171862860625,4,1),
 (171862860625,16,1),
 (171862860625,23,2),
 (171862946703,4,2),
 (171862946703,16,1),
 (171862946703,23,2),
 (171863144218,4,1),
 (171863144218,16,1),
 (171863144218,23,2),
 (171863187546,4,1),
 (171863187546,16,1),
 (171863187546,23,2),
 (171865303203,4,1),
 (171865303203,16,1),
 (171865303203,23,2),
 (171870047359,4,1),
 (171870047359,16,1),
 (171870047359,23,2),
 (171870114265,4,1),
 (171870114265,16,1),
 (171870114265,23,2),
 (171870341984,4,1),
 (171870341984,16,1),
 (171870341984,23,2),
 (171870407718,4,1),
 (171870407718,16,1),
 (171870407718,23,0),
 (171870409578,4,1),
 (171870409578,16,1),
 (171870409578,23,0),
 (171870411437,4,1),
 (171870411437,16,1),
 (171870411437,23,0),
 (171870412984,4,1),
 (171870412984,16,1),
 (171870412984,23,0),
 (171870421265,4,1),
 (171870421265,16,1),
 (171870421265,23,0),
 (171870422515,4,1),
 (171870422515,16,1),
 (171870422515,23,0),
 (171870424375,4,1),
 (171870424375,16,1),
 (171870424375,23,0),
 (171871212078,4,1),
 (171871212078,16,1),
 (171871212078,23,2),
 (171871807500,4,1),
 (171871807500,16,1),
 (171871807500,23,2),
 (171872755500,4,2),
 (171872755500,16,1),
 (171872755500,23,2),
 (171872766375,4,2),
 (171872766375,16,1),
 (171872766375,23,0),
 (171872767578,4,2),
 (171872767578,16,1),
 (171872767578,23,0),
 (171872771015,4,2),
 (171872771015,16,1),
 (171872771015,23,0),
 (171872772875,4,2),
 (171872772875,16,1),
 (171872772875,23,0),
 (171872832671,4,2),
 (171872832671,16,1),
 (171872832671,23,2),
 (171874254625,4,1),
 (171874254625,16,1),
 (171874254625,23,2),
 (171874288640,4,1),
 (171874288640,16,1),
 (171874288640,23,2),
 (171875079953,4,2),
 (171875079953,16,1),
 (171875079953,23,2),
 (171875651671,4,1),
 (171875651671,16,1),
 (171875651671,23,2),
 (171876031890,4,2),
 (171876031890,16,1),
 (171876031890,23,2),
 (171876069828,4,2),
 (171876069828,16,1),
 (171876069828,23,2),
 (171876267671,4,2),
 (171876267671,16,1),
 (171876267671,23,2),
 (171876622125,4,1),
 (171876622125,16,1),
 (171876622125,23,2),
 (171876658968,4,2),
 (171876658968,16,1),
 (171876658968,23,2),
 (171877190625,4,2),
 (171877190625,16,1),
 (171877190625,23,2),
 (171878701625,4,2),
 (171878701625,16,1),
 (171878701625,23,2),
 (171878911156,4,2),
 (171878911156,16,1),
 (171878911156,23,2),
 (171879190968,4,1),
 (171879190968,16,1),
 (171879190968,23,2),
 (171879604406,4,1),
 (171879604406,16,1),
 (171879604406,23,2),
 (171879817593,4,2),
 (171879817593,16,1),
 (171879817593,23,2),
 (171879850718,4,1),
 (171879850718,16,1),
 (171879850718,23,2),
 (171880576421,4,2),
 (171880576421,16,1),
 (171880576421,23,2),
 (171880887640,4,1),
 (171880887640,16,1),
 (171880887640,23,2),
 (171880910109,4,2),
 (171880910109,16,1),
 (171880910109,23,2),
 (171880927718,4,2),
 (171880927718,16,1),
 (171880927718,23,2),
 (171880941968,4,2),
 (171880941968,16,1),
 (171880941968,23,2),
 (171881902468,4,2),
 (171881902468,16,1),
 (171881902468,23,2),
 (171881921828,4,2),
 (171881921828,16,1),
 (171881921828,23,2),
 (171882197203,4,1),
 (171882197203,16,1),
 (171882197203,23,2),
 (171882314546,4,2),
 (171882314546,16,1),
 (171882314546,23,2),
 (171882677187,4,1),
 (171882677187,16,1),
 (171882677187,23,2),
 (171883183875,4,1),
 (171883183875,16,1),
 (171883183875,23,2),
 (171883512109,4,2),
 (171883512109,16,1),
 (171883512109,23,2),
 (171884205515,4,2),
 (171884205515,16,1),
 (171884205515,23,2),
 (171884514203,4,1),
 (171884514203,16,1),
 (171884514203,23,2),
 (171884528875,4,1),
 (171884528875,16,1),
 (171884528875,23,2),
 (171884554718,4,2),
 (17188INDX( 	 �
�            (   �  �       ~ �                  ?�    � n     >�    ���4p��>@0���>@0������4p�� `      �T              e c l i p s e _ u p d a t e _ 1 2 0 . j p g   ?�    p Z     >�    ���4p��>@0���>@0������4p�� `      �T              E C L I P S ~ 1 . J P G       @�    p Z     >�    ���4p���3����3������4p�� @      �<              e p l - v 1 0 . h t m l       @�    p Z     >�    ���4p���3����3������4p�� @      �<              E P L - V 1  1 . H T M       A�    x f     >�    ���4p���x5����x5������4p�� 0      n%              f e a t u r e . p r o p e r t i e s   B�    h X     >�    a��4p���98����98���a��4p��       v              f e a t u r e . x m l A�    p Z     >�    ���4p���x5����x5������4p�� 0      n%              F E A T U R ~ 1 . P R O       C�    p Z     >�    ���4p���;����;������4p�� 0      5#              l i c e n s e . h t m l       C�    p Z     >�    ���4p���;����;�� ���4p�� 0      5#              L I C E N S ~ 1 . H T M       D�    h R     >�    g� 5p��wA���g� 5p����V_6�                       M E T A - I N F                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       [ZoneTransfer]
ZoneId=3
ReferrerUrl=C:\Java\eclipse-jee-oxygen-2-win32-x86_64.zip
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           91734,16,1),
 (171943491734,23,2),
 (171943982062,4,1),
 (171943982062,16,1),
 (171943982062,23,2),
 (171944386421,4,1),
 (171944386421,16,1),
 (171944386421,23,2),
 (171944408359,4,1),
 (171944408359,16,1),
 (171944408359,23,2),
 (171944701265,4,1),
 (171944701265,16,1),
 (171944701265,23,0),
 (171944703203,4,1),
 (171944703203,16,1),
 (171944703203,23,0),
 (171944706031,4,1),
 (171944706031,16,1),
 (171944706031,23,0),
 (171944708203,4,1),
 (171944708203,16,1),
 (171944708203,23,0),
 (171944711953,4,1),
 (171944711953,16,1),
 (171944711953,23,0),
 (171944716062,4,1),
 (171944716062,16,1),
 (171944716062,23,0),
 (171944720781,4,1),
 (171944720781,16,1),
 (171944720781,23,0),
 (171944723281,4,1),
 (171944723281,16,1),
 (171944723281,23,0),
 (171944734468,4,1),
 (171944734468,16,1),
 (171944734468,23,0),
 (171944736328,4,1),
 (171944736328,16,1),
 (171944736328,23,0),
 (171944739781,4,1),
 (171944739781,16,1),
 (171944739781,23,0),
 (171944745828,4,1),
 (171944745828,16,1),
 (171944745828,23,0),
 (171944757312,4,1),
 (171944757312,16,1),
 (171944757312,23,0),
 (171944780937,4,1),
 (171944780937,16,1),
 (171944780937,23,0),
 (171944783484,4,1),
 (171944783484,16,1),
 (171944783484,23,0),
 (171944788500,4,1),
 (171944788500,16,1),
 (171944788500,23,0),
 (171945084281,4,1),
 (171945084281,16,1),
 (171945084281,23,0),
 (171945086578,4,1),
 (171945086578,16,1),
 (171945086578,23,0),
 (171945088093,4,1),
 (171945088093,16,1),
 (171945088093,23,0),
 (171945089031,4,1),
 (171945089031,16,1),
 (171945089031,23,0),
 (171945089953,4,1),
 (171945089953,16,1),
 (171945089953,23,0),
 (171945093093,4,1),
 (171945093093,16,1),
 (171945093093,23,0),
 (171945094031,4,1),
 (171945094031,16,1),
 (171945094031,23,0),
 (171945098750,4,1),
 (171945098750,16,1),
 (171945098750,23,0),
 (171945099671,4,1),
 (171945099671,16,1),
 (171945099671,23,0),
 (171945100953,4,1),
 (171945100953,16,1),
 (171945100953,23,0),
 (171945102843,4,1),
 (171945102843,16,1),
 (171945102843,23,0),
 (171945103750,4,1),
 (171945103750,16,1),
 (171945103750,23,0),
 (171945105265,4,1),
 (171945105265,16,1),
 (171945105265,23,0),
 (171945106453,4,1),
 (171945106453,16,1),
 (171945106453,23,0),
 (171945116625,4,1),
 (171945116625,16,1),
 (171945116625,23,0),
 (171946039734,4,1),
 (171946039734,16,1),
 (171946039734,23,2),
 (171946179156,4,1),
 (171946179156,16,1),
 (171946179156,23,0),
 (171946181937,4,1),
 (171946181937,16,1),
 (171946181937,23,0),
 (171946182515,4,1),
 (171946182515,16,1),
 (171946182515,23,0),
 (171946184375,4,1),
 (171946184375,16,1),
 (171946184375,23,0),
 (171946185937,4,1),
 (171946185937,16,1),
 (171946185937,23,0),
 (171946186500,4,1),
 (171946186500,16,1),
 (171946186500,23,0),
 (171946528609,4,2),
 (171946528609,16,1),
 (171946528609,23,0),
 (171946530421,4,2),
 (171946530421,16,1),
 (171946530421,23,0),
 (171946533234,4,2),
 (171946533234,16,1),
 (171946533234,23,0),
 (171946534578,4,2),
 (171946534578,16,1),
 (171946534578,23,0),
 (171946537062,4,2),
 (171946537062,16,1),
 (171946537062,23,0),
 (171946538921,4,2),
 (171946538921,16,1),
 (171946538921,23,0),
 (171946542375,4,2),
 (171946542375,16,1),
 (171946542375,23,0),
 (171946546171,4,2),
 (171946546171,16,1),
 (171946546171,23,0),
 (171946548671,4,2),
 (171946548671,16,1),
 (171946548671,23,0),
 (171946549890,4,2),
 (171946549890,16,1),
 (171946549890,23,0),
 (171946551125,4,2),
 (171946551125,16,1),
 (171946551125,23,0),
 (171946555234,4,2),
 (171946555234,16,1),
 (171946555234,23,0),
 (171946556796,4,2),
 (171946556796,16,1),
 (171946556796,23,0),
 (171946558656,4,2),
 (171946558656,16,1),
 (171946558656,23,0),
 (171946559890,4,2),
 (171946559890,16,1),
 (171946559890,23,0),
 (171946567125,4,2),
 (171946567125,16,1),
 (171946567125,23,0),
 (171946575968,4,2),
 (171946575968,16,1),
 (171946575968,23,0),
 (171946578890,4,2),
 (171946578890,16,1),
 (171946578890,23,0),
 (171946852390,4,1),
 (171946852390,16,1),
 (171946852390,23,2),
 (171947411203,4,1),
 (171947411203,16,1),
 (171947411203,23,0),
 (171947415640,4,1),
 (171947415640,16,1),
 (171947415640,23,0),
 (171947760000,4,1),
 (17194776Signature-Version: 1.0
SHA-256-Digest-Manifest-Main-Attributes: QZ4kU9li4MUUJNvB7ohlCS+hcnlRb
 vtwZmrpTt0zP6g=
SHA-256-Digest-Manifest: RbHsrhmc9jys5N8N4LU16eUqcucp7TbTH6o4DZRVEKY=
Created-By: 1.8.0_131 (Oracle Corporation)

Name: epl-v10.html
SHA-256-Digest: LwwHH6Ww/ppPhKyMXRScvLbxGP4nFRALCbHbbwSA0SA=

Name: feature.xml
SHA-256-Digest: 3UNUFn8zvgxM7CWvrm7oGyAAJRs4MsPbeEZ2a/Lf3dU=

Name: eclipse_update_120.jpg
SHA-256-Digest: D0fcUhJi81TIzNC+lAri7RDcArlCr58r7+VK17FdonE=

Name: feature.properties
SHA-256-Digest: /BLI42gIF9rZnlIloMNDvu1OsUpxke7GWAkwTtEAXV0=

Name: license.html
SHA-256-Digest: gb5ZzrbOyFArzDLUIG4huZV/GHHBYb0EtixuMKXnhqs=

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      71958565562,16,1),
 (171958565562,23,2),
 (171958590546,4,1),
 (171958590546,16,1),
 (171958590546,23,2),
 (171958940218,4,1),
 (171958940218,16,1),
 (171958940218,23,0),
 (171958942390,4,1),
 (171958942390,16,1),
 (171958942390,23,0),
 (171958946765,4,1),
 (171958946765,16,1),
 (171958946765,23,0),
 (171958951171,4,1),
 (171958951171,16,1),
 (171958951171,23,0),
 (171958957453,4,1),
 (171958957453,16,1),
 (171958957453,23,0),
 (171958958703,4,1),
 (171958958703,16,1),
 (171958958703,23,0),
 (171958959906,4,1),
 (171958959906,16,1),
 (171958959906,23,0),
 (171958976515,4,1),
 (171958976515,16,1),
 (171958976515,23,0),
 (171958977109,4,1),
 (171958977109,16,1),
 (171958977109,23,0),
 (171958978031,4,1),
 (171958978031,16,1),
 (171958978031,23,0),
 (171958984250,4,1),
 (171958984250,16,1),
 (171958984250,23,0),
 (171958985171,4,1),
 (171958985171,16,1),
 (171958985171,23,0),
 (171960550828,4,2),
 (171960550828,16,1),
 (171960550828,23,2),
 (171960987234,4,1),
 (171960987234,16,1),
 (171960987234,23,2),
 (171961255421,4,2),
 (171961255421,16,1),
 (171961255421,23,2),
 (171961579156,4,2),
 (171961579156,16,1),
 (171961579156,23,2),
 (171962112140,4,1),
 (171962112140,16,1),
 (171962112140,23,2),
 (171962125062,4,1),
 (171962125062,16,1),
 (171962125062,23,2),
 (171963479953,4,2),
 (171963479953,16,1),
 (171963479953,23,2),
 (171964535859,4,2),
 (171964535859,16,1),
 (171964535859,23,2),
 (171964549109,4,2),
 (171964549109,16,1),
 (171964549109,23,0),
 (171964550359,4,2),
 (171964550359,16,1),
 (171964550359,23,0),
 (171964551890,4,2),
 (171964551890,16,1),
 (171964551890,23,0),
 (171964552796,4,2),
 (171964552796,16,1),
 (171964552796,23,0),
 (171964553718,4,2),
 (171964553718,16,1),
 (171964553718,23,0),
 (171964554609,4,2),
 (171964554609,16,1),
 (171964554609,23,0),
 (171964555203,4,2),
 (171964555203,16,1),
 (171964555203,23,0),
 (171964555796,4,2),
 (171964555796,16,1),
 (171964555796,23,0),
 (171964556390,4,2),
 (171964556390,16,1),
 (171964556390,23,0),
 (171964557296,4,2),
 (171964557296,16,1),
 (171964557296,23,0),
 (171964558859,4,2),
 (171964558859,16,1),
 (171964558859,23,0),
 (171964559765,4,2),
 (171964559765,16,1),
 (171964559765,23,0),
 (171964562609,4,2),
 (171964562609,16,1),
 (171964562609,23,0),
 (171964563500,4,2),
 (171964563500,16,1),
 (171964563500,23,0),
 (171964564406,4,2),
 (171964564406,16,1),
 (171964564406,23,0),
 (171964564984,4,2),
 (171964564984,16,1),
 (171964564984,23,0),
 (171964567156,4,2),
 (171964567156,16,1),
 (171964567156,23,0),
 (171964567718,4,2),
 (171964567718,16,1),
 (171964567718,23,0),
 (171964568609,4,2),
 (171964568609,16,1),
 (171964568609,23,0),
 (171964569187,4,2),
 (171964569187,16,1),
 (171964569187,23,0),
 (171964572015,4,2),
 (171964572015,16,1),
 (171964572015,23,0),
 (171964572906,4,2),
 (171964572906,16,1),
 (171964572906,23,0),
 (171964573484,4,2),
 (171964573484,16,1),
 (171964573484,23,0),
 (171964574046,4,2),
 (171964574046,16,1),
 (171964574046,23,0),
 (171964574625,4,2),
 (171964574625,16,1),
 (171964574625,23,0),
 (171964575937,4,2),
 (171964575937,16,1),
 (171964575937,23,0),
 (171964576515,4,2),
 (171964576515,16,1),
 (171964576515,23,0),
 (171964577406,4,2),
 (171964577406,16,1),
 (171964577406,23,0),
 (171964578937,4,2),
 (171964578937,16,1),
 (171964578937,23,0),
 (171964580796,4,2),
 (171964580796,16,1),
 (171964580796,23,0),
 (171964581656,4,2),
 (171964581656,16,1),
 (171964581656,23,0),
 (171964582234,4,2),
 (171964582234,16,1),
 (171964582234,23,0),
 (171964583125,4,2),
 (171964583125,16,1),
 (171964583125,23,0),
 (171964585015,4,2),
 (171964585015,16,1),
 (171964585015,23,0),
 (171964588796,4,2),
 (171964588796,16,1),
 (171964588796,23,0),
 (171964589406,4,2),
 (171964589406,16,1),
 (171964589406,23,0),
 (171964593187,4,2),
 (171964593187,16,1),
 (171964593187,23,0),
 (171964594093,4,2),
 (171964594093,16,1),
 (171964594093,23,0),
 (171964594984,4,2),
 (171964594984,16,1),
 (171964594984,23,0),
 (171964598718,4,2),
 (171964598718,16,1),
 (171964598718,23,0),
 (171964599312,4,2),
 (171964599312,16,1),
 (171964599312,23,0),
 (171964600546,4,2),
 (171964600546,16,1),
 (171964600546,23,0),
 (171964601453,4,2),
 (171964601453,16,1),
 (171964601453,23,0),
 (171964602343,4,2),
 (171964602343,16,1),
 (171964602343,23,0),
 (171964603234,4,2),
 (171964603234,16,1),
 (171964603234,23,0),
 (171964603812,4,2),
 (171964603812,16,1),
 (171964603812,23,0),
 (171964604734,4,2),
 (171964604734,16,1),
 (171964604734,23,0),
 (171964605343,4,2),
 (171964605343,16,1),
 (171964605343,23,0),
 (171964605921,4,2),
 (171964605921,16,1),
 (171964605921,23,0),
 (171964606484,4,2),
 (171964606484,16,1),
 (171964606484,23,0),
 (171964608984,4,2),
 (171964608984,16,1),
 (171964608984,23,0),
 (171964610515,4,2),
 (171964610515,16,1),
 (171964610515,23,0),
 (171964611078,4,2),
 (171964611078,16,1),
 (171964611078,23,0),
 (171964614203,4,2),
 (171964614203,16,1),
 (171964614203,23,0),
 (171964616062,4,2),
 (171964616062,16,1),
 (171964616062,23,0),
 (171964618875,4,2),
 (171964618875,16,1),
 (171964618875,23,0),
 (171964619421,4,2),
 (171964619421,16,1),
 (171964619421,23,0),
 (171964620296,4,2),
 (171964620296,16,1),
 (171964620296,23,0),
 (171964621171,4,2),
 (171964621171,16,1),
 (171964621171,23,0),
 (171964621734,4,2),
 (171964621734,16,1),
 (171964621734,23,0),
 (171964622609,4,2),
 (171964622609,16,1),
 (171964622609,23,0),
 (171964623343,4,2),
 (171964623343,16,1),
 (171964623343,23,0),
 (171964624203,4,2),
 (171964624203,16,1),
 (171964624203,23,0),
 (171964625390,4,2),
 (171964625390,16,1),
 (171964625390,23,0),
 (171965556218,4,2),
 (171965556218,16,1),
 (171965556218,23,2),
 (171965936687,4,2),
 (171965936687,16,1),
 (171965936687,23,2),
 (171967339203,4,2),
 (171967339203,16,1),
 (171967339203,23,2),
 (171967603343,4,2),
 (171967603343,16,1),
 (171967603343,23,2),
 (171968060312,4,1),
 (171968060312,16,1),
 (171968060312,23,2),
 (171968124843,4,1),
 (171968124843,16,1),
 (171968124843,23,2),
 (171970352359,4,2),
 (171970352359,16,1),
 (171970352359,23,2),
 (171972271031,4,2),
 (171972271031,16,1),
 (171972271031,23,2),
 (171974296656,4,2),
 (171974296656,16,1),
 (171974296656,23,2),
 (171974989000,4,1),
 (171974989000,16,1),
 (171974989000,23,2),
 (171975260359,4,2),
 (171975260359,16,1),
 (171975260359,23,2),
 (171975282203,4,1),
 (171975282203,16,1),
 (171975282203,23,2),
 (171975689656,4,2),
 (171975689656,16,1),
 (171975689656,23,2),
 (171976079359,4,2),
 (171976079359,16,1),
 (171976079359,23,2),
 (171976094953,4,2),
 (171976094953,16,1),
 (171976094953,23,2),
 (171976158328,4,1),
 (171976158328,16,1),
 (171976158328,23,2),
 (171977714078,4,1),
 (171977714078,16,1),
 (171977714078,23,2),
 (171978572781,4,1),
 (171978572781,16,1),
 (171978572781,23,2),
 (171978801593,4,1),
 (171978801593,16,1),
 (171978801593,23,2),
 (171979175109,4,2),
 (171979175109,16,1),
 (171979175109,23,2),
 (171979536812,4,1),
 (171979536812,16,1),
 (171979536812,23,2),
 (171979591312,4,1),
 (171979591312,16,1),
 (171979591312,23,2),
 (171979608781,4,1),
 (171979608781,16,1),
 (171979608781,23,2),
 (171980407984,4,2),
 (171980407984,16,1),
 (171980407984,23,2),
 (171980437312,4,2),
 (171980437312,16,1),
 (171980437312,23,2),
 (171980782515,4,1),
 (171980782515,16,1),
 (171980782515,23,2),
 (171980810546,4,2),
 (171980810546,16,1),
 (171980810546,23,2),
 (171980926796,4,1),
 (171980926796,16,1),
 (171980926796,23,2),
 (171981390250,4,2),
 (171981390250,16,1),
 (171981390250,23,2),
 (171981528390,4,1),
 (171981528390,16,1),
 (171981528390,23,2),
 (171982150375,4,2),
 (171982150375,16,1),
 (171982150375,23,2),
 (171982644406,4,2),
 (171982644406,16,1),
 (171982644406,23,2),
 (171982716703,4,1),
 (171982716703,16,1),
 (171982716703,23,2),
 (171982789968,4,1),
 (171982789968,16,1),
 (171982789968,23,2),
 (171983438125,4,1),
 (171983438125,16,1),
 (171983438125,23,2),
 (171983861593,4,2),
 (171983861593,16,1),
 (171983861593,23,2),
 (171984097781,4,2),
 (171984097781,16,1),
 (171984097781,23,2),
 (171984614718,4,2),
 (171984614718,16,1),
 (171984614718,23,2),
 (171984741500,4,1),
 (171984741500,16,1),
 (171984741500,23,2),
 (171984819406,4,2),
 (171984819406,16,1),
 (171984819406,23,2),
 (171984906812,4,1),
 (171984906812,16,1),
 (171984906812,23,2),
 (171984940015,4,2),
 (171984940015,16,1),
 (171984940015,23,2),
 (171984972078,4,1),
 (171984972078,16,1),
 (171984972078,23,2),
 (171985013546,4,2),
 (171985013546,16,1),
 (171985013546,23,2),
 (171985133500,4,2),
 (171985133500,16,1),
 (171985133500,23,2),
 (171985179406,4,1),
 (171985179406,16,1),
 (171985179406,23,2),
 (171985211796,4,2),
 (171985211796,16,1),
 (171985211796,23,2),
 (171985644921,4,1),
 (171985644921,16,1),
 (171985644921,23,2),
 (171985822156,4,2),
 (171985822156,16,1),
 (171985822156,23,2),
 (171985932203,4,2),
 (171985932203,16,1),
 (171985932203,23,2),
 (171986354390,4,2),
 (171986354390,16,1),
 (171986354390,23,2),
 (172000134953,4,2),
 (172000134953,16,1),
 (172000134953,23,2),
 (172000251187,4,1),
 (172000251187,16,1),
 (172000251187,23,2),
 (172000663953,4,2),
 (172000663953,16,1),
 (172000663953,23,2),
 (172000731406,4,2),
 (172000731406,16,1),
 (172000731406,23,2),
 (172000783921,4,2),
 (172000783921,16,1),
 (172000783921,23,2),
 (172001015109,4,1),
 (172001015109,16,1),
 (172001015109,23,2),
 (172001362468,4,2),
 (172001362468,16,1),
 (172001362468,23,2),
 (172001472953,4,1),
 (172001472953,16,1),
 (172001472953,23,2),
 (172001494453,4,1),
 (172001494453,16,1),
 (172001494453,23,2),
 (172001886875,4,1),
 (172001886875,16,1),
 (172001886875,23,2),
 (172001903406,4,1),
 (172001903406,16,1),
 (172001903406,23,2),
 (172002227656,4,2),
 (172002227656,16,1),
 (172002227656,23,2),
 (172002931593,4,1),
 (172002931593,16,1),
 (172002931593,23,2),
 (172003057453,4,2),
 (172003057453,16,1),
 (172003057453,23,2),
 (172003071296,4,2),
 (172003071296,16,1),
 (172003071296,23,2),
 (172003244093,4,1),
 (172003244093,16,1),
 (172003244093,23,2),
 (172003423187,4,1),
 (172003423187,16,1),
 (172003423187,23,2),
 (172003650234,4,1),
 (172003650234,16,1),
 (172003650234,23,2),
 (172003659812,4,1),
 (172003659812,16,1),
 (172003659812,23,2),
 (172003672281,4,1),
 (172003672281,16,1),
 (172003672281,23,2),
 (172003755968,4,2),
 (172003755968,16,1),
 (172003755968,23,2),
 (172004363984,4,2),
 (172004363984,16,1),
 (172004363984,23,2),
 (172004442296,4,2),
 (172004442296,16,1),
 (172004442296,23,2),
 (172004578390,4,2),
 (172004578390,16,1),
 (172004578390,23,0),
 (172004581203,4,2),
 (172004581203,16,1),
 (172004581203,23,0),
 (172004583375,4,2),
 (172004583375,16,1),
 (172004583375,23,0),
 (172004590312,4,2),
 (172004590312,16,1),
 (172004590312,23,0),
 (172004595031,4,2),
 (172004595031,16,1),
 (172004595031,23,0),
 (172004601671,4,2),
 (172004601671,16,1),
 (172004601671,23,0),
 (172004607046,4,2),
 (172004607046,16,1),
 (172004607046,23,0),
 (172004609859,4,2),
 (172004609859,16,1),
 (172004609859,23,0),
 (172004613343,4,2),
 (172004613343,16,1),
 (172004613343,23,0),
 (172004622656,4,2),
 (172004622656,16,1),
 (172004622656,23,0),
 (172005233375,4,2),
 (172005233375,16,1),
 (172005233375,23,2),
 (172005358140,4,2),
 (172005358140,16,1),
 (172005358140,23,2),
 (172005480937,4,2),
 (172005480937,16,1),
 (172005480937,23,2),
 (172005569312,4,2),
 (172005569312,16,1),
 (172005569312,23,2),
 (172005612062,4,1),
 (172005612062,16,1),
 (172005612062,23,2),
 (172005627953,4,1),
 (172005627953,16,1),
 (172005627953,23,2),
 (172007156937,4,2),
 (172007156937,16,1),
 (172007156937,23,2),
 (172007708406,4,1),
 (172007708406,16,1),
 (172007708406,23,2),
 (172008876531,4,1),
 (172008876531,16,1),
 (172008876531,23,2),
 (172009326609,4,2),
 (172009326609,16,1),
 (172009326609,23,2),
 (172011110968,4,1),
 (172011110968,16,1),
 (172011110968,23,0),
 (172011113812,4,1),
 (172011113812,16,1),
 (172011113812,23,0),
 (172011115046,4,1),
 (172011115046,16,1),
 (172011115046,23,0),
 (172011116609,4,1),
 (172011116609,16,1),
 (172011116609,23,0),
 (172011118468,4,1),
 (172011118468,16,1),
 (172011118468,23,0),
 (172011119359,4,1),
 (172011119359,16,1),
 (172011119359,23,0),
 (172011119937,4,1),
 (172011119937,16,1),
 (172011119937,23,0),
 (172011124781,4,1),
 (172011124781,16,1),
 (172011124781,23,0),
 (172011126328,4,1),
 (172011126328,16,1),
 (172011126328,23,0),
 (172011127531,4,1),
 (1720MZ�       ��  �       @                                   �   � �	�!�L�!This program cannot be run in DOS mode.
$       __HQ>&>&>&2F>&2)>&2y>&�){>&2{>&<�]>&>'r>&�)F>&�)z>&�)|>&Rich>&        PE  L ��hM        � !
 @   `      I      P    �                     �                               `|  T   p  �    �  \                   �  �  �Q                             o  @            P  �                          .text   -<      @                    `.rdata  �,   P   0   P              @  @.data   �   �      �              @  �.rsrc   \   �      �              @  @.reloc  	   �      �              @  B                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                V����P���F    ^�������������V��F��u�P�XQ����F   ^�̍A������������̋�V3�W�r���   �Bȃ��   �_�D   �BT�BP�BL�B\�BX��^��������S��U�l$VW�Cȃ��   �{�   ���=�Q�3��sT�sP�sL�E;�t	P�׃��C�m;�t	U�׃��C_^]��[� ���V��FL��Wt��FL�8 u
�HP�Q���FP��t��VP�: u�HP�Q���FT��t��VT�: u�HP�Q���V�=�Q�R�׋FP�׃�_^���������������̋D$��t� ËD$P��Q����������S�\$S��P�����u[�VW����R��
   3��u�D$�H@�@L�:����R��   3��u�D$�HD�@P�����R��
   3��u%�D$�HH�@T��t	�_A^�[�Q��Q���_^[Ë���R��
   3��u_^[�D$�����D$�H�L$�%�Q�����R��   3��u_^[�D$�����D$�H�L$�%�Q��T$SR��P���_^[��������QW�|$�D$PW��Q�����u���_YËL$�T$V�t$����t���8 u
�HP�Q���W;�Q�u
�>�^3�_Y��    ^3�_Y���������S�\$��u��P��h�R�Q��P������[�U�l$U��P�����u]���[�VW����R��
   3��u�D$�H@SQ��LP�-�����_^][Ë���R��   3��u�D$�HDSQ��PP������_^][Ë���R��
   3��u�D$�HHSQ��TP�������_^][Ë��S��
   3��u5Rj�D$$PS��Q�����tG�t$�NQ��Q��T$ ��_�V^]3�[Ë��S��   3��u=Pj�L$$QS��Q�����u_^]���[Ët$�VR��Q��D$ ��_�F^]3�[ËL$SUQ��P���_^][��̋D$���D$t;�P�u�D$�     �   Áxȃ�t��P��hS�R��P���3�ËL$����   �����������d�    j�h�K�Pd�%    V�t$��u��P�� ��P��L$d�    ^���j`�3  ���D$���D$    t6V���d�������u��P��hDS�Q��P����L$��d�    ^���3����̋D$hTS�P� Q�����u�Sj`�2  ��3ۃ�3�;�t4VW�r���   �Bȃ��   �_�D   �ZT�ZP�ZL�Z\�ZX��^[�������������̡�����,��u�Q��h�S�h�S�Q�Q�����,ÍT$R�D$P�L$Q�T$(R�����D$P�D$H�L$QRP� Q��� ��t�$�L$$QR��Q�����u3���,ËL$V�5�Q��D$PQ�փ���u3�^��,ËD$�T$RP�փ���t�T$j�L$(QR��Q�����t��Q��L$�T$�D$,P�D$ Q�L$(R�T$0P�D$8QRP�������t'��t#�L$,QP��Q���PhTT��Q���^��,�j h@T���Q���^��,�����̃�$V���P�W3�;��|$$�|$u�D$4�L$0�8�9_�   ^��$�V�PQ�����u��P��hXT�P��P���_3�^��$�SUV�TQ��Q�W��h�T�V�l$8��j h�T�V�D$4�ӋL$4���ɉD$��  ����  3ۅ���   ��L$�-�P�SQ�ՋT$$SR���Ճ��ۋ��  �F�\Q�;�taQP�`Q�����uR�N�dQ�;�tPQ�`Q������;  �dQ��N�D$   �t�M;�tPQ�`Q������0  �E�@�D$    V�hQ��\Q��t�E��;�tQP�`Q������  U�hQ����|�D$(C;������l$3҅���BG��R��P��������t$0��   ��P��hV�Q��P����]  �D$��t,�N�dQ�;�tPQ�`Q�����tm�dQ��V�t�����F�\Q�;��/���QP�`Q�����������P��hDU�P��P�����  ��P��h�T�R��P�����  hU��!��P��h�U�R��P�����  h�U���P��Q��P����  �D$(������D$    �J  �I �T$�D$�=�P�RP�׋L$�T$$QR���׋��D$ ������   j j �D$(PV��Q������$  �L$ QU��P��T$(R��P��tE �D$,P��Q���j j �L$,Qf�= W����Q�������   �T$$RV��P��D$,P��P��L$0Q�,F��Q���f�E   ���cV��P������+���I ��A��u��P�I �@��u�+���=WC��P������+��A��u��P�I �@��u�+�؈C�D$�L$(@;��D$������t$0�D$��tf�E   �� �T$<��D$8�0�D$,   ��t$0��t�D$,��u
V��P����D$�u
�HP�Q���D$��][t�u
�PP�R���D$$_^��$��̃�S�\$��U�l$$u"��u��P��h(V�Q��P���]3�[��ÍT$ R�D$P�D$@�:�������tދD$ ��t�L$4   VW�@Q��T$H�|$�L$Q�L$@R�T$@���D$LP�D$@WQ�L$DRPQUS�\P�V���DQ�W��P�����uShlV���Q���_^][���j�HQ��T$�=�Q�R���׉F�D$ P�׋=LQ��F�L$(Q�׉F�T$0R�׃�_�F��^][��Ã�S�\$ ��U�l$(u"��u��P��h�V�Q��P���]3�[��ÍT$$R�D$P�D$D�*�������tދD$$��t�L$8   VW�@Q��T$L�|$�L$Q�L$DR�T$D���D$PP�D$DWQ�L$HR�T$@PQUSR� P�V���DQ�W��P�����uSh�V���Q���_^][���j�HQ��=�Q����D$P�׉F�L$ Q�׋=LQ��F�T$(R�׉F�D$0P�׃�_�F��^][�������������̋D$h�V�P� Q�����u��XP�P��Q����������̡t������u�Q��h�V�hW�Q�Q�����ËD$�$Rh,W�P� Q�����t�$�L$QR��Q�����u3���ËL$�D$PQ�t����uPhHW���Q�����ËT$R�<Q����������̡x������u�Q��h`W�hxW�Q�Q�����ËL$�T$R�D$Ph�W�Q� Q�����t�$�T$RP��Q�����u3���ËL$�T$QR�x����uPh�W���Q�����á�P�� ��P����̡|������u�Q��h�W�h�W�Q�Q�����ËD$�$RhX�P� Q�����t�$�L$QR��Q�����u3���ËL$�D$PQ�|����uPh0X���Q�����ËT$R�<Q����������̡�������u�Q��hHX�h`X�Q�Q�����ËL$�T$R�D$Ph�X�Q� Q�����t�$�T$RP��Q�����u3���ËL$�T$QR������uPh�X���Q�����á�P�� ��P����̡�������u�Q��h�X�h�X�Q�Q�����ËD$�$Rh�X�P� Q�����t�$�L$QR��Q�����u3���ËL$�D$PQ�|����uPhY���Q�����ËT$R�<Q����������̡�����(��u�Q��h0Y�h@Y�Q�Q�����(ËD$0�$RhhY�P� Q�����t�$�L$QR��Q�����u3���(ÍD$ P�L$Q�L$�T$R�D$PQ������uPh|Y���Q�����(ËL$$�D$ S�8Q�V�t$ W�|$(QP�Ӄ�Ph�Y�WV�Ӌ5|Q���P�T$(h�Y�R�փ�P�D$(h�Y�P�փ�Ph�Y�h�Y��Q���$_^[��(����������̡L������u�Q��h�Y�h�Y�Q�Q�����ËD$�$RhZ�P� Q�����t�$�L$QR��Q�����u3���ËD$P�L����uPh Z���Q������P�4Q�������������������̡�����u�Q��h0Z�hHZ�Q�Q���ËT$�L$RQ�Ѓ��u�D$    �D$pZ��%�Q�P�LQ������������̋L$���$Ph�Z�Q� Q�����t�$�T$RP��Q�����u3���ËD$�L$Q�T$RP�TP���uPh�Z���Q�����ËL$V�58Q�j Q�֋T$��Pj R�փ�Ph�Z��Q���^���������U����=��� uh�Z�h�Z��Q��Q�Q����x�U�R�E�P����Q�UR� Q�����u3��T�E�P�M�Q��Q�����u3��;�U�R�E�P������uj h[���Q������P������P����P���]��������̋������D$P�D$�L$QRP� Q�����t�$�L$QR��Q�����u3���ËD$�L$PQ�PP���j uhP[���Q������P�8Q�������������̡@����U3�;�u �Q��hh[�hx[�Q�Q���]��ËT$Vh�[�R�d   �l$�l$� Q�����u^]���S��P�W��tU���P����<�    W�Ӌ����tI�D$PWU�@����tY�|$��;�t�W�HQ������D$uS��P��h�[�Q��P����   ��P��h�[�R��P���_[^3�]����LP�Ph�[���Q����S3�����vK���Rh\��Q�����tP�D$VP�0Q�����F;�r���D$�u
�HP�Q���D$    U��P��D$��_[^]���̡D����W3�;�u �Q��h \�h4\�Q�Q���_��ËD$ S�T$Rh\\�P3ۉ|$�|$�|$� Q�����u[3�_��ËT$�L$QR��Q�����t�U�-�P�V��  ;�tS��P��t$��V�Ջ؃�;�tU�L$�D$PVSQ�D����t`�D$;�w�����U�l$$�HQ���;ǉD$uT��P��h�\�R��P����   ��P��ht\�P��P���^][3�_����LP�Ph�\���Q����M;��vG�l$�����P��Q�����t�E �D$ ��G��;�r���D$�u
�HP�Q���D$    S��P��D$��^][_��������������̡H����V3�;�u �Q��h�\�h]�Q�Q���^��ËL$ W�T$R�D$Ph,]�Q�   �t$(� Q�����u_^��ËD$S��Q��T$RP�Ӄ���u	[_3�^��ËT$�L$QR�Ӄ���t��P�U�-�P���tV�Ճ���?P�Ӌ�����t7�L$�T$WVQR�H����tA;�t�PV�xQ���V���Ճ�][��_^��á�P��hD]�Q��P���][_3�^����LP�Ph|]���Q��|$(��V�Ճ�][��_^����̡P����0��u�Q��h�]�h�]�Q�Q�����0ËD$8�$Rh�]�P�D$(   � Q�����tA�$�L$QR��Q�����t+�L$j(�D$PQ�P����u�LP�Ph�]���Q���3���0ËT$,V�58Q�j R�փ�P�D$0h ^�j P�֋L$8��Ph^�j Q�֋T$<��Ph$^�j R�փ�P�D$<h<^�j P�֋L$D��PhX^�j Q�֋T$H��Phl^�j R�փ�P�D$Hh�^�j P�֋L$P��Ph�^�Qh�^�h�^��Q���L^��0�������̡T����(��u�Q��h�^�h�^�Q�Q�����(ËD$0�$Rh_�P� Q�����tN�$�L$QR��Q�����t8�D$P�L$Q�L$�T$ R�D$,PQ�T����u�LP�Ph,_���Q���3���(ËT$�D$S�8Q�V�t$W�|$RP�Ӄ�Ph<_�WV�Ӌ5|Q���P�L$0hH_�Q�փ�P�T$@hT_�R�փ�Ph`_�hp_��Q���$_^[��(��������̡X����8��u�Q��h�_�h�_�Q�Q�����8ËD$@�$Rh�_�P� Q�����t?�$�L$QR��Q�����t)�L$�D$PQ�X����u�LP�Ph�_���Q���3���8ÍT$R��Q�����8���̡l����u�Q��h�_�h`�Q�Q���ËT$h4`�R� Q�����u��l��P��Q�����̡d������u�Q��hP`�hl`�Q�Q�����ËD$�T$Rh�`�P�D$    �D$    � Q�����tD�T$�L$QR��Q�����t-�T$�$P�L$QR�d����u�LP�Ph�`���Q���3���Ë$V�58Q�j P�֋L$��Pj Q�փ�Ph�`��Q���^��������������̡h������u�Q��h�`�h�`�Q�Q�����Í$R�����D$P�D$ �L$QRP�D$    �D$    � Q�����t�T$�L$QR��Q�����u3���Ë$�L$�T$PQR�h����uPh4a���Q�����á�P�� ��P���������̋\��3���;�u�Q��hPa�hpa�Q�Q�����ËT$h�a�R�D$�D$� Q�����t(�$P�L$Q�\����u�LP�Ph�a���Q���3���Ë$�D$RPh�a��Q���������������̋`��3���;�u�Q��h�a�h�a�Q�Q�����ËL$�$R�D$�D$�D$Ph$b�Q� Q�����t(�$�D$RP�`����u�LP�PhDb���Q���3���á�P�� ��P���������������̡p������u�Q��hdb�htb�Q�Q�����ËL$�T$R�D$Ph�b�Q� Q�����t�$�T$RP��Q�����u3���ËL$�T$VQR�p������u�LP���tVh�b���Q���^���V�4Q���^������̡�������uj �<Q�����ËT$��P��$Qh�b�R�D$� Q�����tO�$;�P�u1�XP��D$�D$�T$RP������u,Ph�b���Q�����ÍL$QP��Q�����u�3���ËL$Q�<Q���������������̃�8S�D$(P�L$(Q�T$(R�D$8P�L$@Q�T$0R�D$0P�D$`3ۍL$0Q�T$0Rh�b�P�\$<�\$@�\$D�\$H�\$L�\$P�\$T�\$0�\$4�\$8� Q���,��u[��8ËT$V�5�Q�Sj�L$QR�փ���u^3�[��8ËL$Sj�D$PQ�փ���t�D$W�=�Q�j�T$DRP�׃���u	_^3�[��8ËT$$j�L$@QR�׃���t�L$,�|$(Sj�D$PQ�փ���tȋD$0�xȃ�t ��P��hS�P��P���_^3�[��8ËL$�T$4��P�D$<Q�L$DWR�T$PP�D$$Q�L$$RPQ�`�������$;��a����T$�=�Q�R�׋D$P�׋L$Q�׃�_��^[��8������������̃�@S�D$,P�L$,Q�T$,R�D$<P�L$DQ�T$4R�D$4P3ۍL$4Q�L$l�T$4R�D$4Ph�b�Q�\$@�\$D�\$H�\$L�\$P�\$T�\$X�\$\�\$4�\$8�\$<� Q���0��t�D$�T$@RP��Q�����u3�[��@ËT$V�5�Q�Sj�L$QR�փ���u^3�[��@ËL$Sj�D$PQ�փ���t�D$ W�=�Q�j�T$HRP�׃���u	_^3�[��@ËT$(j�L$DQR�׃���t�L$0�|$,Sj�D$PQ�փ���tȋD$4�xȃ�t ��P��hS�P��P���_^3�[��@ËL$�T$8��P�D$@Q�L$HWR�T$TP�D$$Q�L$$R�T$dPQR��������(;��\����D$�=�Q�P�׋L$Q�׋T$R�׃�_��^[��@������Q�L$�$Phc�Q� Q�����uYË$R�HP�Ph0c��Q���Y�������̋D$h4c�P� Q�����u��DP��D$�D$Lc��%Q��D$��DhPc�P� Q�����u��D�SV�L$Q�@P���P���T$C��5�P�R�����������t��P�;�u ���P��8 u
�HP�Q�����^[��DËF�$Q�;�U�-(Q�t5QP�`Q�����u&WP���,Q���WV�Ճ���t�u
�WW�R��_SV�Ճ���]t�u
�CS�P����^[��D��������������̃��L$�$Ph`c�Q�D$    � Q�����t�$�T$RP��Q�����u3���ËL$Q�<P�Phtc��Q�����Ã��L$�$Phxc�Q�D$    � Q�����t�$�T$RP��Q�����u3����VW�@Q��T$�L$QR���8P�V���DQ�����uWh�c���Q���_^��Ë5�P�S��D$P�LQ��ء�P���;�u!���P��8 u
�HP�Q����[_��^��ËF�$Q�;�U�-(Q�t3QP�`Q�����u$P���,Q���WV�Ճ���t�u
�WW�R��SV�Ճ���]t�u
�CS�P��[_��^����̃��L$�$Ph�c�Q�D$    � Q�����t�$�T$RP��Q�����u3����VW�@Q��T$�L$QR���4P�V���DQ�����uWh�c���Q���_^��Ë5�P�S��D$P�LQ��ء�P���;�u!���P��8 u
�HP�Q����[_��^��ËF�$Q�;�U�-(Q�t3QP�`Q�����u$P���,Q���WV�Ճ���t�u
�WW�R��SV�Ճ���]t�u
�CS�P��[_��^����̃��L$�$Ph�c�Q�D$    � Q�����t�$�T$RP��Q�����u3���ËT$SV�L$QR��P�Ph�c��Q����D$P�LQ�������t��P�;�u ���P��8 u
�HP�Q�����^[��ËF�$Q�;�U�-(Q�t5QP�`Q�����u&WP���,Q���WV�Ճ���t�u
�WW�R��_SV�Ճ���]t�u
�CS�P����^[��������̃��T$�D$P�L$Qh�c�R�D$    � Q�����t�$�D$PQ��Q�����u3����VW�@Q��T$���D$RP�0P�V���DQ�����_^uj hd���Q�����á�P�� ���������������̃��L$�$Phd�Q�D$    � Q�����t�$�T$RP��Q�����u3���ËL$Q�,P�Ph,d��Q�����Ã��T$�D$P�L$Qh0d�R�D$    � Q�����t�$�D$PQ��Q�����u3����VW�@Q��T$���D$RP�(P�V���DQ�����_^uj hDd���Q�����á�P�� ���������������̃��$P�D$�L$Q�T$RhXd�P� Q�����u���VW�@Q��L$�T$Q���D$RP��P�V���DQ�����_^uj hpd���Q�����á�P�� ������̃��T$�D$P�L$Qh�d�R�D$    � Q�����u3���Ë$�D$PQ��Q�����t�T$�D$RP�����������̃��L$�$Ph�d�Q�D$    � Q�����t�$�T$RP��Q�����u3����VW�@Q��L$Q���$P�W���DQ������uj h�d���Q���_^���V�LQ���_^����̃��L$�$Ph�d�Q�D$    � Q�����t�$�T$RP��Q�����u3����VW�@Q��L$Q��� P�W���DQ������uj h�d���Q���_^���V�LQ���_^����̃��T$�D$P�L$Qh�d�R�D$    � Q�����t�$�D$PQ��Q�����u3����VW�@Q��T$���D$RP�P�V���DQ�����_^uj h�d���Q�����á�P�� ����������������Q�L$�$Phe�Q� Q�����uYË$R�P��������̡�P�SUVWh�  j j h耿h�h��0���Q�P�Q��LQ�j ���Ӌ= Q�Ph�h�V���pQ��tQ��Rh�h�V�׃�4h�h��P����uh�h��P����tDh�h�U�P�hi�U�@���P�hi�U�D���P�h4i�U�H���P��P��hLi��P����uh\i��P�����!  hli�U�P�h|i�U�T���P�h�i�U�X���P�h�i�U�\���P�h�i�U�`���P�h�i�U�d���P�hj�U�h���P�h$j�U�t���P�h<j�U�x���P�hTj�U�|���P�hlj�U�����P�h�j�U�����P�h�j�U�����P�h�j�U�����P�h�j�U�����P�h�j�U�����P�h�j�U�L���P�����h�j��P����uhk��P����t"hk�U�P�h(k�U�l���P��p��j��Ph8k�V������j ��PhLk�V������j��Ph`k�V������j���Ph�k�V�<���׃�@j��Ph�k�V�(����j���Ph�k�V�Ą���j���Ph�k�V�䄿��j ��Ph�k�V�섿�׃�@j��Ph l�V�Ԅ���h   ��Ph l�V�8����h   ��Ph@l�V������h   ��Ph\l�V�脿�׃�@j��Phxl�V�����h   ��Ph�l�V�����h   ��Ph�l�V�����h   ��Ph�l�V�����׃�@h   ��Ph�l�V������h   ��Ph�l�V������h   ��Phm�V�̄���h   ��Ph4m�V�؄��׃�@j��PhHm�V� ����j��PhXm�V�$����j�ӣ܄�Phpm�V��h �  ��Ph�m�V����׃�@h @  ��Ph�m�V����h�   ��Ph�m�V�Є���j@��Ph�m�V������j ��Ph�m�V����׃�@h   ��Ph�m�V� ����j@��Phn�V������h�   ��Ph,n�V�����j ��PhDn�V�����׃�@j��Ph\n�V������j�ӣ4��Phtn�V��j��Ph�n�V�,����j��Ph�n�V�����׃�@j��Ph�n�V�����h   ��Ph�n�V�Ȅ��׃� _^][��������������V�t$��t������V��  ��^������j�h�K�d�    Pd�%    ��UVW��P���l$�D$    �t$$�F�j PQ�D$(    ��P�������J���8 u
�PP�R���F��F�8 u
�HP�Q��V�J  ����u<��P���@hdS�R��P���P�U�XQ���_^���]�L$d�    ��� �G��P�3�;�tQP�`Q�����tW��P������u
�GW�P��U�XQ��L$��_��^]d�    ��� ̃��D$P�L$Q�T$R�T$0�D$P�L$Qh�S�R� Q�����te�D$P��P�����u��P��h�S�R��P���3���Ë$�@��P�;�t,QP�`Q�����u��P��h�S�R��P���3���ËL$j�D$PQ��Q�����t�V�Q�j��  ����t�T$�L$���H����3��D$�L$�T$R�T$PVhPC�QR�|P������t'��t#�L$QP��Q���Ph�S��Q���^��Å�t	j���   ��P��P��P���^�������������V�������D$t	V�9  ����^� �̋��L$���L$�H�� ����������V�����8 u
�HP�Q���F��V�: u��FV�P��^��������������V�����8 u
�HP�Q���F��V�: u�HP�Q���D$t	V�  ����^� ���������V����P���F    ��^�����������V��F��u�P�XQ����F   ^���% P��%�P��%�P��%�P��%XQ��%�P��%�P��%�P��%�P��% Q��%Q��%Q��%Q��%hQ��%`Q��%�P��%Q��%TQ��%PQ��%LQ��%HQ��%DQ��%@Q��%<Q��%8Q��%4Q��%0Q��%,Q��%(Q��% Q��%Q��%Q��%�P��%�P��%�P��%�P��%�P��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%�Q��%|Q��%xQ��%�Q��%pQ��%�P��%�P��%�P��%�P��%�P��%�P��%�P��%�P��%|P��D$��u9���~.�������tP��	����uOh�   ��P���Y����u3��y�  ���������  hxJ��p  �$��h ���3  ����Y�?��u<������t3������	��t�ѡ����-���9���s�P��P��%��� Y3�@� jh�n���  3�@�E�3��}��u;�u9=�����   ;�t��u1����;�t�uV�u�ЉE�9}���   �uV�u������E�;�tr�]SV�u�?  �E��u;�u
SW�u����;�t��u)SV�u������u�}�9}�t����;�t
SV�u�ЉE�M���E���E��	PQ��   YYËe�M��3��,  � �%xP��=����u�%dP�h���h����t$�  ����t$����������YH�jh�n��   �E��o��}��o�s"�e� �E� ��t���3�@Ëe�M���E����   �jh o��`   �E��o��}��o�s"�e� �E� ��t���3�@Ëe�M���E����d   ��%pP��|$u�=��� u
�t$�P�3�@� ��h0K�d�    P�D$�l$�l$+�SVW�E��e�P�E��E������E��E�d�    ËM�d�    Y_^[�Q��%lP��%hP��%\P��%XP��%TP��%PP��%LP��%HP��%DP��%@P��%<P��%8P��%4P��%0P��%,P��%(P��%$P��% P��%P��%P��%P��%P��%P��%P��EP�U���Yø�o��U����M��������o��C�����������̡�P�3ɉh���l���p���t���x���|�������̃������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   \r      4|   |  |  �{  �{  �{  �{  �{  �{  �{  �{  j{  V{  B{  0{  {  {  �z  �z  �z  �z  �z      �z  �z  rz  `z  Pz  Dz  &z  z  z  
z   z  �y  �y  �y  �y  �y      �r  �r      �u  �u  �u  v  $v  8v  �u  �u  �r  >t  �u  �r  s  s  0s  Bs  Zs  ls  ~s  �s  �s  Pt  �s  �s  �s  �u  vu  ^u  Pu  @u  2u   u  u  �t  �t  �t  �t  �t  �t  xt  ft  �r  .t  t  t  �s      �y  dy  �x  �x  �x  \x  ,x  �w  �w  |w  Hw  w  �v  �v  tv  Tv  "y  �v              ��hM       U   Xo  Xo      A Python object, representing a STARTUPINFO structure   PySTARTUPINFO   dwX dwY dwXSize dwYSize dwXCountChars   dwYCountChars   dwFillAttribute dwFlags wShowWindow hStdInput   hStdOutput  hStdError   lpDesktop   lpTitle can't delete STARTUPINFO attributes hStdInput   hStdOutput  hStdError   lpDesktop   lpTitle The object is not a PySTARTUPINFO object    PySTARTUPINFO   :STARTUPINFO    Unhandled exception in beginthreadex created thread:
   OiOOi:beginthreadex function must be callable   args must be a tuple    Ni  CreateRemoteThread  %s is not available on this platform    OOlOOk:CreateRemoteThread   CreateRemoteThread  Ni  environment parameter must be a dictionary object of strings or unicode objects.    keys    values      dictionary must have keys and values as strings or unicode objects. All dictionary items must be strings, or all must be unicode    All dictionary items must be strings, or all must be unicode    All dictionary items must be strings, or all must be unicode    All dictionary items must be strings, or all must be unicode    allocating environment buffer       The command line and application parameters can not both be None    CreateProcess       The command line and application parameters can not both be None    CreateProcessAsUser :GetCurrentProcess  GetProcessPriorityBoost %s is not available on this platform    O:GetProcessPriorityBoost   GetProcessPriorityBoost SetProcessPriorityBoost %s is not available on this platform    Ol:SetProcessPriorityBoost  SetProcessPriorityBoost GetThreadPriorityBoost  %s is not available on this platform    O:GetThreadPriorityBoost    GetThreadPriorityBoost  SetThreadPriorityBoost  %s is not available on this platform    Ol:SetThreadPriorityBoost   SetThreadPriorityBoost  GetThreadIOPendingFlag  %s is not available on this platform    O:GetThreadIOPendingFlag    GetThreadIOPendingFlag  GetThreadTimes  %s is not available on this platform    O:GetThreadTimes    GetThreadTimes  UserTime    KernelTime  ExitTime    CreationTime    {s:N, s:N, s:N, s:N}    GetProcessId    %s is not available on this platform    O:GetProcessId  GetProcessId    SetThreadIdealProcessor %s is not available on this platform    SetThreadIdealProcessor O:GetProcessAffinityMask    GetProcessAffinityMask  NN  SetProcessAffinityMask  %s is not available on this platform    Ok:SetProcessAffinityMask   SetProcessAffinityMask  Ok:SetThreadAffinityMask    SetThreadAffinityMask   EnumProcesses   %s is not available on this platform    :EnumProcesses  EnumProcesses: unable to allocate Pid list  EnumProcesses   EnumProcesses: unable to allocate return tuple  l   EnumProcessModules  %s is not available on this platform    O:EnumProcessModules    EnumProcessModules: unable to allocate HMODULE list EnumProcessModules  EnumProcessModules: unable to allocate return tuple GetModuleFileNameEx %s is not available on this platform    OO:GetModuleFileNameEx  GetModuleFileNameEx: unable to allocate WCHAR buffer    GetModuleFileNameEx GetProcessMemoryInfo    %s is not available on this platform    O:GetProcessMemoryInfo  GetProcessMemoryInfo    PeakPagefileUsage   PagefileUsage   QuotaNonPagedPoolUsage  QuotaPeakNonPagedPoolUsage  QuotaPagedPoolUsage QuotaPeakPagedPoolUsage WorkingSetSize  PeakWorkingSetSize  PageFaultCount  {s:k,s:N,s:N,s:N,s:N,s:N,s:N,s:N,s:N}   GetProcessTimes %s is not available on this platform    O:GetProcessTimes   GetProcessTimes UserTime    KernelTime  ExitTime    CreationTime    {s:N,s:N,s:N,s:N}   GetProcessIoCounters    %s is not available on this platform    O:GetProcessIoCounters  GetProcessIoCounters    GetProcessWindowStation %s is not available on this platform    :GetProcessWindowStation    GetProcessWorkingSetSize    %s is not available on this platform    O:GetProcessWorkingSetSize  GetProcessWorkingSetSize    NN  SetProcessWorkingSetSize    %s is not available on this platform    Oll:SetProcessWorkingSetSize    SetProcessWorkingSetSize    GetProcessShutdownParameters    %s is not available on this platform    :GetProcessShutdownParameters   GetProcessShutdownParameters    ll  SetProcessShutdownParameters    %s is not available on this platform    ll:SetProcessShutdownParameters SetProcessShutdownParameters    GetGuiResources %s is not available on this platform    Ok:GetGuiResources  GetGuiResources |O:IsWow64Process   IsWow64Process  OOOOilOOO:CreateProcess OOOOOilOOO:CreateProcessAsUser  l:GetProcessVersion l   :GetCurrentProcessId    l   :GetStartupInfo O:GetPriorityClass  l   O:GetExitCodeThread GetExitCodeThread   O:GetExitCodeProcess    GetExitCodeProcess  O:GetWindowThreadProcessId  l   Oi:SetThreadPriority    SetThreadPriority   O:GetThreadPriority l   Ol:SetPriorityClass SetPriorityClass    lli:AttachThreadInput   AttachThreadInput   Ol:SetThreadIdealProcessor  O:SuspendThread SuspendThread   O:ResumeThread  ResumeThread    Ol:TerminateProcess TerminateProcess    l:ExitProcess   IsWow64Process  GetGuiResources SetProcessShutdownParameters    GetProcessShutdownParameters    SetProcessWorkingSetSize    GetProcessWorkingSetSize    GetProcessWindowStation GetProcessIoCounters    GetProcessTimes GetProcessMemoryInfo    GetModuleFileNameEx EnumProcessModules  EnumProcesses   ExitProcess TerminateProcess    ResumeThread    SuspendThread   SetThreadAffinityMask   SetProcessAffinityMask  GetProcessAffinityMask  SetThreadIdealProcessor AttachThreadInput   SetPriorityClass    GetProcessId    GetThreadTimes  GetThreadIOPendingFlag  SetThreadPriorityBoost  GetThreadPriorityBoost  SetProcessPriorityBoost GetProcessPriorityBoost GetThreadPriority   SetThreadPriority   GetWindowThreadProcessId    GetExitCodeProcess  GetExitCodeThread   GetPriorityClass    GetStartupInfo  GetCurrentProcessId GetProcessVersion   GetCurrentProcess   CreateProcessAsUser CreateProcess   CreateRemoteThread  beginthreadex   STARTUPINFO win32process    UNICODE error   Psapi.dll   Psapi.dll   EnumProcesses   EnumProcessModules  GetModuleFileNameExW    GetProcessMemoryInfo    Kernel32.dll    Kernel32.dll    GetProcessTimes GetProcessIoCounters    GetProcessShutdownParameters    SetProcessShutdownParameters    GetProcessWorkingSetSize    SetProcessWorkingSetSize    GetProcessPriorityBoost SetProcessPriorityBoost GetThreadPriorityBoost  SetThreadPriorityBoost  GetThreadIOPendingFlag  GetThreadTimes  CreateRemoteThread  SetThreadIdealProcessor SetProcessAffinityMask  GetProcessId    IsWow64Process  User32.dll  User32.dll  GetProcessWindowStation GetGuiResources CREATE_SUSPENDED    MAXIMUM_PROCESSORS  THREAD_PRIORITY_ABOVE_NORMAL    THREAD_PRIORITY_BELOW_NORMAL    THREAD_PRIORITY_HIGHEST THREAD_PRIORITY_IDLE    THREAD_PRIORITY_LOWEST  THREAD_PRIORITY_NORMAL  THREAD_PRIORITY_TIME_CRITICAL   THREAD_MODE_BACKGROUND_BEGIN    THREAD_MODE_BACKGROUND_END  CREATE_DEFAULT_ERROR_MODE   CREATE_NEW_CONSOLE  CREATE_NEW_PROCESS_GROUP    CREATE_SEPARATE_WOW_VDM CREATE_SHARED_WOW_VDM   CREATE_UNICODE_ENVIRONMENT  CREATE_BREAKAWAY_FROM_JOB   CREATE_PRESERVE_CODE_AUTHZ_LEVEL    CREATE_NO_WINDOW    DEBUG_PROCESS   DEBUG_ONLY_THIS_PROCESS DETACHED_PROCESS    ABOVE_NORMAL_PRIORITY_CLASS BELOW_NORMAL_PRIORITY_CLASS HIGH_PRIORITY_CLASS IDLE_PRIORITY_CLASS NORMAL_PRIORITY_CLASS   REALTIME_PRIORITY_CLASS STARTF_FORCEONFEEDBACK  STARTF_FORCEOFFFEEDBACK STARTF_RUNFULLSCREEN    STARTF_USECOUNTCHARS    STARTF_USEFILLATTRIBUTE STARTF_USEPOSITION  STARTF_USESHOWWINDOW    STARTF_USESIZE  STARTF_USESTDHANDLES    �����I��I�    ����aJ�eJ�    �����J��J�    H                                                           ����o�   RSDSj5���BK���yْ   O:\src\pywin32\build\temp.win32-2.5\Release\win32process.pdb    0K  �K  �K                  �����K� �   �o�                �����K� �   �o�                �p          tr   P  Hq          �r  �P  Tq          Fv  �P  r          �y  pQ  q          8z  dP  �p          P|  P                      \r      4|   |  |  �{  �{  �{  �{  �{  �{  �{  �{  j{  V{  B{  0{  {  {  �z  �z  �z  �z  �z      �z  �z  rz  `z  Pz  Dz  &z  z  z  
z   z  �y  �y  �y  �y  �y      �r  �r      �u  �u  �u  v  $v  8v  �u  �u  �r  >t  �u  �r  s  s  0s  Bs  Zs  ls  ~s  �s  �s  Pt  �s  �s  �s  �u  vu  ^u  Pu  @u  2u   u  u  �t  �t  �t  �t  �t  �t  xt  ft  �r  .t  t  t  �s      �y  dy  �x  �x  �x  \x  ,x  �w  �w  |w  Hw  w  �v  �v  tv  Tv  "y  �v      w CreateProcessAsUserA  ADVAPI32.dll  �GetWindowThreadProcessId   AttachThreadInput USER32.dll  � PyGILState_Ensure � PyGILState_Release  �PyObject_GenericGetAttr 'PyString_AsString �PyObject_GenericSetAttr � PyErr_SetString � PyExc_AttributeError  � PyExc_TypeError w_Py_NoneStruct  � PyExc_MemoryError  PyArg_ParseTuple  �Py_BuildValue � PyEval_InitThreads  l PyErr_Format  � PyExc_NotImplementedError 8PyString_Size �PyUnicode_Type  qPyType_IsSubtype  9PyString_Type +PyList_GetItem  �PyObject_CallMethod LPyMapping_Size  FPyMapping_Check PyInt_FromLong  jPyTuple_New � PyEval_RestoreThread  � PyEval_SaveThread  PyBool_FromLong CPyLong_FromUnsignedLongLong BPyLong_FromUnsignedLong lPyTuple_SetItem .PyList_New  (PyList_Append 4PyList_Type _ PyDict_SetItemString  ePyModule_GetDict  �Py_InitModule4  PyInt_AsLong   PyInt_Type  r PyErr_Print � PyEval_CallObjectWithKeywords z PyErr_SetFromErrno  � PyExc_RuntimeError  nPyTuple_Type  ' PyCallable_Check  sPyType_Type python25.dll  � ?PyWin_CopyString@@YAPADPBD@Z � ?PyWinObject_FreeString@@YAXPAD@Z � ?PyWinLong_FromHANDLE@@YAPAU_object@@PAX@Z  � ?PyWinObject_FromTCHAR@@YAPAU_object@@PBDH@Z  | ?PyHANDLEType@@3U_typeobject@@A � ?PyWinObject_AsHANDLE@@YAHPAU_object@@PAPAX@Z � ?PyWinObject_AsString@@YAHPAU_object@@PAPADHPAK@Z � ?PyWin_SetAPIError@@YAPAU_object@@PADJ@Z  � ?PyWinObject_FromHANDLE@@YAPAU_object@@PAX@Z  � ?PyWinObject_AsSECURITY_ATTRIBUTES@@YAHPAU_object@@PAPAU_SECURITY_ATTRIBUTES@@H@Z � ?PyWinLong_AsVoidPtr@@YAHPAU_object@@PAPAX@Z  � ?PyWinObject_FreeWCHAR@@YAXPAG@Z  � ?PyWinObject_AsWCHAR@@YAHPAU_object@@PAPAGHPAK@Z  � ?PyWinObject_FromFILETIME@@YAPAU_object@@ABU_FILETIME@@@Z � ?PyWinObject_FromOLECHAR@@YAPAU_object@@PBGH@Z  � ?PyWinObject_FromIO_COUNTERS@@YAPAU_object@@PAU_IO_COUNTERS@@@Z � ?PyWinExc_ApiError@@3PAU_object@@A  � ?PyWinGlobals_Ensure@@YAHXZ pywintypes25.dll   ??3@YAXPAX@Z   ??2@YAPAXI@Z  Q __CxxFrameHandler �free  4wcslen  1wcscpy  �malloc  �fprintf C_iob  � _beginthreadex  MSVCR71.dll ?_initterm � _adjust_fdiv  L __CppXcptFilter � _except_handler3  k __dllonexit �_onexit � CreateProcessA  �GetCurrentProcess !GetProcessAffinityMask  SetThreadAffinityMask �GetLastError  +GetProcessVersion �GetCurrentProcessId 9GetStartupInfoA GetPriorityClass  �GetExitCodeThread �GetExitCodeProcess  SetThreadPriority aGetThreadPriority �SetPriorityClass  'SuspendThread �ResumeThread  -TerminateProcess  ExitProcess  GetProcAddress  �LoadLibraryA  �GetModuleHandleA  � DisableThreadLibraryCalls KERNEL32.dll        ��hM    �|           �|  �|  �|  �=  �|    win32process.pyd initwin32process                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 �K�                        (R�              ,R�              0R�               8R�   $           @R�   (           PR�   ,           `R�   0           pR�   4           xR�
   8                               e� 0�       (e�p/�       8e��.�       Xe�0.�       xe�p-�       �e��,�       �e�@,�       �e��+�       �e��*�       �e�@)�       f� (�       f�`&�       0f��$�       @f��=�       Lf� =�       `f�p<�       pf��;�       �f�p$�       �f��#�       �f� #�       �f��;�       �f� ;�       �f�`:�       g� "�       g�!�       (g�p �       @g���       Xg�0�       pg���       �g���       �g� :�       �g�`9�       �g�P8�       �g� 7�       �g��5�       h��5�        h��4�       0h�p4�       Dh�04�       Xh���       lh�p2�       �h��0�       �h���       �h�pD�       �h�`�                                  R�`       0C�                                            �� �    � �Q�                             ��                                                                    $T� [�4[�a�        N�@�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               �                 0  �                  H   X�    �      4   V S _ V E R S I O N _ I N F O     ���       �     � ?                        d   S t r i n g F i l e I n f o   @   0 4 0 9 0 4 E 4   &   L e g a l C o p y r i g h t       B   I n t e r n a l N a m e   w i n 3 2 p r o c e s s . p y d     4 
  F i l e V e r s i o n     2 . 5 . 2 1 6 . 0   "   C o m p a n y N a m e         *   L e g a l T r a d e m a r k s         V   C o m m e n t s   h t t p : / / p y w i n 3 2 . s o u r c e f o r g e . n e t     0   P r o d u c t N a m e     P y W i n 3 2   8 
  P r o d u c t V e r s i o n   2 . 5 . 2 1 6 . 0   *   F i l e D e s c r i p t i o n         J   O r i g i n a l F i l e n a m e   w i n 3 2 p r o c e s s . p y d     D    V a r F i l e I n f o     $    T r a n s l a t i o n     	�PADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADD   �  0/0c0�0�0N1�1�1�1�1�122D2K2r2~2�2�2
333,3B3n3�3�3�3�34'4D4b4~4�4�4�4�4�4�4�435:5A5e5l5�5�5�5�5�5�56'6=6U6�6�6�6�6�6�6�6�67D7Q7X7_7s7y7�7�7�7�7�788!8?8^8d8z8�8�8�8�8�8�8�89 909A9H9O9]9d9k9x9�9�9�9�9�9�9�9:$:/:>:Y:p:{:�:�:�:S;�;�;�;�;#<,<3<@<F<Y<c<x<�<�<�<=8=A=H=U=[=n=t=�=�=�=�=�=�=�=>	>>$>+>A>^>h>n>�>�>�>�>�>�>�>�>�>??? ?'?1?=?D?I?P?d?k?�?�?�?�?�?�?�?�?�?�?    D  
00'0D0N0T0`0g0q0}0�0�0�0�0�0�0�0�0�0 111$1)101D1K1a1�1�1�1�1�1�1�1�1�122!2-24292@2T2[2q2�2�2�2�2�2�2�2�2�2333,333I3k3u3{3�3�3�3�3�3�3�3�3�34434>4D4O4Y4`4r4�4�4�4�4�4�4�4 5555%595M5[5~5�5�5�5�5�5�5�5�5�5�56
66L6a6p6w6|6�6�6�6�6�6�67.7?7F7M7[7b7i7|7�7�7�7�78888#8?8O8g8�8�8�8�8�8�8999#9A9M9T9Y9`9t9�9�9�9�9�9�9�9�9 ::$:6:H:Z:l:r:w:}:�:�:�:�:�:�:�:�:;;;;5;L;V;c;s;;�;�;�;�;�;�;�;�;�;�;<<<<2<A<J<Q<V<]<j<q<<�<�<�<�<�<�<�<�<�<===$=7=R=X=q=}=�=�=�=�=�=�=�=	>>>">2>@>G>L>S>c>r>�>�>�>�>�>�>�>�>�>�>�>??1?;?A?G?U?\?q?}?�?�?�?�?�?�?�?�?�?   0    00!000@0I0T0d0l0�0�0�0�0�0171N1�1�1�1�1�1C2�2�2�23K3�3�3�3�3
4:4A4T4Z4`4u4|4�4�4�4�4�4�4�4�4�4�45%5/5@5�5�5�5�5�5�5�56!666H6Q6^6d6s6�6�6�6�6�6�6�6,7;7Q7f7x7�7�7�7�7�7�7�7�7�7�78\8k8�8�8�8�8�8�8�8�8�899r9�9�9�9�9�9�9�9�9::1:I:O:U:r:�:�:�:�:�:�:�:�:;;0;G;P;`;f;r;�;�;�;�;�;<&<3<<<K<Q<a<|<�<�<�<�<�<�<�<�<=!=7=L=^=g=w=}=�=�=�=�=�=�=�=�=�=�= >>>>!>)>4>:>E>K>V>]>b>h>n>s>y>>�>�>�>�>�>�>�>�>�>�>�>�>�>�>�>�>�>�>�>�>?????!?'?-?2?8?>?C?I?O?T?Z?`?e?k?q?v?|?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?�?   @     0
0000 0*000<0B0N0T0`0f0u0{0�0�0�0�0�0�0�0�0�0�0�0�0�0111)1/1>1D1S1Y1k1q1�1�1�1�1�1�1�1�1�1�1�1�1�1�122%2+272=2I2O2a2g2s2y2�2�2�2�2�2�2�2�2�2�2�2�2�2 333S3m3�3�3�3�3�3�34*484R4�4�4�4�4�4�4�4�4�4�455*5g5o5�5�5�5�5�5�6�6�6�6�6�6�6 777777$7*70767<7B7H7N7T7Z7`7f7l7r7x7~7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�7�788888 8&8,82888>8D8J8P8^8f8o8w8�8�8�8�8�8�8�8�8�8�8�8�8�8 99929F9�9�9�9:::7:C:J:{:�:�:�:�:�:�:2;8;>;D;J;P;V;\;b;h;n;t;z;�;�;�;�;�;�;�;�;�;�;�;�;�;�;�;�;<<<<<"<(< `      �>�>�>�>??L?P?�?�?�?   p      0   �  �   0 040H0\0p0�0�0�0�0�0�0�0�01111(1,181<1H1L1X1\1h1l1x1|1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�1�12222(2,282<2H2L2X2\2h2l2x2|2�2�2�2�2�2�2�2�2�2�2�2�2�2�2�2�23333(3,383<3H3L3X3\3h3l3x3|3�3�3�3�3�3�3�3�344 4@4�4�4�4�4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Manifest-Version: 1.0
Source-Control-Identifier: 
Archiver-Version: Plexus Archiver
Built-By: genie.cft
Created-By: Apache Maven 3.1.1
Build-Jdk: 1.8.0_131

Name: about.properties
SHA-256-Digest: 3LzW23pjLx2WFk6gCyGm37wo6Rq/X6lWdIUzR7xzinc=

Name: p2.inf
SHA-256-Digest: Fw5krUbNA/9NE0sVSeIj5dvDw5lKoaEJlJ87iDdh33w=

Name: about.html
SHA-256-Digest: US73MgLdDK9yFu2vVTL0R22BuV1J03HZkZ5RpF7fj3c=

Name: epl-v10.html
SHA-256-Digest: jYKh174GD2hnJ6JzYjqyP53vK27uZ7cLF19oYlXKDS8=

Name: about.ini
SHA-256-Digest: yDu8FkbFqnWUQyv/Te1HHLY5ny15O1960FyjQpNvmp8=

Name: asl-v20.txt
SHA-256-Digest: Nz9a7CfeNQSmAB3NbAcqT3Ym0G0RX01CxIRY1BEGGjw=

Name: feature.xml
SHA-256-Digest: TO1N9Th0GmdIdvsKv2NefE/6QVC5a98pKT7cpaOQDv4=

Name: feature.properties
SHA-256-Digest: QxFcYbPEOi2+iu7xZUGaGGdBSihMBm4zqPO2RrcGXL8=

Name: license.html
SHA-256-Digest: X315zLynvdLZ4DaYSopgxruQUUEadA3FOPNviC+YO24=

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           1),
 (172204155093,23,2),
 (172204241828,4,2),
 (172204241828,16,1),
 (172204241828,23,2),
 (172204305921,4,1),
 (172204305921,16,1),
 (172204305921,23,2),
 (172204369687,4,1),
 (172204369687,16,1),
 (172204369687,23,2),
 (172204406453,4,1),
 (172204406453,16,1),
 (172204406453,23,2),
 (172204569625,4,2),
 (172204569625,16,1),
 (172204569625,23,2),
 (172204678781,4,2),
 (172204678781,16,1),
 (172204678781,23,2),
 (172205352531,4,2),
 (172205352531,16,1),
 (172205352531,23,2),
 (172205458078,4,1),
 (172205458078,16,1),
 (172205458078,23,2),
 (172206714359,4,1),
 (172206714359,16,1),
 (172206714359,23,2),
 (172207402546,4,2),
 (172207402546,16,1),
 (172207402546,23,2),
 (172209028843,4,1),
 (172209028843,16,1),
 (172209028843,23,2),
 (172209705875,4,1),
 (172209705875,16,1),
 (172209705875,23,2),
 (172210013656,4,1),
 (172210013656,16,1),
 (172210013656,23,2),
 (172210723828,4,1),
 (172210723828,16,1),
 (172210723828,23,2),
 (172210746484,4,1),
 (172210746484,16,1),
 (172210746484,23,2),
 (172213170296,4,1),
 (172213170296,16,1),
 (172213170296,23,2),
 (172213268078,4,2),
 (172213268078,16,1),
 (172213268078,23,2),
 (172213539109,4,2),
 (172213539109,16,1),
 (172213539109,23,2),
 (172213691250,4,2),
 (172213691250,16,1),
 (172213691250,23,2),
 (172217190593,4,2),
 (172217190593,16,1),
 (172217190593,23,2),
 (172217263546,4,1),
 (172217263546,16,1),
 (172217263546,23,2),
 (172218507578,4,2),
 (172218507578,16,1),
 (172218507578,23,2),
 (172224908750,4,1),
 (172224908750,16,1),
 (172224908750,23,2),
 (172229223812,4,2),
 (172229223812,16,1),
 (172229223812,23,2),
 (172241534015,4,1),
 (172241534015,16,1),
 (172241534015,23,0),
 (172241537437,4,1),
 (172241537437,16,1),
 (172241537437,23,0),
 (172241538984,4,1),
 (172241538984,16,1),
 (172241538984,23,0),
 (172241541812,4,1),
 (172241541812,16,1),
 (172241541812,23,0);
INSERT INTO `mvtcatval` (`MovimientoID`,`CategoriaID`,`ValorID`) VALUES 
 (172241543046,4,1),
 (172241543046,16,1),
 (172241543046,23,0),
 (172241544296,4,1),
 (172241544296,16,1),
 (172241544296,23,0),
 (172241545203,4,1),
 (172241545203,16,1),
 (172241545203,23,0),
 (172241548390,4,1),
 (172241548390,16,1),
 (172241548390,23,0),
 (172241550281,4,1),
 (172241550281,16,1),
 (172241550281,23,0),
 (172241552140,4,1),
 (172241552140,16,1),
 (172241552140,23,0),
 (172241552718,4,1),
 (172241552718,16,1),
 (172241552718,23,0),
 (172241553296,4,1),
 (172241553296,16,1),
 (172241553296,23,0),
 (172241553890,4,1),
 (172241553890,16,1),
 (172241553890,23,0),
 (172241557703,4,1),
 (172241557703,16,1),
 (172241557703,23,0),
 (172241559562,4,1),
 (172241559562,16,1),
 (172241559562,23,0),
 (172241562109,4,1),
 (172241562109,16,1),
 (172241562109,23,0),
 (172241562750,4,1),
 (172241562750,16,1),
 (172241562750,23,0),
 (172241564281,4,1),
 (172241564281,16,1),
 (172241564281,23,0),
 (172241565171,4,1),
 (172241565171,16,1),
 (172241565171,23,0),
 (172241568921,4,1),
 (172241568921,16,1),
 (172241568921,23,0),
 (172241570250,4,1),
 (172241570250,16,1),
 (172241570250,23,0),
 (172241571140,4,1),
 (172241571140,16,1),
 (172241571140,23,0),
 (172241572671,4,1),
 (172241572671,16,1),
 (172241572671,23,0),
 (172241580968,4,1),
 (172241580968,16,1),
 (172241580968,23,0),
 (172241582859,4,1),
 (172241582859,16,1),
 (172241582859,23,0),
 (172241584390,4,1),
 (172241584390,16,1),
 (172241584390,23,0),
 (172241585937,4,1),
 (172241585937,16,1),
 (172241585937,23,0),
 (172241587140,4,1),
 (172241587140,16,1),
 (172241587140,23,0),
 (172241588359,4,1),
 (172241588359,16,1),
 (172241588359,23,0),
 (172241588953,4,1),
 (172241588953,16,1),
 (172241588953,23,0),
 (172241589937,4,1),
 (172241589937,16,1),
 (172241589937,23,0),
 (172241592687,4,1),
 (172241592687,16,1),
 (172241592687,23,0),
 (172241593562,4,1),
 (172241593562,16,1),
 (172241593562,23,0),
 (172241595421,4,1),
 (172241595421,16,1),
 (172241595421,23,0),
 (172241597218,4,1),
 (172241597218,16,1),
 (172241597218,23,0),
 (172241599765,4,1),
 (172241599765,16,1),
 (172241599765,23,0),
 (172241614796,4,1),
 (172241614796,16,1),
 (172241614796,23,0),
 (172241617343,4,1),
 (172241617��ࡱ�                ;  ��	               _         \     ����        �   �   �   �   ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                  	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   R o o t   E n t r y                                               ������������                                    ����                                                                            ������������                                    ����                                                                            ������������                                    ����                                                                            ������������                                    ����        	   ��       �  ��    �   \ p   Calc                                                                                                         B  �a   �  =  �   �   �   =       @  8      X@    �    "       �   �    1  �   ��     A r i a l 1  �   ��      A r i a l 1  �   ��      A r i a l 1  �   ��      A r i a l 1  �   ��     A r i a l 1  �   ��     A r i a l 1  �    �    A r i a l  �   GENERAL � 
  DD/MM/YY;@ �   0%
 �   0.00% � 
  DD/MM/YYYY�    � ��            � �     ��   �        � �     ��   �        � �     ��   �        � �     ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �      ��   �        � �    �              � �   + ��   �        � �   ) ��   �        � �   , ��   �        � �   * ��   �        � �   	 ��   �        � �   � ��   �        � �   �             � �   �  "  <        � �   �   8""  � �   �    8""  � �   �    8""  � �   �    <""  � �   �    <"   � �   �    8"P   � �   �    8"P   � �   �    <"P   � �   �    <"P   � �   �    xUU +�    �  "  8""  � �    �  "  0        � �    �     (""  � �    �  "  <""  � �    �            � �   �    8        � �   � Q   �        � �    �             � �  � �� ��� ��� ��� ��� ��� ��`   �  ��    Plan1�  6 6 � �  T� �     �w�   �                     �� b �MB �X�K    "0teI   )B             n�!B �X�K    "0teI ��PNG

   IHDR    H   \�   tEXtSoftware Adobe ImageReadyq�e<  �iTXtXML:com.adobe.xmp     <?xpacket begin="﻿" id="W5M0MpCehiHzreSzNTczkc9d"?> <x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 5.6-c111 79.158325, 2015/09/10-01:10:20        "> <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"> <rdf:Description rdf:about="" xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/" xmlns:stRef="http://ns.adobe.com/xap/1.0/sType/ResourceRef#" xmlns:xmp="http://ns.adobe.com/xap/1.0/" xmpMM:OriginalDocumentID="xmp.did:bfc0e883-bbc0-6241-987f-a31c8a15b37d" xmpMM:DocumentID="xmp.did:396C7AE6803A11E68DBDB4C7168EE694" xmpMM:InstanceID="xmp.iid:396C7AE5803A11E68DBDB4C7168EE694" xmp:CreatorTool="Adobe Photoshop CC 2015 (Windows)"> <xmpMM:DerivedFrom stRef:instanceID="xmp.iid:df972741-fb63-4648-ad33-7d3c2858ec1e" stRef:documentID="adobe:docid:photoshop:aff194c8-8039-11e6-8a89-e41de79e96f6"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end="r"?>+�: >"IDATx��x\յ��ti�{�Z��&�C� 	<R!�L�ϴ�Ix� B�M`L ��66�q�M��.�F��μ�f����l\di$�߷��Hȣ��ٳ��������1����������[$�hn���ŋ�(���k���̭�[;7��.n6�}77\� ��UL�W���ޥS<��Y��Q6���c��/v��N�{��w��#]
ss*�G�na.���^��J��b�   ����Cb�V�#����-�[�x����*2(�����[�FnmBl����C/ cZ8���B����QX���"�N�iW����:���T���1%A�[anVa6����K���/    q�o:�j�!��1����͂	�$ 0�3�":���@�an����*�t� ��}H5�x&D�B$�=)ZaE�N�)W��k�"(f	
Q&G�Q�Y�"��D�b�   �P�*�
�B�����٣��nYBP�F1��v�׭[��aÆ�}�������544Ę��nF��k�$I�X��Z����z��ht���[233�srr,���]���o����p���AnM���ơ����0�7m��x 1EBg�N��?�h�>466��+�������n0�L���NCWWW���6�M�t:u�E�r�������x<��|�cv�=A���oc>��p:ä�h����G��Jaaa����p-��_�FFF�����111.z�����G��:����|�uDGG��P�!Q��[��u���"����_�/��    q����|�7
A!�[.��~�ٗ_~��[oemذ!k�Ν����������̶I�&5~�[ߪ��������<�?A�9��m�8�ҡ�E�f���o(zI1
!Z! �x� ��{*w��|��٩۽{wT]]����6��������_'� �?���­Vk�����U=�烄݈�{LL�#11ё��l��ζ�XJKK�eee6�K�(�О�ɂ�e$�Rt�I��r*��!�   �� F��L'�t'�"r�屯G$�<����
?�裂͛7�����!��T*i�ĉ�7�pþ�o���F�Q^�t �"�!��FYD1 0<��F!$�+DY@ ��-a8�'����ե��Q�����>�������薖����֘���HI����ӛJ��h���1���w����:�>L�V���5}k�b��J�b�u    ��;��iTC���X��a��|�6n���3�T|��'euuu��rG/**�r뭷n_�t�~~�����!�sn;X��#E1�!0 pV�u?!��.)J.���N���מ�'|ݺu�w�;|�p�#G�c�����nw$fa�􌜜����궉'��s�9mӧO���t��Q��R��~!6PdE5P�H�h@�    .�?�S�B�R���~BB�ap˖-1˗/�f͚ꖖ��P��"##�>���?���j�nn�� 0 0(���Ȣ2"���$�Ǥ|�h�5a������⋸�7&�ٳ'����uuu񍍍�����}�j�����yƌ�\pA�^�*����n{�a��J�p@d    q�=���@��܊��C��d�?��#����?'�����mqv֩��9�����kKKK��7����r;��wǜ 8��D�@)�!Q�i����Ͽ���޽;�O>I�ꫯ����#G�$���&v�0�bCIII˂ꮹ���S�vGd�ȅ-b����.�    .@\ ���YoI:�S�B��{��W����?L_�~�x~���V�u���[n��^!0P���Y��#�a@ �,&(���@%E%P��,�͝z�oڴ)v͚5i_}�U�]��:���x��0INN6]t�E�o���CS�L��'0��8��د)e�~��z[[    .�!��z�p(��` '@E�~��ߎ��?�9���9g���M7��ճ�>�]�d��.��Bl@ ���� �K���x�dߜ�x�ȑ#�o��F����3�oߞq����4��())i�������?����r�Yhh"�nc��t�    q�"��
Q�g���?�G�u�]��}����?��.Z�h�[o��^�VˇV�V��#�����}C.�(��BLHg�h'����$��^����;��/��޻wo��bI��S�h4�n����w����h9B�<��mv��(7    .����c��_�8�Z�*����y����Ռ�qZ�p�����aL��V�~�y����3��	T{���T!&��w�y�t:�����f��?��ٿ6��`a0�K�.�|�w-.�}�:K|��EM   @\�� WT�Q�Z��z�s�=��裏�w�Сr6�
4���wv����̂9�tP���gܨ.��_��F�~!b�,rt�9�	��goPQd��իS�x㍂����8p ����Ȃ�IAAA�+�����)S�Xo�Qn��`�    .�3tdQ!R�
��z������ŏ<�Ȣ����c>��ڻ��8������R�
<��$&Ȃ���'��l!*����7o�~饗�>���;w�{�^#F5�ebٲe�������|B`�P����H  �� q���@��r��P�ז�C=T����~aKKK>F��A���o�{�E�)�r���įCR�h(Ł�H|L9��`��5/��rΪU����������*����m/���W�7E���~̂)n�    q�8	��D�p�Q���������ˋy䑋!*��h?p�����t�긽�z�/��
F���_PH�˂����p����~����+۽{w�$I�(U������_6�^a�sn�50�G   �� q|��@��T(�r���B%�Z��$�X�"����_|�رR��73mڴ�u��}"
<�!u�_��gH� #eo�ӣ℠@�c*;A�ȵk��=����|�A9�/r���F&�sn��w߽_��d�`�ȳN��    .��D�pʄ�gټ���)?���/=x�`F��X�l�����7���WY�ՙ	�#@�$(�� �<d�@PP���{I�ӟ�>�������T�&�P�/���'v�}���wY�0�#   ����@�uHH���"�@􁊭-Y��B~Ț��F2��D�պ�lٲ����*����Z<�� BDP��(�I�CbBI�����+HP�6�ͨ� FS�N�[�~��TCG�ݯp�ʍ�r��    .@\�!�#I=�,���ޮ���r��<�G�9�'O>�aÆ���`o+�&q�~�L{�=!C�	��8��6m�]�|��w�y����3#	F�%�nݺ�g̘A�()�l�ػ� .   �� qND0��*P���u�$I���'SV�Xq������ӟ>��~p��u���߹�a(��~/���R������N��p�ȑ��{�zժU5y5��ꫯ����/�GD/PQ^��p���   �ƨ3!�@P�3�-S�s|�����X�t���L�\���k���{3::��P�Au#���5��҅C *�R 1�R���n����/��_�:qϞ=��wh0�`,���۶}������(�Vp�)�   #-� ��3�L��Z�ȯ��*��믿bǎ30jg��u�m�U�X���9�J8��An�|�<�^ gq�
��R�^���GeQa����O=���?�x����(��JCCC��d�GEEy����  `���p���AyӔC]���Sv�]}�u�-x���/�$)�v��h4���+77�΂a�$4*�#z� G,��'��B��#A~��ޮ����k^}��i���9A g&i���+Ǐof�h�7�}��5  �"�79*�CA��)�Y��ޣL=���w�u׵v��؆�ϧ��/~1n�ʕ�j5�G�]0!z�����Ȃ��,ŤR���o��F���˧�[�n"_��{M�m6��6���s   �`�8t��E�p$zD�]�vE~��߽j�Ν�0j�êU���o߾����"憢J�P�7��0p�׿��B�>��Q�����?�yVSSSF���B�T{D�	w   q�j�B�SI�
�B`�|>��G?�Ѭ���/W����:r����|��4w$Q��D/�3���Om$��(�{��Ȼ�{�[o�5����`8��L��
a   �0j��&Ąl��'Za���)?���omm-Ũ��|�Iޖ-[�N�8�K�a�Zn6��pj��\��D9ͩ�3��;�$�s�=s7m�4�����4.;    .���\��
�X�
'�箷�n�\u�U�����}	�yF-��﮻��s�^�^ qa;�v�=�J��c��q�{9���֧�`�C�@ϳ�>�����n���+�p��^����    �0j��V���E���#,���9?��Oh�Z�1j���￟�o߾�eeeV���@t��<!0�u�����1�ãz衇ʞx�o����b� 8#q�'�"���Y    .�Q�`��`}�z:�Es�%�\���/f��i�H���뮻*_{�5�A��xlMI���^ �WvH�BNQ��'�=��S���O_`2��0r �9�F�܋Q   �0*�V�e���8/��E+�d���X�V�ZU��ܼ-==�����B�#�k/FhL_�ʶ�	�r��P^��T��K�V?��Suwwg`� <t:�W����è   �� F���ݵ,f���=wOl6�f��ŗ"Za����t?�pѓO>�CD/�p����Ͻ�c���B���X��v���/[��R�ɔ��`�	��t:�u�aH�   0JPcƜ�A9��,
=��`�9���^{-�s��|)�����/�\�r�乣�r#
���k^�P�k>��L,���s�^z饬�����~��?�� ��#""£�j%�   F#�\;�9�
'#�)�|>��+�8ժU��?�Ǩ�\�fsԋ/���dɒZ1���vs�6�hK9v�y��J����b�=��ƍ�~��]�cǎ�� g���h�V��+�E7�   �D.�'#��N�̂�{�\�]�6.##��o���FO?�t���Q�1[�y�X`t_��.DJ{:�����k���Mw�,�1c��;v�a��!..Υ��|
A�/   �`D8rH4�>P�	�kIv4~�_L�3g�C---��î]�����D+^���N Hu�׻�l�b�D���]w�U�����{ｷX�$F��#))ɡ��פ�!r  �(i���Nd�BXHb�~ڍ��a.�n�Νs1b���˗M�6��`]G6��&n�]#F�5���B�B9�DO����?N��������`x��ʲ����"��9�Q  �� BXX�y�~i,X^�<�����K�,����Jǈ�^�z�����M����A6�[_#t�U׻,$��_�׻����}�{^��+� ��RPP�.�Et
q�1  �Q�"F���L�'�����o{���!,�~�_x�e��Rnq��h�ީF
���q��z�����|�͔����V�\y� ��F�NJJr)"�"�   @\ ��d�"nT>���"�z����yyy?{���~ ����_,�x<�h��ڠhv��<��aBL(׼O������_~�e�]�`GGGF���h4:###="r��e3C+J   @(	,-q��zâw/�z����ʇkkk�a���v��ܳgO뭷Aw�)e��Ƚ��z7rK�Vł]`�0k��_~������_�_ !���l���^�F#����8    .���y�Nc�z�+�����g�y<�d�ؘ\#�?��E�$yź(c��݈^��;7JiQv��V\�ҝw�9nƌ�666�ÈZdgg�#""�bB��   `T����4�`X4	��.�� G�5̛7����h�m�~��"���~���A�"[����G�� �k2X��JO�V�ϧ���U�}�ٕQ) �$�ƍ눊��� ���U��   �t�0�q���+PXt5���a��W^y%����a�hnnN�Ng���Od��0r��4�6��Db���۵k�133��|��a��D�պ���ccc���I�hC	   �6'Cn3)�W�d��؏���^{�C.�+#d���?�+R#b .��k^/�9BI�G���{����mnn��� tIJJ����RAG9-����   � ��J���w8��ӧ_���O�Ν�0�P��G�vww��S����#�/d���|��s�=e�\sͣ�'�@hSTTԑ���4r��6�6�   F��02���G�\�1���A��[�F.\�����j�֨GR�T���GntP��Gz�G�Z��O��h����h�-Z����IKw�b�@\9�B4�*����k�����v�H� �0�/O�:�911ѥV�����   �P:���"�e	����Ͼ�[~�n��ܨآ��k.��rQ3�?�z�� �t:���ӣ�`P�G�0�>�.��-����PD,ԅ��@�+,X_E�(�^�x��իW��A`Dӝ��k!q�oa�m(�    �C�g�ij��XX�d��g�}��$0b#ODP���J%��rP�/���h4z�?�����s
�z��`0����<F��.EGG��������*�����P��i����lwFFE,P���c�Cmh^�Z!,P�R8SD,̟?�G}t+F
��CYYY[NN���^���s�1�[    q��A��0c)S�W��s�{�w֮]{FkD �p���ͮ�jɜ��EB�2aaavn6��h'����GEE9��sOxx���ǿ�HL�_3�s����� QA˿��ߥ�)���S�Y0��	q!$!A���rXPX�yR͙3���>���" F��Ѹ�O�ޘ���0r�s <     q���F6�\����;f�6m���c�B�J��C��;�v~���p@B7:`Rԁ#""����x[\\��j"�Gwdd$���Ϳ�MLL��$*�)��֊Z�\�Q�8���/�5E+Ա`�37�)�}�+YPT�B�.\�� #�������Bszz�\��a�[    q���,ܘ�����K/��.�ݞ��
������h4�t:�SD!8)� ::�;!!�;11�+%%�rom���.���8Wrr��?z���|����d��UM�W�4´�k�8�ҁ֪0z��zC�Ah\�4g�⚧��,,\~���֬YsF	���ƙ>}����Kll�[|��֭�l    .���\P��xn����)��|��;��.����
	$�Fc�������wr��[BB�955��Vu��@s��3%%�EQ��I��~B�^^���Xr��0�pB}¼�QR��|ݧ�>|q��k_�hk��S�#��7�<�7��-C�` F|�o���h��˳�t:�{���#��  �� ΊsAw��e�2�d�8�?��������?��h����jm���"DT�,&t�933�3;;ے��fOIIq���Rd�3H�������,���K!$x�)E?�-��?ʡ��bBHt]S��t����GrW�X�(�{ F��g���u��՝���r�����R"   @\ gɱPv��R8�Gp޼yW|����2���i�h4����nj'F�BDDD�>BJJJWNN��=Z)�6##�IQ	�A�t����ZBv	QA�
A) HJ� B��A���-�>0�}�Y�ҥK��="C�ȃ&�TUU����vS^qm׊�)    .��",�܊��nWO�8q�޽{��h=j���.R�lWDDD�[C\\E$t���w����N������y�ݣ�^aH�H� ��`"C�Bh�;]rʃb¨�(*U9��Gu�>��z�0J ����V�>}z��	��g��6�8����ގ.    .�Au*h�#D&o����o�1cƯ;::�c��I��Q/�.�L���t���Z���\PP�^\\L��-++�A���`��;�Td����~�˩0ʟ���M�*G7X���i����Q�P��P1��tVSSs��j��Q`d^ޕ��G�����cwDD�,dAY�   @\ ��TНm*�Hw�3�{��.��{].W.FkhP��n*��i������]������R����Pwxx�_D(hX�T��������o2����Q�nmt8�k�!�����(,�(�C�����v���s #���8ӤI��N�ږ��F{5��[�5�`Q^r   q��@w+�x[�p"{+V��Z�d��^�7�5�_���]���ݔ����`����,++�(�ܞ��錌��)Rz��ۭ޹sg��������V��l's8��N�S��h��`��t:��.��쩩����l[uuuwMM�u �A$�t��Bh��5pL!2��}@N��klH�~�i�_���Ǳ/02�{�sڴi�S�Li�#]��`��� ��    .�3v((�9�[�z"���e˖-�$)�uv���G&%%�cbbl��������������B�=�ﻵZm M�������o�lذ!m߾}I����I���OθE�Z��$''w����ӡt�Ms��1�(я2a$,P�.�K��.�#jЉ}�/����R]z�w��?��ȃｾ���ښ���ɓ'�'$$��5�M��r   0z?�a�L?P1���P���@!�%,���]�7�p�K/��V�g��fIII錍���5''�����J��(���ݭ�����JB¶m��<�f6��CD8t:�c�̙u�ᬻ��R;K�dP^�ܾb��brk�*�%B{/ Q*�)�.\8}͚5�0t�C�$�K{#-n�s��ϩ��������f�'��ʵ�W<ʑ`jъ�������0�IŎG�g����ϛ7��UW]ux��٦���#�ֳ`���!%   ����L�a��RqX�i5�hѢ�����p*Ξ�`4�RRṞ���`�Z
�"������r�?�䓴���gm۶-�d2���\h4�ܹs���?�饗�(�����6s;ĂQt��@`��@N��b�Q���q��'IR6F	���"�G\�^��^�\T�GL����~��|-��W=-q��.�}�����r�5I).�|>���G�8��"����$ć�G�?�_O�&)�?#���qڴi���|��7'''����>����  @\��0\��B�,���ɓ�ݴi��0RgET�FFFD���8[ZZ�>��$����v�ޝ�gϞL��0b���l���۷�z�u�Ư8�JB`�έ��{��	 ��Pu������?���zgww�-!0 �Dk�E�x�G�G�%��QA�G�Z�sYT���׼$\j�Z����^2����?���z�^?�W��hAie����� ��+��n���}|�K�r�b����:n$*���_<���ITH࿣�����xY'''7�7��[��֑K.��!77�!�}�mv�qAX    q�8!,Н�r������oٿ����#*���uRMnN~hն��F>|8�?�gBB�yٲe_�t�Mǘ"ņ#�r��z�P�a���()ԛZ�R[�@a�����������19���,��\B8p��D �ˢ�c :A�n��K�ӹ�����0���h4z����57���8@f0$��ĿG_��T��?��?�%�����'с������>MO���$zN�G~M�$
[�`��b��}���!mm-���Wwvv�^oߧ��gb�Ϥ��J�X��١�Y����PZZڰ`��#]t=wи�o�ᶕ���LqS   �� q�t�r$�|�RX����VUU����4#5��@�CRRR?���.?�Fy<����wWTT4<��sf̘ѥh�}ƂQ�ʒj1 Mbx��Z���tw6Pk�f��bcc_���<���~! 8����u�Z�v	�@Aয�kn�;�3�����;�N��;"""���F<��<���ץ��h/������Ǔ�*���7E���}�ߨx��ܯp�}
�*�5��h�f�a���1���什��ۿ�$):T&��]wfffcAAA۹�[{���`'���6�`�+Sn    .@\8'��*�V�8T�����Ǐ��;��1R�7�����|znacm (,yɒ%[�|���T	I��ձ`��ð�	�IRJ�"�������y{���FhT�rāCho"�,�)�����?�###m������2���F�
��X�����$$$����H4B���X��$��� �B��u��t�i_��;�<̯��������ړ��M���m�gϮ?��󛋋�BX�h1JO��4C�I    .���!���{�¿u��H~y�j��a��٠���u��������K���Z��,X���a���Ph jaǎښ���$I*��H�� �6�9ux���@��	z����h�DEE�Ȣ��)e��u�`�����$obb���(����@$P�@$�{J�ޫ�Z�ѯ����R@�/,��˭XI����o���_|u�e�����rU��
v>gm|N����把���3g6�s�9���l��#�{��u�k{-   �N�y�q�`�,�S��8��O?�4����_�v����لB����?r��W7)����a��0�{	�Ԇ����dr����g1B#��$$��k(��7�X��:���h厨566�ʝQkbb�-!!�D7t�G��$ �@<P��5�`���G�,xN "H�z�qā�����Y˂S���Q�+���7�|��>�/9D�������u���N�0�i�������_'�I%�؝ܚ���a�Zq    .���@�ڲ��?$%}���~���d`��!��U*�ҥK7����k�
�} �a��9jAN�w�����/�x�^F(��LD"��`��t6�`:H@���n!$8E
�%::�+>>ޒ��hIII�����I��\����@�䢇���}M��S���������"8���ȡ�|Գ`��t����^x���n��'f�y�p�>Wf>��ܺIT���j���i�<yrGuu��ϵ��9}��Tj7I)V֛
��   ���-,d	�^~��o��a�כ������G[�{�5Iƨ��nf�"�C�?P�wF-Zr��z����0B!E%ع���z=	
.��B�aaa6bcc���ciINN�&%%���.z�������?` c�G�X$ ��ף�G��c0�b�)�}r���i�������֭[�������cǎ��7<��`�S\\\�GkBBBWNNNkUUU�ĉM�њ��JE2忍��}b_�d�.0��   �U��A(Z!�)j,�������;�������+j�V���W^�$^�5:[80t��[<��9 �
g���K/��v���as �}�U�V[t:		v���T�H���"!����bNKK뢈���]��;##�D�HgP��~_��sr:mBHPF"(�����H�g#��z!*PjC�x�'�d2i�������e�$��"U����)&&�D{BBBg~~~@T?~������ׁGD*h���͂�Lbn�]!    D.���@��~�[�|y��~���|>_�nn���-�<��v���[UR	*H��ೳG��`(���3��v���2|�y$1��+�6�G�(�h�N%E$
����w���ڹ3����r�N�W�4������x`e��r$�@Q��l4D�5O�	�ܨ�P��G��%K�L{����x<	�r�Q�|��i��M�RJJ
u�h���l���6���ٓ������{�*�K�
b�]��~   �<�\8}a!Z�#{�����GC�'7�<��㹳��{���jX0-�� /_�N�G���{�V�X����O04gw�)�^ObB��"N)r"���:��`fffWFF9�$"8�s7E&DDD0��Ut�w+Ņ.�\ZB�������F��p��D�(R�"���&��J�y��b���Jk���Θ���h����Z�ܷ����TWW�WUUu���;����BTP+D*�(G*��_    �="N�E9�R�"����+�����r�J%�\���.������[�m��7�(�^A���d�E-,p���`t}m{HL��`wXXX		�@)�ߙ��ҙ��љ��e�f���teggS������>�_	�7�����Lg`cE�)���3���r��B{�'�z������a}��Z��ܨ�B'�����rJ���&�f��H<�e�b��b�ݲ�@s|��'    ���	������{�CX �
��ر���b�X��3��<Z�1�{E�pP�'o��f�s�=�6~F���	V������,��"�	���xsjjj;w�YYY��i�Q��	������(��*��Q	r}�>�c5�G�q�|��J�(d}S �z������W9rd�P�Ej#�ׇ9**���;u~�uQTTD��eee�|/�'''���$�
$$e��]BT��$�r�!.    N�0E��~�B`�.]Z��C="IR8�e����l��>w�仭�}ʂ!�.�G�^��z�r{��R���Lq7�ڰ��@�	���氰0��N�q�ђ��ԑ��ё��g��͵fee9rrr��� ��Th���Xod�����������Y�r�	h�~�������F\{���[�n�y�P�7����j���_'��"W��z��L���6���QF)�Z���&��`a��|Ǜ�   @_Ps�Ԅ�L!,��BŲe��?a�<۷oO��o~S��#��/M�Vς�#z���
�p�ܲ�z�}��$I���	
��,����T���Ԏ����(v������N�+**�/j&�Ө�����2�����^�$��X�Ť�gD�[o�uڳ�>�]��3�K��4��a����P��MKKk�����eeeV�RHII�*��b�넰 �ѐ׃�5    ���2"NJX��B�� �}��B�-�C�)�õw�Ν��C����ۿY0�؁��j�x�$��D����,� ���L9�|�(B! (P!���DSVVVw;����n�=77��F�^��qn��	�BL�OL��?)aAn/I������?L���k���T1o��bCgtt4�=��B�yyy-|ok/..���DE:��r��9J�[\��>|ø`q    N�@��B��Bx�G)���;��$)
��4fϞ]��'�|*�#�Vq���;"z����Z0���o|����?��9��V��>w��gz$A�;�m�Q������΢�;�θ�8�q
1����z�B+k& 2���49�T��
��`j��SkI�u�]7�������a��^'��AQ
�"�H+_#���Ii�#"X�BT���:3���[����<�5q   ��"N,,���.�����g�y&��;�|��|�����׿�^y�M��M�)k�YК��9%�#L}�}����7bt2Jy����I$a!p���'����tZ��芍����[;��E����z��`��pz�Yn1�ĭ��B��Alܸ1��K/]���\u6�E����u��A�-&&�+==��36����3�����D�h!�Xo-*�(w|�kk�r�    �D.|�Ra!�[N�T�s�=�u�-�<)IB�G�ٚ�mr�)M J��<����"��H-�Z���D��!�.C��w����I��腍,�����o�#�z�5F����plc���t]Z��D�bxx��?j(dff��5��Esaa�%//���"hl[��H����S�b����s�����~���|��%>��l���)""�=::�,������i����(*��-$���ʴ9�hP�"   �� ra`a���$+��@(���������q��hog�Nw~���a!���_'q��ׇ�Ͽ����D�w��?ƍD������R��!ž}�R���^}���@Nw�øK��SY|��޽[�r������(Z�����s'�}���3Sѽ����,vpG��5�P���t���z�1�c���/,�Z�(��+`�B��C3w�ܫ7n�x����)-��TK��J����ȠH�����������|Gbb�G!<i�{��rI��P[   ��0,�*��P�-�[��׬Yϝ�ǹC�����j�n~@��N=�t:��lz��
�Y�9�~����ƿO�����8�!�c�X|���d*�ݮ�ߋ�F���z_S��b�eH��j"��?\��o���]~�橾H3�(8����A��S���y�0>痍�!G�������nJ{HII��	�N���Ξ��&�}�E&ƒ��w��~v�1uؠȫ֛`���1���&�i�� �\z�>��&w���555m��;33S�N�⌔CQ
$<�u6�F   �a i}U!,3E��ƍ#�9�'�nw1�̈����`0*���z;�z��n
�MHH�LJJ��Pn�]'���TD��]111N�{����j�z�{ǎ��^ڴi�&555���<O��b�����u:����L��|�|�e�й��_�v�3g�4�5��;G4�a+��9��*;�|�̴�l����ȯ-r��(���r�+++�}$ݓD�H9��\����>[!(�g�^��Pk�/��u��7�3��X+퉉�m���-555�F���T�@��1G�:��r$�|C`H�X�   @\8ѡ��ʘ"/����a�ƍ{�n���r�������0*F�ˬ��:233�rrr����6~�uddd8�a������6d���z�yā�,�B�D����&����#6lؐ�o߾�C��777�Y��|~8/�$�֙&�g�����x��|�$<   �7Qg���ڶc���BOr����N�4�����1Q�M�����N�b||�������������T^^n!G����Q$k�����H5C
�c���_�j�O<��oy���	�
|]P��Ɖ'6WWWwRg���e��:����
��    qa�C��R���۲�o6�5yyy���,��7��M��cS��J�999����������z������_q��1����u��B`P��7P�q����5k��~��'9۶m�jjj�t:�e>�o|(:������jll�\��]n��������k�D{�m��3���cƊ��������@�CaaaӸq㚫��:KKKm�QT�
V�(ʭ#l�>c��
Y� ������暹����ml��(�H���Z!Q����q	��HTp�DK-뭹!�R�uq   ����P�U��LQ,##cicc�X&#�ɡt�T�N�&
ɦJ���ŝ���#..Nvv�BT�!'�[d�����d�A>��:҉�v�[�>L��M�6E����i��^աC�&Z,�I>�o�����w�r�����p{�[=R#Nj���Z���5�l6�5�7/�
�k#G1--���������y���漼<;�}��>7��9�(�7���:�g�Q�.Z���w�y�'��GQ9��_�J����M$*����
�
ʵB�N�
]���7T�	�   �/c��#�b�.M�d��UTT�aa� �A�N��h����-��͍�Qk;���i��Oy���vN�AV)&(��ܬ0�8���=�&M�D�𛒒�<+W���޽[��XI�r�{������'?�����w���M��߼��s(0��U��ݽx��
�(v��K�b{YYY ����&�(FEE�Xo�=ZG�,��`f��[�ڂ�0l��]�����y��͛w��������Z1%&&��ZIMM����'O&a�377�֊�H�E�����	   ���+� ׋P
�fͺ�;�ay�>���1�R��T��N;���l�p쒒kZZ�K8͌��!xXo�������p2!���{�ӂ8��.�ć��,�7�����ο��/�]�v�Y��D������*���C��Jvӹ�����ot�(2�&#ի��J]"��Zmw����{�)S�P�9�N����"�}n��z�'���BXp����ٳ�\�v�Oc��u�Lk%99��3��@)����@���t
Q�U��r���$�a    @\��� ���ʂ���A�_z��׭[�3,��,܉�P�NbK��h\[ee�������Q
JAA��S�J�=�0gz�����3�>C�8(�������K:���vY������g{<���9�>�O�r���[o��V��!xt�������k��S��/�X��w�Gj��K�7TS�_oS�Li��"���GQ:���G1$?�T�t�n{"��̙s�ڵk~�k���J�5�&M����TXXh]B�b�Բ�H��L�a�    B�P��^�0�(���?��U�V�͂w Ah�
����f�w���***&N�H}лDt�n�Z8;�Oy������Y�0N�����^<B�322�W\qEk]]�.�ٜ���X�6q8ǖ�}j5W���T�9��&a�I��D�ꎎuCCèJ������6�$�$&&�����ɓ�N��VTTd��
ܙ�Ǣ��F*t�Q��@������@������g��q���h4�$%%��b��$*� UYYi�kEk�ރ��F*�Q-��c�    ��H:T���z[N����?d�����#�g�X��	�S��6%$$�srrZ���Ǐ�VUUE��Z����"�1�{7LN{�I���7�"U�j1�����ös������ں�����1޶m[��b������u� ޳+��s��׿�e��|�F�Gb^JJJ#�
�'N<:cƌ���
�ïK��Q<��(��g��IN�
��^{�5k�<�NO\��������fڟsssi�� �J�sRR�W�Vh}P������Z    .��C�^�r�"b�>����۞�$)K"�D�	�L�|h�����ڶ��2Kzz�K����B¹!Q�Bm)�;$±��/_��>��#�̞=�����l<v��4U���b�������]�	�;���8�wOQ�}$�)��^K�W�����kddd��Z222�ǍW?k�,��I5L�5';��큺�4�Q[*��fA�5P������������g�)A)j|n&*;;����ǦM�����*��*�6�`$�Y�V�   @\qN�V��Yo v��Q�E]������r)��ޚ��h[��QA������V�.	
BT��ۅڝS���K���=gΜ�/���pSS���W1����￟T]]ݭV�隡�$�� ,S�H����T�_��\!4�X��h�Na�@��ӧ�9sfkAA�MQ�������*��������\۷o�-[��)���SR)�jOtttj��q;���B{tgVV��h4����k��g�-��    ą�y^f��t����G6~��ߺ\�J,��A���&~`m����H��Ji]Nŝ0�#�šU)*�\%zE�p��)w�l�V�jغu�6��V1��qӦM	^���z�i,x�S�P��x��<��}��i�v��#��7���4p�m	�s�̡(!sBB��A+�����pG*q=��>����$i©��SK#ߧ�#O�ĉ��}������S�{�V�Y�苵   @\���`g��JU�L�s_YY������B^���N
Ů����ڦ��*��2�T��n9RA����� �_��]///7effn��b�{����Z�DGSA�(����k��Q�{�Ƨv���:U*��)B���Y�f՝s�9�h���py�I���zS \#��[,���RRSS�<�ON�P�Zlllu���m������������{Nv��    �����)�P%pd�/��k׮���^����"��qʔ)��Δ��g7��sCNn-���o��H;���S&��HS�N�P�Z%I��7V__��ݭ��K�%�/V���Y�
t%Y�zu6=g^��������I�&�;w�Q�;����
gq'�mc(�8��/�l��w�����nvri<T��-==�)55�TYY�0k�,J�����qy�P�Y�2�ޚ7    �#��Ow���Sg�;�(}�����!0������Z���k'O�L�
��y�w���X��?|"zA�tUUU��u���p��%��Fqm���7��i
�f�Y�{��#�@���6Ϙ1�n�����喨�(����?��S�nqݡ����<4(�����_�/����:������
|��L�2�(E�P�EkI��n�GS�jp    F�A���PXw�BX���k�Op�τa��~ uR
DRRR{NNN+��r�q	]�ue�2
�U��s���-)֥/&&Ɨ��n3G�^�9�>�O���b�V�b���/Px���!r�T;w�Թ\�)#���t�eeeu����s��=2������單;ŵ'G+���F/�i�ʕ$p^�N,�{�ZhIMMm�{���@̙3�qڴi挌e*�yH�Ѵo��d��    @\5*���pआ��5�\�(w��0��F�zVV��vTVV�5k�1J�P��r�;�ݕ[܍�Pl9M'p�'q!::���f�7�gϞ�s�=�]ܑ�+z��(��͙���~.I���e��]UUUG�X�k��ؚ����]{�X0�H��pzd#�h�7�|��o��h4�|/�hsQQQ�̙3I����N�(��E+4��mH!@   F��ڷ��J���ɓ'��v��1��KJJ
+((h�-��H��"5B+�tsssiiiG�����+�����p�ϧ�A"����#w�P�=F�u��h�z��Ǐd	G-ZT;}�����8��ov�`�<݅��|�V=��moo���,I}���k&�V��AEu�:i8���[�N�j��̤=Z�1B-ԩ���䂺�    ����O��,�r�GX��˸�v9�|x��j+dee5�����7�ع�{l���&�LSx�| =�zS �Bx��5 .��q���R�C��a���9��v�Eس,.�e_�LQ��/��<�S>�6�0&a��/$a�-��+��?Y��]�у$�e/�k"8�l6�'�s3��X�Vw���u&%%������4o�<see��h4j���6��
�   ��'.(
8�sKb�:7�tS͆~��z���O�B+��6mZ��ٳ{�ď)�k�R�qI8�腲�2�a�����a�f���v���A_Y0��O{Q1E��hL&ӸP���)����/���?���@�W��skף�⨃�TJs�ϝ;W�?͇���xL:�Ne���j�����3M�>ݕ�����>WID;Ȃ�z�58�   ��'.�`�'��ġ'pGx�ʕ	�?��cE�~qi�J{��kǍ'��3�����
*q`=,�+{�e��.q��b�p����nE.�/� .���D.p'� IRe(�a�Z������8qb�E]tT����뛘�+�Vh>)ʀR�s���5555���;;;뢢�Xaa�eƌ]�f�reee��z�A�u�ا�s��1$�u   �Q'.��~���:::4W_}��������)���l���i���m�>}z�ܹs��ALL��M�T�V���r�B �d�XE�I)0�F�c�����z�jn*�#�V�_�7��)�����P~���ٍ$,,Z���ԩS;�����BX�`h39�!�D�Դ�4�7���9s������h���$��F��R�	:�6�i'�Eu    q��� ��NNPO�~����vO�4����t�;3�����{n=?����AnqGVj]�,6V�~��=�c��|CT̑[�i���C��@v���H�e�ꛍ���4iұ4��@mO��A!,8�4�zH��AFll�4e��u&^���fa$*�
6   `����,�0E��.�`~]]���!\LZ�=++�>77��;3u���k�����x�=������;�C3��kE�,2P%���z�}��#%��C{�F�l�R�{)�Cp�n�̙M3f�0%$$x�|nf}# ,��}�'��v1���tb��
#¢��   �1".��:�vRN��?���Yk֬y �;t���w���+,,l�L����JJJl�]�:,���⮿�*��,,��@`��'2UKK�����<T�hZZZ��ɓ[f͚Ց���"u��'��@:�1#0x�C�B�8h�ګ0�
    ₨�@����Y�����}�ݏ��Gbz�)>>�)//�����ڗ�rk���tj�Z�P��{�S�8�8�������'�
���h4��t:��x_=`���"-bӦMz����(EiƌG�M��^\\l��)�+p�b�v��⍸O��O�_��S�y>���d$�؋[�+(���<���\*6��ۅ�&q+`�nEE�P*�nor{�����8��j~=b� #��s��p#R\�WgAn��2eʔ۽^o9�}H�OZZڱ����I�&�/X���r�����)�>P��'z���������~��t:���K���� ϑjϞ=a�$e��MMM5���tTUUY"##�9����&�9������&�������Lq�g'�f��G���ǟ��1�a  %F�� �
I�c��9j��w�y�ZZZ�ƴ�}4�#77�>??�� j��7p'�;**�'>쩽$�^S��bR�3sb�^/��a8߃J����/.`����ȅ��zߓ�C�N�<����Ɯ��A�*q=ֳ`N��" `X�|'}�����!�����?������׎�  ����r�▦�����2?���1�g�N�]TTT_\\�4w���4�������廣[��@��b���I�wć�DFFzy�:�������N]]]$.���5�?~|�F����r��&�b `x��_���c�L���y|'���|~��Š  ąS;����!Dyy����d6�5w�y����јҳ��h�())����h\�`A��BFF�\_�B�)��(Q�䗸��u6��[�V�s悸 <�`Ԕ$�̀ t�ȑD�j�5%%�RZZjMNNv��J�$�!  Ï������w�X>Ӱ�'�tfԒ   qᤄe�Iz��^�kjjn�N�xL�ٝ���ؖ���c|��}�[ߪ�1cFGBB��ROt��BO781�<�}�\^/	h��|CqqqnEaI�](�1HO��ժ����
�7����MEU###�H*�JuO��& Æ�]�w�e��;I`в�����+�a>2  @\8䶓�L����~wB]]���T�=T*�����XTT�0u���.��~��ɝ111�����`z���N̩�v��_\�0�.�^/q�����"��%$�-t'%%yE��6&�C`�  �BKe�칳tB�[\�n��~�� ��=$�<"���f����|�ꫯ>6R��*,����������Ν{��+�82m�4d'e�0
�D,�T�X8I����餵<�a��)ui�Z����!r��rPZ]]��j������Ȱ��j�_ҵ	� 0<�u���f4��o�Y�G��c����  0��E��$qH�Yp�\��.��$I�F�W���A_j�'''�nܸqG.\x���/�?~|����F�/b�©!�������.���=���T�N'ϣ��y�=�����|�I�7����Q�9DX ��q�9,��}�,�б�얀�   ��q�ԍ�s��Ν{��j]�)d~���Ν� ������������⋏���[���h��n�g�0E�5��z�z��ѣG��Y�h4��$�N��\@(}�y
Xcc��������p84|�=~�;�  �6�ǱL8˝]���`]   �y��t�l;ٓ��SO%mذ�>L_�����3���LWqq��X���rk(**��<|�u,�j�����8����]m6�3����9&q��hE鄸�g�왯��.bB����P^_T�fP�  8Y�ɴ�al֐�cV��bV�Q  ���e:�\���!T��~���C�P�����N��;h-85�����puu5	�-ZԔ����&Y0��[M����
� ,�X,�a��6���V�lN����+`6�M����P|�۷o���|�Bi6	�e� �� �iX�P�c��<�F   ą����8,G-�'L�p���>w�O�N�3UTT�kjj�;�$,����c|t��Ň.\؜����&IP���(�nl5���笲}�����Vq!::�E�⥀���
 )���t�e�7�e˖��4��Kw�bi��  b��	n�nE��j��  �� ����Q>�`ƞ={�듦�h�%%%��#��x<��%,�����p좋.:�`�����T����nLt����*�q��8zmmmf?��B||�S�~a[��YW�\.-��!��d�~��w�w:7�sH|- ���IC��\�c�l��.  ą���^a>�q���/�ߏ��V����v�����ݻ�r�������'N���oKNN����ܶ�`��@G�
�..���_��Zs!%%Ŧ�\�:b�{ǣ��C��؇z����)�c�s+b�)h� ��:�ϛR� 8�  ���uY� }0�Qlܸq���cy��S�KOO�[^^~����)�QkAjjj�¼y�ڨ��Z�&s'�ܚ�ٸy!,��oAG�$I�����c	�
G�q��"q!��{��I���{Yo������xn$bE�����b  ����P�c>)p��c� `����!z�,,[�,u���w������,))�_]]]�m۶3Z��{n{\\�WD,P��.n-��I�C׾}��r�p��������p9-���8!.xHVy�^M��Y�wN}饗��=����q���-��G�d�@h  ���R0J�Y  0���Ax���q<   Ar:���{�}�?j,O��h<ZTT�w��ٻ�~��I�Ψ����B��ŋ�a�#����vske���>g��;��Eu�ȑ��|3|Mx���\|�ɭ'�5zP/8�.�+���}Bs�7.x�'rX�HDￊ���]��Z����>�*��L�$���!��@H#!	�@�"
*�����ׂ����XX,]wׂ뮫�
b� �I � 	��df�����}d���$���2�d��n=�{O�1�%��h`````````��t�C8B��7y���&�i�H�$�FSq,%%%'88�.;;{F�:]��Ĭ݈3#d���5??_Y[[kSr��������D-@����:��Z[[�B��`x��gΙ3gZaa���sHY$� �vR�1�c%�����������0��j��B�/XY-�_��#''��AJekhhhv\\��+��"wݺus���Џ�"""ΐ�/X� ƌUnnnR��X��מ��4�p��!��b�`�
yzz��J���"�\d���,�b��ֆnCJ�޺ukXHHȒ{�gRyy�֊d�} #�GS���E�LѢa)������]� �C�C7w�U�V=���H��؛����DFF��7o����f�����A,X�������J,XP���^�����b�����"�=��q\�-+�������(sĂiG-�lĂu;��II�j�=��l־��[�cƌYNրi}��_��X�x�L4)р1f�C
�Wx��p$���d````````8��+��<
�^c*t u��?�����kGp�����ƈ��9ӦM� �n�^���M!nܸq111Ťm�///�b!���X�OQ������h4��k�z���@�-H�B3�'C7���+�!���b������H,��v[˕W^��bŊ�.����
��u��{LI�GJ1]/��xn�k�@L12����������� �S2o��Z�駟�;v�X;�;F�����KKK;6o޼��۷����]��Ř������Q�FuZ��dĂ�;]#����~�s�زB���u�����Qid�)()tvn�������Q�;::�>���IX�35,\�0wٲe�H4�Tg�3�g����E>!�Pb�Z�.�Dک����ꅁ���������A
⨠¨��M��8����Vׇ��ILLDb�L@@@sFF�=<�_V�������͙3� �??��
�n�n�o�JJ.`*JJJ����	6��*�i��ѭ���&��j�&F.��o�����X82_Z�S&���F�?�0�V�mMOO/��k�/_^���j�F4�ڍ����I) �D�����H@t���Y5000000000ra�A�� �]��!����w�555w��!�JG```vttt����OM�4������_qq�˹���[U|||aFFF�ܹsˉ)'A�Z`Ăm�]'U�0О�b�ؔ\pttl���젙"xJ.��! �b��!���t:N�V�ɜ��ir;;;�l�2�}��g� �W^ye��+
ƍ�֍h@ !,�� �pD��
Rj�˪�>�j`````````�A
�(���`���{�9]%F"xoo���Y�f夦�V%����b>�>�#�mLHH(HKKCb�l�ر�D!B�M���hʌ��fF,�
�K)�#8p@�q\�-+�������j�h4R̅:`i({�7�?�^��]\\:T*U!黠����ՙ���<��3|```�3����B�>�w#�p��Q=[5�K{ #��wZ<� �h�p�j�(�W���i#�3���r�N��3s��R��w�}ק��tN�� ��}���g�����X

j��
����2bA^��q˖-���([֋(�����R�,���P��tQrAh#//�vww�Õ���#�>����d]iOII)�7o^��7�\H�R{7�_1��h�3�+ɪ	�jJ6����������ȅ>RG/�
�h�裏'N�X3b;B��͎��;:gΜ3cƌi1�L�'�xb9�1ПB��L�0!?11�t�ܹ������Тi�AO�b�Ĉ١��`�P__�8s�L��+S���"�[@����|p�6AAA-�������jɺ�1R�l6;�ر#��?�G���9sf!Z5\u�U��F��!����,�D)� f�@7-��\(���
�����ڪ���;$��H��Rىq&N�x|޼y��k�Z��شi�{ii�}��VIBBB��ٳ����0� 
�x�x ��BT;�`�9�A����Z���ؔ�P�L!!!Mnnnf:/�4���<�|�I�&�����;v��d�ʚGDII��|�%ױɓ'���h�ҥŤ͚��j�����!c��Ъ�څ���P000000000r�\�\�ZЁkA�����㚚�~7R//��gΜ��'+�z}Z-�Z�j9i3}_.����ȵJ���0���0�;�b��.� (W۷o�q7Ŗ�rqqi5jT��`��
�c�"�G�/A����i		�>|���PO�c���l��ٳ'�s�=�S�N-�;wn�7�PB�>�Zƚl�T�~Vm�1b0�^h}U�\(.(؎�)�Wygp��r����iR����+R6���9F.\��\��@G��������a�q��t�aaa�RSS�edd����	���7ov)**Zҧ�U�[�M�V���V����I���8�=�g;H��s��O0���-+����D�>�V���9�Pō��s!-D�֬���111����;SQQq�(��.���Z����
K�����W����ꫯ.Z�p!�P@7�_�}"��l�B�$�P�,C	� ���r;)E�W ݂������\�Tޕz9�K�����g�|�Hl|�R����q����x�z�f�>\�fʔ)e3f̨=zt;Ηb��Z*|si�@6D[ S��ҍ#���C�tO+��Nb�8TF�h9b��뭢��@.���*���f�z�1X����IƋu{�z�_l�$R"��� ���h"����Ee0D�#�g�uB�?��� �I�c���:h�h}O�z���C�O�xx�7YD1�߱cG�����H2gٶ��=AI����߉�BA���Y�f-Y��h��ɍ�HDw
i�a�Zt�@��`VC��<�H����W	?#.)�d'�,��:t虑��D��Ǝ{422�$�����u���Ν;������"����#�PF��f�V�
\)%P�Ɠ=�u��(�H�E�������=	�H�J�� �^P�m���_|��X,�m<����j��FU�-D��z"�w)�@���[��@ɞ�nC�H�L�7��H �t-����M�`Ab
���V����|DY':�4���%G�5���0�LӁᲀ.���/��`h�>}zќ9s�n���R��nDb,�H����dՀ�!�m�����1?D�qt�z����"���V��I9E�Q	�26l�!����?���?	�m�У�+���=X��$B�-ǅ�Ćwvv>v|ڴi9���z��!{��w߽�/��=<<��1�Qi Gl�CTX�������H�<��A��zZ�}���R>P��!^
b'�����E�9Ɩ���������.����r_��߽��:�</�����$�;�|���ͤ`ܖ�nO$�iY�*v�U�C��,ގ�7�u�.33�XYYy���4��ic���hnnvټy�,�V�B�|���ŋ/.Z�`A�F���ܔ�(ɬX�s.U������}Ʉ+@$ZӬ����g?Z�{�;����J�d)���_H���H�p]��>�H�)�ZK_x8pD�5� "��qLJ�������ȅn�
h��eM,���[�UUU��FW��Ət���9h����L^SII	���҇k�b���������ZWW�N��텮�C)�#*q������������*)���WO���%B �"���ʚ}L3:���o)mNNNf���~Zp4@
��Z2�g�V(<� wD��} pM�)��hM ��^�
g~y������n����s��)����ihh�����j�T��GH��a�\(��Y<���[n��088��jKk](-<U��JJw)�O�tvN4�2z#�d��A��8Zn�?�;���,b#���aͤ�ZN���΅��Ϭ�I�b;�VT;X �aĀ^�=~,���R�{�b%���_�j���iN�|sXX�щ'�;Dy�@I�jaɒ%��%�W�TZbcc�$%%����W���w�8hފ�v�����9�P�����mT�TٸN*`�&����������ov�ء&�|��>44�.\_��l?>[� U&b�������ٗlK1H�2�� ux
�}�Pܿ8ڹ-55���ѣ�h4��2m*h����~zfHHȭ�����v�m����o��$+!�UAk�iTA����DJ>�y�@��(Z��˚��×T�Yb�'$�{�I�fa��Gn:j��2�	,��/����w��I�դ��UZ�- ��5�ָFpe```Z�.Q���,_�o�j���g�^s�[n�e�|��5	���:9mڴ_���]W]u�i7774�Ҫ���C@@�{DpN�ťx"PΟ?߸lٲ����:�^�V!��m�'th1��|�:�%JڋD������a��#�ݯ}����'RMTUϙ3�k�֭'��'�j�"{&� �)gy6��������L�����S2P�Q�n�>���Ψ���o�XƳ-F~h�ڶ����E��z�E�����FW�+��F�<c��Z�n
Vv�
�EI�Ah�ք�I��d�c\j�\R7T�ߥ{�H�8����(�㋼C�z�S��U06gl��l��L�+�Q�8>���E���>�����࣏>z|$��.***'))�����1����] ]|�� ��<�7�rrr��<yr�N)�Y��8�T�h���I��-�&�C�X@( ������3}g{�%�UAQ̶�m�6ۖ�B���|�cN��b[��u��Tg�.^ 4�O�k4W�����>�$�;���=J���m?򣳳S��O?E>���<<<V�ur�SO=YPP�pvtuY6��;Z0\G�o@��,��,ۚ�r#㘩�=�%��C�����.�?��-�nq��~z��ZHH�\��aX��z�~�X,1000�K�P��L�<=�,X0�(�׎��V*M���Gbbb������G��NǄ�i����g�}vGo�D�R�'%%�IMM-MII�8��#D�{���#5}�uC��dg*����9��K��M�7mڄ.W۪�ON��������Σ@Ey�~!?�q���צg�yi�����i'��Ul��8�Seff�{�gf�7�ְ��E��wߤ��,�sF���Rba	��h�n��hp$E=DC*�v��N�Z�P��0m�ጅ�915-�;��}Ib��8D��#�
0���,�r1W$F.Ѝ8)�$��� �w�~l$.�>>>�QQQ��O��]�V���*����?���ٹ�7�rdddAbbb�V��ѣ�i��&���~=��'���C�OTO���<83ꂟ	-�f��/������%Or��oXs��*\x�R�c���!�ty�Hl\���M��*�r`���9}���믿����pӘ1c��u�]q���w��8#рYR�R	��`��΀Y(�b����z$������Z���5a�*���w�Y>1�pB���Ymg����(�q{���5S�3U8YaXC000�hr�Z-h��C௓��-�ܑ��Z��v	'��JMM-3�����f��7�Dv��f�^^^%}ƌ����hj���q�<�kggV
"�`f�Y5��!:��|w^�h�`�"���̫@� �Z��� �&�EO��5%����Q�ߥT*s����JJJ��~��)III7�3�nD��������
/1�c	��C�N �B4pp5͐r�0Z����>�:|ȳ���.�\C5N����~�F�'7�?D�ܐ�!F4� ⹨tY-X


�h4>5�X�4EGG���ǣ�B�Q�����j�СC�����/��h4�����VJ�W���,�6�f�"����g��6�!�e�Q�ъa=F�g��Y� �o����D,��rd6��=@D8[��FP $?��np�T����ܬf�b�D�ʕ+c�?n�F2`A�4�_A
�6�EM8% d�k.A28���-r�/��������~����G�����Yn&}�E��C�L�yě��!�`y����K.XY-H��P�N�:��ԑ��~~~�QQQyӦMˋ��@w)k�� �w�u�d�6U�0�eLLL.~�SSSk���;(��f��!���,�!��p?eW���Fa��]�W���A�-<�䓾 B�gY�!w=y��X���
n�sze�XgC�F�ٯR���<mb-c�D�o��L��ɚ}��?>���X�рVXh�t����l~�K�C���s�&�$�J!�p_��~�`�1T�E�������>��<���c�|hA��]�g���kA
�h���V����i���j&M�dLII9���X���Ă�Q�AY���ͥ�5z��������������V�R�Ӵ�����`��d$�&MĈ�t��U����C]nA�������@&�jv���'�O�]�������![�V�&s�$]�dm�����&!!a�+����Ң�{�D4�~����#���C"��de�N��L��F�g����þa�����D�|H�l&��$���e�o�Y@G�J.t�Z��~޼y��%���U(��'����=3u��//�8�N�ڵk=�f�]K����6?==�lҤIMD9A{<�� ��޾�,X`Yۈ�22M0�O��7n�����?���j2��U���LaI���p���
�[<<<�y}H�Vc<��� � d�Pfee�{��g����|�W�}��>V��nx2|)��M|���u˰<��Zh ��5Y�cba%Q�&u�1r�
� �
��	�#F&�@�g �X�v�RTUU=:���ǧx�ĉ!?,,��GZ�B�����{ｇ��4y#�G��ɓO����%''��VJ;�IJ))��l7Ăf¤Bހ�v(T;CM���"^���>�|��r�~Y������Wx���|Y�

����rP�Vc<��d�h�0�ͺ͛7G-Z�h�����{�7�h4:u#t����g�����p�r�
֓�����KE�����a���X�\��Bf;E{5T Fa```i��b-�.��q\�HjT�w*%%%?!!�J��[�Y�m�egg����.v���u��3fL;u�@��3 ���'b!�j�������:`�ܮY�Fa�X~'����V��v:&����/?{��e˖�Bևo~vttDW��죩+y�X����j�7�|sJdd�Md����o�L&�`��@4d����\R�_${�cvR-Q�>$uz`�K��d��A��Ql��'�䂑ʍC����zg���o߮lhh��֦܄	rccc���K��!:�*~��q�O����+���
gΜY�i'Q��h�'H��״F�&�63b�Y�@�oW���O,��_,��}+Y��垧��_$kd�_~Y�������QSS���QM�_Ry��fʩ�����]�r��Gy���{�jg�`-s�����^�7������C��%����D��	:�dbG0�e����L`#�\@�B4m��e˖%y�HjPOO�ʘ����S�Rw�li�&���ǎ[zA�C�jIHH0b������� ����N��?8�7�+ CO�h�b�\J���1 ��Y����V�������zѶo߾��?���(������d}���$J�YC�2�a�`I`��,�cN�%.()��<   ��u�Mf�>a�B�ÏD��z�gb8zr�͐b�-�!�q��.7@����ٳGY]]����T�����SIII�'O���!:�ۊt��~��z�ɴ��}^����Í����Q����A�!0΂}���8�c�t�t�r��bj���̛���"¼�(8���iS���[�ܹs֮][��C��+�L�0�Q�F���t�d]����d��"s��cL�x�6`4Х�*5��*�����ɼ��uA��3�d/��l�h��#�J�a��f� #�\ �jA]'�ܒ%K�9��b$5fxxxA\\\IJJJ���W+m,��i���/����؞�����)�1cFYDDD�Z-� �p
�-���N��x6�.�� [o���3�LB_��CZX<���� Ʃisssk]�lY��/��w�]w�����~����X�J�� ��`�Ev��w�Hx9��i�O�7�`�g�^u3k��@idO�7k������j���J�eb``I��Zp�",YYY|YY��V5B����W���R�@�X��H4q��JKKU�����t�Z]{jڴiŉ����<��JR؍;�n5�ΦQ�1=�����ȯ,d�;�T���Gj**Єރ���p������o˽�{�K$���ׯ���r��.Q
,��}l�d�y��ڢ���6ԝP�̞�7��<��P��2�XC���#�b-��W�Lf``I�%V�w�5�`0�GJ#!ߒ���KJilll��`��7VэAiE.(�mۆ.�z��)222gʔ)�ӧO������� ��v�v��@o�)�w�� ~�3��	�e�t0��U_?IC$ܻ�5H2�q����ӿ����k�N�;��%T*�n�;ٲ)ޚ06���eHS���A�G+L -���O�:�"�`!�`���@���a���e�```a䂔~R
Zh޴i_\\|'������WW������;�Tip�����k�N�y�<v!�DFFFypp�g!��z{Q ��O�?;������z����2�Og�:D���ិ׬��,��+��c2�u�]�o��f���߿o���?L�0-��%�Z��T�T;�zq
D+)��p�|��-<�0(骛�A:�@I`�o�����P	��1dB�^~��~!?�$%�t��j���aD��}g��Zx��'8���Hi@"ط%''�O�2�l�����Fj�Ӕ�'q�PTWW�����p�*t��1cFI|||3Qx�h�h���9{�Z0>��f��s�p�� �` ]��M�,a�w/<�����:�I$<������޺bŊڗ_~9w�ʕ�,X�$�W~~~?��c2"��.�Ry�^�a���n�� ��Sd�� ��| A�hx���Q��/K���f�*6�<�G�|����Ga��vR��R�퍁�a(�F�}%�?~������4`ttta\\\yBBB�����-]�����ޮw������q�9�B�興�8���T���V���Vxj�EJ��&�"�Bۃ�I�ul��+����x?�LݗĔ�!�
{��;�G��&���R��NJ,�:��C������[o����+�w��Y�y���cǎ唖���Ԅ�����8��or)R�aF�z���, sG�9��ɻ5v�FHX����R�s�!y�9k�D��Uм�Խ���tV��)��E�3k(��F.H�'�r$J�������3u			��200�Y�TZ(�>���m$��?���(�[ou�('cbb�g͚U6nܸNr�4q>#�Hv�v�!��Y�$�Tr�fߦ�����$\����Z�
�����T�hM2tP����'H2�cF�E�u�����ѣU��}~fffNQQѸ���Ж���d�)!�q'�H2�Y�G�D(i���v08��ރQ���K�6|"�.#�ȅ�(́���YdH�Էr��h�u���ơ�l%���T�g��H%T��-�Bx���X�2�������Ċ	&�;88�醁�D-t�q��W���+���w�8��h�'N�h�9sfq|||�N�SR���*v�sw�F�;�#Z��$겋�yo4�����f0��3(A�u�(�NC| 8��'���(�e! r/s+ �BlT�v0=_fC�3�V�&?�����ձ�91|Acg'�����A���0����V��N�I"u�r"xDL ��N���ݡ��T�?k�ҍdh�.K=XY2����y�3##�u���5�}�]Qvv�����������@��\�q\����x2ū�d�F�����X�
n4�ҿ=/<�'}�u �?�q�8�G��/2��� ��iO��vJ"��k!-Ut�g1F$�����IV��M��Dx�{�4���%�C$&&�xyy!�V
hiPF7�@h;	A^^����&�Jyh;�1���k]]]y�'�H);J;�V
wx�����i���\�3�n�;����n؝��y"\(��@u�	4s����_��c�����?x����
�;�E奮��}�� hd���B�m�d;/�j�c�R���9��w��}��	"Bc��M�:^�N�uHH��e������C�'38+��ݥ6i
�L.������[:�y��X�J08y���YG:Ii3�uH2�ر�$Yw�***�dnooGb��W�^�{�.���� 1��Rf��ˡ3�ڎ�+��+˫����	*�֍vut �'��Ӕp5��;" u�Ը^�4��И�.A,�� �O��A4ݷ{8;�җ ��'p����v-�T````䂨�5SrAq���	��#���ꎔ����������f��!�1�ϊJ�� ��ݻ��l6O�T4oo�c���gfϞ]1v�X�R�D�ϰ�c����`Qϯ�u=�O@ս���6��]VQ�ē�+��Oz�D؍/R|�)�o��Aj�~c9��Ā�-c8��CF��G�>	���������%S8*�c����hh[�)�@����j�I���2~T�i��3P3�uȬ�b�V>����뒎�ٿ���%CՃ�a��7@��uV\S^?�S2��R�\Ñ8s�T��ÛIi_�tiӮ]�����3ǎ;RZZX[[���2�b��!�@
�f�%��TՐ�;W�IE�((̅�͹^�?��j�8�MZ�V�3�:[���J}UUCScc[��bί�U�T�8(��j8��nI_��>�:vwt�5�`���|��,�&Wq����P��4)��e�^��6xO��<A;�b�)f8����=�>
��:�3�}o
�:����ZdgU�ь�5�+X�$F.H�P�LKeUU�*�{DEE���av�'''m��T�m��Ch'�rQ~��GIdOL�5M����E			�:�NM��ڭ�.6q�Zк�Ma�S�V�|m'����)�iZ$Ŷ����E�7U�`p�$
��{r��W�˂!蹛���vN�MY��|�7����c}��6���d�OӾh���B�ہ�x�?i�^h0�`�����]��K�;l#�?A�|��Q	�Y)�86F�M��^OF͊� �����p/\��֊p4S��D�>�sg:����ϯ���� �e׮]U�7o.8x�ౢ�"����q����:;;1�)�d�8Cz s��� ��6�'#d�.��_�uLk�48%Mk��<��}Ԩ6gw�'����������̙ӧ��+Nfgw����;-2x�ɼ����E�[��<{�E�-��+=���'����`q�:�|$���ʷ�Dx+-p���2���3:�B	��Z��G��mS�/0��h���9�����{��Jq+匯r������@�
*��hQ�Y�FC���FB�9::6&&&�$%%U�)�J�]����*,f�	�T�ژ�'O&	�R�����z&==���͍�p�U�q�@|wQ�a����b���(��|�
7� Z+�^B�0SaN�e_%�3^�M<��ސ�_<���	c�l#X;��
���Mĉ2ֶ�8���#��ƒI���n'YB{�vn�J<��Ծ�:�L Ϡh#[�-�߸~%
�n���B⮁����i'un���\���`�rx��Ȩ�:�kkso�.�#�st=n���gI�'��4��N������tǎ�sss����G744���X,o:@�ۄ�fp���,^�g����Q��}��V��QK�3�t�we��V�^}h�5�T8���V���C1f�)����ġ;�~���=?���omu5q�-�쩇�9���Eca�K7�x𶙻���V���\�ZX����iu�y�(|�[�k煔�xX��®�'7��p�y�5���'��7?x�[A)S�>���[��jw�_nB���.�uV_���f�D.888L���88�P"�qӧOϹ�N.^�����W:���)z�D
��M|KNN�C||��H;E���5kց�o��TZZZ�F��QE�B��^���h�`|�%"�c���!(��?��[ǩB��B)%.[����QE�|)	��}�ϙ�䯲��\�a����$�9rw�J��4|��_��~E�%��vFaؗ��Z���a�\�eǡ(��y�%��z3f��6������D�U®�u�蔨��v~�#�+��iIi1PEF:1���TYYY����ʰ�~���"���ڀ���@�Na:K/�6!�N�x�!����σml:�l{�̾'wv1Ff��r]�T@lll�K/�t`��ٵ��ҟ�(ц�l��_��������|�v��V�=3^�����&E'�{D��@`b�@��
�m���OF��,(�C�����{	�hA²��M֖�R�s���Np�"	�q�>H����FE�풟��Yv"���-�YS�欂�10E��R{�^�ed�/���r��E000U/�\�+��4+M&ӭ#A�����IHH(�<yr������ �|�{,Dpw���6'���N͚5�(..�E�Ѩ����Dؑ;���&����vC�򍰓�.x�����{��^rR�Jf+zP���}X�r3������.�h�	��� �D<��sk�rr%���&A)��-�@��L��6�d'x5�LC�<��̪��r�ԣ�cC�s֎j�!�>����^a�@h�)��u�0v�L�BW�G+��3>>��Tv�����>�,�����ʷ��&���i,Y�1�).#�hxz�������w�@W��i����fq�С�9s�̝;��[o��$E�GB5�t��?m��\R*���S|�ܹe�MMh�u������O�@��WCyfy�Y	��H�����{I*���،X� �_6@�b@VT��������m��!�I��<j* ���Z�g�0>m=T��������UBZ??XI��Gf������0�t�+	*
"�8pw�po(�Ri�:uj!�C������j|~<U�S	4�6[\SPrA���lٲ%�|�&::��N�̙3��!��C��}D��h�Nqt?.���۽ ��a��ցhХ�J�T"7��#���2�=��� ���'�G��b`���ܡ�:Z�=Zy�2�{��,5_Ƹ�:�bp���� Ԃ�?`/�2���Qb�lM4,\�������ܚo���觟~:YTT�Q__�SWW7����_+��@���q�����H�m�nLv��/�9�&n��Bo�~�!"<<<��;�<��K/stt�8	TX�����\�kcc���{�+?\W�ى�Z�3�@Kut>�be��7��_��ҳ� +l20�������nW� �����.gϢkl#Y���l��hq�]��w�B�;@"8� ��n��OY�!�K.��\c���ׯO�loX#00�"&&�*::����E
��V� ��D
rZ��<y2(--m[XXX�y�*$_K<9ǈ�-��= �����,�}kOA���VJ*���"lu�����F�<ڗ����%x8Θ�r>��I +~��L�\q� ,���v����T6
$Q�u6V�4�� �Px.in��h�ȅ����SR)������b����Hi��ɩܸqc~vv����\����QcZ[[8�C�������3%$�A�ƀ�!�ɬY�
�>+b�������f�o����F�]�v�=��Shu$PǓ�����ﻯ����L�rbϾ}h����A�pт�����&|�a���G�_A�Cq��JhJ	v�Y�f%�Hm"�^����h��O�/��x����Ð
�2�55��󷰀�������WO�%c�={T&�i��g`�����Ԣ��Ī���v�R��o����8=|	m}}�ӂ򒒒�322�&M�ԮR����T�z*�����e�c4�Y[I���9U��c��_��*c�}~ �^�7�;�������:̂�,��{��c<u&3�^�*+`���h ��]��
��M�S�cTT�⩧�j���OK�}����_�����Ə�����F���5Yw�5� -�H�����h�Y7��Z`���2ߐ,�w��k��Q}�X�	dr���{gO�0a�/��"e�����ĕ� ����޽�?<�t��Z�������/����JV�����c��=�n�}@�AK�˰��"X�}b,��n���O]���ŀ��l�=7�B��&��u��݇���e��}|�T!F�D���o�Y����HD�.�����8qb����d~.�2�B��z��<:44�=((�����m�@	����d����6H����<���2 aeҊp6ǊX��[{7!�A'���~^�C��ՔVrO�LZ�L�;?��5�@�Z�f@�Ar����	�R���㱴��6�c۶�o��Fw��Q炂���fOR�ZZZF[,�h�D�	#��>ᆅ�.0�b5`e�������������@E�����1cƢ�K�[�~�A777� B
��;�z�$d�ĺ�o��@M[��捠;>�����N0���.N:���+�t������b�@Doъ�q��Pw-�:���YM`y�Mм� L'��|�@0;�Y���������p�䂊
�f�=���ߙ O�z�A��7'%%�$$$�����S!�8�	7Z&\�j�B��R.**ʗ\K��ꊿ���B% ��F,�%'�[�d�uQ wl�����s��_.,M����@R����+ g�ٕnJ4�y�E����mjJ48R�A�K>#�������N���߯=q�S^^���l�hjj�jii�X,����q�+M����<�B��lJ{���R�@�P�r˹1���6l���o�^~��=w�}w!t�=��R ){f]w]���o�}W\�U���r�{���G�"/W�G��x� c_�#/�&u�C�����O �(���.�r8����	�� ��:���
�([�����ay�9۱���NM�K�tm���j"D.���'$$`V�ꨨ�&�N'Y#��o�%H�,ʆU���y��އ<<<�T�� ',���D�KeSD~�e^iwE_]�{�OJy9~ ~$FLTt�6��"�D�{$Ak��֮�9�׿�U��?4�>}�pŊ����w�������`�����������V*��H�B
��NRv@W� Y	�^aQ�������ub�---�{�g��i�f8@����\BJj�ԩc���m��F��J���a��
P�~L��k�~�D��C6R�����	�At�;&'�`E0�TAb�ׇ������ܑ�^0��F00000\.�� 1�2�:��(?��'���ɶ��K��j===%��C`�z�����
�(#Vk�Z��.�߭���dٱ?p"�&�)b�� �5�]mVDZ+�н��d����SO9mٲ�;y�dmUUU�q�2G�����}����F�N��J��T�T"ٰ����db�$�5PqC?v�YL�(��m��o��a]��꾱x`�nz�_�58,,�u�օ@W����̛<sf���׷�yz]��b;��l�1�M �/��j�`�l�C�{ſ�':>eq����B����C�EFy���\����<   ���grAI�}��������pm"�rS�L)LHH��ԓ�icp�|*d_�‧��As$��P����N���ijAY`���bN�#�h0��ײj	SI�w�N4��|��A���|sEEE��}��,X���h���}�R�6*�����M��;���V�p�b`ם�p��OP¡d�p�y�"c2�5߉���5�1�L�?��O�d��(((��GG�>��%iW\�b���'�#ƣ�wT����*�b���L8��)���ڊX�"P.A�/���e<"�'�@Q�Z��00000�9�}���J�Ѩjkk[<���ӳ6>>�"..����U�Z@��*Jp� 'x��|h�����"5DHQ�`#ȩ�00��h�sc4H�-�+N*�nt߰�b����lܸQ�OXO����>�L��W_i��߯omm�x�>b H/���Hbcv���H~���w 1�3tŅp�E=Pϫ"*��G��mx?O~b������ꫯ���{���j�-Z�"������y;�X.L�
9週O���)� �D���f��~�n�+��|�,G᫄tև���}A���P���B���*20000�\�M
�l� _h���8n�pm�RiIIIA������V�3�y� ���u�{&.5.<!�M�!�[�x<k
�'@"h�Gɲ���Z���Nx%�+���ZH���TVVƿ�����۷�F�C}}������\y�� ��<�N�k����OO��ԭ��G<�d7�]f/�k����r��Y�7o>I�����΂K���-f���7��ԩR���	܄�lr�W���yxpQn��Nu� ���mv6q�:���
`�s0���!� 6|�@-(z}�#��\"�{�=T<�k����U���a����`�ώ��0�c�|�����Fp�fm�0dɆ�V�o4��F�l��K���{ꩧ��"QQk4��O?��ڵK����kmmu���F�AHsI����:�k[zz_'JHH��W�Şi���_��� <�|�MDXX����-==�N�T�BB����&�3����\P���D!�d�9cm���Qr�ŧY�	�[N���!��C�ݔN|�	�n��\�p�� �y�l�c````�-��'=g9���(�����!9%%� �ڨ��.�zr8A�Ҁ/�6��h��1���M4 tY5Hf���*�ZJ �⯐HZ���W�Ɵ;�"SW__۷oW�ڵKs��]ee����Z��������d�X\����-$�
G�xp�s���3`e�eL����.&�^PQQᖑ�q�3�<���;���		��I��.Y�=�bf�nJ����d�����?J��G�5E�k{aۭ��dv�E���9���^�+-�DlݺUg6���Kĸq�*bcc1�d��������o�Z"��@M6�?�q&�Úl�s��)� �mp��ผ5�����/Z���B	�������}��)���[�ѣG�������Jmcc��q�Ե!��x��&��v��w�q~?�h ����,��������c��M�6����5:G׃L䂳����OtA�|TCe3'�u�f� �Z/Ԓz��+�B�~�~S�p�1��������$��u�ذa�;��cc�T�Δ�������ѣGKV�G��
�#�jA"���-� u��=� ��5y^"p�=������<�_��ܸ�s�b�X������>P}���Z�Ѩ+))�b�H��#ـ�H��ϣ(� �M��-ă���aPQ[m��v��}�ĉ=6����|'5���I/z�@Gx�1`�Oy����5�P���=�z��r(���\P�Z��10000�\8��?oٲ%�S�a���Њ�������7��z)`�)�1홝@E�����-tJԑa�=Y7(�H5�k��`�]+�A(����x �t�\PP���P��:t���t.�՝�Q��*9.��"� �[��%�'���{�gd\��������A2�
�H���ђ�w��K���R�U{֯�L�!�6Y	҉�}!�x�@�g�Mkk�a�M�T�S�L)�������6$�D_Ƒb� ���M��20��ںAR������p�����4�lƊ��@3M��k~KVVV��7ިhlltR��Ί��P�6�1�?��Z�1t����M��ڵ�x��K�yah�=f�@�Y��i,���%Bu�h9S�e� �����f,j��A��x�V�K����lR@$k���V�W��u��o�d���������������>\���z�.���7��mg�@�j����=>��؏d�n���t+�?�����)�q�KV-:��M<��O+L#�Xv���F�������l�#�+.@:H���lE4H�o:y�$�Gˆ�Ij��j�1�ש�VX8NIZI)8�28�l?�+�Ȕ���"d�*A�NUi�*a>�j�wB�l|�Z�db2�}`6-���;�zRhlL4X+��3uG�+ؑ"�(-�x�uV��ժ�{�$�AY��f��=�	��o�6�����V�|��
�3�?x�bsZyQS�>�KĶmۼy��n+�Z���X111�>>>���!R*@�Zi9�D�f���Q��ڀ����-)fR:IA�	$�QI�S�3��D"Y�!!]eJz��R%��b�A(�<�ii�)+�Sme"��JA0�^�n�Rʅސ\�YFr�<���XJ�'*Q[�H,\H��B��T�gH�u��e-R,��>���h/����Vu��>|��	�v#f��!i����BOm��^c�Ϗ��\�Gb�Bm��j|�
	Bw��ޏS�^R�t9���KD}}=�E��r#ZixxyLLL�Z0SB�O��naV xt ��@ԝm���4�6�P}",�t��MJ���XI7��fר��B�=��yh�b�\�"�	~ٚ� �(�!�5f7Y����_�,�-y�o���F��T!�@FF� ���(��A��=�C9� ����=D� �ځ��H���-�wAp� ڗA��F�]��``��R���F:�/��j�<�����u�E^^����5���B�I�꼽�%�:�Xȴ�4�A0w�}T�a���K�b���T��b`��p��DR	e�n�� E�Nɶ��V�Żɧ�׵�b3���aHeO�"|e�}xA>��(�4��H.(A�ε0��rrK�B��\���ށE�12�ϰ��y�iL�;���pZ=��]"��n_p�}�A��������w�9�d��ڕD~R��\P�U
��s����0""�<::�&22���Z@a��(}$Z-KT}� �1��'߅�Z�n?~|5k)�%$��l���WM<'�)��w��&���^UM��	׃0-����: &�<�c�u��k�ِi���� (b[���gY�
�@)d������%��ez]$�
����уVJ�"<�]h@gI�%2���,,7�+8gH1hv�ȅ����4p>�VC����\S����Iu�äT�ȵZ�Vy���@3�+Y?����,7n\k,��#�,x�N̯�*� �5��_N)T����	���y�@ �P�XO��N���Ie�}��l����r.6�d����+�S�8r��G0U$�nD�������h�PP�Cza�����b[ba�@t����C� Xr��`�%*0�+쏽"�%�+�#�޽;
d�$0CZ-����XY-��ȍ� �TT+�3� �|��_�\��XI`@@3k-��ő���X�r!<�bbt� �[�dr�s�R�Cdi��!�����(&=(_,'���u�K,���8��C	D�t��tBo�z�����"F0�%F�dHZ,�ߏ��,�3�f<�%}���R$�ƒ����9��!@�REo�X�[(--U���DA3���GGG�[Y-�j�F�Ղ �<���)?*H�?�_�v!raܸq�'N����a�f��U)��΃.@�{�įVh��ў�<�T>?~G�[;��1�Q�ں�,.����{3VQ�j�!p�l"z���f��pG;xPb�>�
��X�{)�(n�	�mI%d�`0��'ȳ��qE�Ex&ٵ��d�ݴ�d��Џ�78G�4xs�NЙu��wQ��EY�o�>��b�4�����@T�jBCC%�T��Y- :>Ƀ3}�d� �~�+�iOP�T��N�ZD�n��`0�Fc`FЁ��i|�Z��K��r��씏N��^�:!�G+�y���LF��%��ꡠ�n���ZH�:�nȂ��C����y�.�3���o��-,zZ���]��JR�K�/In�rڏ�K�ay� �� k�� ����g`�l�C^%�#p���N����;�w��O�\�J4�tA��t�[Pdee9r6\�-*hiiiEh����cm�P�jA 8L�V-�� "�̗�,�v!�b̘1Uh�ڬQ�,�����N��j�z�J��T(u�T�qz�4��E�v�+�-���Z!}�<p��۵k*V���&��W\'��%!hߵ��p�
��C�	f�0�0� /��rY�7�Kdo�;7\k|��7�9��L	.O�_�y+�Ñ�g��q�jXL��c�1G��fժ�Pv���y�b�y�7�gM.�>}ډ|o�p����D��`�"����p�
�6:����_��!Ji�Z�H����o'��&C?���-o��������p���?b�a��_W����D���}j�N�VϺf�����z g�/��A�z���
���a\��RZ�
��*���H�\T���\�U$�3>Sz��/o?�¢a;��6���%�������-T��`��[�g5��`V���o���-�Пw ��qz�&J�r��蝺�0^����ꨂ���ka$g�8�S��ڲ�c;� �	�oD�p�,�KY-L�0���bf����0Dr(������d�����{/���j�z�B�(��5ӏ�)���L��1+D�ׅpL�Vn��/<�+�k ��(�#���ɐ@6���pz&~z$>>Ed��^~�Nx���b��D��W ���,�e*)nv6�TDx�^��,���/�H�4ا���N���T
UE�/\Mz�y�n�j��n�>��YZ�ӧ^��
.h��Kj��Π�S�����!k�[����E���g�҂����BEʰa}��VK�fj��@�k�\��e��Z�-	j������Y��L��O��JͦKH����������������rt��ax
V��|�;��=�����YYY�eee���,K��l�\�
�j"�~u����P��^8o��¾��{~ K} ��8\I�}ioC&g��V�v���5�.+��F+P�P���&�|JP�����#vF(��쳅���D�ϠO�G��M�z��w��(���b.?U������Ph���z��5��Mo����D�ণ��"i|Q�Ҿ��"��Ec)�H�z#mI�g����du�_F��B�{�[(��x����n)�ǂ��\��� ��#��B��&�Y����B�y�8_����϶%߾��C����衯�I��h`�@=�S�Ai-w6�����H�گ�y��r3�NPevv����=b8�kH$''O�4�NR�Hɦ�۔J#�&J[���)X�|���:w-���/4J�Z�S;pf��y�I��𠭶�'��D
�be�,���3\�BZ-�q[3~��&�^/$�(+((6P�%Tp�M��%��>���j�o�^r�ĉ�eee�ɞ\g�X�8��K�r>���W�&�/��j��r9٦�eP!��p����z$<l<�2��B�6��Y^.����[.��j1B�Ur�-��l�9��]�wث
L��
�K)(�������X/��6�`��r�p����_-()���V�$ʮ�(h.@�M�0����k��	Z����tJ�ܷ
����]�\�)!�< ��Ve�ތ���:�L��Ko��?�MPP�躪zb;��
v��/��A�>%އ �	)�9ҟ���C��0a��B:߾�YL� 0�k-��r�A2���%�y�x�RzR�q<?�!��'�Yw���:O�?R�{�?$=������������RLJ.���F��\�� �*>�H�!gg����갰�f��I����I�Z88`*�=���I.���'w�_���7�1T*����4X,�q<�<�54d�q�g�j�J&H�4/��=Y- )V��W���a3��}B~���������ݻw��9s&���������l6G�����ϥ,�*��T �렇��(`a�y�)8/� �5��k���2L��íDh�R�{�<-((M�˴�x�H���_`�U��*��*eo(�MFR=y��F�����k@A E�e��Z��%�-���<#�{~C�������W�
	)������w��U]�-[�3v�x&��8�;$H�#�~PJt1[6��@Ye��+e�Y�@	;ӎ3�ĉ��x/yʶl�֖��<�g�8^�%ٖ��E�m=�w�y���g(�!����|	�HK��$�}�,4��
"�_9����k\�+I<��͇P��p둚~oHJ?>r�А�;�o��;L2Є�H(�����no��C��p�۩s][1�=��W�u���ߏ;��������v�~l��.����|�*;d�)?2�K���B�p�d�y�V���;8F幞ʴP��`+،ߑ�H1(_)��-wB�o7.����x�}5b"��`�ͳ�xOM���ʡ��A5P9Fh�H���q�ZZZ�<%�c^^^sjjjϼy�x/�
��\�@v �B���a�՗��DR�g� O>���8ǅM&��rIƲe�q��Z#Qʹ�⛢�U�==��A,X��~?����{-���ԟ:%�\&�<���g�Yy�����m۶�}�������mdN����5�LK�>�u�l��>���+�a*3��Ԡ��n���/���ܣ��ҿb2;N���b¼��ﴀu�(Ek��	}� ��o�_��M��')��30����n&ɸ���L��Ɉ�U� �%?�́���Oµ�~�ɷ`�Q���Qj�t�g�H�m<�Ɠ�9��'-c����2�;5$�x�P������}6Օ3��G����Ŀ�ȇ'���&jt�Pہ7$1� �D��� ��V��ț12�!�:�3ȏ܏����]����J�!��6�2��jК�!GÍ��q��#��;��h���C�n��D��1G6��@�%�u\�?�'.���LA��k�<��<�=���b�23�C����I���~�x>��\����.~_�p��者>Ov'����mА�GWW��(-0�A�2MvvvǢE�Ծ��f:P5���Bo���P3/ŎL������yP~�	n_�&���G�\|�������Id���L[ֿ�J������<�X6����~[[SSQ�'�
��"�!�.�O�]w�)--M��g���o��Q]]���ݭ1�L*��y9r�:{���Hk��d�y�֯��B���87g�����گ �ۧL6��p���ohL�Vh�7� �1ŷ���SA.��"��Uk�����Ő���h�N��Pr�M����䵜A�R�r1
��BG>��'P�AG�[84��G|�Rl�P��/��ۿ]����ŧ?㥵���I��$5n�`XXĤ�=��yv�p�?B��fj7h����<1�a?�H�Cr�C���U�W,y	�3�o�����#��:���8z��N���v��3
�#��l=�;'�u�d� �������vu��٢���a%�8���[���%T�p,Q���煠��c��r��Sp������5d�t��/�c2�t�!{ѹ��S���`���3�m����:t(<�RDzzz��������J�:�,���@š��b����t���C��/�_��A��Xy6<��&��j���g�}�j��M�	������<   �P.Z�Cy��H��z��YP�� ����^��}��ҥ7���cJJJ����Ow���it:��d2��͕�a�� �u�¼���7�8��Fη�׾�8����Ή|Mv���^U2%Ă6MEY�MǸ�-���D�{p�;����|��˧L�$p1^V�y��C.���DW�yz�#�+�+����8��%@��#ws	'�F�hZ��{6�S�C`Ԏ
�7����w��2֫�@��sd#_��LuT��P��/'��;�*~׫������nz}.����5�ш�{%1$Đ��CR"��F�Q"����~��b�$n����g|8��u��_ɋ�P�dT.(|�����\��=��n���e������'�Ƒg���PbJ{�k�����>�q�B�pr���^җ�ayWB�`�9]F�y,C��h�Da����R�.??��h}���Fj��������@Yh��
����{Jz ��2~�̘��l�2|!�`�=V��Í�a0�nYf^Xp�V�O��"i/������u@v��u�ĸ|����L��cΎP�N�ǜ�b�����������\{�������W^Y�dɒd;���U*�66.%;�j������k8�^9�1B�������sh#xb���\o��dg�A�;���l�K[9�Z	0��8܈!/�F+T��N��".����jyun��:Q*�,��<�_8�X��\�������T.�|G>���r���(��>ba���i:�E�F�`���=mߑ�%��~�VX�#���e��K��g@n�FW��v�0 �G�P_�����C�ȡ���~��btۍ .^^?Ƴ9 ��oyI9o��>g��r��Se����"G>�ⷜ��B�D�����z|%>ej�Sw�����i�oˆ��uy����]i�ϑ{��\	^E���R�F3��-$%%u����������7�,$bdT�qL�R��.׻ލ��DI���ٵl{�s���EPb�#���'OދB~�b���ɽ>p�� K��'��)X���K <Pw�%n�ۈ�����)SRR���yR���������n��M�p��m�����_�jvvvQXXX�\./%{]�=�]P��Dc��h�s�����;�����x�7A���E�9�!'
�Wdw���>��)���{���Wk5�5�8Yeg�xz�H��SB��'��f*o��v���N�G�/�e�O�'�"�~� �k+׺�d�%�1��5��R����t�nPcTQ�am[�ATE��o�r�R����z0��%wB��/�ą��~#1R3)C�>P N˥#����gR4~^r�`��r"�Iv��<���M��e��ӵ���bΨ�1a�Gs:N���^D�_-�/|F����ș��`����2�10�A3�7/^��/$$�OJ��92��ka| ����(��y��'�n;I%n5}��E~��oGU>ﱊ��3_���꼶|��<{.x߿�hv�'$$|O��������T#�D�'r۔�����Z(V6�����k���ZX/ڶ�>�k�{[�t�O>є��i����:�Nk6��(�?D�_���� �S���E?�,��%����M��}�'�o9mw��CdU>��| ����Lv�g���2�3��v..cr�*��"�V���5ǠzA��\�F2 \M��P��0|�a�~<��P$�X�/"7˞/�F^os�^���v�Qi�gc�L�d�Jb��>���H�7$��Qa�N��9�q�D�I"�!��T$�{��Sa�{�D��0�9����dU���(�N8��=���Z(~J	@�}�#,f.A��D��Tf�������A��i��g��$�B��X,sg�͙3�{�ҥ�� �J�tsh�0!T9^�A,�A�?s,a��qm���( �8�cƾ[#�ğE�A��|��`4�.�o����&�pq�1�,~��բE��222�/^����Fb�e0)Qj��200�ʹ��*�`�o�WJ���gÁ����w�|���H+��>�yI�đ� ���"�bb.d�:�5�ng�A8�%�Vj��QN#����7������b��OY�ŀ�$ɜ�M����>Y����J^"לZ��V���j0�dv><�����Tb�I��,������h���s9����.��Piw5�Q��N��x۟8t_-���D� �����#pީ�,�7��n�����֪I�Ӯe�q�aeU���e�L�}�[��	�����`Β>g���Ǝq$�R��Z��ș,E�%K��EDD��ႁ����a|��T���v�ِM���i�/��e���jV~ck�?�Ğ�Gk�l��/�߉˾T*�6c����H�k]ہy-000��4�l�al@/<zpmFa �6eW,J7�M&�D��QE=�?��YcgFr�w��-i���iE���K����f�I�l��x�����\
Կ�5p�X9T��MM���@�ϝIk���cƛX
v��A�=�������n�I�V) &�+4$5j���א�������,�ɳ�~2So����q�hQj�%ʶ�Or)l&6�ɹ�K�hL�*����
��t>d(�\�R���Vk�L� ??�>b�uΟ?�����^O�eV~r���1��d �?kK��@4��F�^3##C�����P"�(��e��u�k����c��:N���<�7���Iy�=�8*j��v�JL��A��W`K�Jܧ��I��K�FzY�']"i+I��o��K]��.�t@��PLu�I�1�ؑ��;>�͠u�r;ې���p����r��)���~�D�ω�gHv�sa�vAk�N����;U��~N���������Hu���d慑��ٝ'���V*��������Ʌ��*A�@kKIIQEGG�����\��f�z����q(��\"x2`)� s�s-unnnKNNN7����UNu��<=`����W���52���=Mj7Y���"�{�K!�i������蚎�x���q%�`�?�n��p<�u��8Pó^a�C_l��~&�̋9Wo�+.FN��r��T�F�����b���ү7M(A��F���S)�p��!.&�#x��b����3Jt��j�}�$���K�m��V� ���(о3Qz�R�����599Y���o�F��r-�	꽀nbG�.l!"��x�r[m�I���I;Qne2��*�|L�Z```�<�U���I��RR�a��6W`[9�����6�r~�l���7��ObH�Sܳ�i+��[��~ËA0GZ.tA撋�7�/N�%3ՐL�;X�ܩ�?}B�g���%g���9Pab"�j��I>-gʵCrN+x�Ħ���!υ���`pGi% ..��U111:Z~��6���ds+�ia�כ\�7sp{��.ғ��ۖ����W6���k����c����v�vinnO�ܹx����J"G3�+X���a�ݟp%�0L�͙���v:\G6�ÿ{��+3��Atp��+N�-�c�!��Ի����8?r\��w��م>��n�c�CO�e�B ���ן� ��r	�8��a�Ǡ�B����#b&ޔH$�,[�L�h�"���$f��`�}���F� Ash�Vآ��BL(��s<��Ȭ����1;;�3))�_*������V<)b^�����Y躺�c.����`t��p=+0|����c�$��©J�*����ymA;����82���T��?A:�dv�!ּrDM�!i�����%�s��;?����'ۡ�I�s幽ρ1����wr�r���{At���O�:r�QOO�X���H��� ujjjwBB� 5Ґ����W����=?*ɠ�����(#k(�w�\���Vfee��������-�)��a``�D� ~�@EV�SMM�//���0ѡ]'E��iG��m�z0�A��A�/�>p��V'fJ>g��x`+l�8�r:�=�?����ލ��
.'�}���%g��C#j
G�����P�!���z�u��XW9�ُK9R��!;�i������/Dãd.��Ϳ�	�\U�YE.���aF�mX~rΜ9��[C�'&�*<i8\c�}����v�_�7�"?�?&�H˖-k���Q&&&���bTp3o�ׂ�y-000x����n�Ч�3����K���jyۗw����i��6�A6ʎ�e`��=�a�rc�	(]鞍��I$.{�����ۃ�fh����d�vC�w�p[�cP�~`	ǵ��xƙ�h���n�����"F*�%���A#�k8�v��Dr��Cp����c�)������ �ռ$x$������ �����Hf"� �J���m			�r�u4������C0��HھOk`�W?r'����fѢE-�iii�~~~��"!������<����^��Չ�X�EEEa}����{]z��
y��{`[k^�`'�A�w�\�C�u��\�`���fy��{oXE��d��������"#t�B���@���dޤz`��v��찶��bFˑ����1�pI�S\)�I��H��#��(�&�w�cR�4 q��R�%���p7���'��=�\�Ƀ<��}}}��<�X>�ctt��&rć��i,!����G�V�vl;���0�!�����)((h���S��(�w��� �Z```�(tW\��m��Tľ}�F�H@.��c�fxi�lp�ʷa���p{�[���@ì��.�����������J�O��6ڡk��M�W�
Nܾ�N8�i��<�f���ϛ�yr�gƸ~"��-�H�4BwP����I����6��4G>��1N�F��;H�tn<đ��A�qr�<��IO����^���L&�v?���B�54�#P�?#�Zphx�+�.���S��r�e	�f������q�'SSS�|||P�2؆�KB�Nn<
�V�eo�uO��***������VL(��� HxXe�����Ք)��
�/y�Xl��qpr�	(�xh�������f�7*L`��_İ��Q�\�- ]���&A0H�����l%�{`���z!lb�c�).��1x��d�u��H�}���C�Ⱥebπ�@�$,�_.���9N:�\Z� yw�?q>���g#N"DV��k&݌���9�����mW��)�'pL1��~����as_�,� A$�jXhhhwVVVknnnל9s���om�Y�����)��Z�l�1��aZsKK���\ G��D���a%��އ},?�8Ђ�uP��@)�ȅ���K�R2�i;6���|L�DF0�	+X���mm��!��w�8c�Cڳ8ƂVF��	�	uu{�M��n��<�4\3�_��*X9¤�X(��f�Aw˓�k@�_�˕RuR�7������	~�.\C�p�+�X���t�2a9T���V0�<S����{�9yD\y��T^�R�b>������~V`Ԅ�z�^l�Z�3�f�,Yҹx����p��$�Β��N@��6Y������jv��ѷ�&���b&q���� 2����D3�t�����43��AV���d�f8�8N�T�j4�@��Tvn<	GO��o��O�a�G�L�	��9b[#��ݭS�X��^9���Η�'�9���o}�_�;`�@b��ʗ��#^��F~���X�3:����H�8���3y�Y��v�8���tYRՙ�d�q΋y2��Ք��l6����߈�r��]\�W$4L���:�<Sc~,yFn��'��y���T~��\C�9{�M��A�L&��j��17"�1$�|}}��-,��{�<uǌ�;�`X�:lm:>��I}R>�������֬�����UPPϊ�T!W��p�3�s=�zVe��aR�� �9��&�;�i�uR����d���a9AC#<	��H1�=w��p���'ޅ�_7p	w����S�S�����T�h�Q����P��l�����p����<a�̅0��B����1sش�l�l����2�PŻ?q���������5uO|�N��k��s����ɒ
��b8\��]�X���?ay&�t����;���s��Br�'8��l6�`������/^����ۨ�L�Pc��2���pyj�\�6l�S�X	�����;&F,xyy�/[������#..n��+�V�P�������}9M]��>i�ܤ���=V�g��[X��硉��/W+O7�@��N��%ޓ!z0�	�ε[����8㙁'ށ}��<	�ȹ�:��E��}�m��J�}J@9��s��W��Ե(��5��[�$���еE�@���1�~�&9���Z{��U���N4���T��������G�#rn�b!�����<F9Q�Qr�<K%K��0arapZ(�0c�"222ڒ��0�#��T��%rt�20@��d��u�WP��O�b>�?�Pk�\@Y���j����HOO����3Ry��%L�����@�Q�-+X?=��ZL�9�Vu�,����p�����r�"�e�����E�������No�?�����S��q�]?A�'��㸶��	҃�7`�'�p<��P���&F p޶�k�4���z�;8�]耾+��?)���m`]�d[D��;��)���=�2�\�%������S��2����e^��͓�'��F�4��n�2����{a%()8����l����/��/6ʮ!Ncwf��T*�c�:�{{{�
��*1��*|	�"TV���n{�l��|A����-g&'	aaaJ"��]���Xz| ��G'���Ƭ�tC�P֙��O�P�����Mmܦ�O �?�AQ�]���)9`���Y���&����\�&J, ��b�8�\(��^�A��P��Ę��U$Ԡ��E��E-G,`�;t��rgG;	�`ؤ�B��7a����"0+��CВ�l��s��fJ,���'��d����㴗1j5���^��HNM�q�r��H���"A1��?�.��NK�	�3{8�=,���D�Z���D.J����z��
ra�"66�g�}QQQ:J������e ����I�֭mP��5��R� g�#;�u�eBH$&q�p���5% ������d��	�pWL�r�Hnx@�p�'�g�8����DS�m��d2�	`�!n.YL1Ì��
��1�7N�|�[����Y�V^��"��ꔃAbέ��c��֗a�G��#���󞄢=]���l�����c:�\�8�yV�DZ�;`�5O�.���(=��!��}(2X��������@��"�3��_>у]�A5��U�M���^8Is���m����a����0�J�]�G��7 KD�y�=�������NF0��\8m�D3"�Yvvv�4����Ȱ�D�S�pqnT����l����އ�d���yd���9�C��)ϋ-RYm'��&qď�A�'Z���$�,���J���.4�q��H"|�,���7>��)G�ܤ�7�N�1.h��<��p)M�=��sJ���3Dr_� �u�S&��H�&ǃ����d��;�Hz��	�-�ڡ�,bhwWqƇg��h�hH_��l��+�+�0l�Ó��ߛk`_�˰�ï�ϴ�e�y�������<����!��>��^���j�\΂����Xv~���w�
��� 묄��?列z�����e�|��l��a��_���=�:�
�����uq<��3]��ɅAa�����˙L&�fff*1��D"�P}�m�Xc�Je�Dgtg�����Ai�cP|l?Q�fp��>��'>CV#��N�|}}{�������ZQI7�>Nn��M����P��6n|]����h?���N6�~���2�cQ�N��G.�o3UD'+�܉ٖ68T{�uI^�%pjVv�a��3=�Q���=G�N)�]�O�&�0D�'����>��j���߂�%d��P4��ë{��=<   ��^�Q��;$��(!z�#Pt�g|��>Э� y,�3q{�O�L��{�D)�?7EW?��z����΂��E?(`ϵOC1�S1\e{�~��a��K5]~����ۿ��iA0�q[�<lk7ss���.1n�4O�!Jk&]AΕ�̅G��2��<���ԟ�}�g״$N[���>ѪzS
b�aH�fΜ9|l��܋��2�=�����*��]�	���3P�_�%ڙ9 ���� .�����I�~P��l*,,l�� iii*???��
�'��q8��{bl�vA�Ihn�����M�9W%
��#�5:�=�o�N$GS2�s���e��i�zFʡ��y7%D��ÌAQǮx��_ 4��� L�j�!�`@%O�8��p��1ة��a���kLK�cP��I.1�6��	i�t˱`�ܵӹ���e�}�.�3��:H��F2���y�,}����32�<��������Y�Ĺ�ۅ׶��YH2���n[��&?[17�;�썏����s���݁Da�XD��v��%H0|��;<�����ۏ[��5�yn�3��:�;8]�b��:�9���c���	P��.���}:!�ny�8��z�vh���%���[8Oq�P\�ɛ��N.�D�i�fF�����~������r~,$b�(�iC#]@��x��g�
;�;��E�gZ�D?��_���z��(�c!>>�5++���̙�	��خ<�p�,Lxl�b�v;1<B�_�mz+[���y#	5;�`����<���=W��S���nw�ҌS]�m��^�"�9��T�B��>����)mU,��Eg%tn����5���,�G\�$��w v�m��d��J�\.7��VW�c��>x�����g��_���3=C;�=��_���-��%�Ƚ�O����+P��̯I�Rg��+>����J����k��K�������?~{�Vn�����!J�9B�k�����0�j����7�a���p(YU��!�x��� ��5���s_DZ=�~��e����p�����l�
���Û2�LV��D�������rN�ӏ��Z�����a�όE�dN�؞�(����W
��]1`�"y޻bl}�c�gW�I����S��o8;J����v�;o/�wޜO.P�aZ��{yy���wGGG�Y���J�)��Q���*r��n����:(#�l��/CY�)�t��9i�m}�� 	�<XbK��OW��h���ޚ�����˗�c�T"�J���
�8}i�eo��d��r����G��MG��YJ(=U����?�Aɳ�	����s�z�D�2ru��l��;`�]��D;y�����&���'��g���	t�o��)�mD�9�_=���#+�W��)|����6�cXgx+t�T*��G���p��:@�d4R���W�ޔ'���vf��@���p<�9(���;�N�󐚈6��
Lpx�DH2lU���Ư`O�_��'M=�=�S(&٫��*����{�-�!��Eh<�Q���>����ђbΨ���s��|j���;,�&�!E��}ɏ��O�&����P���I�E̷�63}f�h"�ʌ�`������}�\�l��?����}7>�H0�K�D���ۡ��jbF)я����R}q��Tw� �}͑6�ݏ~��j'��u��g�_����0.�Jb��Ȣ��K��J��M�U�lR�I������M���q��5l��+аg���:o=�ġR!c%��\.Gυi��b���=�`S����!�t�XH��Up�t��r.�8W�����DK����}߫;�"o^���:B |��Iҫ�ԿCL�[lJ��2Vf�=�.@�s~~~CNNN[VV�*  ���9J��I�`�X��D���B�π����pN2D8�y_�*�C�0��ֺ`��@�;����Y���VȆ9\��qt?4]�o(5�N|��E��Iv�� ߖg���� ����I��`�V5�{-���H�V�1�~^�����qQhZI_�a7�s/�$OG��84Q�J���1{��Z�<3f'
���T*5��^)�N���g-m�$*�d.�����B�S�!���!��`O��`}g+4���H�1T��ݸ���3�[az���`�`K&�D��h�B�I!�O�@�E��� qs�4-���vC�W��|`_Q�ē`���z';Oh����k��������_��P�8Yi���=c�&c�~'>;��Ci5w�@�U91w1Y���C���>���$׷6:V�\wQ��^�1�>7��z��N����O΄h�#[���a�g<!�O��K �T.{��u+���{����Н��#�0�D�8�?j��(0A�m�������	��+8��y,���$c�q�������qD��G���9���"S!��!�	������P��K!��d�#���Z��h�Xݛ[9���ϼ�y�n�V�:.�O} exK�&��;54��lz� �WC�X���?a�g��gl%N#����˫`` �+�����͛����卶&�p����X�<����p�"0$��v�B���}�m��/
�X�h��RGē�ʜ�셒(�Ą�I��-d99<0�4`�Ka����������ֳ�:�ˤ�De�rjr�Ҭ�J�W7���o���LX|�%�`�;Qz�-����Ne���Q;[�M7�\aOS�ճ�a�s!|GO�sZ���/��ZN1�k![�S9��>��Kk����_� R/;�A>�$��Uʻ?��{U�����U��$28o�t�A�DҒ�k!�� ���)]�a-������&F���t��V��� ��-������_���Й��\��u��6/D�
y�k�⇧�)F+,Y����dB��Ct�|���N����Y�j@��vP|x�S��Ǩ�
�f�$mt�����=����t&�6�1m�p҂�E���%v��I� I$�+�\�S��s;���՗��f�،$%��j�xRę�ӵ�8;p�wx�!���B��_qB#l�� ���֢���Ȟ��.w4z�C�Ť-Y ZI#���\	q�~ M�X��O[l��{j@��)n��|�!~B ד
���"��ԈT퇴��'?{��!9��t��p�;����- FNQ�<I�ӑ�P%V����w�bH�.�
�=$���וq��a���5`�c\�n?p ��/:�Ȍ7���}?��9N��r�6�0T����f�N_��VB��Y)4�q��/��M
�����O�<#YYO���H*iK���|��d��%�;�<#1V��c?�����tz�,T�&�@/���,�y�2��XJ����):�8.��5%x������>cl(����P��pvȡ	ΛCY�V!р,.�쐿��{�����vuu����Q@tO>��믿�1..n�2L�R��2r�=��<���{�U���"�dY��N���X_�`_U�Uf��WBy��� g�{)y�E� �7Z�^#&K��HH+y��#ݤ"�y����Y���8�`��	�N�v�
$�֬Ys�ꫯ����;BBBT�@״z�s։Yqq1B�2��t�x����_BDv"g��nf2:}�kh��GA��AAơ�n�{�k�+�}�>㴢ұ��y�Tso˂y��C��r?xJȟ.��&�{k��_��mK�87�Md���d�����a
i��U&���aޥi6/I��FG?��;�'Q.7l��cZN���� ���&��q![�\����g�(p���ao���?`�g��v0��M"E�E��X$�HB����+盃�Djd����4����D�g;6i#����d=�!*�Q�� Ryt`h���?7�@(��KHH���㏷-[���~�W�z�N4%���Dg0r��q[D߇'J!�O�B�e0GM�zw�d,-���a�x�Z�M�a�_���W�#���2�R�<��I�/�>[!�A6#��`��I��h���h����@��+�䃁�/��������.�S���:P��>��{�4��+�`�`��x*���B�rI���,�����%h����b�d�P:��=�<�C��@�\*w�(���MGI�:f��(S;[�I���zW,��HiQ�>|�~)w�A��Q�0�' F:�1����	�|*��<�JN����{(ρtL��m<Ĩ���&2ws���O�o���E�����k"�"���y��Sc=�j����ؔS=�QxXD>?U�,��K�"��Q�8�l�ϾfA�H帓^�qI����]���Ku����=��X�ux�d%):G�7r��0V��	%p��~�i�}����B��t�0۞}��ݗ^zi�����>@��.�XX�L lĂ50q17�M&K�B!-ٲ%�w�����d�/�O��
��61@�����Uq�qT;��m8�`A�vdE�p����Sk֬���ꫛ�ϟ�O���E���dW_J0��=��qtQ������v�L7q�Im��Q��i��>K�u��T��y���ՋN;?U:��.�h�ln����8��M7��9��ُ���b�uts��];�&r���#�7
���_*�=�/ `�`�_�%�4A���c�j�:��l6��:����5��`'�'��{���*X��Kg���������6�����]��S4׉tS% td������`")���!��%� ���&T0P�}[+���2�l7s�v/]W��_��Te���L�H�"�>�O�Po��^T��~��ǈ��xgGUC4��i�{l;5�{a�ؔ�!���2�L�֏��RK��F�/�"�
�{��X�c>R���C��v:�*7��C��=}}�#���0�緞����.)��jp^�I9��B���?%���~do%*)���'���B硆��~,v�o5�P��z]#%Fkh���L��} ��-sǑg-��*Ӽ���a��qYJ�-��9��X8C���v>�Vz�:*u���Գ4� �k``���ϯo�niii���ZAHD3��ܹa;*���L�p�(�yP�������d����H��Q��S����<�B=�DpƩ\ll,�XhY�|yy���ϏӅbc�k<k�t󭧛Z%]\b肃���ehHy�WAb�����������������   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  ��������^  ����`  ��������������������������������������������������������������������������������������������������������������������������������]���[;a��e%]�+}�C!��K7�&���}���_~����O�Ns)1�\#]�:�Zż��۸Q��F�^���5k5e[[�J�T�:;�]����ҧ��$youu��l�N��$�[7�z8���͛�����.i��9�$+���d��]��QC	תxb��E7b�p�����E	��ɑ��s���j;�z�	��m���=}�o�]Uh��s��Km?]�TTY��u�,	��<���ay:q���A���\H6HG �4$Z����������=�Wy����u#5nz��D�ߟ����P�$�~3�3y�'�CϏmZ7����'���:j�0bd��?��'�b�Ӆd�������c�{.t�k����n�!�+�N^���o5՝S9��5�7���Tʳ�J:.~�ȳ�����$�N:.Bυ�	��hc#�\P�sï�%N�%�����0�I�rss1�]O7���b
��W�ET��(s)���t�҇���
G2����a?m%�߮:������Mg�}v{jj����D�t�p�����G7� �(	�#�����M���3��$��	=L0t2�i���3z�2r~�
l/��F:q�O�, �0��VG7v��BC'Z:�r��(�1q� ��K��X����ЈDD̛?��b��A����&����?���JiM�zh/���U~~~����Ӵ��D�T�8E�HA��`
a���@���K���{	�$�F*�	�$=���m0t
��OL��b��Dǎ��C��d�X�sa�y��M蹠��E@&L!,t��r;0Q�w����>o��D�d#,��=�A���r�d�EO	�v�B7mL�O�fm3�Y�\�6���PsHHȴ�\�3gN_BB�&,,�gq���\3�X@C,�n�Bb�斖�K�Z�����b�Q����F^����xv���ᘓ�'�f���)�tLT�dT��� �� :��O�d����M��i|�&��ߍ�e��3�XHINFcIW>�3�ȵA9ܽ{wȭ�����Ǐ�{ʽ��Ӕ������Ǔ�J��c��x�7�%\{)�L���5h��j�����N���9�����)O�O<��6��l�g`p�\ �&n������r��M>�:M������n�6�ӞX�P�/���w��O�8q�L�������bŊv�bB�,��l=U�Ɍ�r��x��;+��n��E����{����s��i��e������I@����v]SFؗ�����~�;v�Xi�Ze�t�~~~ڰ�0� Ա�\-bDb����"<�S𑼧�s�G���UBfd�L$����ۛ#D"� Qb��`���o����I$>6�NO��0=!�!�ȅ�P�/���XUTTt�L�1��a8Ċ+�RRR�4O�1�XȎ�d��Me'�C�Q�]4Q��g�a�F���c�e<q,�2��˅�Ր��9笢�u���w�y��b���ۏ��R��������
#s�����3�f````����i9�|||��@�0��j�.&}�.X�@·D��+Xf��m(J�B��X�馛����Ga�TyFA,����Hk����	�e�������"F(�ɔ�D7b2AHX{{{�eee�'O�����%ͯ����`0HI�N}CCC�aaa�����5kִ�u��ހ'�|�45#ܰ�A�:u���{�]��?��TR���ŋ�����4��K�������0M���$g|||�S����ᘘ�>� J�:�D�˷0���{G��H�B�]�6����~`���3�E�5���`8Dgtt� U�1�k=ؒ��p��e�Y@
c��RPX{�4��y %%%!�6m����躺�����9�!О>`	ы/����^�������|.��l܆����Gy�ݻwx:�@�=KVVVgpp0��FC�N��K�2000000��\��wn3���x�Ћ����.]�Đ�L�w
O��*[�0�F���Ѵ�<�Lҋ/����j��������i>�s0�����Be���z]^�ŃH� J$$��n������{�����5�رc	F���}!r(��2�z�v"�G��9��2��F4�Cض}{ԯn����Ǐg���r���������
KKk�y100000x�`4������Y<�����D�ez:��[}e���B,B!�x�ؿ��//X,���H�˖-�_�|yknnn� ��!"�X8��������J,���
�)_��g��{���Sw�ڵD�RE��_F��Z�C����A�f���8Q������f#K��������������W�a�3�\	�����ۻ�`���\.���������F�e�7���iM,�	��O?�4���z��:S�]賲��srr�0"""BG	��T.1T��ҏ,|6u���2�HZ2]�Ƅ���8dݺu��7o�wu����;���{�j�����wA��^U�܉���V���e2�O`���������0����`		1����E{Zt622R3w�\=!F��F?0���J,`��B|���7�pa3����[���[�=�ܶ�K�R��zҪ����)ƣ|O)�d@,�~����^z�����dw�K,��z�M��#lt=Բyd`p���RRRz�̙��?ꆡ�2�L.��L�� ��Z[[GL��n$%%�`l�L�{W�u���?=���b��iӦ�뮻n��d�;����߿'''��s�i���쥉Oх�(i��!F�$�t�=��B]W��6���ǯ"k��H=�Ͼ�s��DEE�eee����vຂ�%&�c�h\�������D̷���GP�D�̑�����af����]���5����R%�<   �;K�I�>+U5���0
aݺuk��_��L'�R�����~ٲe-�u�=b8���Ĉ�e=0��b҂�ю��رc�$ ��]��J �!s�K�~�:@UNNN�9�ӹt�R�\.�9=�T���.Y�˜JoY��O$�&c��2Xq-�7oހ��/ODcyi�o��������>�G.$&&��0��SY,�)%$�q��j��UR��t$��9�X��K^2�q3��(MKK����m]�re;Q��4��q�j���d�p�lH�l ��Fl�����|���o6��A.^C�}||����{��u��a��ŋ�Ȝv������r.���'��N&��~ȗBŰ��_�y�(��F�5���Ӥ��tGEEa�]C�����100000x � � ����H$tĨR��L���|�(��v�yT0d��Bb�#��n�L����~�qqq�999-�w^ˢE�Դ�$���n|Ft��0��3dÏ�F2���Z�t�ʕ�ڿ���~�ve2��*4d������㻗,Y�M�p�B��y�L���Vjd��9,s��ԣ����#AN�3l�:�4I������@�Q�p`pRRR:�����3ɇ7VOҲ��O.���`����%I��<��w��`�
�g_���NN�CY�Q9��'o�n۶-��K/���g��s�Qdgg�L�^Y�����D�yup�ݱc��V�\�`www�K6�t��Y/�u����WuTTTOrr���a΄�mXX������1�C�5�-�K?�3�әK$HhC� �rx�� J&`��5�e�El$]�Xl,((P̟?��<�&��7�-��y100000x � T�^�0oo囹.G�&Ƃ�($��T��IOb�$ba���
�"��O,�S���_�l�2�Yg��ER>�X)����v|�̿C�"��7F^s�5Oوu�\���w�u�/00�?""�711Q�hѢ����!3�����G�'C5`�R��D�+��iO ��(�$�7�=?�>!����L��@$���d2��Z�
�cc�=]�x�b� ���0$�%if`````� r@�w�(�����.G�`��^AH�� f�oaJ�� j8Ɓ ���_q��W�@�~�X�0##�.77���s�툍���0�p�/Or192��ԸC��!������|��/�pz)R���9s�`�C1\:1�!11Q�	�0,����=�8i�&����w��H�iE�90������B���QHÉ�sSS�����o��]��:t(���*��Z�Z��{5΢�z�o[���-Z�9PxD~=e!D.�I9�!&&�@�����jLaň���>�\����:9u��M %b���{�7鍊n��L�
A`kRRRSvvv��ի[y�(��,���3�A4���' ^D��N��7����lu�B&��222d�:�|����q���ڥ���f����utqQ�94�Tp�� %��>�"O�͛	|H�?]{xoF��|	����-۴iӜ�;wF8p`މ'�����F#`������#���=���]����'�2�D�ud`````�(r�Bq�\ J�>,,�W,+��b�nstt���ߟ'�<��i�T2��c��(
���_=��;�x���T 22�-++�����o�����y�-�/�,���F#�xr�|_}�U�-���d#<<�w���.���-*b��R���q|L�e�x/�0C�;���`sjA R�*�[F_��BAH����c�� ��9=p�@PQQќ���Ȋ��Ȫ��H�Z
ȩP��1=�9;dI���¦������!f<Y˼�<�\z.X��n�����H��bI��Nbʠ� �=�H�;�p7��� �br�9�����֮]�7"#��p���M�g!88�?�dy�xT�暞 �d�����k]&���dd�:�/_����PcWC�i���<On�ц�$��6췑�H$��<���#��:��h�)v������߉��\$x/�x�@�*�4�H�aM� �M6��2�%h"��vuu����z����'N���ֆ566�)��0�.��� 7����Z=;��������΅jȳ��|�W�``````�,r��9����O�Z�F�|*:I�` �,�Hx��?udp/����|��O�裏.}�駟$
��'ܯL&�����C�yժU�s����D�������Y�g�/G��ց�ɹ����hLr���T��o��zhϭ��Z���g���Wm����t�1��}�&�0	qZ�����X��X�h�@:� �{/�l<c�Y�D�C����]QQ��ԩ@҂��ς��ڂ;;;�L&��+d�H%�(E�*(vty�:�^M����111|"�S`+-�v`�������q��U�������
�F3%�$����"t��-��X�SBa!�N�yـ[n�%�����3�;��/�H����uyyy�U�V�&$$H�R|&jI;	�8}N	f^���g�Y�����9 F��j�z�;����~���_������Қ�Z�lY�\�I�#�D����B0�amu�!����	��u2ߧR���������~
�§��ݷ��͏�tvv��y��X,ҩ ��O� ����Pr:������lOII�����ȑy-000000x � �a�������s�%���A��\.7y{{O48C�U�p9� ��&9[L��:�誫��૯���r4���!�.]Z����������>����G����Yy��zA��䈿+���ܚ��������]^^� ۫����L&�!A��ۋ�g���4XOP�D%V��Ӱ���*LV^\!o��~?1�E���ޝ��2�R���������E���+�zzz����}}}\S�����j}'��.�p�� -�!zə�xd����6dffv�g��Z�[-��%����;oVV�.<<\E�����vr�zz̻���O��X@�t3��� H��W�Z���۷��S�K�%%%5b�/��)''GE���)|i
�U(ay��~`K����^{m�7�|�7���R�F���flsKKKG5~d2�.44t�����ǘpl�ߦ�� =y5�'�F``�A"�XH>'�[�=GR���aRI�`��k;�� '����b��d}b؟f���d2�����ˋ~Nf0$H !������\�_dZ�&�h4���b��N���e��^3��� �֐}�s��np���>@������:233;����k�O���B7];<�\�
�*.��ܹs�DQ�&
�wwv��4X������#��L���q4^Dyyy�-//�ʓn{޼y�����իW7vÑO4�l	��p� ,;�F3G��St��>EdiF%�D�{�w���V6��������^�k������аTlAAA#�;�4��)�kI[���``````���C<pI�0�cTTTdd䑩�$��	�9#\J,�c^�Fs������,x�È���h���nZ�jU�瞫�3g�����&p�bt,���C �`��933��a9O"0�ʵ_l.r�u�����Ce�<xq����7eeeq^��Co��`me``````�`r�A�z�p����s�6�D"��;��� ��3�O,�{4��cE�d�?~�o��O644��I��I��ƕ+W6�Z��-**�?U;N�_L�����ka�k��D�P�ڵkcO�:�����Ȝa��_nx��I���sO�p�f[O��		����i)((PbrhJ�[�.��Z``````�lr`X9����~�(�b���N�L&1�.��u��G,��3_"��kY7n�A�U*U�'ݷ��_Ovvv�9��x����(ﵔ\��ˈ�3�qJHD�ybA��Z׭[��'6<�F.X��#���A�e� ������;H���/ ������ݡ$�aٲe���X!������^��ZP+)�������Q���
����STT*��jdb�1LT&��M�ӈaE$�so]�~}������O�o"ǽXr�(�H,(���������4���:�1hG_��\X��b��x!O'�� o.� �3�� .N���+(��3�^���[{�{���AC��x������6̵ʗ�<D�W�k������a��.��ũ���˫���7��j�R��"����
|�F<e�[�F)%�[o����7߼����'ݻ���&77������K.iNIIQ��r�s�Z^N	VbdbAD��r��!,7n�=v��_�1���B�*�C� ����R'ܨx��L���3ZEXXXYg��/_ޖ���^ax��V��&��2����6������B4¢��Zjkk�����Nj4,yƇC������{̊M�������;�EEE7�����d2MVVVM^^^ӥ�^ژ������k�d�~Қ�U�(~�=�����_��v"W1lxf�`F�f�L�l؂i���g��)R����������L>�#��)����I300000x�3�-B��e����N�8T���XW�`0s.ȩ.������9,��R�zzz�IIIw��ӈ"��u999͗\rISvv6�[7S#y/ib�)��P9$;a0�`�뮻"���na#�0�H���A@�d(Ղ�$%���)b1�
�����˗/����F�KOb�
���������/��B�xN/���5&&&���p���y��|��,�r�0��,4�b�ϯ�.�X"R���߿?��/|P�R-�8A�J����k����/��2L0�h���l����h�V1q�n ���`u�Z����0����0�Hf%�����+W�l]�p��&�����'=a�%{*�q�Q�䇁��C��� ggjjj_ttt�X,�p�.�������tL��EO�&0~�I�EZ%��W_}5��z�S�����Z�X���0�cwpp0O,�[0*�\�I;QQ����@�.\j͚5�F��l���°�o�ʕ+�����t�8F�:��200000�^rAV����������;;z�ȑ`�e�Sݲ}���e���d�2s
ލ7�xΝw����d
�Tb=.����+Vt����Y�K�v��͈�	���G.�T*�Ν;�E��0����ӗ��_��g+�:묮�� =]g1KXs�l�e`````�����%)���������-�����tb��j谼c8V�`#c��d*�AX�Z�$77�7���]�oe�L,�Y��n���|94��}�a�.F,�+G<A�C^bD,5�L��b`�� k�@^^^mAA����k���ъ�b\O��/z�aș��#�԰�<��1##C�����hMMM����j������b
� 撖FZ"� 8��z�'�V�HKK����n��+j�X㉅2J,�����0&�
��:::,'N�xX��Y�D�':Amnn�b��Պ�jh�L�[6��C0000000ra�\�bsCAA�&!!��pG��Ѫ��྾>!��.��,���AđV�����/��\XX��R�L��1����KOO�!�nz,�X��+,,�?5Cb�Ux��X�P��r�����a�X.bC��0��ؔ��R��������222��r9z4�H;LZ;�r.�u����������п���X�h�2&&� ��(]���s��QL&'�}��i*#����A$��9||.����֮]���d
��1����!�/��5"�p��g�D,(�0a�B����gl[�����ER")Q�DMJְeI^Rly�^�'mR�	�z�i߹mZ苠
H�)�2]8�]'q�w";^5�A�{/=�K��uú�'�-k��˥$ʡ.����=�TR�Z8y�455�(�=�Y��B���m�!��L�)++KK�}0vS9�lg�a�ŅO�R�!��@\�{��;�N�F�Y��R/���3����(1J�+�}(�BTh��
7n�(u�\?x���N�]��ۙ����M�6���~d,̈����,,|n4B\H���=t萋���|jfeB�3���<��ۋ���-[��X�V��bϰ$F���e�an%.d+���koo� ��i�;�:u�F�] H�G?�J.��
�AQ!����׿�ukgg�/����Y���f�MAX~�����q��������¾2(��̑#Gr�X��J��aV���u�\#�ׯ;p����ݻ����)���T��#��e;�0�0,.ܒ�b�A�	r.Pq��
�B�����j��m�M
ˤ�T��ic�Th�حt��l������=�N�������kѳv�Z��mۆx���-[�������\�'q)�c�	��?�x]w��OìHa!�r��===������gϞ����� (��������a�aX\�L�l�H�\���u�d2�/-��\.�~��'�Di�hEͺ�����V@Yd+�I�l�?��R__��^~��G�k]rlG���ܻv��������f������+
g����ī�,,�<yR��d�)-�aV���R�[ZZ����!,�ݻw���..�L��5-���0�0,.|��V�
%����ޞX�n�9��1�/���s�R)9sY-�
�^�7�
DxSX�����	� &''��텫R����P�;�gϞ�>��{���!�ј��[R!=w���/v�I��#�7������g�aV����������������]��֤ē!�a�Ņ�	��h�s�΀���h4g���n����j"�:�e>�Rd+�B?�U���j�#׮]3�^���<����f���z.�Z����]���ٷoߵ/�ˣk׮�\�����
w�9=��ۆ��Կ��/ѳ��Oì�ju�����܃^;t��DsssB�X�N�09*ö�a�a8���1�4_�?nڴ)���=����T��E��g?�B?!.� c-�2l2'� 蠁e�T�TX/D��N�O~�իW�����[�������w�rr�>|x���-��� , KF��u�8�K�r�/^��b��ͧ�aVZ�6,��(��k���z���5!,L���0�0���q���J���۷ϼ���7���N�R�=w�E�����W_�<x���P�ъS F7�� *H�1�h`i�B�r��\�b|����o�2�V���˧����{zz<���s�ܹ��p8���G8�����;�_��C�LL\���^{͔����a��}��V�^��6�c*���BX�H!,���2�0�E��+��������~�P����w�D��d-l�
�)KE	���DF�
�xI�'k���裏n"����]X@�ƚ��|�Ɓ����z�*�����wА��h��B,,�rb�K"~��l��a�e��m6�����F__��v���J{{Y*��a�Q�E2�D�������;vL�;w����ć�Tj�~�ׯ_����v�ȑ+B`���L��OQ�_j�EP�~	UBX����N�<Y��o}�7nlX�(�}���F����F���3�nݺ��b���~,&B�Ky��ۂܴ5��0>>��˧�a�7�QSS3���:���7���������j���GB\�J\
�0�0�md�A�ݶm[��7�r�ݧGFFz)P���/����t��ቍ7���O�ĽKE`P�
FZhV�F�m�b���}�k�^|��C�\N��/N�N 'wtժUS۷ow�ݻw���#ZZZ*-Һ!z-��ѽ}1��׸�ԧN�2d���|Zf;M���q���ej�֭h�;���.++ˊ�W4m�d����0��	q�f�R&��ީ���_���~7��/�;<�Ç�t��K����Ǐ���X�=��c%�FZk��M���?�i�G�ɤc�_��~�,�dss�DWW���ݻ�tmM744$�<   �9�hI�A��B�F5y{A�BNU���t�����0˒9��<C��!w׮]�_�җ�Z[[c
!�=��(�'����0��6qA)0����ټys�������������\.�����ػw�7�|�:�N� �T�Yp��$F����fy%BT0�Q�f��������c�=422�f%\�*�*�t:Ǜ���{zz0S}t˖-�v�=C?�S����ƍ��! A'\M{�J�m��Yv�6]UU5���0�v�Z��ݻGv��1S__!O�h_d,���_|ֳ��0�0�L"�C�B����.\����0&��cz���^{����Y��<�
�a�D��$��EQA-·�S�B�T�K�)g��wߵ~��߾��ٳ��;��X��t����1Z���s�+������P�z�I��B��ƍ�����CCC��r2�JA�����=MMM�M�6��{��}}}�����r1	=m�xX�e�a授���R5[�l	o۶�G"��L&�i!���_}��������'�F���B��;R�Vt���J���I����%E�F�ӧO[�����9u��6�}�J�Q�b��0?}���crǎ#�w�jiiAZ�8�煸�z_n�xg��9�J�Ѩ������,{�������F4�EI��ի�&�I��O�B�Fr�a�Y0qA�w����fpp���orr�EK�B�1��^�5k̯���?:;;c�IB��C������a�a��u�S<�έ�V�xNZ����/�~�a�~��/���[[W�� �ju���v���ae{��%g�WSS���q]��
i�����w��B��ԔV��e��0���
N��C6����=�k׮�-[�̐�M�2pZ|N��X�e�afA�Y`H�+loo��ܹ�}�ƍ�@ �v<?(��;�����������o?��7���V�T(C@��TO4����C�H	��sߝ)*y0A%5Ra�U��RPf+�{*<���;/^�����
���L&�Z��������w��=�n�:�A��,�_�
�a��+,4%�D����,-�9�F0�D�R��V�dMM7N�����ڵk���c}s��'͗A��e!�a�a���x��8N�����w_`pp���[Ks6��^�?*���{��O=�Ԫ�����n޼9 #��hm�[�g��QL��UZʞ���X&!(ؤB�C�4�qN���pX��_�����ֱ�����ƫ��=uuu3�W��ضm��Ν;�MMM	Qi]�
eQ��rTT����ٜ��}a�S�0K��N��u:�S������پ};�|���	�^/6]KY�B.�0�0+.(HS�!7w�466�>�B�j��[���/\��000P�k׮�G�9ON�_���W�@��V��(��8"�!!-�n:�d(��,�
��A���)A�cǎ9�x�M'O�ܘ�dL+�z�#g�
�0�aÆ�{�w���?PYY)O���F�;9��y��J\�$���R�Eϰ��0K��]�	�]����
���ƍGw��1���Av�h~���E��w�\�a�a��^����aQS`���x��h�A�T�ӿp���\ɉ'ڱ:;;ǿ���_��7�9BASJ~�4�� Q�L�9��o�X����FI�� �������~�}���HdŎ�ÈIrr=N�s���u���ѝ;wNutt�L&�|��ࢉ�<�Ǟ-0b/ˣ(�0羼�<�V�ݹ\����,z[�Z�Sv��kf���=;v�ߴi����.��V@�����2�0�h�EP�;�"�Z��Ç���j��]�N���h�˗/����?��я~������ݻwx�����=K�5[$|�����XL�s�=�x��	׹s�ZS�T�
��rF��[[[;E���u���|�����{iѴQ�1,�S�M�$.��[d��hUUUq��vazzz'��Y��B�����ntttL���̠Ryy�,�BD@o�h��e�afщ�|sG�>��JuSS������###�Ѩ���l6�~7�hz}�K�.�c��W�ʏBt:���y����az�X���ʔ�`�X��|�C&����A�����/_6_�v�:<<l���v��s#_V�ju��px���}�Vزe��m��#��ѕ�X�T�,�7��u�w��.9���r���?�z��.mb�?C�2UZZ�l6[�>��7l�0N�v%v�=#J ��Ē{+p��0�0�S\P�G�.R�������C�]����&��r��o��9�I@����x5_��:H���i
H��N�~����;wNlڴ��p8�Zm~�&]L��>ݴ���-�-!�o^`��� �dpp�|*��ç�a�>�T0�3V�5���襽:�y��I��!��)�����~
W�B��{�H���0�0�bC�<B80	�Ѩ:p��bbb0
Y�ɤ)�����[���Rrf��Ԣ��������֭[������
pt�l���.;����ؿ����֭K�Z�
��###�h�Z�1�]⥥��R�Y,�0�ج]�v��{�^�~}���>M�����#���%1jM�Y�e�afi�r�)��D𨪭�-y衇&�����b1��А)�J�A��A	:����&Al߾}wЪ���I%���8[a1#7)ŝ�4�E���Ϟ9s�������x|�t���0�Jݓ�&H{�o�X�V�5L���;���Q!�r��Fc�*O%F��
[�%�0�,MqAQ��$fqTutt�y�Q��:�H=�!�NH�ю�D�R�L&Ӵ�ᘑ�o޼���MMMIr�再h�(O�P���ȳE�"�� �֭[C�N��166v�V[6�m�3�0wܾbRK���|����jBuuu3k֬A�� �.�+!2��֢Q�4�W!)q	�0�0KU\P(php�'ё��ϒ`0x=CX0x�^=���ka�����j�3�ŷ���k��L������	�)��},�]���4ȉ=	(�������|��'�B��@ `��]ɧ�an;Y�F2������d�VTT���d[Ѥq���'$�$ac!,L*D��x
�0�0K_\�	�F/�*%�ggg/�b1�����X��d6���$��U���Spxљ|ݺu�S��GJ4l���:�kE�.��.��Y�_&�o�;v��;w���̌#�HTкWL�a��oj�:��heee~���c�����r�f����׮]�Hɚ����`�m,ִBTK�Ya,�2�0�|����;�H�������|��F?N�����A�����"�X4�PEE�$D��1K�.f�{6n�hhhH(�����'B\@	�Q_b(2�t�=MVVV�x������s�H���:ڿ�X``�/&(�T�(z)�g����4j6��V�5H�t����B���-��ښ�X, dQ<��β��0�0̲AJV�&x�O}�+_��f���׿�>�裹`0��`e��=��Fȱ������NZggg�����G�o����o�pzѰqT�/��&bK8��
���	�6�о���/k���V������O�|&A!"��^���g!�0ۖ���իW�ƆW�Z���M�t�����n�P���I�a�Y�B�� 7xD��xee��կ~���s��� ��L���uQ��l6[�n��ٝظq#D4��C�U�U��!i>5Wvx�a�E��� �����%۷o���OR���̙3���Ş��-\�g�a�eaZNeF�0J2f6�!(���������a�����)1�W)(D���䇐4/�r�F�a�aV��P��)*�9�l����?��x�b&�(X�@ϯ���
eee^����'���<�a�d+x{zzP��%��=�ȳI�"5�K �x?մ1Z6B׆�o߾9��u����I�כ$�����{Z>e�J��c��V������	
�w"v�=/(ttt�[[[Q��d���,�8b�z*����؏Y�s��6�0�0+N\Pi�$Y$Q���o|����F�I_�p!�����t���~�LTQ!`�ق֭[灨���A���Y#�\�Қ��x
ĲD�7A�����0���9
����?�ϟ?�x<�D"��f���;U|����DȆBH���(��ƌ(yhll���oii	ӊ�}M��r
AA-�()���,ئ�����a�a��;P����w�Z-�n�%x�H$bx��m�ӟ�Ϟ=�����M&���tH���N1�F�,K���"@N����7?G#�jkk1B.�{uE*���%2.�E�c��L�џ8q���3�8�|��n�ǳ.�h�6�j{�a�ݖ@3F,������N7"h��t:g���f[[[C���Qd'���'�f�$3�%�BP�I�.{�J�����"��a�QpW���V�]�89]s�#�l�/�K��ދP�O$H�^K�S�o�m#��j���^Za�U�XI�
�ׯ��pMMM��ey��BT���.Ŏ�ʠ�o
2�" ��޽;k���L��?>u�ʕ���K�RSr�\���Y��R��ŐN�K��M!(TUU���f].����9$�EM�J��iaO�
A!�&qi�0�0K-f��2�n�Fp�����������?���7��^�D\�L���f�1_�ANj4��f�5���Thjj����ܸq#�G)H�3dg�Q��t]�;y��ߕ�"�� �\t�����رc�3gδ{<�5�P�����M��$�d`�ʇcIIBt:]eba�n#y������QZq�˕"��U�;�{G��)��C���m�$0�0�b�*s���(J�����ѣ�W_}��ʕ+�}>_�H��߳����O3Rw��b��1K����ON�dOO�*�׬Y%G9�(PQa�HT����P�A�)�<&D�t�oQ�d9q�D�իW�'''��2*iU��׋f�,2��V�T1��b����n�#&�`7����MMM���z�		�:8��=G��R<��"�|�
,.0�0��Q\P+��P�p��>�_|�E�/��x���n
T���q.
T\"�an�ޤ4����̇;m��������
����*++s�X�����u�:;��r�ʽSJ��
J� j�}�]���?o����CCC��@�-�ՉL�5��%�f`�m�%�	1�^%[ySL���������s:��Lȗ:�M�U������V����d,.0�0�wJ\P+ʻ���i��̙3���~��ĉ��nwO0lO�ӵ�l��~�N↏2Yr���$�-K ��0����n���s���׷f�4Ku*7����y�:�Y��Z�[��L%ĞԜ<yR��Q�ٳg�=O���tk,C&�}T�ŀ���,40w�������jch�H�/	1�h4bL�,&BN�3F���� {�.���
��n�y�MY�cA���a�aqa��E�"�5
�,*����g�}���W^����W�����f
R���P�BE��"�7H���h0�҇鮮.��ի��buuur�F�n�B��BT��
��ݷ�{�R���������ֽ��K����btt����#�HDB�7l��!,X�q�(��J\:�|�ϣ$-	q5M�V�lcJd&$�	6�-d�ۃ555�dBLH�Nb�jQ��ⷲ�An��d����0ð�pŅ�`E�4.�;N�}.�s�Ε=z�v���ơ��5�����5��<����%0W=�,�Ʉ�(����<���1�f͚|�BKKK��\���xT*4)�cN�e��}�"�A!2@`@З��h�n��^0���[�ׯ_���[h׋��&�XBh0�k�a!�����D6���虐2�Qd%TVV�v;F�Fh�G���1Y]]������	*a�
1A���H�8;���a�aqa��E�
�L�q�C�4S-$�w�y�x�رʳg�6���u��U�T�V�s�L�2r�S�<�{y�d2�P���R ���r����kooutt�.\��#)e,4h����I�2�
̝��|�D9UלjppP��O?��������P(T�ki�ѿ�=l"���.�\����,_��"#!!g%@< [!-������
!���bz�DG���*/$��ե0b�f����)�Y#�L�3�	\�����0�0KI\(
T�,�2���Ep����ў:u����V^�t����q\+R��� 7�[���Y1
-߽�`0DDJ/�#���f���������������d�㬼������,��7v��;�w�r	d�1����M���<��3�G�>��㲩�)K2����(y�{�6���w��`�E�m�8r���EJ��cB!"@@H
1!�l��q�6��Z�֨0�&a�ۑ�����Ƌ��9���$$��1�������+�	��0��Ņ� E�L��_B'ډ�	�?����ǏW|��G���ɦ@ �B
����v�fm���y3
�5:���X�VT�^N�t����������lii�������TQ}��М����c�fZd��~ӊ�k{:��� .����~����t�����O�0!�B��d0
��T!b�)����o�;�m�) H�2�$�:�h��F! dDF2�?��v��l���g"X��}�����(m��J�[rAyL)���BH��jd!�����a�Yn�BQ�� E#��U6���>v����/�t�R���	���X���Y�Ng��gQ�u�@�lQ�ꅑ�K�6�����TWTT��q�766�!&`�}����Qh�����\�Sp�,3�Ah(��Р��� �٬��~���K/����ڵk�x<n�f�&�?�Bh@V�N�A�T,�	����e(z��_��� � ��^J�4٩�,��jq̗4�7ٺ�hD���ٽXUU�IZ)�ݎR�t}}}�g�y��F�O"�J\KriCT��n6`d�Ȱ��0�0+D\P'�"8Q�Z+�ƒ��A�SO=U��q�瞝��G"'%(��R��4)��" 1��G+�2��8�AvN3tN�B@HG;�p�ѹ<-kٹN��)��%HN5��c\dc��q���1�p82:���5�������֛�����EI���
�X$0(����w��O?�9u�T���Xi Ї���d2i�A�9�Th	A1��D{�@�utԋ��������� ����N~�x��]���6Kز[o
���?#[�/q"����W1:F����d��6�cr�d�2��teee�����J��V�		!"�=��FH��XheX\`�a��� !�,�k=w>H9r�H	:�{�޲P(T���s��tV��!4T�ߒd�=։�B-��=�"0�!濫� )��䀅�	p�1�N6񴘫'���022��cN�3AG�	'q��g�z��8+���l���^e�0�=0KQlP6����̂[	�;��c �;y��w��_�~]?99�=�K$Lt4��i�X�gC9-��t���,$俇)8b�B�\��Œ�k��n��*��J�T��+��ʧO���F9���kY0Ȋl��G3���d�n�4!(���3�m�d2aBC�l[����i�j�&������@���ΐ��TTT��h\���J8P�,-�ge��qI�ӣ YH`X\`�a��ȠR&|J`P:�ǎS���K�ӧO}>��fm� �%����q�(�tjɡ�"H@�!�&��'h4������`�JKKSf������Xq�����h<���ә���w銅�x��R��!�p��,(0�PhP��ޖ3J��\�Р8΅�a����ڋ/j���u���Z���h4�l��X,f�A{ߘJ��\��l�2��f��B4P
��3�������4���?�]���9��r
��f�H�iNs�sdр�Y!��'1��p�Gd�e{�2d ۀl�8f���b�cd�|M�W�0gH�8'�c�"A�v���f!�aq�a�aX\�-A��ʩ�f��P|7Kv�%
0J�^���ٳڡ�!��̌���O&�:Z<   �c����B>� ���Ӭ"ǻD,	}p'��98��t�������\UU��l���b�$�d(ȩ��s��[ؑfV�ؠ��Qf7�%M��Id�%e`��J��������ha��� <h���&�k�9�t:�![�M$�T*�#{ ې��f��{�\.��k���5=�o�m���>}��Ⱦ~�kѴ5��e�@ !��X=E�D��YdP�1�d���:�8@v)/�s��d˲z�>G�seee8B8�C��`��9s�n%��҆���y��8ke�E���a�Y|� �H�x<�    IEND�B`�R �=P  Q�    ӅC7�   P             �F�P  Q�    ӅC7� ����� Exif  II*            �� Ducky     <  ��)http://ns.adobe.com/xap/1.0/ <?xpacket begin="﻿" id="W5M0MpCehiHzreSzNTczkc9d"?> <x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 5.3-c011 66.145661, 2012/02/06-14:56:27        "> <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"> <rdf:Description rdf:about="" xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/" xmlns:stRef="http://ns.adobe.com/xap/1.0/sType/ResourceRef#" xmlns:xmp="http://ns.adobe.com/xap/1.0/" xmpMM:DocumentID="xmp.did:87B6F16188FA11E6986CA1D3091B884F" xmpMM:InstanceID="xmp.iid:87B6F16088FA11E6986CA1D3091B884F" xmp:CreatorTool="Adobe Photoshop CS6 Windows"> <xmpMM:DerivedFrom stRef:instanceID="xmp.iid:2B05FB7288F611E69E5AA8CBDF482AA2" stRef:documentID="xmp.did:2B05FB7388F611E69E5AA8CBDF482AA2"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end="r"?>�� Adobe d�   �� � 		



�� �� �� �                            !1AQa"q2�#��BRb���3�r$ᢒCS4D%       !1Aq�#��   ? ��� r� ���$�P(�� �(TRU	@���h�@�@�U$������\�@?�ɾc�XP���n۠�
m��΋X���>[� ��/���m���k�@׺��� �,)����� @��t@�@��UQI T@E�A B���JU�@����Q��� D�A@��(�(.��*+�dl��3]��boW�������K�N&�:,L��he}[�w*�<��|��3�p��sm���3�0>���H�e^ꑭR����1�%�k���,ƫ�~ș��7y����wY��U��Z @�B�J����� PU	@����BڥX��@��UP�"�!U@P$P��U@���聻肦C-aa��v���O�y�#��(K��D	~�_�j��k�91��L�o.�3��'@<�H2�9���
�¹�^��j�°�2�"&�<TX�N.�"�tS�'p����\�s��vL��=� ,M{e��W2h��9��Xm!"p@�@�R�! H��H���t@�$	@�B�VU@D$
�
� HB
R�֨��U}S��YYBf����;��$�~Ul{��GR4��������(�\���W:�s4��	��*���g&�����Z$su#ݦ��ܮ�/��/��HgS#�,�Ԭ�X����}�C��3�ݍу��N���s_���,�Y� ��^Fˋe�e�?� �Z�F�
JcѾ1�s?�ܿ�knI�?�J�5�ଶc��� �@P���TQCD�@$�A� H
�N���T9�� H
T	5� �H
� � ���x�,��oW�� �r?�m��=�(G��!�Y^i��7w�:k��+� ��>���#1�̴�kT�L�]ĸ�N�U��C���/\�ۏ���~�Uu��`q�$J���?���,ڮ�o�[�h��-��
�#��ٛ�	`�\*����Yc�~ZLvX�NK#��KOg�W�N�`�Qf�Xn泺��m�'5�� �~/��3��������67+�J�j��*DR���w@���` 4%P�@����R
�i��qV��!:�(T�PP����3X��֎��� �`�7�����1��;����g%���4}�%e��4i���ODgor�8�����}�zRt�=�c��o��c�*�J�k��#�s��huj�S�T�/�P�9
c)7�5X0���;�{����'��j�׉��c�~���(�?⥌��<����y��#*-�$�]��K���a���Юm�TFP4�R� ���(�D@B) 
�
! r)kTB)ƀ)EJ�Ƞ!(��ND
�U@*������!昌;�A-�=0���>
�ͯ*�?"��o���v���t[��^m������h+�w*������wn'Ȕ�\Ї2n]J��]V/���*�ի�-1����.;�>���,ص�5c���'����2J�-��[�U��E}a-���a�p�c�nN\nd��vG1��ݞ:-�^��2��Y%5�s\�5^���*�X�w�� ����垢�[��sQ!P�	��� D�*QDR�h�Q� ��@�%4bV������
BP���*�Q�k��u��͆6������r���.���?���~�<��fט�3!..y�wWsɮ�krvK9=Ӌw���Lr˞�T+�a��5Y�\���[�O����Z��#^�ZjЭ�`ⵦ%�BU���^4~[�����K�c�&��V$]Viq�&��18�E4� ըư���k�_E�d>�u�[V6�K2܎27���$�Z��qƨ����ar���}��-=T��
���h�!v��hsO�sn'*4a
���@�"QCr!�@�!P�@��
��UDW���m�MkQ���BJ��ށo@�'k\�ѩ'@��y��x�Iu�<���Ax5cO�Z��� �r��^��_Nd']��>�nr��S��-�C�ǰL#1=�8�8�SZ�Aԕ�A�UL��(Af�5�V0W�{}�}���D���y�*I[�S[JX�U�li���V���hY�T�o��}��Ɓe�T���mD�k�ՃR�f���y���پ_�$�˓���+<!����J����8p��ʹƑO�����=Z�-����"=7�R����=V�Ƿv��y�P���aD
�!5@;"���)� �( Q)"���{z@��V+\��9�� 5@����N� �ʃ�~p��,�Л'���ۗ3C��W���_�^\K��]4���iըSK$��|\`� ��	�-��[�!-�p��6��_��7=�� �qNg�s��_��>����6��F�"W��}~���=��� �� ����y��� ������
P�T�@{(�ǎCg|�5��Ti��`�����H�R�@J�� >%Z�aoDr�q�:Um�y��>��R;����R����y+�C	�ԏ2��lap�����7#=(Ӵx����W9��R%s21>��1�w�CU�=_����C ?��F���ludq������\[,.iJ��1��5����� ��=�B�c���vQQ�@��T HE$	�@��
("�P�Q��";z�X騉i̕	\h�7=y��$�"t�Qq����8�'�K�K<�
�>\��}�Զ�>'�-j)�1�f��;��H�q,�?��7���Z�Y�*sk"�t�m"������,j3@5�EJâ�$oT�
�9�8*��5
>�����t�$+��jV�	X�M*����\:���\�;��{�VC�j��Ol��ƛOe͵�sDf��*�0����q�,_WS>�Y�m\�� 2,�.���c��{8+��IB��=Ԭ���Xͭ� �ܫ�?�s���G�S�_�����5���,:�T�P P8�P@�I�@�$P${C��5U*� �ErU��*�*�EIf "��sMnoZw䨯��M��@�z{Wq�M�ju�c'P�P�]#8�ٟkr�Z暂�Jܖ��1T�j�w���`�`tR9�sMU�m4Y����Te rj鳴9�&���K�A�k��E�5�l�k�B*Y��B����Z��Ѷ-��'��x�D�&�fI��wF��*V�C#^��L����J����«\�:� ۘ��x�-T�z��ǒ�E ��6��J�=�y�&�FK���9�#U�O ���࢙�~� #�y���\�jV�F�su@�ECP�)��DP(�
B�#���@���R�U���4U����� �+舧3ʍG>yz�(M)�Ee�%��Dm$V�X�oʭYd��VA�O��ڼ�8�Ů�4+������ºWg���� �y�?��Ms�?/�5�m���ܧgy�V�+,Af�(B|̍�q�Aͻ�ud��?�5�l�G�c�OrPh8���N>�t�)QحJ�>3B��c�D��yLi-�hA-LjV:)nЃB<�-^�]U�������+�S�@.��g����GW�|ϱw%����Z�0�[�� C�B�f+�M�a�*8\�m�����r�½
�&��c��4�P|���q�' m$	@QI@� E8!T����X�UY�
%*}�R�鞥j(�j��?B��<��&���q���;(��ū��^�K�GJӚŊ%��m�����hA�(���n�����osv�x:��cc%�Đ�(��ܮm��!i.?A�X�8�7RN��F��]\B�h� ��B�cpmn����E���8t+R�J���!�Qb����C�(�����{��D�ʛ�:�.u����
6����L��EdJ��m��;PGO�˕�,�#�kLgv�u�����e�y<S$u5>m�2�ǐ{%KOl��sM5\e�7�<���	����������r�:s[���p@�@���	�
)
�@ E�(�4��H�F�T�֢��T���AB�T:V�UU)�Ҥ��*Q���n�΢�o�#k�������݀��1��Vz�iqv�hfuG��:�g*�;Ƃ}��SRƃ�C	�����I���yu��甽�� �qS�T��Q$����Y��o������U�PHU��CV!:��q7�/��V��|
,y��Kax�$д�F��}[TJx����Q����r�-�]-c"��Tƃ��%�] 0��YC��W۸���G����Q,j���ܻ����,S����kYjx&~���R�G\�i��Ufŗ+�i�<,�3V<4��WYRP��� �PP:��TQ
T	
9�TLV�G���=X�ӧ>ۘ͢��z" �QJf��+Tj(�ި�R�:�=�R�Y�c��s�����F��ie�^w��6�/f�k�%u�ǩ��kYF�$���f�8�l�K��� �H����3��Q�$�V�)��	�"h�M-=�A����~���D��`ֵU�xr���MT�-CpX�{"9��.����g��������Bm���d�\���ݧ�� ���z>> �����  �Ԍj��BX��ЊQj3k�o=�Nh�<<SJ�kE/��ר6vdq�Fސ�Q�_sk�J܌T�}E*�2�� �yg�9�\?���FT��.=GN+��E�C\F� 
���D� �@B(��W�:H��+=5��uD ��iTX�+iFf"j��겪2�P�q��65f�VV#nC�Q��� ���i�_
-�N�]�o��JUi1sz�d�z䑚\��6�!�����[Yƕ�^D��Zg4Щ�H}����B��_w�B﹚#:u���b	7!V��׏nMZ�(�8�����9��� ��Lo]k&ڱ��(���_���FI���;�5�qo�]�ӌ6L�c�d:��WV��e��o�)��>��
U����.�m_e!��5 ���J��콋������W;�󧒵1�ᜒLv����(�i�r�������H�aptR�9�s�X�EB�P�"�!"�QIoUD�|�т���G@��򎪰*���j,@��W��*��D�إ�(�5S9�������t:���+/r��"���RUy�N���rF�@	��u�ʨ��!���ࡍ����:�MA-D���Y�et�4���,YP1�Q%B���lC����=Q��ַ{]Ҵ*#L��B1bF�-j��Ĕ�O��#C������!jV{���������� ���Z�bwq{9�gi�,���]bOv�5 ���N�������������m]�����=Vy���~�w`ٚk�T�9���u;�֤J�5+8W�|˿]��s%g�?�S�i\���z�Xlׄ!HE*�U@BT@E�E�FR7��+���Q �S���D"PF��DU%j�T�b�\���TR���Yퟩ�t*V�nZ�E����X�%����c�N�^o�{�Y+��9��Y�ݺ9�Z�]l�2��������a��a�$��7*��K\�R\��׷��Mђ�T��Т�E��D�
�$�F�$���9�hB�*�1W1EsR�G��������M��=B�x��b'mp*�W��C�z;G}{$�������^k#4q']F1Z����g��=�WNV�P�����r�r��P5�J�ŤЮ}E���6��(n�v��`{H���*�� ��() 5D(� @��NC�UP\*Vzj)��!@�qA�D���j�U��(���ΩkN|�ʸ�KOr"@�+Z�em6���-�_%^�*�H�k���/��tDPV�>K�5��s_U�5�c�48|�� m� c�5W�K3Ǯ��Ok������}� ��Z�<L�q�Uu;0��7�04�1Q5���Ġ�)���:WDߢ�xyV2���T=�~Cq��U�VDb�v/�ߺ2)j�0��x����hQS��Y =iV�5���rrc���6S����%z6v#=�.4o�i�
�+���9��g��O0�a.d����S�g���-�^�5��@�I��HN��7r9��s��b"�9z"�EP0�� � PW��*�u�H%f��lڕVfU�A��X��M�J��brQ�O�����d��f�geyg��8��Ĩd�U->�s��Vk�x��Q:	�d�({�5��G�6wf��䫘|���M���TC%�-.��Aȸ����AZ����^�!�Ƈ�"�qW��"bV9\��i
�i��krVd�Vfj��賋+o+�{�~����Q�&��Pܲ[�ପ��g"�0�����ԯ`�7��a���nm�k��w�g���U���z-%v�g ����FH�	�I֫=��.��n�v��hsH�\e["�d! @�*	�E�#B*�� ظ���8FJ���(�DC
T���f�ҕ�uR�e�Z��Q�R�#N>ZղD��
U���ڐ�ō��_@$c��V4�\ř���:PV��G��z���T��a2��\�+�#p��=�(�xq$t2��ϯp�#���!(��ѿG�B��:G2{�������ꈹY=����U�C�9�N4��IJ�1�Va����5d�����s�4'D\g�F)������<   �v*X���N�Q���C�UVƧ	ƞ�������+R&�y�{g�pc@1� x'Q%C��T�x�'�$��}�zN�[�m�l��C��8�!�@�E*��?���㟆�}f��DOv�˗Q���j5��U@�)UP	PQIZQR�\�ظ���8GE�Ȑ h�� Qc�
�0��L�G>�=
�QΕ�ҕ�;���g�K^��Y��k���������ء4f��gO0��N���i�trB�S����[>1��a��v����˨���yFI�lڃ�5ˇU��S-&��i=;����\�F����u";��ck��	�J�R���D�̐�N�Cp�fq��Ѕ�V,_km�-a}5p�Vz�*8d;��]ӯ�l��"B+�#Rk⮬�O����޼{L�3�II���v/���~�f�N�"��-��Vx��W��<�l~�!;Z�� �Zꥅ��q�����u�G3C�~�p��U���sh�eP$	
������PCx���w9@���E(Z�c��'5(�3TU١Q\���UJ@J�q����D�ӪXF3hZ�~�.�����"��ʼ�;`�[�Pz�^K�7�G�m�Tl.��ZxK��C����֎��B������L�(敆�!���3]�� ��Xz}f�.zU��&;:UBD��UÚB2�'*-E1i�\J��-u�l�vѭu�W*�d/��g�h�ƒ0�Xt��c���I��K��"t�E%(����y�Ρ�R����<ctn���T�����[��3��%+诂yq�Ŀr�g��*�KW�|׬�m���" U� @j�=Qj���!��lL��~�=V�@��4UH��@(j�7�*Jڢ��uY�(J�*��<a� ���~v���Ϋ�k���m���M�2\�˛G�����-sS��H��WW�4���s�� �N�*�$����1�=t�=
c2�k-���>v�0�]�@��ozv��(��R�h(�K�SOa�����
�jP�tZ����=&��͉!&���P���s��kY�޲����V�V-Lt[�k�Gд�B��e���qi�Թ�|�k:� K�t+xZ��}ɥ�r[k�H���v�J�Q�����+�X�";����#����&p�EDBMj�9 ���p:��҂�@U��_�t�G!���P*�v�
i@DD����EV{Qb���9��)H�����"i�Y�G��m��;N�cs�^� +�z�i眗�]�XݱI�x���ӄ�������Z|e�g�ֲ���F�ϲ���g���,��:��%k�:���k<�kt�U4�m_���j�>}��z�Lf���X�ZT�"X��&iR%L�{-c+Q�Ԫ%m�f���f��c�uz褩�q��r�K�n���kV�r9�+k�n-�/��-�8���!bŏ���-��e3����u�h��1�=4��Ѽj���H��@IE ��"�ވ+_j�.?��.�$�( ��!���Dn {P�9�Z���Ҫb��J�U1�+���#!������sm����'��%e�X�wl�S�>�曅�^ys���p��hG�]�q@z+���^�ݺ'�Z��������L�^4#��U��d��xۧE��B���E�m�
 ���[�B*��g��c��@�J*V��;>ՕÙBh�r��{�U��O������	}U�h��t갸���-sX�;%'Z��1򕷮�n���s���T?�]#-w���U�KrDs��
��k���'���5k�A�y�E�QN�@�
�(dXuQOj"���q�x5up
ꪜ�H��vA��U���}�4(9S���(������#v�Xƣ�� �tJ�{�6ֿ��m��8�����;�����\��Â��4�P��TG{���v����%bX��e����9 J�V�Wcn�"�F���S;���㍭5����(�Z��Z��R:�CM}�YӪ��P���ԩk"��R��<PL�<�6](�F�Guu	�
u]!Q���M
ޱ����{��쑦��Y��W|W����W\ۏnJw�·+f㢍"*�h��Q	���"�ި���\�t઺��B)��� B�c�DNEB��)��˘�
ͭG1�Щ��<msH���g,�]<�������ƃ���=3�(�`{>�B��ٯ7��}������w�5]P�q-���~�#;m�MuX�Х�v  ���Q&�TH�B���)P�p���Fj.�z-,E���	Z�d��
���s�J�j�O������J���������V:8�e�B�;K]=̆������R�;�2�g�d�� ���ۍC���Y���6��I@�$	�xA^��ȱ�k��
���U�UJ���
��#p�SpA��*�ʨ9�Q�)b�SDAX]U�0Ŏ6V�I�P��������Z�,��;	,;F3��7�n	s:�^+�Q�=V�Rj֓�m*%���+UP� �E#; ��\�*�{�qV��z��R(��J&2�U�q*Ɛ��c��F�p��uLU�uY�:A��=��[�� �-0�m���r�AF��<J�]�����;F�c}��w G�e�֤k�*kݪ(��ݪ H9�!�����Ϻ�,uZ�!-��QID%B�(�P��SB�B"	F�(��
t���s�-(�ZQ�Ս h�cq��Zк�$t���p-p�=B��<�5�u���#�MX|�Y\o�8�*H�'P�kb�tW\耢�Zj�dC
iOktSRhզ��:h;�ѡ�p�A�sM���� ��O������"�>��"#^ck4�V�%ft��۸�l�c��@>4Z@����]+��
�+��e�F�;Kqq!�c`$�����������&>�鹶�A���O�5�x�+kHYomb�1F1�� �ԋ�袚��EQ۪�ʩ 5@� �훙B��o��m��@P* HdB쁦�@(�����EYZ(TG:�=�2x��֕�����"��5�"��U%e.�-q�U�n3<����?1�#�'X�\XI渃�u]�r5RޡV��#D]4�AhDđ�UE>�ܵ��B�%T4U����@��"q!���H�*�~|w|6�G�\D�k�*2����<6v�`����V���Qz�r�c�!�Ż�଍.�8�S/z�\m��7 F�iSJ��}U�ƿ�ǔ]d��Gc�XǮJx
iT�^���<�|Zٱ㭛��o�x��>%�6��Ch"EL]���J!��D�$	A#P���Ƴ���u[�![`�EU�� H	 �!QA�UD3B��S�i�Aι���G6f����!f����TMZ���Z���+k��4д֡bƞ�1F����H�=�Uv����(�����jZ��'@�SJ"@�E�9�U�y�AN��T��8�+G�q��9~?�-X�~�JƲ���������;&�9�n�����^Dd/`��Z�%ձ��I,�v�f����s��%o�P��F;��8�y��G�y�WM}�8O�Vm��ڶ/甊����:��д(����n��� $���AP�U�$	�"��d�â�nT �9��(@�
���	@5T%Ҫ�[U4�QPK�s�m��4��[Һ&
CJ�W\��M�*VF+-bj�E�t����,y�ep�����>'��B{-sW��7��}��Ⅶ���b��c�U,J[T
���Q
�V���@��)7P"��I� �'O� ��+�2�1�6G����Ҿk�MG�|���\˓cb�{b������j��w4W��s��I�x�l�/�_�+s0��#�[�1�k  @4eNTS�IA3"�Qb@�"�D@�.)"
��� H`���$oUԛU��\�j���*�T	D$
�(��PT�B�TS��C�mE�/cPS���A͹����MVj�\APVq�o1��^��d�hI�N�5�W�Ԛ�#z���9#�7PǬz��k�5˨�hV��jܐD���8+SF�!vV|$�-#�eĳfD�F4�M��x��S�7�:��Bh0Ύ���M���\zu���9Κ�)���]���έ�+l��d**��~�j�UU(�F���J�UE$	��PCz�̥h���Yts�@�=��B֨�[�5������:"��^W��4���<N�ks�N�䫉Iq���gjV/MNY��:�F����0P��Z����^Cp�Ӆk�8��)��:���ٙ�dn�,C��<O1���U�O�Ж�:�^Y�o��"���u>�Z�1Z���,�Q�D���+Lк��@T�Y<�%�w��R�ܬ���o�j��}&��d�k� �.����� ��e� fc�}�v����tU*j�i��gPtE=��F�mxO����y10X�_P�*�Z�+E��8iO�d��k��kR*a�/o�����ہ�c��.: �V����ҳn$�Š��Xu}�5]QE�E%Pڠ!E!�Pj�)Q@�$R@�0QL�rHͭ4X�j0��u4@�@���	
sQK�EJAF�)��� �U$y�,�P���;^����]g/5��[!}���B�n��,��W�7�/A�s�;K '�tO��;��#\�ϙ�y�� ����!������V�G���E~S������6�o���V��H� ����K�Y�Ao�7Ɯ��7�R�,�ѹC�-���A��R��s�|��#����Db���#ZH��NR��#�^M�BF�IF�]t�uz�snn1압 �\k�;A�ba�Ë�
�6�r�i��O��h{)���Џ�|����Დ��D���ҁó��T�m������iҴ��9ԟۧ1�z�@R���]�A�)9�lN${�=<i�+2���؜�>��o��Z�R��Ԯv<�� �Xw%���>��P<�U���g�����Ë�v�5��J�I�icր �kʨ��h��uJ)��B���H�U(HP�"�:���w�j�pV�8�E��T509��8�,� ��q�j�<��s�J� �Z1���܌:�%��&7m&����Uƾ���>�X�����B\�@>J�Z�+>-kZֱ��(����#V!��<f�@jκ �������B�ey�'�����>֕��iO�:N��nc;�%,�y��ƓYIS�z�>ab�v[c��~_����^cA������:z'�|�l���̓�����gup�Wy��s�H��k�@U5O�[OEP�`�sψ�y\�]2_��G�|�sk�QǇ�1��tӳ���z�)4�E�V0�L|2޾;x�"a��4.v�<�t|_#�i[���A���U��r���(L��U�
}Ts��~��1¦�g�c����J�����*|Z�Y^3�}�swG"i�l�-i��;A�[��^�acmem��b8c�ct
���Dꪁ(
� *�
(��+�%	@�R*�T&��ꈑ�#�z��Z�kLatE�T*�MTUH�Q̥���WTX��{�q��7���z'/4�q��*�6��w������Tĵ�w���vֱ�s�*��X֍�� k��B����W��n#s$hp=�E�,�|��=�4Ԗ��ܯ.'#���bZXi#G6���Vq���0�Y�I�`m���q6��P5��ՕϨ�[-�š�N�r�S[�QQ�P��6�_�]���:ɢ�Mr�|}�����2���:G� �i������$�����6��}�c���$����:�JԌ^��vy��6�	��Afƿ�@�|֙��QVQ9�*��:"�
 ��;�IPVBT���U@*��mP2@I�R�SU�B@A�H��Љ���l0��*c�ʒ$x: J��<O�^��{#�I#��ܓ@�[^�������?Y8���GDr���(#q@7*���)�T(hm
+���l�:��j�Q�ۍ����z����.��_r'`�O�{�����\�5�#�����'Q��&?/%��;��=�P�sƎH�j�5κheUG��i !�g-�K��7���s�qy�m�f.䉎l��8�j*���.u��ˁr\����Hf����aϡ=��VV+��݌���B�էB���2�.Ao� t��88<:2;�� �b�-燡��j{��3PF�CU�!T��P*�@��QN��A(SB�@����(�9K����\M*{,�q�a��ۙV�(���H.Gvc�`=Qda����Ē}���]B�u�wƜxe��N���޳:� ���sZ� �0��$���U@�� �(��|e+=d�{�sjA8�%˱���2�v�'�c��P�kU�p���a3�4��`�?�>�����lt�6�7���Q����f�V��J��j��Bq��=d��K���Er�H��VZv���c/}˹?mp�>�)I����:�V[er�X^.���� S���Z��T�|����u�����ɝ�OO����=_�FK+��1s�ZFjz=��'U�g@�]R��A�ȸp`���!E*�:*
DT%j�êj%(��b��zt�]\AE8�P�T)ՠTb�5�u��tR�+���e�K�\<�+�k>&²���b�HZ��ʪ��OIp��$EDH@Ҫ �R�)�mPK�҃+ȡ���s^[�1�|�4��}{)]"N	���źǸ��'q��D;��?�cg���2f�lK\�	e�V��+���+�q��c��3!�`[���4���?J,�L�?,򼄯����i"X������Z���bq9\�^���3a}nH"��j����x�f:[������X���e�e�Ĕ��7J%o���;s��XH�9Ց��G����>&�c��M���諚�ʄDJ�B QS�T U��J���(�TCUA
.�@��P��Dz/�ӯ��ĉ@�P�!����IF���� ����F���v��[4n��t��P���ǣp���tá�O�NY��������E
*�����<H���r=���G�rh,r�]c���e�렝�cy�Xj�,������!�V�2O��U��0��"I�}ӝW��\\~��e��в��Լj[�$b��o?���|�d�:��~׎���7^�a���ۀ�#6!�B���*�w�!z�D=,>�x�j��>�?�lߘ�����H��b�ϫ�R&�TD� ��XJ
TA�� Q�QF�UTT�J T* ���f�S�}��������uq$[�T=���yɘ��H�ĥt�� ��|���� ɴ����v��Vo���Jmr�PQ�q��U��t�[e�)�D7�U(�c�Euq�T��W�e[��5�o���K�v�"��h�k�+z���7�9l�r�Mc��k��\��z�����������NE�o�X�t h7)�YX�i��XrGI\����_�Ч(��,rqX�k��HHѤ�o�V�˸�73J�QǠG(�z/�M�em��s	`p�+��\�Mj�~;~G�:��1�O�؀��-růJcmcִ ֎�����Wd�#q�P��C�DQ@!j��05�@�TA�T:�)!�(���r�}:�h*��U]�h��ۊ!��(�g*����[�^#&1��y�-�%=?-��� �qE��{p%7P��a����[b��*"�M@��E5��*\<�TW"�WET�FS1,a�F�զ�X�x�$�֢�I�{�W�>
İ8F7�sMw��6�A��t��t�b��(�ڸ�\tΫ��#�p�`Mn�G��h������ӡ{�]��$KM���\�fq���-�"97��hOT����q���b&�Pi�/-WR��6�;�^��ȩ�u���AM<+M*�� Z��ܨ���c�D�T�:*P	D��
J�@���U�PHҪT7l��,w<7�R[`��U�QG���:(�!�@t�)�+����ds=.裦k�~5��\Ffur�-�A>��R9?��ޥ��ZX���f�*�����T��SE h�)]�P��7rP������WpE۝��R��=�{2�̷�[��ц�W��ƛ;��_o�.�6����|��oN�[����n�]�}4Lf�����=�&(�$�q$����6>N=����v�[��FO�1~�<~C�"יkVB��@��~����Mf2���˗������ �&�A���J�iB�P8% �Q*
����HaUEB(�W���(��J��(�B���(�ng��Ά��J�w|7��m̐*uA �S�TDp�#5Ey�*�9�{�5����p�UqŹ/���g�U���<   8��?��Ba_EA5�_��������ބ�+�9?���@5쒘��c�ZjB��j�v� �dfku�F/9�����H�)ڪ4�Sɦ�\=�!��z��v�/�2eoۑ�a�<F���Vm-{y�1�5�@(�Q�{�z*T���MPH1��LY��
UAq�4P*��N�z��EPt
)U�� �] T��*�U���P"�)��TQ�%�DJު4����^�>�:q�G
�� ;���*(������UUי�942:�z���Q��������p�[WV������Y��g9G"Ƴ!�����p�� �����{ina�����7t?D��"�s�;�
�ܬ輓sX���<�i�+Z�.s�� ��� �r��v.8���vn�����yG��kH��t �����#��ΚB#?¬��o����&�\�u��γk��a�k@Ӫ�k��4�DG�5EL�)�TC�!�TXD�AUP�@�D�@j��U@���U��*��E �JD�CU]*���PࢥiUnBH�/2V:o����!�ERDHވ@׳v��e�:9ZA
,�{���t֢�Գ�5�:�7���F:WA0� rS����+5u�_�x�Y��ϱ؛߷�:�O�xտ����u����he�eᾳp��s_������,jV2r�H��1����WW�ܝ���T1Ľ�L�&��"�ߨ��ٴ��3 h$Uu��[>%��䬹��u�8� 2��Z�lF�l�{h��  Q#�$Q#.F�!B�,�V�%X�TA@��@��i*��	P$	���RU
����(���
�8�$TQ�[��o�����(iU�0�)�p(@��BP:���h!EU�ݮ쩮>G�Z]T��q�!�D�n������z4�Pq%���Mn�����������ӎѕ�����1~���p�2R�ڃD��ۯ���Ǉ��w}�*���Ḧ6�b�����p21@)�D5�X��Q�@��"� U
�;r�U@�T �9j�U@��U@*��] QET"�@���Z"(UD=�QR����w�_��b �MB ��8�,%K����� )B            n�!B ��8�,%K������PNG

   IHDR    H   \�   tEXtSoftware Adobe ImageReadyq�e<  �iTXtXML:com.adobe.xmp     <?xpacket begin="﻿" id="W5M0MpCehiHzreSzNTczkc9d"?> <x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 5.6-c111 79.158325, 2015/09/10-01:10:20        "> <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"> <rdf:Description rdf:about="" xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/" xmlns:stRef="http://ns.adobe.com/xap/1.0/sType/ResourceRef#" xmlns:xmp="http://ns.adobe.com/xap/1.0/" xmpMM:OriginalDocumentID="xmp.did:bfc0e883-bbc0-6241-987f-a31c8a15b37d" xmpMM:DocumentID="xmp.did:396C7AE6803A11E68DBDB4C7168EE694" xmpMM:InstanceID="xmp.iid:396C7AE5803A11E68DBDB4C7168EE694" xmp:CreatorTool="Adobe Photoshop CC 2015 (Windows)"> <xmpMM:DerivedFrom stRef:instanceID="xmp.iid:df972741-fb63-4648-ad33-7d3c2858ec1e" stRef:documentID="adobe:docid:photoshop:aff194c8-8039-11e6-8a89-e41de79e96f6"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end="r"?>+�: >"IDATx��x\յ��ti�{�Z��&�C� 	<R!�L�ϴ�Ix� B�M`L ��66�q�M��.�F��μ�f����l\di$�߷��Hȣ��ٳ��������1����������[$�hn���ŋ�(���k���̭�[;7��.n6�}77\� ��UL�W���ޥS<��Y��Q6���c��/v��N�{��w��#]
ss*�G�na.���^��J��b�   ����Cb�V�#����-�[�x����*2(�����[�FnmBl����C/ cZ8���B����QX���"�N�iW����:���T���1%A�[anVa6����K���/    q�o:�j�!��1����͂	�$ 0�3�":���@�an����*�t� ��}H5�x&D�B$�=)ZaE�N�)W��k�"(f	
Q&G�Q�Y�"��D�b�   �P�*�
�B�����٣��nYBP�F1��v�׭[��aÆ�}�������544Ę��nF��k�$I�X��Z����z��ht���[233�srr,���]���o����p���AnM���ơ����0�7m��x 1EBg�N��?�h�>466��+�������n0�L���NCWWW���6�M�t:u�E�r�������x<��|�cv�=A���oc>��p:ä�h����G��Jaaa����p-��_�FFF�����111.z�����G��:����|�uDGG��P�!Q��[��u���"����_�/��    q����|�7
A!�[.��~�ٗ_~��[oemذ!k�Ν����������̶I�&5~�[ߪ��������<�?A�9��m�8�ҡ�E�f���o(zI1
!Z! �x� ��{*w��|��٩۽{wT]]����6��������_'� �?���­Vk�����U=�烄݈�{LL�#11ё��l��ζ�XJKK�eee6�K�(�О�ɂ�e$�Rt�I��r*��!�   �� F��L'�t'�"r�屯G$�<����
?�裂͛7�����!��T*i�ĉ�7�pþ�o���F�Q^�t �"�!��FYD1 0<��F!$�+DY@ ��-a8�'����ե��Q�����>�������薖����֘���HI����ӛJ��h���1���w����:�>L�V���5}k�b��J�b�u    ��;��iTC���X��a��|�6n���3�T|��'euuu��rG/**�r뭷n_�t�~~�����!�sn;X��#E1�!0 pV�u?!��.)J.���N���מ�'|ݺu�w�;|�p�#G�c�����nw$fa�􌜜����궉'��s�9mӧO���t��Q��R��~!6PdE5P�H�h@�    .�?�S�B�R���~BB�ap˖-1˗/�f͚ꖖ��P��"##�>���?���j�nn�� 0 0(���Ȣ2"���$�Ǥ|�h�5a������⋸�7&�ٳ'����uuu񍍍�����}�j�����yƌ�\pA�^�*����n{�a��J�p@d    q�=���@��܊��C��d�?��#����?'�����mqv֩��9�����kKKK��7����r;��wǜ 8��D�@)�!Q�i����Ͽ���޽;�O>I�ꫯ����#G�$���&v�0�bCIII˂ꮹ���S�vGd�ȅ-b����.�    .@\ ���YoI:�S�B��{��W����?L_�~�x~���V�u���[n��^!0P���Y��#�a@ �,&(���@%E%P��,�͝z�oڴ)v͚5i_}�U�]��:���x��0INN6]t�E�o���CS�L��'0��8��د)e�~��z[[    .�!��z�p(��` '@E�~��ߎ��?�9���9g���M7��ճ�>�]�d��.��Bl@ ���� �K���x�dߜ�x�ȑ#�o��F����3�oߞq����4��())i�������?����r�Yhh"�nc��t�    q�"��
Q�g���?�G�u�]��}����?��.Z�h�[o��^�VˇV�V��#�����}C.�(��BLHg�h'����$��^����;��/��޻wo��bI��S�h4�n����w����h9B�<��mv��(7    .����c��_�8�Z�*����y���b ���  >�K�    �`CW)   ��              n���  >�K�    �`CW) ��PNG

   IHDR   �   �   �y��   sRGB ���   	pHYs  �  ��o�d  �UIDATx^���d�Uދ�P�+�;OO��F3�QF(b���k���b0钌1c#�%."�q�@X�!�QB	��&��L�>�Tε�����3���<n�V��s�ja�w��]~���}/I<��?�+9����������E߯����/�^�����������/����^��W��7]~$���s�w�����g�������ݿ�G{��Ͼ���g���/��:�����`>����𳬌}��S<�������m���?����G�e��GXnM���R�������K����{{0�y�ċ�^������[,�g��%v?��ދ����y��ˤ��7L��-?��Gg��s?�{N��"[u�h�����T�t:}sy���S����0:���"Y��0�� Y,ܹ�.���^`��V�٥X�`�'u�oHq���
������O�i���X�R)�����l��5�0=�">�5����/�vM�t�/�����Vk2O��]w���g�z��̓L*|�s������_�x��?w��Az0��,���;~���&��KB6M���^6���;S��Y&��mկo�F�1+��3�p�ߖ{�s�?zw\X)������~*Ŗ�����|v�~��z|�4H�~2&�����ߣ�?����|�ϓt��ױ����g��t���Lg�\��H嫅J���F��SWO�����J-��λ� h��I��T��~'dE¨Z�h��Χ�t�����OO���ttp��������3�V_���n=w{?�� ���~%Ly	���B���cj�\$�tq���3�l&=��G�Q��w�^]�2A6[��V� �ҳ8�HE�B�r���V�hk�t����~rDY�d�������G?��m��S;��P�x����܏��O��'��/>�7=�����mg��Bs��d���H�����+��bXN�	��q�Ŝ5V�e�y+��O��׾��'�l��~������E4�
���_�e�^5���~�z���Y��˅1��>��%;�n��؄ϝM[z�p�(f����d=���l$?��x��k�O�	��k�ڵr�^�$��ݫ�\��b%�Mq*=�T,r�t�ɰ^~��E�A�f��t4�+�#G(��9�w���k�n;�X?�q�i���^X���A����t�k��|������ �x+3^��t��ē8��	�=��I���T��JgB?�F�L�r��e��L�·�L��H�t��I����;���[�U�Y�Л�!�tu-ϵ��&���6���e��g����������yr�ln��S� �ҽ~z�U2�'>��l��[i�([*���/�,�y���8��ׯ��7[�8���L�ğϣ�x6�p��%���qyMϛ���� ��L��l=')�}l���Ͻ�B���E�7f?�+���'�t�O���,��{A0e��$�f�b:��y�y���a.R"��B��~�\o1���[�R��8S�����Y$�[���l����b�C\���"���qŪθ��+�|D<�"~/��Yh�٩�b'X�2�K�|�0��5<��8%؈\&�OG6.�e΋��g�8�e�o}�G{�	_�t8����<�^y�{��ܿ��ç����L�}N^�������A��ƴӥF��8��i���l-�E~������ÿ=�����O���˾�����jՕL*�
3ñ6���|�^���6�����0���7����|���A֒�2��9=^G���=�,}�������������wmؾ69�:�|޺>�}|p���͏�����n~�w�����:7�����.�.�f<XǓ�bs��y¡����|�����ř�86��89���H\�t��Ӳ�)^`�*�u����_2A��_���y{���S���-�%i3�)g����-��l�LE��b�������T����Q�ܿ��?����_����>�|������=�B��Ί"MWg�U%����X�h��軿�G^��/�h��>��'~�3���~�N*dEb�f4���~,�e���T�S����<a�y=��d�{}�e�a���.K{�/��d�#��=�T.����N�`Կ�L��x��u�~w>����Yo8M'ӑ��}���{:����T���1}D'<qȦ����`GC�v�eH%q�̱"|�ł@��ס�M����|>����a�O���H{����~J��^�U�,�-��SB�^��x6��hy�օW��(w6��,��fÉ?_������_�/|�}9�LGG�K����(�Pe�'��T���E�E`��ҭ��s�ms6G9?������}�C��G?:x�T4�u{��tA�}p8�i�Yp��X�����`rDx=^\��b��h1�a��b�M� z[s��I,9�������2�{�Bh��Y�T*�2�jX*��r'3�F�rJ�x�eφ�;���7�U6�ή�Y?}wu��t��~��F��(�d�i�f�BV�3�7���d��1���3c�9�\���ǘR�L�e�����3��ݟk8�ɦr�R��h�]���f�~3�N����찜��i֎�8��l�e~�џ�O?�S?������KM��͊�������3�t�@v�W`�xyܐ����\>I�'�\���_�E�����7Z�6��Lf�|!�Ie���p2g�/1�X�I��ϗ�L���\�)�t·��|��ހ�b�R[����/�,�����D�ID��m�Li�<e�Dc�|�vKz�Dq��ک�K��G��lc�|�����Le5W=��5R������ �#�E&�N-B��!,�N#�KJ�|g�H%3֔%���I}��:~�������%�:�K'�Z����3���4���
���q�/N�i~F��eZ</�[���[-'�L4�'�n�,_̻ز��3�^��D�b���:K�k�ߕC�f,�V�`6yᕲa9���T�����ȗ��K��+_�/������B��
�M��m�Yć=ҥ�����Eex,N+o������lW��s ��2Β�p)"Q��N�������^�'��L� �x/�l��dč��)P[�X'����+�6N�,�:3�V'�;��0$�H�Bw��eɡ��"P��%�vy�t��M'L���-�Sa�O3_�$��i_���<2$�1����DV&��'Hs,py���np-x]��J�s��l������s�s˩L9+���t���<�>��/y���B��狩���c���9L��է/�'�2�"{�\���}�������?�;>�?Y�Z��(�}ۭ��[$��Q����Þ����'��Xf��AKy��x���RNt�s����!;i��a��\�/�ĕ�#Ɠ8�H�nvu<�U�鎗`�H6X(�Z�]�X�1ͥ��ϒ�`:�̒����u�@��S0XCAc&���ږ�L��N!u7�cbg��(0���9l.2����w>����,2�\���,5&��p@�i<ҹ�C���LfL�L�\���f���Gr1�G_����yދ|�;?���ⶻ�;q��ٓ��I�V�<Lv�������G��a�D�;!zT�VLX����k/x`k{�8q��	�/z���������w?����ue#�1�㤯-Y���L��2t�<   E��"���?(&��yC,׋��[k��W���<N�X� ��󲤃�]n5P]Rq���S�*�bG��4(�Lpz��,eW��H��|�[b?9)�rI���*�����I��+�R~'
K��ar?���s�e���9˶�a�-�1��}x�L(�N���V�Ŷ��x�럭r������W���?������������/�g���j�+�J�Y	�Ă�y���um�3�$���s�a�M�_��)7����v��ܸ�}c����m�3M����=^�lV���9+���8��dD(�s�&wƝ�����Q��k�c��醼�^�h6՟����?�R>��k0�嵗ء��\����Np�bRi�7��������?��u�p_�Ԙ�����G����%��	�	����(�qq��!�"(J�0a7��1��t>O�<�����nk*�f�T��Y���Ƴi�άn��wer�&(q�>���]�����ھqć���#�=�l�3�v°���.[i��>v)Hw���O��[;����\�ݾ����3���~w��,��SoЏH�-s[BH�i��S�	H�d'sp,�}����+����aB�B(眃�r�'a)��h��bE2���*�&+i2��m����n4�28AKLT�_'��m`���s��?�&HB9�%��vR'�6��/�ɂL?8��`�zrBR�^�G=��*sϐZpc1P�.���<�'�1��.�+�Ǝ�g-�bcC��.�q�����7O����i6;��p�7�<aQ��<]��	�^@��r���b>����I�ėzQ��ʝ�9�%�j�A�����D�T�/��M�zZ�j�u�c�n�YL �)�m�>�Ż�@�pY8=�m������s��ϰBs�Y�d@~�����%�=�S&�|0d	[�֋p�[�ǐ!m�e���wi�-)Q��6�jF�[�\�5wYAv(���1��ͽܐ��&8�$�L���xP���7cm��0x����_&��7�%�w�F�(������sy]�Y���~��m��v���8�̦�j��٘H�R+ބ�0TA��«���Q���מO���k��\�z͝��>��^�C ��qa��T��]�k�˺,W9X+�J�E[����-+6v��jrKdx���mv����FA T����S�$8�	���Yl`�-8�߀M���V�Q��_DDź����3�܎:���Lf#. �����K��ˍ��p��|8a��f&W�+H|�Ceȩ������|����1�1����2���f�hZ�O��h,0Q�I�J��x����7~����q�ۙ�g�� �&�w�N���AHX>��ZYK6�8��F�t{�U���糣�7���y�Ѱc6���p��!9��v�@Ra�&��ܖ}N�0W�MA��K,D�wd��<� S�p10VU/.1EKQ���Bi�b҄�"�Y�q��A*2�N'��_#��B/�V�6aќ�c�?��M1��|���y\8�<ڥk
�uڪqR�\bW���l����Z6�S�,��;�r��E��b�g��_��n?A�t8�\BKl0K��hǹ�Z��K��|8�^�,^p.���_��l��s�x���0;�1v���\duIm���9��[-�O?��n�������?�_����n{a�h4u�,6G���rM������\�d��3+ɢ����+�%�S��U��p�p\4eW;挡�WS�|�`*̱�d��i���8<֎���~�pb�7Ű�# �މh6�8Y $� �cOr�ǡ��u׾/F~��sJ�jI�bF�7a
n���|�ݕ5�4��Ӌ�6~l'�/k��s�:-�=��ߜ�L�«�(��7ⴟ]_M��	�-���p��3��p2�F# ��O'���q0��[��a3�H R,q�fa2��J�~ߛg�ao��G'��dXVz9K���d8U�o&X[�w�@(%�i�#�u@�l�Y{�2+��B������XY'cY�ܚ����0V��&ja����ϓqxU0���0M&J~�H^-VVP� H�I���0X�%D�vHu	q�~�
8�,d�Z4�B��;P����9,�u��4i	1:<OL�:#!�n�G9����me��8:"滔��E�^�K�Z�{M���k���|�i���Wg�>Ǥ�R�M&������Z_/huv[���;52s����F��6��&#��$+�(�W��*@�N��.�TV�����LU�S���qA��́����M).�zCjh�<�D��;@�\�e�P�U����P�a�IGZ�׃)�p��w�mA,�Iϱ`���-좬/-D�MRľt���b�ŜJ�>*H�L�S�G.�TF#��\,�f���J���d-c��I�L�;M�.��j�N'�����C�B�l:�*/�W����G,=�<m�g3��yL�wt��
2o}�`��a��ҹ��/��y^�m�y2�kj�-�)��<�_Fcec|�j��"��Q_��@�!� 0�sc�9sT���4�Pt;.�3r�ꆓg_�d���� ��>�!��5Yi�9��Ƹ��V���TG@E]��a�*��S�����`}��bNs����R�Z�B.�����E[�&J�Y�x�?(��=З��/"X��2\�d/�����(ȰPt��sJ��TL뷏Z�xJ���}�U5�!�*S�<bkc-A�k�̆��](:dgN�;P�ML�dB��C��C�P�[�ha�9��Vզ�G�^���-��R��q�`(C�dqY�i�osɫnom��a���ƩY�M�z��ր�|�9��Ͳ��B�g;R���l����@�Q<]�V��H$������1�
�/�^tp�����k�u'�ټ��N�҅>�P����̼0Ʒ�t�D�,��S�BqvY�9�̻"~T�JUN�TNKYde/=uy2h+�Pѷ��Sg5gs����-�ɵuD�c���P�n?M�_���{s�T�XA�n�i9ueEpe"��X:�!��]q���V��J�w��s\=���HZ�y���8a���9��1�cF]b��gJ7�h�BT9�e�j�[K��BB@�or@�0��U^Ӌ+m5�L	ĕ�L��g��������g�"� �/+����uŭp�f�aO���}n���H%�?����ʡ�:Q�[Er��"z��x�|F2#���s�n�q|�ܞu
��U?�E�]���޴[+��W�����g������w�)9g�w�s<E�<�AA�,v�ovȹXs�b�(@,�r��؟������*��Θ���V7����P"�O��*0����A���@�w�Od;�[���ڛ��:2���l��B��?�Sggz1'��Ās�$���SG�%��4,0�eD�=� QZ��=]y�U쮅4��\���

]���(�U
=S^m��!��՝	䝍���b6����������O^�shn���>V"î ��Q��� ��)���1�r��1��7xm��ٚ$����j5��b���Uj��2�8Y߫J����ёl�N�qVT����c�(���cү�|O�X��3J�2����gH's8�n��d�Ypj犷��Ā,Vh6�6~	�:�����R���2+��(��gi�Ylo�DN\b]��֜�D��!�*P�� ����Qo���YY�{�w�S���%%�� � ��
��~�X��@$�Mg��nwwg����3���As�Zk������ӣ�ޠĒ��p�-H��rX,�<:��d8�����!V�%�$�)[,=�bu�Z+�*xw/����+�ãx8���c��sH"�A�\�q�z����Q�RPma�2MԺ�y�&� �]j0lF>�?Sh�=yA9�@�oi
�t`�0�:��Nȱ�b�q�I�������m��23�m/�!�\�ȡhK�=}s�7��;���VF�8�����0�;�qo6�y,Fw���T�p?��м����^���^�T��p��'�7]�Ԣ{�_[?���~�����G�{�;x�ㇻO09�A�q_<��4HҹZ:�Z���<y���m�d}T�l_�r1��o�x�_������_𪗽�_�s���X��B` �xx�fw�/��C��a��,~�k0���B-�Ɏ�S;��Q�Xf �m�ER�V�u<��v34���F>�TӋ/{M�O��s�׽ R��x�T8���c���]�?(�Hϣ#h���YP��:V��D�(��̮f�bc<�X6�p�?�1�a�`:�i�>չ��ֵO����]8���ÝOƃ���G��?�=x�p���=뵼�A.=���eJ��$��a��ҎT4��Ã�������\F��!=B��6n�ظus�T��������f��Rn}m���ƭ+g�+��ʛ��J>��UG$cz�ރ�ŨS��6����b�V',�����0	����d1|�̼�����7������n� �<�y���]�W���������q�VhA��Y�-���ɠ��Xd�0>ا�#�)���⫾��v��Sg�ٯ �	S���
C���Mt��Y�7��*�Þ�N��9C���r���ջ�WXl�䅽rxEX%�Z)�n)����0"��\�ig<�tSQ�i��(�fTN���z��ת��ٕ��VW�_\�?�v*�Z
�[~��Hʥ2�X�@|������X�O�w��?����_t�3��������w>������ާ���K�~�U�}��>��>����+^��7�a������ʅ�ŧ6���t�����\�q1��+�<�b���������bחg�'����q����t޻x�yם�ܞ7��o�����s��Z-���fsg�v�Uʚ�_�"�C��+�#2O�0q��Β	��;��j<r��k
�.��x�VW�vHY��c�چQ�b�� O�**��]���A6�jOc�FIx#C��eQD%N�%�\T̖W
�3� ���T�eIC���U�ڻz��s��Ҝ��b�����]��?������W��K�{��s�I��0��aS��FD��A���7�kw��$���=�e����'��99?��1S{ޜ[+���I���~+����|�J���D��+����;�x_{m:� <M���"#fH�VOfHUu;��J�;��o�Q�i{�R�P�g�i0�Y�UE8ݑ�hX��
�q�c�R&F�'O�'�9u�����|:�j� ��qTJ�xȈ����1�b��r���^�/���xFu���MՖ��.�r^�Y���Wޕ�b���K`�l��؆��F��f]�K�L���oԀ��b�`Rer�x2��_���~�'������=?��gr�Lq5�i|"�=����g��L��W�D���t�c�{/|�~y���y�%��".Nz�h8����p6���i?}2�IP�9?<����f��$���O��'����l<8�k�F�~�h4Z�D���L�`�[�g�'WU�44�o��T��ũ�Y�Ț�ﺳ�Y�R-�I��^p���"�]z8A-rq,_��z���?*�?�M}O=Пxy/���b%Lx�q!O
K���9+�=��o6X�O츐 @�rsd1I�0B	��Ϳ�w<��`W�s^��!Ժ���숌ê7���y�u-�vlol5U.7�@a�.��
ꋳg��Moz���)��l�1ȉv��?/�;H���x���\�0�w.�^����u;�uoQK�o��%��������K�˕�,��9U����t�e�ҋ3����Av�K�/���H���^�_~�M/��\��A_9 �J]Ϩ0�ӊ�Ɯ�R6I���/����~���[�K��U���"7�ε�!F^��'����Ghw܀� ��Ln:(޼J�=L�pa��B|�����T��{����n��Xq�T��9"���k��8֞Dٕmx-*�|�wt�U��O��%9˜�,�|;��;�-���N�vHF#h/Ql�O�Gr|�A���q"~�1h?�/ad�f�߸��|���6��a�|�[���"UH�j��2wy�\/�s_�7�������p����$�^�!��/�"�������E镯�+������'�t�˜��x����mA��W8����wًT��O��/~�~�K�t�9L����J���e�X�S��:So~�J�G�~4u��/�'�HO��wxؿ�a�LC�&����"Qv�p��e���_X��?si�z���@�ȴ�������'���_x�w����~KT}ޝ��s��R��! *�`]E�q�MK��ϊY���@�%��N�2��q�U�gRE�oc�&ܠJ/9_�Z��z����э�nw��a�c�a�e��j�4�Y:$�����n������7��p������3o����\�e��7��l~�������/��6�%�����wkc����)?����ܪ_,��/�S���v0�����h�z~�0�}?9�7�y��@�d\�r����7�S��Mm�G�h?9s�j��E�.6�j��Jn�?Q x������l�*׺�K?�����o�֓��K��z�mG�C�0��ց�r�1�;�����k�:8yʋ��	^Q)>����?��/����[�������ԯ��ٍs�����b��ػI�� �c4�Ƣ�;�\�ÙT�\��$�ݘ��۟B�6�L��E�J��Ӳ���أ��g�eK���=�Y_����U����?X��ݖ�UmY���h��Wȗ6�V�9&~�����]$����Ư��g�B6�ߗʭ���p�� ����~|n�o�/��	ɻ�nl�qu�{c"ore��$�I7��޴O���i9I�q4`�qyAx�N�T?<�L=/�����O^����?���]ܛ?`�k�u;�.�e7�G�K��=r�I��z�x1�<9��J��|�׶?�]����g�q��؍J�]>��6�nz�]k'6a�蓼|���T��A��xN�}�⳷��{~�wf�O���μ�Uk�B����q��鼔�̵���Wvqk����渻���K�K���|Be��TH_@�U|I�wǧ_x�mpS�4��@q�P���"p?�&��kT���Nd�!��;��|�3��^��Ơ���w�H�-9<T~9qB��p����~�0�I�b�Ȭ��`�|?���dR�O�Y�2��e��e�y�s��8	��4�y|���z�׏���wz�f*ldi�5����(��l�%�-�h��0������o�����eϗ�ܱyq�O���>�X��I�}��}󃃭��{��><�P	\eݷNL�vf���0�O�q�ů�*yx&����{Kƣ��@�L�K^9�o]�e�<�c��Դ5\q
Nn2NW
3*W��(�pX�|��$���� ;Vn����yϴ���nc+[��i��{���`�5�9q���8G�E�O޻�͋�i��Ys��Q��q�����3T�YNȜ
��Dxz*#���14(�ۥ�{\���5��?�����),ʩ|�XZ��zn�=T	�?�Ϧ��$�&���p� ������Q�:���]�`<Oѐ�F�Ǐ**�9�ܑ�oiD���\(�� ` 
�B�;Y��/y�W���E��t1��!(�oz��?�u�Yi����^~Z��_�������x���R*�a��ٍ��O]�կ��Go^˟�V7Ko��_~��v6Hm��x{J�$�z�|?�=J�Gq��3�����ƍ���f2����nH���Z���7��:	��F�Ż������r�����|��g����e.Τ)g5آ!�q?����)]]�|�N�x��̄�S�K�(s�����s��z��}�����)�z�����5�0Q���~��t8S�rs��eE�ڳ�x�b�v_�;^q��p��K'7�`8�>/A�C=ʻrէ9�y~��	�0��Ne�_������]v*���PP�J�N��.����*�+^�� ��e��Y+�5꿚��r��w}�G��u��ڗ������z k��`B�}����;��w8�$��҉_��A��6�nR����:��+N�lN�ߊ�<]^gz�ś�C������>���y�{���L6;������Ff<����Z�zq�����K��}���U�fy�����{���<   �\�0PnU7��")�e�y�����V�Q�� eHۈ��3���o<��ɝ��?��F��"I|�#��pM����h�nTN	�
ۧ�V�Ť�x�6��G�awHѩ��Ճ�}�=�����̜Fm6��*�>�	���b+�4�b�b���?��ｒ�X=��S��l�r�����O���D��Pe9N�0��ĕ$�U?��\��;^z�r&JOT��W�T?yכ���<�ߴ?��������׼���;��A(>����=oQ����Rru��'�\�p�ѫ�m����I����w1"	�G�$�����G��뿳�}3KҮ� _.��[���o��m=��'���o4�|�'��/��w�X?�����9Q�$%a��$H����'�BfKO�������t�M `Mԭh��̪��?a6p�pĆ�ɹ;�6�*
��P{�L
��t�����p�jvڭ�x������8�&��qa� ��Y�N�%!�P�)O?�)+g%�T�S�����64X�2
����F�)��O.�0Am�����XWQ(Y�?�hЇm�rv�-����z�9�d���I�Ǐ}�aX>�j>U j�����S?�7w�ow��֛���rzr�����NF�F�7^4��+m��@��e�7`��?��c�1�w��G��[~����w���q�/w/�&��V��n���z��� ��d�����[�C�B|�
{H� �Q=�����������z�V����;嘄k��YD��1A�$�Z��f���J��j2NE�l�bU���G�L�T�U���<IU2���Xm���/�5��]�V�y,�1(f���Q�����Z�X��r�$D<S�!�� b!���?��I:�|�=}.v�Ě�)! y5p�@�+�.��}z��\Cg)8�T<������?�gx!>�*�A�����~�g���^?���O~�څk�7>s�ŲG�w���d��ZN9)q�필����Ϲ��/y�kTO�;p�h1K3�!w�}�/zѿ��}�_���Wu
�<x��y�n�r��;�t����q8�N�C^o���s�散f����VX�0?!K��I�@�ݦ;�������;a<�?ڿy��Q�f�ۂ��-)�qM~�����_��{��!��S�4	RE�}]_7	�6%� Q(e4$����A��ò���GBȍ��]W��_�}�C��Q�`�+��I6Of�d@ѕ/�	k�"��kc� N��0	j �
�{8���P���l���^[O=[�~C��_�4�z�B�����������_��^���MG}���RaLk��'ѽ���W��|�׈|���U��S�ݨ���npE2�\��� +b���X�n��@�3<jv����a���w1�Cz@�	��n��޵ݽ�n�w��z��0� �y�>�9l�~�lr8��67O�U(���`�`��ˏ]��L�u�B��K�qu�qM	O��:��苸�Ђ0�иvkU�C�&���!����N�(�˹��.emƞ���b�hq�������H.��l���d��bM	u�΢�L�FP$�vx8��v�F�K���h�̹����'N�� R�� .UE(HP�s�zy�����j����7��=��ݩ��3�<�����r���J�D����^���,Vӳ��K���s��}>1O�������7�;���S����.X�~�X�<�D�1"�hH Eh�d#�G�|���Sy�N&����Ӽz��g.?���;��%��dQ��h��DT����"B,���J�@�*�)rȍe��@;
ӹt�S�Z b�Pi�؆�ٹ��a,.%��^(^���st+Y_��W��`����Ծ��Arx=2q��������#�	�;��I�P��&���ˊ帽1)�������y��)�'ן�y�3�?p�C�Їs��PmD��O�A<��t\|��lD�>5��[���s[Ͻ��=w�u�}wq+��sP�,���T��4^�S�gv�%�~iX�����Ȏ��vK�������ϳ�Y�Q��)K�,}`�J��t�^y@��|LTo�j�} fL�avTᬪ,�_�A�v�z)T^�Ow���[.�9�ȵ\iI�7��j;�4�R��z1E��)ޱM�K{�n�@���8
�UQ-�5P�\gcB�,*�p�&8GQa�o6G��>��q!�< �>[��B ��?��;��w|�j�~ϝ�|�7}ǿ������[�oza��'� �
�n���fo�>�.1]�FԷ��f	��V�lЭZ�U+�.<uq�`�?�Ҩ�.�����@39��ȂO� !A���
j:1x>�鰤Y��?V����� �OgY��@���opM���A����v����wۭ�������+�A��p���ѸU6��0�`*t(����pMk�D(�"C�!�o�!8tq-���`��b�t_�Ś8�~�)�xq�U]ԗ�JI'��7,u6x<;�����Π�ͣl*��!.���^�s�U7ℰ^�G�V�X���
��[[�W�=s��tx���q���ŋzy�T���e0��8��/��:��G�JYͻZ�xs������3ps��s��S�ke|$��w�M�(��q��	�Q�BQ�_���� ��/�J��,^�0LJ�R�R%l2���� Z�YI٧c1�����B1&(�K���Z}˙ T�S�+��vk�6N�U.@|D�S�G�����Xi,)-��T�2뵤9ʢ�@fR%l/�xF�K��b�Y�*�N1�G�ly���bFi�;���1EP	��H����[v[�N;�X����1祌�2'6OjS9G��x��'�L����~�c� �<��gΜ����%�cV���'�tIF0#��v�����Z]Y�'����#�Y��R��0$�G{��,1j��1��)w���t�~żU������7lM��$�"�ܓb��@U��O]��ٓ�(4���:��7�c�ޅd�����`�IC�����B ����z��Ƽ�.@�Lo����պ�'��Z�\PO��dj4�9�F����e���Z�ܪyV6ô�º��Nǘ�(�¹��N2��wF��w��p<����5��ãZID�b-x�+*���Nr����G�|�����9?��q����(CY#�~��ݛ7���R W~���LZU��xG���[o/U��|�{:�q��ЖL�����S�9,�t �d-�Pxeڝ����)E+E�0�Zv�t��$��~RDYB�z5;�Xx�V<_ʱم\���a5R���{醱�������8Z?o7I� �@47j�v�/��>v��)A�E�7���{X�c����`LQ}�(c�̷`{U��?�ږ�Z�R��òG�bi��9�A3W�U���ń�B�
M�������>��Ӎ�������/Q�,��+�5��Hch�@`�h�������&��T�G�L���?{jsu���\�|�S����}����r�R���\cԟ�p�<��%+��3��h�?8:�vp��d�)1�4�Ja�����}Z0���c��\�8�4S�a߸y�OkF��}=N�5���ʌ-r(�<\K����K����X���"�y]R��銹=pumא��1DP�M���4}`%�T�^i�?u˹���|��hz	�|)�-HHu����*;�2��$+� ����x��=�m_�y�ʍ�7w/�noC�$�?j��V+��a{�Y������=w�u��٨P)׮^�R)�|�#�}��d�i�jA%��L-�x�SBX1��8B0�wl��/cG;��˗�}�_��'?��r���oqb:jNg]�ڲ��O!�Fp��v�'!�K���)���d�j�Չ����@C�|s2m�ǭ�p:��	䈸�����a#F�,� �����?�S��&*m	���Y�1�{H��v^�T���v��/N}SFoVK�8�$��N�+^��������/*�C
�~:�'�gNm�Zw��ĿtU]H�f{���J�Oס�%� 1Q�	�>>v���m�"ZP)덕Jeu���VB��T�*��=�&:��T����<�g��.]���O~�;�Н�s�y�\G��kMZ+!���Y��'�
go���7�w>��#�r��1e�f ��	��cV��ӄ4�>���`����2�%����(�V��C��F���c�PR�����E����'\ӽ���������?����|2:z�5%j@���0��� ���014ǚv�(�`)�8)���c 
�|��T]$.}��ǣ���.�Q��7����V_����i9Wzޙs7�;�Ӕ�%^��Rh庶-����V�/E=c�w�M:�t�V�RU���~�fП��\�f�-���Q����:�~���|�@�������a�/���6-f�<�#�_��$� �+�hb����&�z#��s�_H���>z�;��'{v�A+'�_�T
�r��O�\cu�#���g�����1��������k<E���o�^J��%N�,���[�-'���WR!���Ѱ��TpET�_5R4��(��N��Y�U-��/U;U� p��K��A���h���ws7�����{��FV<�\[��/~��_�ڋ��xG�6۝�4*/~�;կzj�H\"�s��1��\4,�%��X,'/h����f����B��a���?�)��?�y޶��m���&ѕ�玲Y�.f��Z/�t9���IwS��'�[i`�7�{F�ԃ��r�y�7��=��z
���,2�^��4-H�k���B���!Cق���[틝��ɔ�4�5�D�]����OsK8�Y	b)Tj�A� �S8Pc�dLD͋��c�q�@c}л^ 3�W�������Ϟ:�������Ct�s�'��yvT5�v8<���l������}���?r��=���E����~뽩��y���D����~:���b�L�4��Z��|�I����,�{��ӟ=��|��޶󙧀��ĉl�ag�s[欯 �d�:Q�}��/
w�~煋���o|�}�ጦ# !�(�TqT:x��g~��C���B��������7���?�3�G/<i��s*0��Kg��O0sr���������o{����Wꍯ��7�.�ۿ��|a=���|� ޛQ>�j(p���e��;s
�����W?$����@!�ӓ�3U*�%�NpKŔ�c�Q#L���< �4ڼ�����*ٔk��������z`�HX�v�6��!ܡ���~���dp��[[�vb:8�a!�=��G���uR��g���PM&��Nr���p�~0���&W��O�\��)ٗj�-�05��v��Ѵ��ߝ�}�
�1��a"�����7��[���|������u��_��+^��WLF��0�~G=�j5�m�5���o9s��|��~�{�x����׮��w{p�%��`���[^>���W�c�������[s������U�T�����~�����禓<I'�u�PK�S ��HA:���{ߝ�z�t6_)d���|��b��fP�����Y"��k#��~�r�bX��CKX���j�������������	���h��<�ԅ��+\a�}��c.fyA���'�Ja!�U�������O?.���%���ř�SSH�����w-nY�WjW�)�4����[��(���?��/BEY�t�=��;�p�������7��@ZX6K�%]Qȗ����y������/��������|�������<�s�)�C�/F+�|0��ﺗSfۃ��r^_Y:C��A��/�����J�*�
�`<��%��i_�nq���!�7K��y�Y3�Kb!V����q��^�y��W��(�I����%�o/�7��h���lHҟ�����.}ً>4���m���z���2���Jy=�)dK�L*��H�+�R�\dBC���,��K2��O<��_�r
�$W���I�s�$A2~�C��⑇?��Fo���T��9\V).���]�
�����w�)�Dɵ��8z�bqmm��`���׽	����G���\����TkA����Z���ڽw�s��������ʥ\.����E�ᰐ���qA��SbXE�K̠��*c�t��ocŔ`(>��pFv����뀝����y��^|���DD�6"㈸_�t�6�؀V���e���i�>���s��Y_��n�8�C�2�>w��/P���'���M��:�U@���\�#8��:��F� ��ׁϒg._��������q�8�;����WߙJ�������/zys�����mz���F�`H����Q�S˴E0aY����]����!d&#�LsV��3O_q-���R	�����ۖ�����6���஑].�Bф���M=@��u��d��Q���U����_�8����(��>�ã�D����S�'M�G޷]���)S�WN�Yr�N��
����N#���7|Sj2Me��aS�T���œP�c)&}
F�\ۚ��+���-=�Ն*��1��"�&jE H������d�İOS�)@��.߼�{��ֵ��9UB��o��o��k��_���U�So���mz�_����楖�Iu rq�$�"i�V�~�ډte^!��6u_����鹿~9S��c�A �(���V��)��h�'���Դ�^��"뇗IO�ɤ���~���C�<U�]��N�+?��
T�lv^d� 5T��?�::T���e�-�
6�� �ô��G�Tq:C��5����g���>�$y��`120��I�l:���tZ�W|y2R@1$��Şr��ŅE\
@4^�f�-8�7R����Бì!��@b��C���xD"�A��}�a��I4�h��O^yl�������~��|1q�Q[�@>s�) .^ռS��W~&�����y�IMUV�䝩�ϩ.��Ŭ}�W�	\�5�?c�/��-���#	�c�8`ƴ�E���W��4
>�N*�� ��X+
��BD���|�:'���?>�U�� ��f�CJ��Bv�w�t�ͦ8���{�O]&�\q�pܝ0e��f����t��2���q.L��O}�w��'�-t�M�Yb ��*�a�VR$�H��N,;�L��+�D]�VR���N��l��!z>�T4�mN�jo��{�g��	���5�%<��ck�����|�4�;k`�j�i%��z�j��H,�N6��ר �Ͽ5H~釩�AXP���ʳ��LH��QB$*�)��Z�>�I�+S�3�mZ�D� B8��!�e�0ZL��g)��?���:;E���^�T��u�-�x��D܋Qy�������:��������Z�ʰtQg <rc6�/2�T)[�������U�bPȔ��7}d8@brq�ň�q��p),�_������0+�-(%OC��M�J�K��YNq�4��G��GȅR��f.0�iR�������>i�<Fޟ��:��d��+��~��k�4~G��Z�1Ϛ�L�2;�
�@�=��/����n.���7��[��/yE�O!�W669W!\/�[_(�Ruj����G(�p�����ց�,��J�"g��2EaL���\�_�x��I���X�:�y6����F�55Y��E6��mH����8n��Pc��|9(���g��^py�b!������3-����ό�"�E�R*,R,��Y��{��T�4$"�+�X]��N!�t�0���a B�t��I��V�^�Q���.fYnլO�$�|F=���g�1T���n1e�k�`|��w�9��`c��vt���G?�\�)Z��/��T��39�+��ڈ0p�B����� 8&v)�R���n�:r��v�[^v�l�*'��A�Q�}�J��xQ�~x��3�L�iS�+�b�VL!##^J��~	�45&W��KZ���,?����~�b��f�]��N��T���L�@r��C��}���ƕz<b�Ӥ�8I�K��J�`�EА@~ŝ��Db�o�4f�Db2���2q�� ?Bb̼l�Fl!2t�| c�-�����*�%2��_tfx<   ��#Q�$(N����֦"�� �����^6�V|���h���L^�.ɐ��b ��h5dq�UD3�Fm'�#���Ar��k"���Я+��u�,��1��c��^CXS�b9U�'	THk��3�l�� 8!r)T���8Ru$�1h:�k�(O'�C&�l�s��M���-�MV�Mb�NRb&�o{K��}�����OF���YA������\BsB-(LX��?���� kN?��b����}��L���8��żI���ׇ�UТ��=8�̫���?+���Ni:�$�Y�D	:��G�aӓ0Gl<�|����3ߋ�̑G�B3d���q�,q�&����D���ǁ��<g>�N*�iq>��O��h-��9`��=����?��-I���3�ŶA�����z1������A�Vj�<�	�X��;y/�J��+�,-����7����b�j�AM�R�{��l���.� w�+A����c����P%J�%���5���d��#��I�mF/��uu{��)��H��tU��m\;����fK����|v��NzxL��aQ����)�*��Y�*�/���\j��[Qr�zz�^�d�5��4��'��Ⱥ�Y[u����$�L����Bk�We��P;��d<��4'M��|�I?��{(�1 �E ~#����9\�����׿h�\ �k��K�)����S��K�s�18��N�fv$�b�����=(��G�r�Ty#b}͉�;�I�,�MH�%��	V9W���X����hm��x�p����?�s�!�G���h�.���b͋������<��g�-���8Y	2���v��G�/�a7���ܣt�YH餔Ite�y9df��gP��sAX��剟�xU��W -Ήm����zUm���c�}�$�!�)S�1�Z~r̿X��)m��ِ���9@9��^�f��G��l�2�2��)T0�y��dX��*c���i���짪�.���q1��}5��L�f7�$w�^.h�2
�nO�W"�f�c;E8�7�m�R*5!���S?���^d����{G8]2�E�����U>1/с o�tE� �5�{U�������2���J�������9�odT������8�85��zj�P�oHj�R��3lB�1�3�R�5���o�H�.� �D��S;��3��h���4[Ȃ�I0� �Je-��M�2���d����O����((%��[�2#B�9�و��.s)����tו�q7�mPC��P-�[�;W�6�X�iY��f?p��������S��A�!���bDP2&��=ǭ@q�9)����u�\� ��^��S��ݤD)_�߭YWi��Y��\�߼#�pu��)��e�:��
�x��uoRf��plV\�E0��(�6��%�`�߽��P����p0��)e�w����S٢�zv15�/X�̞#�N{N���E�_`�t�����%ڑ�1(5O����?��s�Bs:`N]2n`��N���k��"]P��Ow:<�X�rz`cX�A��5������ǃ���;�D�|�E*[#��t��Q�h1��h�D�<�c�iܬWV�`���zA�x%����>\���+��4��Q�"0
-�t��+�^�N�I��-�<(�2������-]?�&�ə��.0a��Q��=VF�R��[�+7c��\�DccT$���;_����[��qBi���$2��ԍZ�������>�ow��NT��������n}�ƪ�z�>z{�����>�{9G� �&I�be�Fr�2հ0�w��!���Fq3��M���t]Xɂ�X�s&�}$��#DI���lƙ�7
{�^�9>�8Cbޏ[�j��aZ�_,'��r�d�g�Y+4�Tވ�Ԥ�Xkvhcb�W7��;Hgx���c�s�� FK��:�1%��� :��VU[�s�J�" <�4�!�q�-R]o>��'6�j�V�� �1j�����hx�����u���R���D���hc��O,*b�]������K�����
M���r�|�K�W�J���>+��R�ͷU���k��;���^���'?^*�6o��Su�7_�`s�R$r.2��I1��^bzY�T���_��QeF�<`�G��q�Y�P�V��lz �� =�pi�5�P�3��tT�Ǉk�[:��ZMd���i��\fQϷWkś�1}���Q��N��$�-Td �r�֢\	˥b�QZ����H=��N��GIQVpe5?���K���4O�8��|qh�n#n����Sňd��,�<�xF���2����5ۤ��rQ���:�F�If���%����|8;��7<���\�(2�j����tjER�ɂ�%�;�%U��
w;cu)X�c����/�?�2��@������:����k('�1�����X�<#*��^_��~��qs{�3d�ظ��Rf���K1i�T�0$ծ�����+a�ݟ��NT��(S�r�
�P1���U����(?ܟes�b��c�+K)��Ĳ�:�)	�{�T�0��?����;'�2�q\L��*@��שZ��ι����F�Qe�u�fjgi1�5^�5Nr�R�r���B$�Ap��l��D�g�5���Y�2tn1ɖ�J���S�:e)3�V�|�P��]���bnm�,ʩT�G=Fb�� ������闝�C��Xb<��\���h'y0��RJV�j��ҟ�|�~n~�S��4{o��:�)���_����I;*�Tn��w����_+����~���|)���԰$v������[��>S���{�*�F\�BW��8%�+��B%}oJ�9#��3�7sԅ�����c��\v�ďNis�^p�h�����;�6gNR�����v�P�{�A���px�R�J���w�Z �� �&g� ���P��BD�BU}��Sw�n�ς��Bm ��Ln��5�[�[ϻ�6��(�r�|&��s�$	a��Ad���)��U����ɤT�&}����dJ�qg�::,���Ѱ-�����B�=���㲖��Oa��k����>#��g�|��,��p;��U���F.�?��/Ry�P}��-*5�羆�c�g���jULftS`R��<��~��y�	��·{�Zu�ZkL�t�u���V�9I�Be���)d�6@6�(5�e>���nXLh'p-��MƝ>U��@���4�hB�"�&�Ys�nA\�Kt-*|�@'��01��Q�D�]t]׀�es?h��i�v �4�ʔ�$�n�:p(��<6F��~����
<�B��(�Ԋ��)d���AM\�f3�*��d4M�P		��V�,ıF�ʴ���t�!�����}��Ͱ�J@'�S᷈լ$���
ڬ7�m�9N6,�T��-��0��U�խ��dv0���ؗ/~�(��x�P!9W�]�%�Q2��kw��{ඃ	.���r_��ܷ�w�JS*��<?���e*�Q��Zq��V�[�̛�(Ss�ɟ��y���ȧW�3�)@�����i�:ͧ#N:
&�8�EPu�#�! ����#��S�I�rо��G"Z�A5�]����HH���'�~S�a�!s�%&s�2Q��փ
;A���ɭ�:q�V[����@�8�B���xOڔ ���ܣ��|��A�X9y�T�>�ُv���(!\_�h@��,p8H�*��;����4��M��4�oН�@E*���g��'q�iT���bܴ�[����@Z���L��s�%��s�m$�3F˅k¡>��>�*������_�_���<����y�����ԲJ
��JE��ӽ�+�bӕ�ՊU��G8��x�}����3�fa0�S�c�Yh�!�m!���`s��l�o�^,�k�f���B�a�3���_����? B�-K�5�
X/B� CWu�x�t���&î� jM�y�;�����4_TZ����G7JwM���aZPE�	��u��ՕU���Tç�(���}����ׁ���q����Z:���������|�-���[7N���_�A��U�b�����	ۮ�l�vi�u�ݛ�����[ĥ�O�~�%�/�\�dE��O\��O?�Em�[-�X����u���/8������ϝɖ���91q/�b�X����66�5�+pk�������vg�|�|#�AоM�4;�^�-"d7(F�j�mU�U��I����Ї�

�Y;�+L������_WOnAKM�D#��<\�P��+�ѡ����l!���,��I&�W�
p�4��ń����^�yD-;�%�łS-a-QYu;5r!MB�8�&-�H �`���`-�V> �a����Q�'�{�}0�=^�I�U��Eƌ��b$K?ͼjS�M8s���X��9W���&gi�������U!9����+�H��`�dN?����.�Ğ�JX��G�G��w����T�1C���4��0E/~����:��.=Fe�F(>�3�Z�~ce]Y���uQ:�������Jg�jd�%ʦ�%S`�:^6y�HD��\�A�îs�po�v��oG����=��?��*��/�����:�֪=,4�	�sٳv������@�P)���'&�f�S<�T����Z�b����8Q��SB�S��6� ���mV���/��E���/y�ƚXG���x8��-��$�|�������3�ϱDM"6����5�����3�愗0���U1���[�w�"�h���~�'�)<����=��n�8<��h�����},�Z{��#t:�ڌ� ������l��N��ƍ;�{���捛�w����k�����$�JGJ�٦3�������뗥ڢ!�t*����M�'�<�K�ݧA��1-H}���\�r����y~^�浛�zb{�� p���i���
[���8��(�m�M�[���a��,�:|>b�\�׈&��n0��PE��z�G/��}�������t��r�r�ʈ"#U�5)���+�P�w1��MN
p	���D���jg����Ү����)N�\\��N��q�Tb����'8�<�;"��9���a����>j�jN���Wq�{�6�L��P���XY9����j������3������)V��V��hz��m����;�1o!�(O"������{��Bj�
���	O�<:�hN!����(UP<f0H ��	�tR�q�98�X*N<(=S��.7zk��2��4U�o�:�q�";SA_Ĵ�����@Dxt�4�,x�e��*jM#�����s���!��G�B���p��Z6�C��	k���ʿR�`��v,Qѿ��o�17a��a�v)t�/�eҪ�ZF�l���զ��Wp5+U��W%{��h�[�W"O( 2f��m��A)e:9l� i�イ1��!��T��^JTE�R�ol\�q���$2"��g{{�PP�n>�n�[O%סѥZ���fkh���T���`se=>ml�����FQ��n:�BL�Bs��b R<���=��z�!5`,9��;7B'fؽv����v�{s%�,�����!���ґOpG
�{�YD5[�p� �������o"j��H1|-L�&�%��RWhy��_n�M&%�~=m�k!0q	��7��������G��Lb�~Ʈ�W��wq5ƀ�q�Ҡ(^�_����ݷ��7�N�<ec��_�JY���|~Z�?1&�!�K~wtx��C��?������:��L���Б�%���Y�]��WfN��O^��4�]]]-���Μ�&~b}���j�xZ��8341ҽ�� ]��0�B��Hț�$��" y�x6�o1/���p��+�ʒ1"�LZH>��� E�)r$o%�8��m�h�
c1�0g��'�p�l�{��#q���M��h�MZ\R_^P�G��9P���A���v(P�H��.��ܟx�3e���ql���ƶ8*�.�&��#� �bH��bs����ۏ)k4������)�$. ��� ����<sV��ăy��m�n�)��B��}Ym��^+�����
�{����Vh�&��mU����:u5��7�a+��yJB(@;lf!B��8Y�-2�ʅ�8�p��C�T�t�jS�up��Z�iԪ3��Tk�:'	X$��v��O�LE���67ORiQX�f"K�R�����Pr�����-(�H������V�����qt�>k}��$��.\ҟ�Y����Bd����$�%�n�H�v�d���/�'M��̢��A��)��]8_� ��s��hԭ0U�-�BbR<1��c��n+r!1ԫ[+\��j6_;q�;����;n9s�����'6�VJe�e�VO�=sze=OMKe��\��|n��J��F�f�C�;i-��C}(�Շ�ҫI�q��O�r��?��0I6�/]�`*5G���GHĎ�l��!� ��� ���
ǽX(b��6�d��%�{]���)�C0.��J����	e�0
���
��@@�C4W#)+֒}�	�x���E�d-���Q��&(ax�],E��k]�AdE�@KoV�Yam��W7������������ƒ%ARƤ���,�1��E9JV�BDn�DFa�`b"��n���GE�i�6�0��c�{��<�~�ɣ�k���`�Z��=赀� ��/��` �4I�K��c��G�;T���GD,�&$�,��%�����!ڬF�I��=�N�'>�f*���vgg�p�{��Ng )�N"����, i�L��*�w�v�G5q�)#i����i�7I&�n��&�|V^�Ё�y�9�\�e�_j>�2(i��m��Zy��Q[�QSĬY��X3���H�m+��KI�C��Mt�;. 'Q6�[m�'��� !��/��E	Ğ�M@�m:�xy_��.v7N�YtVE�S���
�`O��lK�y���&0�P��%;��@@�y)\� ��N�ۣ�O$���u:�`�y;�}�m�p��.fml#V��y"��P�Z� j�R�ł��j8y�%�S�cH��@���w�	�*�҂�Q*����j�ޅ��<�r��PI)�$�D����L�脴v�Nr��whgHb��z�9c�\�`h<�e�k:|e��������*S�0q{�\�k�k_��o��{n��V�U���� Ə��}�B�ca���_��pp	6�����zuZ�YI��"+Mb��p �w�<ا�6d����R��Ԅ(]2��&��q�>��J���}p �v���I��6 "�<YӨ������Rv*� ����C�i-��a���k��i��b�[yS0���Yz��/�u��C�Yy�L��=ªR]&��yٸJ��^�5�Ğ��?�jvX]Mn�uI]���J�c�d��I4����.G� n��v[��>d��P+�|�ΔaO<���Nk�y�u�u��"�b�(�	�q-�},���*���D����fdv8_L��\M�&[`�<��Z��|�VT8�h0B�/����\���TB�
N͒;�yA���cQ�!(M�'C��Ǵ��k�|N�%�f�R���0�!��+�鶱�@T�]ey�Z��c�%$�q�f ����)[�C�a�'��t{�*��������C0�B9�Fb"�:���S����D�%���mGtʉ��J�Lq�I�i�A�J0��}��ֺ_:n�<ݭ�/�Yߺֺ��2����?��^������Y���c^Ds�_LG��{��~��?�U��(�E�!8�F
g)El�"v6X��MB�`�8vo�K{MDb^g=�_�>�	���Jv��p0��}y�9&R��IwkNV}�4V���`�����3(��"�!g��J��@�$�BN$�#tE�	mLA�#N4<�Ѩ4#�&e��C%�<A3��w�1]3��(���&���u�r ɀ����)<��L�VyG�`혦%s���eɧ6Q0�q�a�qX�k|��p�8�"����u	Gr[�lph�)p��(ַoܼ|�E�˭��77�Eb��[��o�/v^V��4-T��v�����Y=�B���l81�*�n	�n<��-�Q��T/��dH�� �����2�|M4d=,j ��I- �����S�@4��,kM�[��%^����$C�#}�^�Z�<   N ��F3U�q�(�s�F�&�NWӓ����"S4N���5�:Z�����b����E�.RDڛJ ̲#B��)�
��H�1�	}�=F���b��,�����h�gP���K�̩R�qﱟ�X��dr������ͫ,q&�x��)C<�H���"<�e��������
��P�g��A���F��&ѥ�_�Wa�G�?��Cz�E��.��;��j��x\��Y^ƛ�ܾz���"N؆\�&D�!+�����xC	C�X ���Ib�/��Ԑ�C�{��j�����%���`��З�V�����%pX�]�%ޯG�>�-]���d�Gѡ�@�m��ؐ��	?��PbZ�h�x ��gf�):"r�Hŏ'���T��.����~��Wƻz�������:�I�H��;B�l�o�W�ŉLo�ںxM�O�ɽ��3o�@��L{�I���� .@�����G�
"5,��ސ2�MW��wh�5
,�lB��Z4y�jy�7�Û�I��Z��R�e�Y��v��<&�*~`u$�3�s+e�@1%@-|#���ٿ�VL#�:ˡe�f�cui�l
����;>S���f�FJT���8�`L�IB���0�QKaC��%���J	���v��%d���P��°��*�Z��e�
��o�? NCI][���󺤶�vϙ�kyVx��5VV��b'�Uq"�+|M҂ۯ�e�8(�o@-3c
3.U]Lx�[�T=���!��F~h��Jt_�q$6��a�/��5�� ��!f���
�G]�W����!����v;�A��ry�E� �����SP	�'��ԡx)�$#C�}%���?�ܔm⡕\���� �@7�"q�婨��1����)��I���t�|>��]�dh�q���*C�	��Z2`�p�)E��]�UZ����^��o~u1����3�F��N�4�-��g2���-<�уݣD/A�'����,��R.��ժ 5Po��0�TO�p����jO��D	
�.�|s�5␔籅Xr6�����z�!��ùR���"ɳ @�zx�A�.u�����-��{u�huq�8Q(�&`���f����`x]5պ ���h+�ʂV�^������S2����@_5�U� >���I��"����\�d��n��u���6���6�ik����ܴ+�Bp�d�u@��6��,���q�3�赉��a� �O��K;6`�Ox�"1�9�q�]6�QR�ͤ����p�0%�
��`��7����$���@}<�p82�9=J�	��)�N������;K�f�,K�O2b�
���q�U ���Re�%Y�W�%4s�,]��i�9���k��Jz�η&N�O�%IU�&i<6L�UQ�g��B"�a�ų��gyo��ӊ���)�`��ZlW�n�y��.픔��I���H�.I�����m���㍕�2��U�`��FDvVAޒ^�=���vV96z׼�q܄��
a�GR�2ބ:M��2@�Rj?g��*Q?�D�� �ċ�Jc��A}�,e=z֨��h����].���mS�<?B�X��'�JV��9���`u���F�4<G��|>����/ [�[�ɛ���M%���D�Ģ�`?��r�f�-P��b����0�Dmi�&�,#V�v�IC��H(N
���h�*,�È����4����t���꯺d=iP��c]ZqQa�l��󫺲���R�V���v̻/=�lHG�bs�qy�7�q/�+�� �?	d@����Q5=��x|+>N��B�<�+��h�dΦ�F���|�@���n�<��=�%Mư�W��8(|^*wX�~w,Ʌ.<�/��"K@����l%�&Y������NH��6�#���!�T�W��g㆜�Q��m;�L��MeT�5yQ>� �TB�{��b
����	5�Ĕ���	����hN��2�&,�G��c�;��-� `�Qf{��1�����1��kg���f������(6�8��A�x�Nac�b(���0/�~��+@���jƕ�Ft�ړ/k�� 'E�.V��ś�5��`�d�Р��9� �a��J���(8���	]p|KF�&51�B�F�����~��yM��9	ȔF9^���ṽ?fv���KQ��>nF4,u�$@C���`�8��e l�xt�4��.�4�s���o�f� �J���'_�L���S<�?���W�<b,e�a��M.��#���f�C�c��Y�������G�����f7�L��5�o]�f��I��\]��t�[�ռf�"sb�U7!�'T�C��Dsg�
=P�nw���fs�uxH}�����.G�[m��z�ȸjI �	 S.XOp=�Xoms�22�pR{�3�:(�&��\Bv���ag�n�Vl���6/� 7b�t(�H!dL�K��~�$��r�^�J��8*M�Qö��(��&[� G�On9���&W¡�ݬ7�\�#�3�IA�C��Knѩ"rQ,G1�c��V�d-�[e�����F�r�m�m��}z�p����oVxiX]2��9x#���ф4��B���Tȋ���]uF�HP��Z@V�����U�(��"�1���iKܙ2�tD�֊�q�0�.���G�D��qo��a�;�T�D��k�/�k�j��MǈX��E�T�oW,���ar���������Li2������� x@	�9�Dqn�L�ȅ��SE)���!���g���ѠK.@������������/L����cl�.�\��fU���8����[`��b�pg%9 '�p�6�.�̺;7|".U�5��p�m�l�m�9}E�S[��� �Y<X�V.���� ���+45]��2��T..b���N�E1�)�"�4�o�\�;8�E�38�b����
���8� �W������"���d�? �9E��r���s��a]��T���`Bg�;,9�'�@�L��B+���Sp�aN�B6�F����;���b3$���Dik�H�C�La�jng���v5vFgg�M����0o^�t�n�� j-
E���J:�$ �Ŵ�P��v��*Aܨʚ{>�}K�_��bv���z)f����7('���lC*�w�+�9�4L��X�~��,��8jg�W�gΝ�/�ubF����M��G��"�
��KJ�τ����T����[G��SL�R>/CL1s>�dpb X�zב��E��@: \����RW�ػ���"���(3��)��l�m#��"0��zZ��"W���w���f*9%��J=V�+�	���lgJ�
k�=�ĕG�&*��^��wJ7؅L�~-�� ��mӏ�
�S��HIp�U��,ɬ�.���m���|D:���K^Z��f��x0�OB.�k �H���x��@� �K�2�v��2,6Yh���>�y��u�
�#���`��4 �-�"ߠ�gq�����J,2�䵬��e1gڝf�A��!z���G�;p;K�Ǔ ������l�-	(a�"��3q�����
�/}C��:���:>d<xW]eu�hJЃ�IK0B�
����
��0,�ro<h��pU�f�|*���03��"�!M�_ْ�r������;�}�ؘGpW�]fZ	D2u�l��%Q���.��׻��R�i�R�\^S	�|��rE��fB�Fg���z~i�>��b�)o��D�kr5k�2 L��o���͖�~�:!���,"�1�PeCg��+f�TF�w�֬a`��<�v�0�1���c�U��8^SF�cϩ�٤��/h��
3�G�.~@m8JZ �IT4*k:�b0���iaa����=#%��K^����&��X�q�M��&���y��tAsv�|�
�R���)t)E�:��;Q�aYZ-dv���~���b&�w݆�<H�3�pg��.Rjc۩K.0�G�b�'���Z�KiFc�|����1���I�X�+���$P�YI:ðF*k�ۢ�@�-��Ӏ�j$��@R�o�����.���\�Q��qwb���7�Lif��xu��>WȂN�Hu���fn���rV&8�ZA3kB����7^V�>=�Ț�D�fj\j��$'�U�V!����d�q����J��Mx�%��T)s�D4�Y�2| �!�vV�JL�Y����.h2��v��ޘ�6���&cz���_��*���|�EJ��u��b3��:;���^ԄʹQE��l]�L|y	e�E�-����0j-�5Z�Щ3�j���4s�	Pe���1Z��C&H��t6,UV���*�x��a���в����p:���>SOƽcƇ-��@�w�F 2t�Ɖ�@����n� N�M����p�·�q"��\Z�P*�k��@UB>ǡ&����XZ�X];A?/=
�Z���XC� �
�m@'N%S]j`0f`Aْ�!�D4e�B��4�2�Bz�k�!kK8@.��+�#��Ǝgw��b$���|:eEm���ٰ�:%�F�S���Ӱ���Q�fz$�k�GWW��{��V$R.PK�r��8EqgTi�s��[_?=�k�Ɠ/���&�����N���W�V�w��˗/n]���ni�'T�Q&������̗��N���?H��a)+�`?���;�%}F (������&��6�֘�YY���V�tz��qļbDu��$
ʢi�Sr����uf;_��b>�5�\ ��A� ���*���(�`U.����4�:��^I���!îa�0%aS%���\�j��A�$[
�a�d��bd���c�d��>��qy@ ��tAm����}�qhb������D�j���A8$+��ٹ���'� ��i���n?@Ç���K�N'�l1G)��?�l��M,�W�%n�:�1�O<M�]��V�(_����� >dme�a���??��,g�0F�I���+V�S��P@�P�xӸ�����F�e����
b�	a$5Z~��S6����TST(�~
(Eb�,ۺ6���"�4o���T��32�Φ�^:�P��º���`�tT]&b��n�+�9^[p��c����Z�!Y��İxh�ʚ��E��$K�z��h���1͚�T���G�g��|������/<����WLk�*讚<�tC�6֪��fsf�=��$)�ryeu�\��J�C�z�~�0��(]�I�5ш�C�w�)~"�/x9�/]�
� �
$e��3�5(�P�ק��ԅ$��38�� �����m"A��3'b2=���ժ%نLY*T��IC�2�M�
3+�0K�UŪYc$ht��~�d��2J���*+�u����%3[�o°���rf����%���	,�p�f8lP�;7����)A�Za�H/#"Tբ��]�+��G��BJSf8���Bz��Z-7�ć���%4Q])T�H7�_�Tw����0�|:�Q0tc`i���u�YP�ց���_�Y @�]�Uڧ�+Q&"B��N��6��uU�a�#v���i=�O[��?2A��J�I$�?�3n^��$ǡ�b��=]��"�"�e��w�ϣ��!�[�I�>���	C!��4�ȚRY ��Pi���\)[�"�8�&MUj6��g���~�%��e�������@���A_˫n�+xMg�Y\�6�:k-۱Q��%h���K�- �!����櫑o���r�F|k����&,ia�a(�Y��ׄ�D�4B엥�M�ɗȐ ��c� {���O��|M$�%��X�/�n�^��71��[�x��A�+@"��@!�*��Y����Y 1��c��L(��K�T�З�?%.�&��ؓ�$ƶ�T���E��=`:��TЁ�P�#j���l�	�d�4��YC�G P��3�j��l�Y4�ǶA�a��Z]m��j����Ʊ7�y�v/���d_U��[�^�P���wl[y��4K�a&��{�#���<��utj�[�p�9�nqKrsǁ���>dAW�8�Bj>j�47'��^]��~[� ��O	���͏� Ӽ��P0L�7�k�-$��;��\>.��XI��Cip��}�ZĤ�HJ�E/���Ţc�o!ɔ�ဵ��5$T+!��ʑ�{0nE�ɠ4 P�Ӟ�Q����I��6�L�� �p#Q���N6g����1/��j��˭ؘ-�ȼc9��H�H�R\�2����h��W�5m�g�ݹnw_@v�Ahx7$tp7�O�+�Xҡ�^���Ơ��._T �#`�P7g�2�d�Hx2�QjA`Gr2�{�	�A�R*��C wH�ɇ�J3��zb�ێ�u��)�� �zD�|`}[N��@1MW�̓�4��5P�duY��	x"! �S_�nL]c�����j ��e!�N�2SV�^4��&��.  ^��|tr��`�:����/J�.-�O��^��Z�ȁ�s�8V7�1����v���W嬮�� #�h-�qt��o�tX�>�C-�Za{͖��kR�1B�Uo�"�	C����.qJ�CN��3�S/��!+.Jp������*7�Z��� ��0�3#k�ȰV�X�ի��%���BM�Z��PQ�-)J3�d��&+�26C5��-D����%�-5��+�z� \z� �����.Uc��ƪs%we0L,&���d]��*e8Kp��z�v���ӛ�J�����:��Z}cLƪ��aP+D'�r�&��*� ���DP�$�im�.qؐPkE�F�ZbP��.7v��%�+���q?��q]�Be1�D�$����a��\�È��m"Uސ�f�$�
y��A�$�
 Y�s��U2 �����v��t�hB�	��T)�ܜ��Ӡ6$�������]f�nҥ�����^@�B�,K]�<��
d�;��l*��nJ�C%�t�4jP:&nt!� ����w����)tthJ�C�K�墒m� ���>���s�Y21�	���ak�2�/s��	ڱ�����Zz�Y��d�ؚc�j_�趢\���ى��/����/����hS����X�ߵ �-&���1\�I�r �H5d�9�0�K5H�%n���9>�J�PlT&�|�d%L�����9@�ʮ.��XA��cA�s�^H�P��Y��jy��̏�&��q+��P�`Y��@%�x�0��
)�a�	y*9B��P�"$G��������"�����"�T�iC�4H��ȴI'&a�� {M�ȵ����z�]R��q�%�Y�<��)����Xb*�*�Ɋv���]�W�0�C�u3-���]m�2gE��4���c �yX�m�M3?�Q��ú��D��U-�A��I������a��1$6�N�)g"����Mم`�:��6z��3D�����>es�R�e��R^A��%�!�A����a*|�Ɯ�0�� qh���躗��P�)I�1�	��%��S�\�/��@�:�:5��Xa�E�Ѝ�� �< �P��'4�g�{r{J�̭V�6��ILkK�� p1��������H�-3�߰C�/a�:l�m��?�_��:�j��@	�&qu�a*�j�N�X��%�8�(A�L\ly�Ux�c>b@�E�<fZG�~ղ�?�q��]Td���~?b{��K��7��x;	��n�������X���G6���-���-2�6H 	��U���uuJ��܊4Rj����9u��6�L�mcY6��.�iX�{���xҁ-��8b�1�I?+S ���@����"� Q�XG�Wk���d�ٹU�h��NƧ���f��3�Vc�\w�Cp���&F����K��N�x$���Y(e��� -�6��~�!�w����E�"���15M��:U̑߁���-��6hGD6�#�������ʥ��g��J�DX!WiTL����(����Â΄�/�$�Q�(�	1jN�_�#��k����� �R�`���X]_����{,��dxf�,���,��j`q��c�j�h�L�Z�Vb�)߷J�4�9�'���_)�ʱ�P5�Z}x�0�5k�<   �]��HXc����Ô,V��,�� ��}u��2t6|�E�!�"�,��j�u�V*�<�&�� �
�6��= �U����WP#�yt%r0< %���o>(�Z�V���u�H��j�P��O���:����z��Vo ��	R�j��e�e�(:ǁ_�xS:��I���Q�0K��]�D�j�+�1n
B�2"�ܵlU:��"cq���]����{�CH!��=���z�e�y^bӀ�L�����N�*���W��%צB��b+ܹN�h;���p�\��Z�|�D��FmR@d��@ӯ�?V0��qX�X�	�ċ載�)�مT�2�|6����1Ɲb`��N�K�/�_��Q��C�$Q�]�M�"!����*��>/0���˰�C�O�Z}��J9�\�R��Wj�2�L"��'�%��dCU�q�	c�����We���j�~�k4����a�!��^;��� D�`��ބie�	n��U@6�],i�Z�T$^�S/�)xA` Ue�6��*�� ��)f̃�Ͻ��8�+�|J�H�;Ԯ�R_�$�&qS^�%5"%� R��FB|䪦v�]��2�q�t�z��j�	u8l���������cG
�֮���Xhm��.ʧXZ�W�7J� /l��x��7ы'�+'O��1�,!>9��H�c��$�i2 �$<�z��hW�b�-��~h�!�#Yg�/+߀�P��N (C��}�tHOy�V�j*ב��T"���xe,!��J�:����M�
�؂�\F+���I��Ɔ�6��؈�/!}���ۥ�HG>ێ��d{���8%�Ɨ�3�BH �O\j����B$WmF�c ��j# �*�O�\lٌ�`����B�CR���n���f���]�EC7V��T!VYp��"��Sqf�׫�w�rۉ���k�v�l�Y�6N�o�;y���ӧ�N�v�\�T��&�c8�P�]/��:����Q$����B(/��yx��\_��4
q� A�m�F�.^G;��$P������qK�x���䋑�]dJߚl}D�e�EfSU���!gyi��2���� T�ӁrA �E�q��r���m��T`	�qx%�G�D�V�,"g�#Bg�j�[�%�˅4��Ԛ��`���n�Ѩw&��^�����K�Sb�)S��Ȋ
D�|���a��O�[��.Sۄ�9;L�Aq���*n��P]�W�L.K�=��bj�(�1�U�n���888)L�#a���1���@\�^G&����BtL e]�Csl�eBk�>�r�y6�7����w�Ҡň�3hԁ9A����N�$Y��֊h���@�G�l����MC���. (�u�$�XC���JM)T�e
��;�M��S�E��	��K�-�e)9�J��W��J3�����r}9o��go�Þ��#~��s�����=U+�n$��癠YB!v�,�W��8�˘M+�x\z=	��K;|�ʍdB��g�#a�mq�9�r�lC":6�1贻�Rkɋ;�6�шT�Mj?�pe����;�;�~�h�'�;*�2�ad�
e��(>����@�n����fQA�k�������/�zuE3�S duI�w��6Tʐ����ݲ��u�
��e�g�S>3�� �
�C�Q�T�-�]�hk�|$_�����H0G>�	�ݦ.YH���d��XtV��7�X'�m��,멲����f0���F�"���t�$��`	+1D����UPȳ�$�<���O=fҵC\k5�?�,� O����{�n�8�0�P#`�s��s�A'��6�e���v�/(��د�	"���X_!��@�� b�5����n�h,��um�!���Q	�e����#3G� q�:�^>�+�Z�$�i��5)]	�=RP��(��粈@U�"8~W��J͊�LR����
�HpqXvXZ�%z)tM��K�F@��fǅ*����l/�3]�f%s�.gA��MQҜ����Ȏ^쮷�����f3��j�,� �Fi�Rs�L�wK@��A{r9��A��q[Va�;`J��)�QQ�1?g#�K��)�r��8
_~:m��yo
�J�Da5$A�����d;U����T[׬�1I,r���\�e���<¬�G-.�`;�b8F	s������:Jv��W�)g���#�Q��I֚J�4·bMi��Ӄ�{����N$$rM��R[5*
�����瀹*�M�싻{�r��&�F��/�][l���{��b�)�4���@م��֋��0i���I\�il�iY��R!%�@����z�H�7���Yq����^w�88�'/P�3���S�?��v�a�$��'�jyx"���N��EH�3"L?�Pޤ�C$`W���������^�����a����& 14cƅ�� ��\[]!��DeZd��sb��ʦ� �Z��7�H`�%��
F$��M��m����2^�6{���ZmL�P��PZ�U|VB������	����(�Y��Yh��Ng���#�v���e|�x��-ϵʫn��Vl��ꨄ��1�MA�Y�t H� vXN}	W"S/^��!\��h�w����^k�a^�s�����^`��	�H��M�P0����1�{muU�����,�d���d�s�H�Z�Z���8C�7>�G��@�ֹݽ�k7�%��lo�8j�]�#P���9��Z�
%}���a����!Jk�9Z��e�b��6�M�1��F[N̘U��#���}6Au�h�U��5�a���a�x�ۏ��v�Ұ���?f�Q2i�����֏�h���b%#��!�Aw��̀P����0����N�`��Dǒ v�EE� o�g�s��3'����$It�ІQ����B�訉Ac����+�Y��	h�B�..ll��3�b��EG	���AG`���B���m�I��&F �O���@N�ȱl%Z��3���?(������O�}2�Ǡ�k0���o�ydZ-:Ζ�s��r�.]��&´��e�Qc�-,P�1� \V�]P���X��8���i+8���(O��j�f&,,W����&�#�r��YX�?��rZ�qu?�7��̀0H�Z:�>�zT��1J�J��4/���J�Vk���J�&.
�-�o�����T����0���Hۃt��2.N���D�K�"�1�����1g�b888:�I�Lp��b�mH'b=h-��"�i��>"r�9K�P�v��q�D4����[�:d7%4ALF�@Z"�8T�V�u��q ��Ȉ�춈�'�Q!�Ъ�����BPˏ��
y����7(̂����75��l�uQ��礃�Th��K!'��N�V�����;Kk�*e�{�G�0?�q����`4������8�\��ӊ�~ޙ3�!��V/3=�<G���
O��]B.�j��8����dbL*���.o �4��^G�Ѐ;M{�  J�y+��`68O<0�`z^TAk�6�fRR�3 �$�1�U���X�`y,�����V�x�b����BT
�55c*N׵l�mMp�� ]��*���p��ni�z�TS� I0:6Y7�:�? V��>Yg--'ˤ�C)��Cm�;����.^���b����:�e}Ƴ0��<# 5���A�hf�b'J�%�F@��e9(6r'�� ��������
4n3���#��H� �#���8�NΏ���.��xd���,l�ィ�C�Mo�3(	2'�J���5K����J�Q!/6�TFɷ�S���S�bKbcx�B)�թ�y�����<4�:�4�M�)��\�⁊PZ'^ .�X��좆�)�FcS�նE���!NVB��t9?G��ZiK�0����p�8t�V;�sf�I��0[ʥ�v�U�G`@Ͽ�_+�#��/�h�nm���W}�C/|�o��"�I�¼bi��Z�Z��t�}t�k8�ނ*���ao@q�4/*�jE��&��t���z���J�1�BN��SR;H��f��gn��Jj���@	(���u
�̒�v]�QQ�ۏ|���C���"tB$7`�f�n��NnN�C`1�ȅ��gbw��4ǣЦ�W�fǱ�t��@���>���|��Q!b(�����-�q�I�~4R��M���+�/\��(w7-�q�����l�-G�|�!�,�iS�҈n%Uˡ`����*/:u���{Ž���{_v�̃gO��݃ÛFQŞ������n����)N�n��(� �z�@�*��b�Z}���ő��X�դ�,G�?��b�;D"���r���b�-&��gO��
�	� ��͸"�_����V�Ho&JL��	ꃣ1Q��Q�&F�r3E!,&J��/@�e�k%G��j'R�QF��"6V�+K�ZH�T��~��0ìC�T�ǧ�`��O�e��`�vK@��R>BݱfWmKAe�	�|�9���pW[���>�JM��7��ey�]�e�d�#D�w����
���c���{�3���>�'O]���x�Uڜ2������f!"��	�(�Ɉ�U�
��HF%�Wd1�4����<�M��Y}��h�l[��"Q����a���1�P0�)B��n�U�>�G����!�a�����|��6\$���2�e�Ƅ�'l�G�R�Cm�����Ѻ7�D��웈\��71�S	�uZ_N )��4��%F�2*�1���	��i�,�91.\��Vˍ��X{���ek�r�!`�ev��%������㴊|�k�!��N����N��\F����t�%�~��)QH�!��wXM���]F��} tN���-bq�o�\]i0ݗ+�m�n����*�5��7��9�VrY�=�D8�I��"�bUa� *�&QQdi��HF������5����LxG�R�L���)1Ǻꠒ���e�?��F%�&~�g�.KDc�C�L�T'����i�Ņ �ST ��m���ϥ�CF9ܱ�z�dfՌ���P	�YhB{��� �׶��?��-u׃9��X�h���ؘ J�'��<*#��t,RaΟ޺�\�X��,��6e�S��^g�.�h�1��t�M$1 ���6�p��ۀ��Di H����K#�������^5�Rb����stF(,�o�Z�՘G�C�2f\�	&`����5�H�Dl8Jb�V���ri;�R]�&��W�F�]�9��.�ƍH��d,��2$�b񮌐�$>��HK�q����r��A�L����^�'��F��y}�*Z{�j�[��c��T�}B"���J��I`�W�L*Z�7f��c�W� Zi,$�C�-� �$NQ ��k�gN߾��8��i���v�7^�����L]�:�ޚ�K4G��ި��`�G|�F���Kx���ȧ�Ђ���J�G�1�
U��YQ 2͠=0�~�l07Þ��S��$�m�����!c���ǛK�y��RE[s#���(2}K�q�* �R��DT�v�+=����Ư���Mb@�!,c Ux�BY�\_�R�^.pTAg���Uj��EQ �Ť$tL�B�ڻ��.�iԐ%+Ռ����a؆��n�JX��Y����\�NIƫH���L�D�s��]�q�uI�A����+����}�3S��܅�3�b$�	�k�>5 I����}G��ڪD)�2��"WU}Jh-< a&|E��\h�5��I�Ș�����Q��H�DP>ݬ��g#34s�e�b'q�P������n�:A��g��
*�D`S�)jJ"u�G��=w:�)�2�M�^uȅ)��|���?
ܫP�����*�*'��z�q�V;WY9���S��{��ϻ�e��{�x6@�ewN��if�E���S�M��p��u=�X� ��K���<�����``p%X���W-���&�Bwq�����������
�mcM�TsM�"��hL��-�	��+(â ����۲��P#�pi��ƥ!y>.�:eei�3s�4�R�I.j0���ʠ%�N�z/(5<��7E�佁5��N1�ZN� �@���8�fj*�2�EF#��˷�K�Z���jf�Q�ܻ,���ZmuS�M�"b�zm�T��ʠP�H��e�*�luB4��~ǉ�ez!b�ś״\UVT�4��A��,{�����"�f�B��^�l00��x��9@�~�ϑ��ިK��̦^)�4V)WaI��	�т�G�+ o�FZ��N� �i��K�">y�,�TB;�RYk�tV`G��$�j _�~<f8�
'�А�L�X��o@�@٫BQEՔ�Ȑ3'Ψb0�ɼ^i�ܰ1e����;��}r�����r���ղ:Ȫ�h�U
*�����L��!U`�_�^-�*@���	�� pR�'2��3��#'�2�d�8�ӹd.��m�A���pO��D_Ӆ��ŰwOm��"t+��,���N��'7�ځ��(�Cu����P���Mz9�	3��e����!��$�8������� \W�Zj]҂�5��(⩙����1*S�p��(S";�V`�������'�qωc�&���
�Л|�P��Dą�@h$�&6�{]g�?D����m.W�^���I�t��'n�X?���q��R>tY�q������jq��[��R�����"Z!���z���&���S����Y�0h/��q���[�ơ�U�V8*�*�����:K^;�
Z㦳ǖ�:`�8,26˂' (�4��Fk7�n�b����ʮ�R6��n����xQ�����S��մH���p�=��0Z�Qu)�d����r��l�-PĖ�-�Z@k�	�,6aF�ު����r!�ᝓUQ@�@0�	��z@"xn�s��I�e�Xi�%��q�,��c��!�R�a��҉|zs�ɗb���������(������D�l~sm���n;s���R�K�#��B�	�=����[ۨ�<Ww��sت�2k�W6�9e���xTѮT��9�9��ĲPR,�<!����_Ц�:�~�7g��
0�D�/S�Y�W���t�����:eD�d��i"�E�����m<KI�w�]C�6
"Yk	3΄� ln����Ƈ��Õ��ø�]�p�ª�s��02jeY,hM'Z��\"a�ީ��m��vdG0�!�C�א~pM
�Ө�����3ƾ c�`h�̓Cl 7ޖ�0� F?e��R�q��ȷ� ���>+��hoF�0a�x��?���a��>"\�W$�� 4^A�[l�%⤼�ZL��I]Ʋ#5���(�s[3���Cc�X8�rS�L�<S���BI@��0�Y0 ��E�n���b_RVYP��/ŋ*Q(�jF@r૒��}�p� ��ֆSrYP#V�����B�	�Si�dj0��x<5��K��bݤT؁���J�r��Y��_=pĬ~P��7V�HNyy*7���bu�Du,]U�-p¸��"�9��<y�V_�UWDd|H���,U�ؠ?��PJC��|9'���ds�-��:bs�bJn6�E������Q����x"/~�>��f�Z�2��ʉx�U��FF�Q�.�=Js�QÆfXn���X��H�V�YZ��)xv3���$�"��'�D�c+*�3-�'Ώ&����u0��S�~pp�qDz��Ӥ�%R�͓PYe�8BЮ
��Q�H�ҳA��L�� J=Ǔ���ċ�ǹ�w�y���t���wH� �q�`��df�N�RX�N��@��h��W:\!�W��-$r�'5�`�!%Eׯ_��O]��"�R.�̐PC�e:��р�����Gj�t{P""<��U�|�<��*�R�
�^ME䔳���}��;a�Z����ck?]{�Ɍ�F�8����`�;iY�mV�sq��%����g__�ez��!�����6G�sw���$��F9��0�]d�1Jh��Q�@䅡�0��&6[��l6)��yh%4ہA������V�C�}V���A��i� U:M�[ ?�P�x
�\w�����I^���9yz��h!�����1�äd1!t���\��aX�c����;F��i��A̚�>����[upj��df�w���fQ�%�'�3��ь<    �C:�6�R������Y�\{�c�.�!�Қ ��fa]Y�sd�gP$r�O�}MW�Ά�2ʪJ)m�O���=�K˰*��+B8ցZB=��r|���uUH�Yd�_���z����t�(�3�Gb�	80�����P�����(A��Yɪ�`Y�GG���	$���n����S��rt�p��ҙ�r�<P��BV@p�&��������C1� �y�j����~�!ˡ��g�ⱹ�oܼi����H�55$�g�Jh7�-K��U&�d���&HIa8�B�"�q����D���¹K�HV���0���M�[�D
�i1T b ���PwY{�q��<(�(m�.Z����	FDT������Z�"n�ZO_~�xE����xYB��/�bL#R��6r 	�H9�l<���i��ǅ���z�&Y6=�%2�u�+�E�T�r�'��k�U
@�eKXP���woR&�V��������ip�P�5=�ԩ@Z�M�m�4��V��I��1�`I�����W8�0�wuu~*�`��J�����U��bH2���<�Jx��Q�W�c�	beGZN�L�i�d�ﭜ/��A�0-bgT0e����Y��
�>�Ue����!l��e6C7��*�>^�cC��
*�	D�Zus$�,K,O��.,�#H� ���W#��88 �$�3"�*/&5�he�L�����u�䙵�T�/0|^!��o�5���t� �"�s<���|n��� L�F��N��$&���,�	���RI�����tw�JE>OB����!G�4C����p
S5�D,eNrl�"B�Y����n�
�DgF�@Ag@��}�U�q��"�8��3@����#�>�E��s�[�T�1 �7n�헡�[��,K����0�I��1�Ԕn��vI��]�ǭ�h�#�(�D�B���:S�ġ=��%hB�ԴT| �g���&�.��ۓ<S*,T����S,ZQ�M�3M�SL0M�3�4b G��I|QEYH�^�:�3xW��z���;�`M�.	7QU=xr��utF��E<��񁡣�	�&^��l�>|6�§�{s��<�a2`@90��3P$r.'V��"���ͼ�����;G�	�b{�*�[��H��T�R���r��&��M��PȔe{�)�������*���1S�6^�^�J�
@̮�rL��^�}p�����GT�B���I7 Z�*����<ǌc~o�I���it!-��S�r��AqgF=0��Σ3�tޅ�1|**qo��D�4V�)�b]&�L
iNMg��'��5�
�j�9�N�
�>=BM����&��
df����d����I�[�I�S��-�i0��ҍW�BX�|S*{�6�s쫮+��a�W�p`DP)ގ,��4=���B��aY���  ~o���<��XSZaS�T���T�*�; ���/��6�8[\��(y�(it�5Ȉ��uF����sR��pK�yW�{4
�:`]���)��G����Cc��"��7����d��$������ʍ�,$Bh:	��42��7��#g�B͹�03����/�M<����iogwǦ�1����-ǎ4;չ�'d1�����1�%5!ܝ�� 2`f�!��񄠣�=�\Ȥ{$n�g�h�
����mv�
�� DԩA<��o-R�,7�P	x�ǳ]�P�v
GY�S���I�F���2�q�_w�hGY�f*\i�b�{�v�Xd��7��T�l42�nYW��G���X����BKZ�LN��Ɯ��0�/	o �t�G�+j�	���2[]�|Gz����]�J%_���HC� �R�^
�L�
�^Jg $*�M�L�	��&�M�2тzlbh�4�ʄ�2L��v�[��A���.5v��ElڲQ�2��H �"�v��Jy�<�ܤA㰜�Հ�Ri�>k~RR�R��Y��R�z�H�*�|��,�?��Y�Df6ݎ�{EԃX�Ȉ.�r����p���F�SW� f��!�y�t���z)�ک���ra���:�q�0�~������)�$���c��J��(�'BĄ>d��PN6�8�ȢZ���ܣ���^�~�╧H�g�9�9�Ա�3>�-�Li��r�r�:��0�nIMG����EQ�E����Z�QG����ܝ�5�]\*/������A��F �A��:J�Z����+O�>!/�a�����e��x ���	5.�R���g�FN��K$���8*,�U��p0�'� #����)Z�XI���YR���
B����c�+9(C.�⦱�-���\��`a�,$�#K�QD̵�,��|��k�
Q��.E+p�����ݻ�}s4��ئ��B��Ve�=s��ԯi�*)3��>�o����F����@\���T���p/��2C�U8ɚ'�����1�)�
�m�ux����7in����c6����y��q�C��gs2+�Q�M�)Jp��'6��
�@/�a墫���K�2?�I�.��r�l�uh�luP.��y�5��	���.l�	�0a���y���g΄�	i����\�@.�+�aR�|Yϳ+M(�T�6���1��2~un��� n��R��h�h���(�;���?��SΗΜ<� ��jDԗ��lT.�Z�)ȶ���:��G/m_�q�c�$��՟�7� P�b!ꡲv^ȭܧ��.�g++e;���:@X���S��Md\T�N�ə�aL$ZlSN�CS�ҋ;��W����*��0�4�NY'�R�rZJ��Yp�Y2�8�H�+��!`@�U��ʺHq:�$�;Q�Bp4��� ����+����&���u�$r3;��j�Z�a�F>��9Q���sO�j.���8pC�4&T�K$B��yee��;t +���9FOT��vBbd�,��quD2,�`�h�Q�"W2�6���l� KUĊ�f-�9���<������ R=9җ����Uq1|��쫪�b��!�䄁`#a1C��XS���6+؍�|���E\	z�9�$l7'%Q���F%��~�(y++��)����
��@��$�=5�WCoU��I5���E[p6g��S0�nб6�I�=tq"�0o��L�5[n������oǵt�g�S�3�w����Y�4�z���@]Q^'���橭�M	0��7�^������P$Ћ��?*�a� �-uc���3���_#PhĖI�y3*mj{���A"WK���P��m?]���K��0Rx���|	�QC�!Y���D=*�W�߉�z�"E!<1�8��F"7�ѝ�!��H��V[���p�%�)?�z�n�9� ���f?a�����ݸ�mj�$W?�H���TI)Jٍ�t�c�ݡ)�1Ouke���Z��_w�	������s�m��{i�qk���?�(��Ewx���� �5��	�����5n�������"��Vo?`p�jm�Y���&y�k�6dHt��C��58�W��ß�#
�0~�B4#6�V�&`�S��!$J��G�}&ɏ���d�lҸ�Z���1)��iv̂Ka~yJ3I �HY�9��D�h�]U�f�ps	��]��LR���&��Ąm�g!�Zs�u	ht4؂�r8K��T9b�*J�L=f7/`x����ŉX̬M�R^�lE	n����6!������G�U$CI�
G����x�{��a�6Y�.�;9�$��_�ཾ}�Zr��ȓ�xb�0%*�`8#HM�ÑðVԨeQg��Ty L੠�A�"2��ÔE)o�飪7��IEWR9&R���qp���Ҽ,�^D��� ���:U11�`�GA���d��?#�;*߬�0k�`L4K~J�RL&��:Jl�!�%BfAj�l�F����"-�L�8��:!�d ܘ*X���O���õ��˒\gum��c�T����6��a�n(�Ω::�G��·cr-@��u͂g�Kgo��_�k����W䣪����ę�nbJT;0����0OZ�Ix*)9�	���{�հ=>>D	����8m��9�M�i�v�8�%d6 YS�X��~�D�Je
/�����&i�1"��Ϸ����)�@)*x*kK�ψT+���Z�����[d"��a��A�:cY-m�ԁ ZA �ya�2fW-J���ק��H��Bb$A`��7&��`�{zu}�]P-n��R�U�
5��~���Q�};���9�^�5��b��!,�%Uǀ(8����Ie��	�Ξ=u��sЕV��,<�c6����Rq�����u�U����cPCW�)+<�ٵ��������W�nqx�蘢��6b�>:�Cp]m	���/b��Ť4@��'�*�id$N�;v��(�"$3j�Kᨁ�;L�KT��PF%�і0Ԏ�h�&��h��):������@�q��M֙�En������>5eЬ�Bq���f�����
�D%R��E�{�t#z,�Sp�,�J��k�����[�7��@> �F��g���2��
�?h~f�͜�0o;�,K�}�[~�R�d0Dt�c@�Be�A�����J��'3S"�Tn<�=}P�p�ԧw�?pc�㏯u� %��SV9a`��0� `XH�������� �z�����������2���.�Aɭj��Z$�hH���1�$���&D�;,7�W�����iB�RDC4�����f-X��4�^���U�3F+pP��;u����� 0���Oa'��j�*�O�r��%��j1���Q����4��o4.��Ā�kui�Z^0�tֆ�XT�����<��<1�A'��֠{HX�U���7��o׃�O�t�حdGW��!�;z!W_�Y�"���:��}�@�ס�2�F���kW&�E�����;��=Z��ӥ����R�n��1Z���%�b��)�͇2*2.wGBֽ����w)�����x���	h��ȥj���6�kE.dd���KTq�7 A[�R�JRX+k�3�N�!b =�dJ�,`�p�n�P*e�F���]`CS4vXa<������M�u���c*hdˌ�q��F�" �i�8<��&)j�$���ʛ ')�Cq�3"���u�����)$��4��E�a�)�7x�	�	*"��yX\{bo��t���մ )���X�c�y��$��M_��革��Z��Ar�y�mX�N�Ø��,<a�Q�!H V�Гm㷈hh젵>��0HXd-�B��Ƨ=�Y.嫾�eW.?s����`��lZR�����嘎N�з$DеU�0}.��N'zM�J�j�Ղ��/�sj�b����d�����U)E�vb*�*K7�ʖ�z��8�c`�j��|j�ȊZr�U�5ʀ�M��L��yw�z撏��*B�3"��S����k�x	��lM{���a���3f���3Su�7��e�Qh��b��l3,L@�v��3��t�ݽ�aq���7���0�Tp�"@<8���W�����Y1R
��ݦ5��4�a�ED�B���I;�6z��zmeq*��N�t�����I���}}��^���'��+U����kP�h��	�<������Y�AƣR�A0B�Ĵ���L[{��b��Iu����ϥ�%Nǜ�q��Ϸ�l�x|�՗v�Oh�[����|�)/m#��) M
�50@��ȋ2tj)r4>���L�����hԎ8�
��q�q�h����+莊Ōݤ������������V̰|$�ʨ߽�;Uq���C�{��^���!ԁq,A٪���cS-���� ���ޮ �~gcc�t��%�`�/��V%�F��tZ��@��V>$R5q{e�?T�͡���y�arM���[�w��ƾP�j��r��j��TNX2�n�Cǰ�h��ԡ3 Q�9=�~z*�l*�p���PM�"pt�S�4P�Y�V���k�U����j�-7U�8.��")�F�YTQLdI��%�gs7D��	��̚��4�H��9����L�--�tAd+Ӱ�řS�"�V\W���<�.GǊ9�*C�J��K
&���}P(��qL��@�×�Ɲ_/�]Q�hS���h範��Nv�����jkH�PE���ă\q��CՖ o0��;�		�>
�:f�
7�Ƒ��r6��=U]Dt�����(��-�wA�����;�3M� ��T�ʵ'�N8	q���	H���I��r��=j)��nǻ��.�ls��WU.;=c)�]���߻<��܏"%��f����K�"'+5�q���A�+˷���LP�T8]Bhi���A�>���L��<;'Ccp]M��G�b�P���6��3����� qIq2�Tg�;�s�"@X�Y��$R|� ��Vڸ���N��z�DT@�t0b�D�È
ӕZ��U؜�4�R8������,r��2"�]Vb�dg�dR��s��*��#�Z��(�;�B��T㪌Ž ���]7l&c���;��ng�¬��.4���1J��Re{BGc����m�dj�7��^�9c>�*$�Y�����@^eA�z�6�	�{i+��%iI�˲��`Bn�''��9����d�4����$�^�<S��|v���C,~ޔf/�"�^��#�h��Z\�W|#�ha�O��F(�����a�J�k+lb��A��#q#K�����B��X&}e�Hf��
��ߊ#W���h�-���bV�|8E�����ɑ�R��)X
��}Nm�@�2� ~���1�Z
��\�J:p�ť0ˏ@�[9�9o�M=�l�m~��+6�4���Ӡ��󟎎��hաA��❫���a��B4E&q��h�L�x�N�Z�џN���Qyժ�΋W�z�*��t�McsE�5ݡ�������v��{C�Y/��н��q������k�&Ǘ�Ag�äKj�n�$��(��J�a)L�D���!�o���]����zG�8uDP1�B���R��L��\�l)��r)#���f�(N& ��Y��P�����ʨat�a�L%X�!���XO�b��m��k�">��p�D'Uɦ��;�a*�I4T��#-w^�∮��p24�|���l��6V���v0~5h4���6��'[1N*�����ň&��_�������pk�E؞%�bnd��z�V�fϜl���s�9u5���J[Ŝ�����xFe�"Z,J��==���H�um���o��/�1RxF`����j]D���^���xoo�Y�^�����k���KP�Yj~C�#�J8Wr�(��c�pZ�n�4e��謂��`�p�1�1������w�$�b��4F�U�:��V�����]�,F��_��;���� �s�d��/�^�gނx�W�����I��×�����A�i��\p��bH��@��Ѵ��&�(���=у��K�ZܳQ�P���w�%.����gS�T	ݬ57��d��֨U�����:H_�P�*릭��%Z&-*@��7 x�6~&Fq���`Іz�D��F��+��vK�8�>�����ue�-V���w��Q�%A��P�q�@,Fd���9qV�
}P(���Y�|ۨW�H�Kl���wb>i����
�y�Ϡx7�]���G�c$��5��Y�հ��>U�9�*'U@d-��( ��(�85Y2QAF�Q/�6��ǧǪ��r��]%�`�0yK[�ݽ�+�JjdBwO�+��ߤkQM5}_j�þLx�J��V�R��]�����_�~�Z����D��G,ߵ[[z7ߏ�����%��1��2I�2�g �ji*����%�{'d���
%��~�9j�,����m7�$	��Z]�I�m��{��΄�Ԛ?>f�g����1s'��u;�'2�-k86��J�2�qfT:��S�Z�p�-ſJ�`IJ]�F��H���Lz��#R�"ȋ�&���vt�i)��M�U���sz4��e蘭VY6qp<�n��#���ˋƖ�^��\�wo�~�fwkSb����&P�2�̚|f������r��~.�����
Ȳ��K��L���K�����fw��ٜǇ'�zq(k��gB�m��� :̤�T�b5u�bc�L9��,_��/u
<   7�J��$�LN���k�!ܪ��`k��OO{�6A�i��hF��67~�f����3$�-�#�����|J�1)�n�AJ4d"�����+p��<K�V�wz�jŜ".;��w2Rѓ�c�'i��P:$v�D?\N �i�� A��t��mi]<tJߥOJ�����	<���XW�P����di����\@��v���4�e��+�G�qΛ�9Y�$���y@E���͑c���o��5r��G7�S9���NW ^�~Ձ�g�
�Iza&��J<�5�i'�ECD�${uC��w׀�����N�e^^*�����Y����3��@� 1F��W��O��E�r�+7�F���(@ `�?�I�-X��Ɲ�#��ւ�$����[S�n·\BJ:���LYzfߥ;�8m<��+��4�Z{�)������?�VRÑ�HA{�w|r�v��,	�bJ��� #��6���^*n���nK���Ĵ����$���.2v�@��Z������*��$Jhу��IL����6�rÉ]���~�=�����`�K��K������^\���w?��D*�B��2��P�r�ID�z;�ܮ/#���W��?�%!�٨��p�?�}�vw��zZ~��Qbi&�<c���Q3��M�Jo����]I<U	Y���iM������]���aX��
5ch�i�$�z�������$0��8$j� �&B�
��x5�18�\_��0�%���OxP���-s�L̂/���k{���ĉp�8X�����.K��nUW�F$7����t��~87�ct��=���$HK�l6{��F�-:F�����W��3ռ�A�j/��j�d� �t��гI>�?�����Fm �ZX"'F�M��խ2P@W|�4�*У�Bn�A5����.�'�-6/���zh�X�/^R�?���C";^x��;,h�����!NZ$NG�FO����H*j��~��!��9�v|tb�W�݉FQ)��eZ0m��YNQ�E\��E0J�r@��9��(G��EQ�P��H`8= lA�sX��K�:���[pq��؞jp�̒@�m[�}���*c`,A��v�����ux�x��jQ����R���rȄ�k�Wvc���A�D�*������1�z�).����bz���?=�8v�o�����cg�q�F�G�60W�2m� yp�iL�tc��(ʛ�a�� D�2 Y@0��]�З��cU����`�������o^��˝�
�o�M�����9<:r 8�F-Ơn�;���]���tg.���7�@횞�Y���K��1��Q��g��o�W����[f���L	`�0���h�b���l�Uz}���7�����
%�d#�J-ӏ���I���fpu\�5��P� `��	h5=)��K%H�V.��PW�sG-uˊQ7[۝�F(��Lq��a5iJ�s|�h!4�
�c�?A�q��;�$�����K-�΋/�J���g�tǧ��/���iS~c��}N�ft��X�v�~��P�%S���,6^x�B~�~���WG7���V{��Cu�2
���{��U ��XjJ�m"���R��&����ZN��$U�0�R|��_�Fu}>v��Oΐ;U�J(4��w�0Ɂ%�D�����Z�q�q2��T@Z,�gV��a�b�іB��1#a,S͉n<%�Lkf�Qlqc��TZ�J�EB칄]��O�����@�@R��['��NO,-H$;�L�Cl?�/z'�C:�Wx��4:g������� �g�?�O��������k��.	�oM�ey�;X_����?��>�lr@81� ?���_�$C4姛�5��4G��y�Q"A���˻E%@u�C�1�l����ۼ�U���y`���չv"LM'�2KC�p+CFqz�R��&�b�.6�%D+(q	ܸ;�F���
/�J1#H(J�ي�AѡeC�Iկ�'�pM��,�T�:��d���ny�$��`����iL?�rJ�E�?��1VϓlQ�B�� <t����S��OAD>]�ZX*�_~����+��;���b'Y���p�cO�� lL���[͖��ʺ21��4���E�e�?oMj���(
���Jg	'�:�"�|��z�{%xP���j�t��ފ�R����LSʓ��M/5���2e`��'>7�~�pFX�?)<���l\��hcAN2��?X��^���Ě~n��ϧ��+{I�j�0�|+�<{�`��4�s�gZ�����V��2E�ի��7��ْ��f!O3���{�Ͽ^fa2G���+��R�����W��N.V-y��&��jT��n��jL�5��dI� �jV�}4��-&[w��X�j#��0��R=�?]�r��C�r���tW'�:���+_xztN�l�M��.~���u�/�p�?ۺ�xr�j̱�&[r����_�?8�j���M�k��';��N����������#1w��+�^�����̆��6��0�o1��d�7�`�gu��?1��4�:�b�i���'����/�d��}>��v�+Q~~�ξ;{q6��/�;]�R<<'(�G`&l���s���:��F�h���|8W��ω6yr���L��l���AjVc�;^��)��    IEND�B`�b �_�  ���    `4&   ;�              n�3�  ���    `4& ��PNG

   IHDR   �   �   >�z�   sRGB ���   	pHYs  �  ��.>�  ��IDATx^d��e�Yݻ�>����^43�%[���k cH���$/�@^HR�KBR�L3`c�ޭb[��{����������o���8d��s�����o}����m�EQL�mY������|��|����+巾���<}��~�����"��j�������_>�e��'�Χ�>���w*����w�����뷾�s����~���M��?��1��e����W>�w���W��j�����v]�v�a��Z����j��_}�o��2]�����ׯ|�y#�>����ۿ�/M_����g��O���򷿪�}�ׯ��_����'��Od~���ȷ?o���L�/��"�ѯ���-�r�l�1�9]��|�/�����_��U���\=Y��W?�w���?����[�����ti�,�]����}��XV�y���}��ο�>��j+�Qu����n��u�u�,��׵��,��󝜯rN
;s,�����9������v\��,�+�әo�V��V�����k���N\���z����8�Z�:gе�,�<��Wp�8.�d�v���ų��=�p<�u�]�V�-��[�����n�dwy�^�J��^n开�z|�"5o�%ԧ�w,+�����G���f��E����\���=��gsm��ȧ5{����zV�o�<f�xS�8._�n�����o�._�r^L��/��Z�B��'Ѣ�K���r������<�
MifYkf.W\�濯^1>^�e��w+�s�-<?0�ȧ��N�N�-�����ꮘ]cŦ�g���8��.��� M����S9��'��������W�H9�j۞��<O�m6gC�gj�e���8����?�۳*N��Y��ǭյHO�������;���>M�
r�8�>Vo���)�}�	����
�u���[Z�ɧ��ov��2�Z�c^��3�'�2.�ͱ��2sF�e�;����{&�*?�_�
G66W�v�8��"V�q�,My��qg9�,��Z�n6߶��p�'��d<��q����0N�(f�RN?����I���,�^�GH����|�ʺ�g���y�������J���\�����rK>�؁W�ս���c�~�_�G=��Wb�yh�i-��+s<����<˒<��4Y�꿴'�H: Q���<-K�a8V���WLS6��8N".���dy�agҔC��&,�q$��v����<��`: zSބ��A��/�=>_��J�i��qg1���e&QG,s�����i<�?(����Iħ��x�yc��K��c�&��)��ũ������A-ֵT�0J�J�Q��+���>!�s��w�K�v�]Ѝ��S��9ul����.�@]�+��0�l���6�5�[	+����4+����46-����hY�c˵:�H�֓���&Y<��<��j��̼8���]��������Ÿ�u��rc��tj-�-�Z�c��r�4~ߠ���hef�|>8Ǆ�D�\�5�7��(���8�|��r�<(bk���I>��A�Rg��I�X�o��˜�0�=k�f	�T��E��"��$rh�e=���9�T~O�w�ad�8|�-G*Gq�p�87�%��$Z�L�c1ͅb��%���b����˙�;m�4v2qo�'5Y���.sR��q�!����O��i|�]�c�Q�m^���������d��=�m�R�2{��<��rQ.a�Rv�%9]	��:(|��A��?��?����Ӈ����L&.�s���6����(���p�V9Z`�P��<k=��I��`mG��v�yI�3?J�8��1�\ۉ�b����^R�s�+Jy�ƃ[Yz�R�Ҭ��/*"$�N�rа�rN�G�%i~BG��N�'��gьK��j9f�5���ppOx]myW�r�f�S���̺�ɲ6�0�©ǒ�d�2*�x��_���v���x_7�Z�o�����]���9��,�yqO_�X`�_Xm��*^��k堽�����^�����~���	�[�>ۥ�'��雛���%|v�Oy#�Jq�`<bO��|n�y����	f�pD����.�U���Y�r�φ�rQtsg���L���r�G�+�G� ��S�	��ZAꔳb~b�:�gl;-E������$'����W+�վ�{��'rW�6�]��>pP�y6k{5��	F<���M�\q''��)# �1L��9���>�.)%z0a����&��S��X.VO�z�r��D�����ӥ�^=�2~��)�g>�qڼ��m�S`�\.=�;�,-������+l:�I��EQ	�.Y�.�^�Wb���ˈ�L��YJ��G|�b���tb�����{c��&�X�j~%���)0z<>O��IiR5�>�;�0_ϭ°Y�}�"s���.�0ޚ'0�Gs�<�Yx�8�V5����S����ܒ�&v2���j���~Tzݿ����˴�8T�*��2�8�9�nz����]�����Kv��<�˸�
�K�:y��A���s��<�c��M]WD�3�tz�~_���n���+�&�a�CY��E�E.Z_P(�սjΧ�]���ě�}Xc�(J�u9����X���#+g��^���ԑ�(zк���+'O�a�1~��i��g��%�1���B��*���x-!�G�f���q��{�����9�Y��+��8+��X���.�υg��y�9��C,'�>�ݤSXU��.!pb��N���h8Q �֑�̉S��ñ J=ΣB�rՊ��߮PS�����+k0>��`��9��jc"Sb6ޤv�E�=9mya��&0\1��o���r0,��HB�(ƣə�0U�����&e�?�&��M�����|VԱ�c�$19c��;)k�am�28����-Sh��RB�7��m�/��u�e�䬌?� (|VH�N|�xE�("s�$��7$bd�����p�e�.j2��X�.٧Y��'�ˣ��!/�v�.�~,��l���q��mw���pg�N�6�(�f�qt����sl�GPn�6�D4�j�D��քС�Z	S0Y���iή��X֏@����)z���M����m��d��).�=�+�������i�9h&.4��l0 ��so�cL��P��� w�P+�n`�)Na��-��\{̾�^D
CfB\9!�$W)�Q�Ɏ�(%���$��|1������q�Fd8\F�'��|?"���ɤ?��h�L#�+�T!>��a�Ӷ�ÎE`E���x�Գ���Ŷǖ5p�I��:6��k��a{��ɕ"i8~�`��򑃍�t&���ߐ�4w���&������F�gg�ϯ��
�0�f��gc�:v�'�bw��hk�.Y����u�P�i��f'�B�H:�[�ND��-��(��&鄜TYyβ���r�-�Q2�D	�d<am��,εr.ʉ�^N���E<��>k��� X%ry�Bv��sn�~��&��k�4��.(4������t�?Ka(���-�0$�����^P���)lv=�n���p�Y�e��%��8�}Y^�c�(���an��h��Y�=�Y\�\I�q��
7�L��zv_��@���;Y2�P���׷W0��eْd��ZV�`�����>854KGQ<ǃ> ���U`��E8�`j�x���otY]b�V�6%tXj��Cc ��8���8Da�ǒX��d�槈��=?�K���*y�\ɋ~�����dY�݌ЗÑW�&�-x[���4�$?�
KaAt��W��W��px��LA��3��i�It���9�19�:�|�%V8aIӴ�^�v�HkY�.�q���xk!.|v���y0��粒d�+iA�QnWM%Y8��Qڏ:q܍�n��������_s"e��π#����Xg�g�YhN��'���&+�ue�Yd���\������y�,;�u��`8�A`�7����n�c��`
�2�4�^LmJp�#��Xψ��:f�**f`�pw� r���!��ϐ��؀WY���Z.�N!5x���S�9ɾ�_6�@�JZW�Gɫ*�W
.Mc�)4)-�y'Am��r�cc8�
�8�����8M"��OE���.c�>8� D8���<SțYy��K�	�3&+*`,��(�bB�4�FE�i���W&�h}
i1��VF��"�MNGz`�1��ʋ0t��h�tq�H�M�η�Ž��|�!1���ƃ�#��1@);����oM��q�7�I�x>��Ad �����f����0!kԊs�y��\d���l�,�@E������yq� g&)BB6�e��$�*(���ɈЕ���"r����@Q��&��qixm�;��Z�� k���3E�L����>���#���4#��g"`GN�_ٵ3��'�R�d��#�b�t�F�fe�7��2p���(�}k%�)M��I2Y�S�wxp�*���r�(ccm@L��v�@�LT�8_P���f���Xq���DMX2>���#����&�j�q٧��^�8�������u���՚\Y���ɨ4������XN9�S�l<=�S��0���n��h��9V8��3q������<�����N�0�{������ž�f�\��n)�
�����������Hja��4&Ds����Zhq�
�7��B�dB�Q��~,��x�(檑���>͊�Nr�ḫ��V5#�RN?I2"ql��&�B�K^N��s�;%��I��qg�\�{����W�|��e�`38��D��@��O>yq<I�KN ��.�MmJ���%0���G�a�<�ʤ�=c����=�+<A�ν.�N��Fi2�'�
9��>����,�0Oy�P)��~�py�<,�D�V�[�wn^�:��6/NkD�����x��p�J��|f������ɉ|2~��v?Tz�U�{��V�+�b����@��v��bJ8�p߹ XҺX��"��ƛr�L���L��L�q�:�E\��E��k���_}.�(���ZX��
#�jkL$>�����ܖm'lN��e� -j�r�%nu�6?Y�C��*���~�m_-�*�-���̷.a8U@����N1q��q9���G�!w���������GVQ�]����"�I�� ����GD�g�0���m��;�D��$E�����0�{��%S���T7��l�4n4YpƳs����`4��"=P8A��4O��G������G��S(w�u��E��np��_�	ײ�Fd��KU�q:N#oq��xv�j.` ��n�T�&Ar`�%�*��zp99>�c;1+�R����+٨Gk�h�+?ߨ�	�N�	�-H��T�-_�{��t_�n��㏭��y:���P�ޤ�:V�ݰ��h$���gO=��~<   �$���2����_O��=)UJ��lˊ��rd�eB)�CX� ĩ��ޥ����֡r}����@�j&/av���ue?<N��^RS���)�M&���ߏ�k��=oBxL����	�ƾ����`k<ɳ�;�U��*q�He�u�������s3�,����7��������}?,H�Tn��*Hhb+�;G.=Q����
�(I�1��C^fە�KO��ھk~�2��Q�演Y	�B�)8�,�|A���ē;�U0�	��	�q�#��&�F�/|�s�6弘b�`hya�o��.-(��z�x��Xi����a�k/�Mm�(aP�R�1Ri8k?��d�����*�#�����jƪ
1�3\����<�e��Kυ�Umv���M��YQ��.�-�ߩ�&☖��Q>��2sBi�X��ҙs��|��~қ�G!Ʊ�x�)P��/A��qQ=�RO���?cϕ��ee{�Ky�q�x���ǣ�����+l���7���ݛ�~�'�"� @4-���~��jlp��Tр�S�^c�u;9�y4<���B���r�>����n&�,�j�vd�v���(���Vd�J����Id�-���w���G���dϡ����zA]�sk-��X**+0̸+�l;� �b�2kh�u~�����F	�d|���e�����gs���c��X��	�It�Ҥ��%����#[�\���ރ�*K!����@y�	�v=m����fc aJ�l�5IS{D��)�����^����燃�_j�=rO�c�48/d�I9"Ԏ8�W�M3�%A�Y���<0�K��ȸ�%\��O|&��r�ܑkÇ�����~��`�U��QXtk�S��/>s~.O3DQIy:fF�������q����W/�v�ҁ������ń"Y��Jb@sEaPh�@^���a95�0�lw��_Nfg������^O��O��F���V:��nN^2�C��Ӵg� ����%ݬX��E4E�y�ϓ
�w�A�l�M���-�X;�?���Q�T�
��U�Ҟ��UaX�i�,=F(8�8w�&�ź�ɦU槌M\`j�,0	ߧ���y��p�?��7��s'n�����:s*�R($�`@���@p������֛���P��U�ݦ$!I'w�7�V�Q繇?���W���pv6wg�G�ڢ[n]������W.���,�X�w��~g�\k������|i������i����0��T��	�qoK��p�����B�4�z�C��Xf�lyqA~�%�%ՈM�հ��T�a�8ᴠ.�4c�qI#��D$��z�G0d�{ë<o�
zX}�*���*�Q�y���bY켔��l���v�Ý��g�JI����s�9Ѧʖ�yN�]��ܹԚ9T��j����o���=@�x$��T !1�I�9��("�/c�a\�����<�F�����k�V���[o{GB6+�Z�^��C5C%Q�Bo�]�<p����V���T��$�5��OO}�O���G��:~�w�z����K�������4wঋ�;��y�k_��j���^s�	��z47���z��
BhEQ ���}�r��K���^���6����)Go%?>���M��o�Q0�V\�dc��X�Bt�]0P���s�x6"rA;������z�m-/_7�j��	��SD
�3 }7���%+]ǒ9��]��#�\�TG ���7������re����]
!�����I{�C�b��BT�qY>e�Z~�HZ�@�X�1#I�^�ŵ3_�_
½KKoZ�憉�e��%@�PU�^A��2"-U�T��>孩Z�5��)�.D#>�D,�����l_Y=vh��oh,/�n�����=_��Ckۓ'��7ߵ����N��K���ʇf'�׭,�]s������3*ߠ�!�Ĕ�L$�����f��=������=�V�S���as�W��"*�N)_�P��e��T��i߲{�D��3x �/���Pe@lU�ۿ��#OcF盳���+e�	S?�S)_�Gy.m*��K>��S㑏�\�Rs�~<rx�љ�C�+7�g��js�J�V�ż�(�Y�H�S���� t
�����S�|�)�iǎ��;����>���g�����\Z��"(����HegV����.�����`ק%c/TG6���w	\�q�	�u冣�`��X?��pwg��_�M��o4�M�fn)o�|%�|�ro�ͥ�� �˗.���7�~�M?��?:�ܬS�BA�XB�D�!�V�@6Fށ˚��(T�s��������<q��}GnL�u��f���WX^��UŽ8�8���V���B�SG��q��a�&B��N9$�VfN\�����.���G[��9q��Wk�Z-��3�,��۰lA>���v�{�W���Z) p�[�%2Qe�
[+�(�P�X

a��XcK*���,�*�Ndɯ�&�r��g�I���.,���MoqJu���R�rg�L� ކׁ��#/��*F�ʀZY���HEDU���P���k��={H(��Ά;���rF�sg���/����e�c����G���a��V��+�o���������g�z������3JԄ5����t�L�(d�dp�G�I�ݰl\8����o����߳��wȖ��(�ȍ��xJ� �0�\�
8H���|6�P�#8:BT�<����)Q3WI�J��1x�^(��a�77_>�X{gseoka����r�ʖ[��Q��-��R���}���<��4oo8�k��d �BXHØ6��h��y}S�� �p F�&��ġ�_~��駒���o��~�LF����T8�>Q��ڱ���M���Ól�{�
�.�w�]�ޛ��){��+��;�&/�}���a�8���)(F��^=(�r�?��n�w*��_���;�vv|����xf)��?�7�q�*/��#'x����@���M�s�]�.A���9��]^~���������o���1��	E}b�q�^[Q��hU�����u�n�3�Q�/��g�eN��b����h�"��A'g�yw�q�XuG�.�{o48_�zi��f�$\�]�]���ɝ䏩�/<R�t ��}*J�i	𕉉�&�8Hy�����`�D?e���卹'�tHѫ�v��{���x`�n�=��K�'����Vr[��$�Sx3�:��c�^EH�L<�)�����+Yن RdZ.*;�3�ɋ���]-�:7��6�����ͷF�\������ó����k���+���5׿�-뻻O?�ȣ_���U�����]��=�4�ʅʦЎ ������
� ���'�Q�v���3����=������h����[ޙ9%V�ߧo�������x��&:&��S�����ɦ��S�?E!�:��/�����/ޒ� ���ݽ�����G>X!5d��R��~6���
��$�(��y�q1)5�m&r�#�*�=���#����u쑪���\�d�v����-ܿ�Ѝ�V�K�z��Np�@|�(���������?�jJw��xKD�p�g̗�I�-���z�&��$�|����1��Ȟ����`��x��KՏ���VW�t��{�́W��G�~��/|h6(}�7�ޡ�Mꋦ��+��A�+Q1ѥ6,VP�h`&���"��8�Χ^x�������hc�:|������8|�O�1�
�GU��_�u=75vw�TdދW$L���3�+�X�@��1'�uq�䄄�R�ż�y^ �~��w��ZM��}���k?W����{���R%N�Uu�;���yS8��y��q"��D���\�[��{�����.�~������1=��W!q�ѭJ��⸢��0����ia���b-;Z��W�ڜi����,".�˥������+��m�_,��ڏ�ٝz䟾��G�==�6��q���N���o�������Jb�s��De8.n*�j��5Q���	��,Dhl��.�P+�E�|�W�~�����]s��P-C>�DЊ����*�6Q��@*���F����Qa�	LE�'��r����E�TRE�OԊj�O��-5����R�~��_]t/B�6A�~̥5��t��bC���w��aE&�8}��Uʄ�-������9p�o�!��ˁ5R���[EQ?h���2�����B*�j��lSn2����Z�Js܉�*d*�'ip�?�����ɓ�]s��A�L�YA�s�g��|�K����_J�㇏�v����;��<��'>�g�4x�c_��_�lE��ZH-�+�;��g��h����=�!Hrm0|!���ٰ���^��{����,����0hAĩY=T	Zx 	�.`�yx��ۂMȖ��CL�h���fSz�*��Ue6��	?_"���6A��f9�A��J���Z}�w�/�t�����4bǓcߔj�[7|
�P�
.U��g`�M���J�D�|��;g����tM�Ū��iN�5X,R#�9�`��R^[��gX���j�rP<� �x� q��l)�p�j�s��;�쬟���zkk�衕�D� Dr'�j�u�T��t����]\����׼��?�R�C_��S�ӣ�7���/�.m@y��P�9*+=�0<,�D�����մg��NV�1���h<܄b��d{+��y�g�~���rV߷���w9������573 `�ƪ_�3��b��Nϵp�1u�6�c��T�4G
��p��GG�7Ğ#�*�V�l�4�r���}V��q�V}�w���zn����,�M��5�$9�U�#��T�wI�8Y"r�CN%���-�E��L�ѣ�V�!������f�F  ��4�z��GZ82�?���8�Z�ݡ�H��b1+�H�d(��>w^}�xE1�R(�Q���q��ڝ�s�N�CE2语�x������z��;�e����+լ�	��������q�[W���w�x���s������������������ ة��R�+i�Y�)c�NQ7������B$�^*�J�ɕ�â�k���6�{v����տ���l�ñ׬/��I��M��|6���lq0bQ�
8'\"?�K����(���v�VU\��!kH> �xЋ��lT�������`��Z���}ۤ����K!?ح��#|�}"[��F�Q aR''���0`�0�k����p��e>I�)�Z@�$�E�� ��7?�G��!L�Y/Z9���:d�n�r�`��0M��Z8}���P ���F��ӏ�Wu�F�-Y�wg����n?����s]�ǜ�+_�ja��g�^���#ύ���������w������x��_���-4��O��mc"�^	}1 ��`�s�Qބ^В
�\b��i��M��9T�N2�EI��9w��G퍋�`4~����^�8�~�.�aD5i\r�Kg%u5��m��v��!�,���R,�	��a��t��q�۵��Ժ׎��դ���;��5��ԝ~���O|�H�6�s�l�̦9D���!-7M� �'!'Lg�j�sŵg8j�Uv��Iq���M�-ߛ��A0Stz�� oM&]X��x y8�vz4g���p8��w x���W�x���p;�q/F��`4�� 5��[��L0ϟK�x���\^\~|p��Sϋ'{��e�[��������N���J�o�կ��9�|ic�}��g�� |�[�f}T�4KAP.A4L+�J���,�U.Y���R�K�tm��Nb�A�D�Q*+I��=n�� �W�X�=�:8�
F��y��Pb�T/�}~i��
���T�E��RP�ځ=���}����uB�D�ZŪpC�b	��?���z��#N�
�a�\w~��{���8&#8�ID���6
��-T�l�����?����4�s�����6yc
M7�{�&p+�j�Y�Ԛ�F��hU�Vf��͙Fcqf�6Ӛ��[s��z��6��ٙ������Lk�:�<6�\�]f�7睥��ss����<;���Ho�q�ɯ��z�Ǯ�ȶ��|��D�=��(YS�#�ǜm�ō���������c�O�����A2�f�&�\��y�l�K�`R��8�ݼ&y7�:�4׊�|�O�y-N�݈�ejܴw��1�D�qɹ�T�塼*Ed����EVs5�g'���%C߅�L�`�bA���r���P����ˆVJ��X`ʵF�u�������?�jL��E����uGE	���Q�s�0)�6�+@~&B&Rq/� ^T4� ���X�F�D�{��ױr߅��V� ���.���@�`f��
��w)@��Sz7�֑�H�r]*�C���΍&#�o����:�.]�S_>�x����9G[k�Y<��ٲ�!�Q�����4"x��c� ��N, 1F.B�R��BBHRT�s6�&��N	�JQ�`����q)Ļ�{!T�G�����s�D��i�"�*"��4�IsN'�E�f��E��r	��`ʑ7�:'*�z"cc���1Ƙ�QG�`�eN�$D��@r�8^}�9�E �ϔi� ul�F�)��+��KFS+l��R��Z@p'G5a}�'�_D��B����� �4j�*'��H�$Fi x;��̎1YV0	�:?��w���ܸr`u��++�ֺ�{�mۓk��V��˻�Wl��9��(?��vyac�wN�1/�L�b<*�9K��3Ax0�*�=����Ǯl���q�����|e�����g7���~���k�VoX]�u�{�8^���5�aUy��g���5H����T���y3����(`(�� +�,�<�`T��Y�_�1�'�5%,2b�����@���
1�9#ڵ��T�Ve��6�f�30�r���o�)��5-�t6["+@�Y�= �)�Z�*{�� ����-�:x���9�Ul��J�[6�K�����4���g�#�_�U��@�)1~��LԽ��K� E�o��n�.�&� B�� ��5��nNC�C�I���[�rZ���*�<��g���V�l5��$���Cvk�y؁����A# ���(�.�A���P��h�Q�s9�1&>�WiӜB�ڥ7���`y}���=��ZxvB!Ls���dl�۝K/�g�ٯ~˵NV���V�DF]��L�XA����MU�	�Ǖ�ډ7�Ӻk������$����n+� q��?C���n�����W�^�=+���8�o~��Ýg\tӥ�-`If��3�Y}�a&_�R��EX*?&�U��e�n�ŗF}�+�Ck�T�X*�j��҉�I����x�W�Kl/E�P	��a�G��b��<����s��s��v@+F�,�|���AG�
��ނPX�4@4n��7;]ђ�dk�w���������o�����K��{��/�-����T��WkV	[Xy��/b3��*v��qYXrBJ�FL\l�A;����{���q?L�w�Q0�;�v��󣕃sw��8�V���[�,�������ms��򔀽^�$ꩽ�RH�}���r&EV7=�XT
D#@?�jFiǱ�'����fT���7���M��)6aE��La�=c9F�#�)��U��Ū��j?�:��8D�����_qJ1�N�=�R��	>��Lk�*�,�?���ܗi�İ��B��7�{�0���m��7��ДD������ǫD^��m6a�V'�����CT�#}�$`!���]n��Ԗ�,,-��\��jV�C���Vs�����������~�^� ������",��wI"��d0*v��~��Ez\���y=�Oμtg19@z�Yͬ����^�����r"����	�����A_"��f�dF� �%-n��%e�9�8�t�����=#���a��&�
���U�痏E�@��45|'沋�X� �d����h��lF�@pf��+t2��[�h�N��!�yB ����~��O�r�4$�ņ�� A�:���K�dC���H����O����̆�!?�/�8�b�	���7F�j��_�"}��ӘD��K%(���ASU����Y�
d�>��x0q"�g�:M���	�#iuZ�a�_��Ro<   ��Պ[��r���ܩ7=������A2�Q�%�-rO�%W��G�� �+�$�pi��쬶�ZsR{���>�p^��V�~���0baqp5�M �|�<F��l�ΐ@Lx�K=����E7��_�~��f�C#����u,@�Q��J��OA�&@s��$��39��STQ����Ȱp����v7�R�^�)Pd.����yD�.?Fk�F��1�KSRO�bT�j@��|l����G��� ��G+�D}��NoHke�H��0n{k0.��`R.��ū���K[
)M�$��Oӌ����9��HE�+� ǷR�.�n��E�:���Jꏡ�Ъ�g	���@�3��Ⱥ��L�,�< ��>�!1!��0��O��QT�%��N�:� ?J{���ٻ$�:�H�z1��#�s�k4�F�$Ո3�Cx~�8B���*Z�%SG[N���&�Ӕ]���
�H۴ ¾��s�xB��{amx3�M��	V\�W���i\�y @�?���t|
���_�����ZX���ǥl~���,$�u2;�T� �S��^U��`��N`���o^	�H�P�,���0�#U>Q���� /k�*`淫��<���R�����j�Z.��\{[�O~��H�T��@�pIf�RRf��T{\VW)�V/��cS|�▢Ȃŷ�M���ϰW��Fs���Y���V<�}��Z��/���6lh���1��4�/��/؜�C٤�5�*) ��P�P��=cl(�4tȿS�Rg:�14�BΗP]��!,����OL���*j�+e�yqp�,x5~@��[	���b8�C
[b�0*~�~��o����[W6�����I:%룤M/i*��8��1ş�蓟�B����x�)��
�0��*%�6�Kr<jW�p�V�!��G@��(g��i8���q�M��3���(�w��խ�o>������}��>�(��{���&Y*qɠ�l\�v��<�ȣ�~�ߴ�����NZά+�Hrg���i�
7g݀�j1M_O�fmz�l��Zn�Q�5�(�Ga	A�4����ѿ�e���/Uk���=���m��0�3-x퉕5
%E���(4����������JbD��=�<M'�ڍ��i��X��g��孍���5$ׁS��:��� �J�c���s�U�����艓����v�(j��$f8���Eg�T�v@��(&ck{[�I�$�A�!$'��S[��
i ��t �
��[�P8�r¦dH�1Wh'\sÌ7��_>������Zp�92|�IJ���jM'UM��W�r�������/Qs�+[�;�??y��{�$Mf�QZcl�!�-y����h�CtSe�^��G�'V�dM$蘢�k��bx閨�S�IҨ��\�Zԩ�~�Ң��7��˔Q+~���鈢���t�$O~C�������bؚ�5��n��)�x�j��zivL�F�FbejX%p� ���)�PM������mTq�kM$-#����gY�;��]�z�2X�Q6�=?x�o��>�����G�ڟ|��O�������~ݞݱW^{`�W�딍}�2�Z����ԚԆX"�,�?�҉�k�ڗƠ�cr"������]^w�W��~��~�W��[�p�D���Ͼ������}�~�.W	�T��9I͠�dc�3{��C�EZ;�"�6x�t��~(/�VR�M34[�y(?E"Z"���$iDY����St��(	�x�b��"g9Y=w�<�Jk��Դ��p)�5т+��\�bB��m�,X�Z�����FN��D���ҊYAM��@���CJ�����A�\1��fTZ�y�&� ��@�I���4@F^�-]���Hi����J�����`�XNg�o������N����]�+�G��O��.\>Ijg���ͺ����E��Zs%��)�*ϟ����/������9���8b؏>��3����_&�X����W�?��nP����Ѱg���XRlUu��������������0�7������" ��,&ΘS��$$x�z�e�ג��2cC��
��2��Q�P�9"�41dk⫈/���g��
�֘��Vi�!�S\5^��L������([ �VH�C�.�N] ���R�=���*PR�Fs�(b��"�U�*�%��h#�(P� ��i�+�bWQ���j�]����8� Dr���@�����Bg�W�&����t�������O�s'��W�`<��^ (�͡E9�J��RR��K+^�`k�����Coá���֋���?�g�H�G~�Gdc�܏|��K~U89��NL�g�Z����:+�$����T�/�f� �S���L�C�-��1b"�Ȇ1�K���Z5��H�7p�;#��6��E`���S>&<^:LM?*�S+��Q��
��Y��@�;U�0��B�U��(+ߑ�)w�큾B9�M�xe�a��
�x_�µ�86�B��[*�)�3��ϮU3��Z8N�����RoF���QN�*D�6H6��Aq��ڿY�tɟ������V+�G�z����W��M��Xa	)�{�F��h2�p��,\y�{���8���Xj��� bD����{�{�3���ҍ7t�8��U���LL���;��|aG�N�Z
�6J���v'b�C�KBO�
�m�W�� ���G���	�K�!D��ju��eaՔD�@&�p�č�5tH��d�����wםԨ-.�\5����\�&� ��S���"�Krv�����������.������L$(B6̵��pmj�`�"���3�Wq7d�Ԍ��&ɶ�}���ٚ�r�����&L�EX�t�A���Ϝ��W�3Ԥ3�*��+�,q7��"��J20CMLX���� b�"h�F���ɳ����q����{	[�a�C��c��ۿ�����"\�̈8��8h�'Qq8���dV4͔6]�8����r�	 ��@݂��-@�t������>�8E�p��J���L+-�鿢¨DZ�	��	���Z�P}��)+�;��Hz�0��l\�6������(�2�^�]TQ�x�S��V�!�K�T�b��!�����`X*.���K���r8=4�Ed��&�5��,A<��D��^�39;����\� #������y!v��a�J�ۀ1�z�GgZ'&ٞO=ZB�QB��T���1(��a�s_yi{�9z��3V�2��A�ٚ����lnnH�$����kVJ�[�iT�}����Zi�U^,�H0�;�A�C>����eсt�.�Lk��d�"��T�� ��՗	48$�:h�]�`u�3��@�b
(���#�$F"����@�c�Y�����g��c�!r���cمw�cD0�y9V�U�<Ї�
H�ҥC3<�DT,���߃�,��$V?��=�TH�M
ʔ�e�P�"���L
 �x�1��#a	>~�WS�7�Sh�#)N�m��	��3PB���ɏ~|gi�l������UJ�؞��������OΝ|\�Q��(\�Xd<Up�ق%�
9��g�}�������O��n���m2ʁ�{����®���P�f��-�#SÚ�6a�d�`�$����+�Y��K��� ��}8Ŝ�ߤ��XԤ¦Pm�B *Q0+zu��7k)b�k�u�8�H�u�����P�f�Q�6����W��XeH4&0-Y���*$*�j#�B��O��C�7$�r�tWJ!礨������vRfV]0D��5�7�>� ;�����h�(3�h9������du��x�F�T�M�W��1��X[��?\ڿrbg�����T^��U���ZA��;^�8Ԟ(��n���ETT���2��NL uc�,aG�[û��i�q�Q�w��x��Kg���{(Ư#��L &VXr��t�QDɫ�N�-i��GҨ'2��T?�@���Ĩ�)���;�T������+L�Zq��*H9��Ȳk���}�/K���US�P��4��L9S(ҕFc��k���r�@ �K_���햔���DD�[񱈜I��sz0%K{N�ڵT� �y�m���- oS�q�M��&�P!d�]���˦�N:�n	GN��T�?+���J���Z���B�*l�VC�F��=ɇӨS�%������e����qHv?o{eôU�D���r����dSس���g�>�G��b� Naiԃ!.��㨲��҆�/"�$iD㐊5( Z�j}E8'"�Zk��TS��H&���}'隖n���28��IY�/���@AH���d�u�h�䒓���*42���}V�UrDb���bB_(D� #���C&.j�Ȉ���j��4����̩ .@�wF�U�b+��Q���`�T��^�&�;I�I�Ԭ#Q��u$>����e�RcϮB�-�Q��V@��E(!NJ_����v;/zA�(Hq������z>;�pX�"*�K���KE��Hݩf�*���B�ՐjO�Q1~�k��(�xҟX���I A8�=J�j��KsT�iuϡ"�;1�e�R���@�IH�i����I�e�j,�uQb�;��N��SJ���V��s�!)	K�tʢ���L�N~�C�w�7
�t���M�ظe�YF��p�/Q������R�1�R�ic~Dy�f�_ҮDܐ��|��w�m|k�m)�	�5����&c��I���!�UBq�Bt�%�#�2l)!��2k�Z&��c�TCP�G4S{��lԙ��>Sj�%RW#n�Vc�H{��Ht`i	 �e����|��8u"�!�G�A/���r9C��±粨���_�5����sI^M�FW��A�_!��'���l0�t��5a�
�AŰ��K�z��u��AMMzф4lJ
�i~E��$Ez	�qݕt���V���XR��̏��r�aB�ol5��c	��F3a8�+�W1Z�"���/I[��F�G!�V���X)
�\�N�$oHo׹�q1:e�;�]��e��yf�oj���P����Xl�Q:%�/+l�������B�-W�q��)Ȧ����ff
3g����������&7��.v��EWmG��G�P�3������el�|�8:gO]<�JA��/�M�a8�������v{�9�4�8��еӡ؊=vH�%&5�Bz!&]V:��Qԥ`�LI@/aP2�ƭ�
�$W�+�c�*ۓ��1�|��;]A���F�?��C�F�e(m5�)8�z9&tgP&���b�&(a�sx��.t�(���+����/�q��=@c���k�6B�=���
4S_Q"�D3M�_�i�$ӕw��V�@�4�q�9A%�X\ok7z��A����
_l;��n9i��YL�
�J�*�k�p�piq�\s�U��f~�5�P��H�F50��OF퐒YLD�:	�Rb@����B�u�ُ�d.R4� �OJ��	]��
h��|�!JvFF�[�8x24#h�!|v�eQ8琀��0CoE�C#9k(�!�&D�T��4�q(14�P��j�Q�TsP��Eڼ��j�]�Z��)~���1AM&���L�@ԅ8��!�#ͬ��J2G*A��ѐ�?6�{,����K��h��=j�,/.�Eu-�	QO��4���#�.�� YZ���/(%`fl��Z5��7��}_ �i=�����nUʏ�椡"M5�W����K���9v����s��L䬜.!d�]qk�W�>���@�-ټ�Tb��:K�h��","�m_*���確 [
���[���L͐[!�A	2p��C���J��T�H�(��2��I�ג�-��*�:t���� eR9������{W�b��m6E]a!����]e���i��Qٲ��z���6��� �H��i��k������uj��b���g3A�>E7f8��1���%AU�t��4a��P�0��]�'+e2in��5~B�JK�Uz�����E�?���>-��(��!�P|��F��T�f�~	0��A��QN4^��-
NQ�A����� ���/���U�s171T!}�ha�י�/�$a� Mq0J.��L)������8,Y,:*�j�Q�]�2\*$���y�����`o�~F��3bS��������bBpOl���\ ��.�>������D[�]*ǉbl�0��i���$�o����T����}�ze��(�J�湤vY���ǔ�@)N�ܐ��ja�\ ~���&�bg1}�
�l�<�$��;�x��\����"�t���8�Æ1CsJ{���?r��R�p�I��	��H'��+�fF���?��l
.�u!�I��;I��T���}�[�𒴕��M4�"%� �+E�
H��8��e�&.��EӐ4�hI�p�q�ԓU�M�)6B��G�߿C(�@$FsUbl2� ����-*�~'�68U�[�h����x�A8��ם�1�-("V���D����R���H�Ej��-�i��+�8d���P�v�;-$�G�3���2/]�[��P��롤B	�T�\�+���,�(M�B�ׁ�בn!._L@WV�)�_m.�=�t�g�nie������U���v�ꎔ�'7D- x�,�hV�R7>��PvP'S1�F8X+i֥��0l��8`b�%T�(��=����Ą�1W�F��_��L�sps,3>�7u�6#�T��
�X�*�\\c�L�DK�"�����ME!	!_���V�H�c�����i)(U��hDwtu�.�z� �b���`rE+QI���z�Ժrqg18"M
�1.�Pq0��| �L٩C2�"��-��&47�VQ���+P���qM�:����lT�u2�e�uOJۤ�OY��]uQK4(O��{��������?���}���_��/�󦷼�{������T\�C9� qi�)=�C��1���{%o��H|�]�"�
�IE�GeB6���"�t(� 8+Y�6R���ү2Uɷ�S���>��/Qt,c��N�Q�P����Ւ�
�W�JF�h�%��Rz��*�5�kH���P����xP$� ���|�0������.��K�L@l�J@��$@�W�yP����.#9&yD*f���vM�SY����)a,:AQ����K�1��OС�������k9�uo����^��#GWn��6�yf��n�����կ~�K/<�̓�<�˿������O�_zivဨ�Y\�51H��?��.�^D$�h�pTu� K�w�&�f�FhOmL��hp:��(�'!��6���e�q��>��[W��;�)��мՂ-��'"�*��9'CnE�r��ج��ڶ
S�ܩ3�fd�%$���M�G҂��=���+Ӗ"mn.��;�J�(��wRfEXL�ir���j{�ONc��hT�	��Ih5��p�Ud@�`�>��������"���3�@��f�ZkF}�8G�le>�p1�kkc8��l��|�y EPn��Z�7=�������m�}�������v���a{��������+T�jp�dl�i:6��'��SPĔe!�?|ZR�����I��9��%BQ�"�`YR�$V^3evh������G@q�	�E��)�TQ%�. \ʷ�h ��k��Q��8K3��t9})��^���3ٴ;}�"���H�cm��73f"C�t)�QW�%� �,{7)��y�6\$�NQM.f�y�f�S�R�EE9��R@֗���ӒoV{Q�@E��@�
�ɝ�:�p�A���Z�!��.2y�^GX*���DA"�K@�<�_���7ۡKq@�!�@��͋^6���oߞ��������9����F��&����|�S��7bP �6R� ����&�Pշ����.*�1<��XGH{Xg��Xe4y5��4�{���o#�A��Q�@ΕLW�����)Gl����b�s�k t��cf$2L��-�|Ug�ئ�J)XO�%3�b�ۑ
��h�� #U4%��΍����fsDU�Kr@>������ǌ��a�QSb�<   	�vXpt�q0�s��#a!iW�PzT<G-8�*�Y�I'���2/m��(^��T_�~jM>��Z5(׮���[�D�֢&�`�)3��HPbHF�=
�M���F?�͹�s0�!Ο?}is�§>�?~�?��3ϝ�X?پ¼}P� Pd�p��)Y�~��t�� Y��Im4�g�6�\���oR6b4��x����FK�F0������:�Q�CYE�*�p�S��*)AAȿ�ː�0�B.$	p�9��&�W��qj71){T�|)v���������o�@�;��A �J,�C��V�ѐ�?�1ד�<�����8p��-nO��6.�
�;2�����H�P5%{%�V��Q�pl�}H�I/(VJe����
��[�T�65��|g
B�M	K��2I�(�����B2��7B�z�Rs��$K�ρ�����C�?�'�[�����;���U���D�$l�H�Qc��Єa�=�L7C��p�ԗI�03�|�|����=4ܰ��(P�*��;�=x�&S��f�iLcC���*C)8�k�� �&t��9P���ĬDn��-�QV�(+�Q��){&��6�Ɖ�V��r�'!��@�֥��vK	E�HMh6���2� %�j�8��rwQ���>оc�!cs�MXn�:����h�N"�TД��k0F2	rOe�Q��1b�˅s��P'���h̴�{�Z1�Ȉ���r�(Nl7w;[ZF^���J���T��6k�{���,�v��b����/�a���~��8�dh��b�y. T�/��1ۆ����P0�H;CSg���Z�����xŝwv0�J����ޒ���\ޚ,K���f��)(4���4�^LF�!z<'Q�ΐ�S0�����hj&��-3$�˩�sIC5E�J.Ed^g�ۚ0'�p��Y��K�Za�#��P��� ZF,]gA#Q���d�`�}D�':�O`����I��s��	�E�Ql����5�D�Lқ4g:$�r�����>� 8N<R����������*0!��/��hi��I�,�QÎH�4�]#��	�@� �m �Qg������o�o������LG���%���"�J�$��wP���YR[\A;��~�n���\W+��At���?��?��Yv���d'�
Q7f8�)�|�p�k�`�U�R�M����L�T��:Y�]�'j�ӆ�u]�F(�Pa��f�(���
����*S���>W7�~�����j�����F��)�$��A��������0'��N�J�:eSIe��'��,�	0��^	�+�d�Wc�0�d�UyX��H?Җ݁�f�9�2�(׀��J�FMh��_-�����ޱ�䅙_j���2�b{���c�	5������c��������om�ww:�ۗ��"A���e�4)+��ӥ�	�b8X�чe�+�7�ҡ��ẁ�s�:�/�1���g��#H7�h�PA91&E���x|Q��Rd1#$� �Dд��؋���z�ä	V�%��1l] s^)s`�Al�L#سTم8J5l�o���T�q�ɡ�J�)c��gI8$P>�x�jfSYde4䠦��Im_�#E4�BBYӼ�>G~�GKD`�S��I���j*���䡸͍�_�-^��P��*`�� \�`z��K�O(��n��7������	]V��Jπ�V���dI�M0X�<�W^����_��#�;�������z<Fu���S�۱��Op@՗�-B�>�*e����_��>Iw��ngw����:v
��L�+�����EQ��|���f��lb9��j�T߄�c�4����L�|hՄ��tzB��#�m�L�_q��:ϗ&%�R$P%�H�[`ed%��J"τ0��">OD2 Be98#-/M{��"��+��Ԡ���9�E���P�Ǐo�E7�/A���5�GꞚl2��i ���B.���d����\`KM���cF��,=N5�JAK�������;�*�� -z1mT�[,��%z�(��W���>��C�<ܟ\���	��T��`,�zOg�c�5ǖ�A"������~w��-�1�����a(�k��qĽ�qJ�	��X@B���/p��\Z�&�S M��Q`���
�BmU���pIo(Ўr)��-.ߥQ�j%ƨ !�+P���/	��ȗi�tO��G��P�m\B+��q�Copa&�.��q�Q�T����jZ��[3����DR��2&�	��ob����rT��x�C��:_MOkj��u5'�ު�ım��I�GtOib�Ճ��+�m�u�6������8o1�����(���� jTI���RJ*�����ff�>��/����yN�Ex3@�*X&U�@ ��:�h�����̬@TZ��{�[����<��p��u7�ό�2�ZB��v[]�}�'���և�D�j�i���A86�T��'���%�1O#ψ��we]�����LlqP��`�p�o�KSۣ�_��Az�J�J5ydC��)�^a���)}YN��/��	���!*��à��KӨ��LV�v�-ܰ� cFC��ʥ�)I��gVG��VѰ	U��i�֨zU� ��q��+E|c�sz�^u�a7ݤS����f�V�/@u1Qh��r���׽�-���/|�>>�p�Y�tA)<��d�	���|�*��7wd$w)
���,�h�$����������ܭ��]:{�lg�aP��H��@֋�>��Px�c��1Vx1�,�8�yj�Vn��@o)V��`�N/�\2��R��k�+T���. �F꩝X<�7c*j$F�t�]�0�6�Փ�XH�I�n:\G��8J�5���(��a *F��-��	�̥&�"� y J�}��Nu�c���5�)�R*.�j����׫�~���c�B<}�T��$T��"���j��L״�qr�6,��XY/��� -�T��n��������s��;~�����|�+�.�^�ܽ|�|���q��ߨ�c$��p�F�q%����\X������q�xv���G���{�\��vvɭL�
��)٪��%��vEO|��k`H
�2�y��`Mݖ��� ���Dx��.}*�7� h�*!+ �(�Cq5�� )�@] �à�T�9e�Q3� �)F aU��U=���TZ�4)������UW���np�O��c3�L	�L��D�Pv�tBDB�Ke�>#( OJ��"g����Nu�0G��0�%�J��&�	�G�-SU�;@�\��Q�e��L�Wv�����7����������Ag����ܟ��_|����ԃ=���S���߾�zb<lO��;�X�B(7��.@�.Ϭ,��u��Sw����{�}��W��N{7��WHIa8�9j �J.۴ �4$T�mlxr����tɑ	��HP�Sz��ðz�z�E�����)�8̬�B���8>���{)�8��n� ��H�
DN��#�+�����Nv�,i>0�"xbӋ��(p�n '���%-�ݨ���Cc6�h�HyR��tD�mL&@,J("F��9:Ή��K&��' ���C!�W��"%~�Ԓ�.T1��>��� My�d�#�y��N��]�;7�`p�Ȏ���|�?v�k���w�<}��ǟ�w7w���̰����]M�
iձ/\A��Jns�����xЃ�5ؽr����?�����#^3����nw�8̀�Q1vE���͘:����T�S��.���A�u#X9�H��i�2ë��!�?�za����d5SS�Q{�[G@l��@�Y@o�����'Y�7$b�OGU�����4�+�4��m� �(_���!j�ADd�<T<#Éן�2[#$nXrO����?4�-�s J���`A���	�d�J:��(t󙘠��ڢ-��h��O/���%ֺN���		w��I�^�8��{������w�)w�d|͵�������[o|�;.�۝vwx:��^�j��Hb`+��F~8���������ӽD��9܅��ǿ������yZ?v���_>�;��(K͂�H�d�(��݃%�)FzX �x�H5�+�ԉ�� �2U��4�7��Y���mS�q����@� �`i��>a �hp��m�*��'�5�!tz����)"�
�x�*�@������
K�*�D���i-�NU��up1DX#��3gM��,���\:F����{��)jSS�k-�@���4F�;M�QG�ㆍf�B<�8��'$��� �'���#���'o9��/���㭿�������[����w,���7W����љ=�{38ΌW��T����5'^u��Q���F���p7����������Od���U�.\������#�`J$��u*cF+)/��N
m�`���K��V��wA~�	�Z�q\2i&/�f�Qugi�P��A�}�{�w�g�'�V{�J�%*��0�b^a��GDk8>�{+��/(�6��Ė����*AKV�(͐bLU�L�I���i)2M'���X �7�UCp\,DJ���	� �?��
�m���_&	��t�h��$���������4�9G��tH�c��o=���ީ�����ƽ��u�w����~�9�����u���w����y�m�~�-�y8F�5;6���x��^o+� ��-�4l�����V��?��۷�zl�|��m��G�'������&M����,��C��X��jU�I/�;����G�Gf�h$�Ty��U���@��Zc.�����N�6�H^x�Ɨ�_�k�܍�SRl������)�5]�q�w�y�=:�W�:�*��j�q#�#�0<�M�<�z	)c�i�X���ä@s.��q�ܪE.~��e�:���<T�-"�m$���ZO(f�n�r�I)���?Ϥ��2BX�����|a�*o��{N��Co�N�����N����?C{L2ٌ&�/����o}�o���O�����;�tgku8�L�ăx��l�W�^����b�w��#++�����/����+K�	M�a���x:;�e�t�t
���<�Pi8aǥ�e? ��!�c%�d������YU�1_�%8/�mV�U�{�>�JH��5D>���8�3�s>�C'P'm��a<�c�T,�5�dF��pHE��f��	��M��)a�d`��nk�Xy]ӭE:D"�vKa����((p�鸸�~�fW*hb�u�DKVO�f3�	йh&ը��d,��LL1m��\�Rή]�Lƻ�N_>w���ړELa�GѠU�%D��	��I��&�H}G�0�
w�q�Uu��~���{�}�O�x������h`�#�K����j�P�Sz�D�ٓz2H�'�"�m��b�� h ��J�)�R5B�Z�,�7�2F��c�I? �0�*�)d��h` �hI �.���b�B�y�SS��)^��TIxWn���1�o|F"[�-���1�D���4wTDK0���AQ�9�N<Sʨl;��eE�DRP�[�nR�>�J"�!�e���Yg#v7Wz�l���:�	N�}E72�ɏq*,����{/�>���Z�rɻ�l^>Ehj��r��W������{OaG6��'K��dl�+�Hi� U��//�?9�K����t��&���e��[[����Pjl�p�]��D)�#,��`n!�N�0��6jp���-��\���Y�Ak����^�� �����a�5�-�J�M` Vʞ3��F��!9Ns'��	Ύ{��l��@n<��t�ШLtn���;G#9�����5rz�_y�g��)W��X�QEQI(җm�a,p�3
K���Э�4ښ<��)ނ<��D�zY�	�o�K��ͥ�E@�PF�����_�N�4Z�߀�9�����8&��	�*_ZR�����[h�
D5���6�z���>������W�uM�F՘u)1N^k'>�t��������&�,��{b����"�����F9�]M�iѨ��Ч9s"^���"�ۈ02��^��hɊ�`Eu"&�����pڙ�&�LG\G��T�$�˙���`�G#3PICz��1` q�@j
��Z(��t:E7�w<&��X�P��C݂�c�P�S� ";Η���`��PLw6�;3��͒6�+dY�,fU<gj
&��Cl]i�"*�	�E�"q"Qh|��\�{��]<vm��Y$X1'���l��7���A?�"��PTI
TU$(��'���f[{�����%�_�wmmg�
��&���&��G�K:����$ڄX&򫾅��@���=B���[��/e���<&�F~D|i
��w��V���0�/~�s�e�F��X2j�O�H��6u)��:��:��Y2{��<�h.8F?j�	���(5u����N+��X햠u��X �!�Cl��Ak,�H2�v&�B�%�ZQ�\Xѕ>��X	�̼�,"��h37���+��jk�:b�?���k�.���8�����(��P�d��F�:�	RLe�<Q�Z4BxrT����wem��m7J������+�l�1��y|+j|�'rL�ak��N�>!�)sp�fh*3�M��M��;�gF�	7�qäV�9�Sg	��5#�7��'�/��&�A-3��IR@�!�Vƌݙ�p��?�?�\]V�w�tŌ�î��꾫��N?��&`:2�gG�߶�Sv(�)�#�6ɋxeO�,��� s�"C�X�������M�ۯLɌ2��%N�uZ�6�?@��1N�ɇ�ɸq��E�v|�AcF�Wu�TO���:,�����`�3�R%<}�o1���T�8������~�?��_����c��2�t�չ+o��{���={o�m`�i
��8�Ps�\R��%O:��Ou�Y�ܟ����_��2 ��̻�ޚ
�$t�ȳC���g�D"b����ƘR�H~(��
� ����)�^
�)�m�ʁ��ɑ$&N}�$� �J��]C�Ղf~T��^MJ��9�j�*��M@cL݃�q�y%@�Q����Y1;!��t2m@b `�ǞCDF	YNO�$�+��(p��$������!32��/��x�Yl]�>s����Uγ��e-T�'N�VxktT^�Y�����b8o���e/,���AwG\8̜ƻ���B����|��j���57�9���}|�:R\CzD���2�R(mQ�W�J)��ZA��b�qG�:@eAQeHF��dl"J��䩩Y@�Dk�FƆص�9�� ��:u�C�-��-R^�2�gz�1(!���K.�8gc���c�=���X�D(�R]^t$_�qk +���O���֐�(r+ZVHC[M�'�H�A���sb�?L#%��)Q	�r���<n�p���_3����N�<�xi��e�_�za�@��̝���t)��L���|(��nlFV��l� ?�Vd4�ql��-��p��ࠪ �+�	t =��'?��n�,�%�z���l�W����6�H���Ps���g��01q+�����WXx�>5߭y\�����<�
SSV�Eٍ��D�*'�}�p��8.L&�iÓ����� A�a��V����)��15�zXl��БͪH�Ӝ9��:�f���\�S^�*�<��˪���V��m1����q,��jl5b{9��c�xM�}<V�0��!��5�GC���|�IE�*�N����z�G�<��s��f$lT���U������ňbJѵq��q�*�jk�a��?"9�!�T�_�`k��7�����	1��=t��|���gz��V���?���h�J+��Ob��ǪV(a5ﯞ.Ӌ���p����t8!q��1���3':ÿ�@���QT��j��lfL���Wd�n�@��ւ�t
 B�W����{Ln��}6R��"��y<f��IaV�LS��;]w:�F�	�S��AU�GˤFM� �T�U���0D�"#pjuӬG����c������B���&'�A7�"eSNj�/=Ki�sMAE���ŕ��P������X�u������c�g��Gܦ��7��U�ួJ^�veu��n+�!�`2!��< q����lw�җ>�a��c0�(�d<   -�F/YM�I��R��04w�
e�����8ȆZ��Ph�C0��#���S���[5xU$I��^Bǁ6v9i��]R2�K=q�x���"�Hbf��ӛ��')/>p�P)`���^5��sQ�yDC*�	�6I�0������}�,\õiȚ����Z茪� K&�9��i������P�dîr�"#����%
�^�y��L��/j�����������nP6�J�Aɤ�l�J��zT 7�	E8O]�a)Ӥ?�!lm��O�د5���Z_�������'SM�%5Bv��w�c��W^ߚ�����(�����(u�
$�2C��01�t%�ҭ�Ai����� �G��ѷ��ی[5�UR{	�~���U4s:���HcB�f� �}��@�|�`�"a���=f+��2��0�ȅL(^�N'֔��Nǃ�ņ�gI1��f&�=ǰtDy�' 6芅�Y]�:-0j��w5��1�utE�l�LeY8"V�ʆ�r<e�4V��Ps�M
dJ#V)�n�[LfQSF���!�"arJ�@!��d�+HmKV��d�X��[���jxp~��p2����Z�E��ތ��"��N�>B�ߘy���B4�iZ �M8<U��&M���\j|����A0cZ78Z.L5.%p�Y�Sj�L�2�]�Tb��eY_�;�&�,��B�b��	!�+�%n��J�$b�HPuHē�	��Ǹ[�UDD�6�ǠzVIӀ�&���'���B�=Ʉb�5c�V	i�m�0kf�0k�f�a1ǜ%����AF��Ƙ8�zZ��.���T�( �˓;V�o�_� �M�� ��KƏ.�n2mh���.�2�ܑ�A�}&�{~��$�� ��f<@m�4��o��È�y�~vmk�2�
^����%-G�x��f��T낻��IXR-�t\�mE,�@q<�tb$qU�ƙC�7FH�jv���" w���2�ǁ4��;V�#��e,
/BB�F&�	"�A-�F��-5ndZ�Q��C�1DkU�6��n��Z;Eh����1���_�[K�_� %k������I�F�#�^" +!Z��"�B��5���zI�*�UN7kA�졾H^�����X�R�����3ˈ	V���1�a<�'7�c@0�Kbx��R�7TI%��<Z��@x��C�_�j������Y?{���q�]���KG��|����s  f�/��U��4��� �>N�W��l��5���]/�*��>�_C�4�DJO|K=A��f&\!V��3b`��� 4�V'ewFUe髈�̕YV'18
\t�wh�/��咲
w����x5���� yC�7bPC>5�ЇK�N!�9)9�`2�����M�DV��fG��e��	��lZ�M��Нs*�8Z�b�Q:��2$���Gh� �<J�����p��x��ِ(�";n�	44��k�Jjg�5T�t�������=0��.Ͷw.���rm���7)�W\�����[��a����L�.B	�
�E KM{����T�V���<ںG* j�(c�r�t;��ZM���D��q��䆼�A��h��%~�}�qR���-��b�r����V��L`[TKdVXGF�)����sЬ�=]'�4��;��H�ҘW��������;�񀙫��m��N�Q�`oL35���'���>�(�����T�9�\�E�4%9�MÕP�.0U.���~��_�M�	������k���J�B��8�*�)��j�ZY�;򹊦9�v���Gmml�]�gڽ��{��?�ן����^u�[i����gZ�B���K	C� |w1YE1A*jM��f�	Q��Mp,,��+��h�1ʦƛKs�ȆZdL���L�Tu�x��"S���0p����=
F0*��b,3	�@No�x����#�ټ����A�.��+��c�S5B�Ζ�!��5$������׻�`��ǋ'D2����������r����3i�ħ��8�>��$*DP3����{�*1בU�\dpĻ�UQ�Z�,s��g\A.Ϩ�)e58�pcz�x�=*��ۃ]�"��,�/��O�W�Dw�B�e�j�K����y��&����x��+N>y���I%�-�-�vf|�D�@�kM$it����S"�z���y	#�.T	����M�bV�6,�K��=��-��dSXGsm4!\��9���IIZ�"�V3�����g`�q���YD�U*�jH�C�`�e�~�̵�2�Y
ՁkX��j�y��ʫ�Sf��F&����s�a�.�B)3"���O��P�rX*�"!�C�hөH��[�,�EMy�0*n(/������
���غʒ����|%e������d�$�fR�KN,W�p/�c4������^���˫O4J���O?���g�R���2�R�8�Z&.��ey�xvvFcIU�h������E��Մ2@GR�
���t=�Uw�4i܇��-.��_4TtM* �q�L��Jʢ���ST"|{�2 с=*��"<�z��G�&����L�[��>kŰ,_#H'�Y8�	�V�"u� �F��y��HMfG�8!I�gy�EФ Cj#|��|@��$�@<��m��95�|�����j
l��U�#� �!��j�9Y6N�\����b��զŎ��J��ȞA��0����a��!���&g:���ɕsOrqu5L�G�DC�|���PW^�͆�龕%�G�oLT�5W�_g��r�î�\ 52L������ɼm;�E�SD�^W"=���I��r�'@uU����_�����\�ʲ�C�&�i꠪��;�N�s��!���Wf�L;](C����䷂Q���H1J�*�GGD:`tE?@R ���hbTĘ�=#1g�*�:�0�3t](� ����F0�r�&'I-5���p>@K��Vk�>R=+��!ډڰ$�29��n��Axf��7�b�����r���MʫI�P�&6���\K�I�@`٩.�,��/��xp>dr�$Y��I�����|D� �� b?��]2Q�jdFǈ�#ۆ�P��k��3iأ4����fX)�@&di:K+?%2� O^�'4��<P���t�$�ƂS@����i���d #N�����,¥��R$%)���=��1k��ڝ	!;52RU��0Dp�F�)O1�@܊r<�rh��/^���� � ���!�� N�����p
����0_�gP]AɄk�Q��e*Y=0&\��5:2�|=�o86�l,��X�;L��F�i�������F�C���\O��2>	�TD:ԩģ��T�tx(��;+a��<���qt�x�/ӫ��Q,	ˇ�bi�!Nx���B}u��kQ�Ų����㧑�1�X��I��O�6"�� �R�g�B,o��_h��&P��ۂ:�R�)6$v^I�zk�h�`2M�'\?�����эFȪ��6@0`�5��FvK1�����
V�p�4�K�|1��n�T��a�,%"��@쳄�v��/��M�3�3�}z0�a��+p�Z�I�Ne�#ef�Q5P���3|�A\k�����zmf��o �I����ұB�wF%q4AO(p��n^�'�E�3�<D��Mf����E@и\�;�}`<yΰP���*�~���
�YY�@<�$[B-�'b�v�L��`E%��U�����SF�R�֊��J�aaM*ϰ��x���IY�x#<'�HH�H�v!I�p�`���g�q�* !J��ߙ��S�(*_�`�{�g���9�9�q�G�u�{E[�f7"|JE�.X��<	�K���y�L�h@
VE�����[LX�:F�E��q�,��ٓ�5t)�n�>�l���(҄^�U��Q���V V4��k��.��y�Q�9Q�@��h��@�_��^��D�����	�� �4�r�����������ۮ�#K��5�p�;�M�6LQ���GoG^���B\	W;!������%��:5	rWx�	*fTѯm�������X��=�����:��m5h��/*m�qK)��bT �˟��h<��Y��Д���O|$���52��cXv�z��h�����~@�Fh�y��8�S�z0=��yM���AM TT%���X!ns���iB�#�
y\j��kԫ�G�廊h:��ZOAAϼpaiϞ(�� � \+�H<�BW*�p0d�����>��,*�@�G�]|Z���R{Ѱ8�����=6m�b�,�H��t^�n���!g,]����Q9���b��	�[�O;���-X� G��J"��FE)�:w̔Z�e�1�Q	0Q�u	�1�	tRO��� >B2�}X ��M?{��u5?�D4V�� ��tP1M��J�d�!r��[�{��*��B/P�o&8�ӓ�	��%'���6���ˈ��F��Y�f[J��D���y�9@��h��I�Ԏu	5xq*	�����ΰﮞ�zeoRu�\�.�[�l"U�]��z�Ez2�2��h��~q�Ր��IAC�">�7�*��p������:���5���A�N�.E�d2U*A@>3�(H���XbSāͰXH�B�ۋ��n��:���UI�b^T�����SsT�Ğ���eHs�h@>W�H�)�Ԍ|Ț��������|�q�V���Ԁ	�p��}�t�TY�Ϣ�>����*s}U[�$���$T�S�+͖(B#���H3�%(�O��|�&�8�e@�@��Ke�~�1)�����2j�s5�y� �<#�N+�S�P���mt�?��Zh��xsc�����+g��4�:��U��Ek��D�d������[ =�`���>D*�ݘ�KXCf2�T��8��T?����x�ʏ�@�j兪��睿DAU]�>���r=K-ڀ���i�D��`���<�������	뇹��&��_ERqs�E	⚼>g��Ҙ��@����A3�5�6Mya������MY�&䲾v���c�+;+�I�^�*xgܡ:T��j�%~��	�U����̅�^<��RP?ɮ�j|�Ǜ	�%L�X �V�E��	&(AfcUv�I��>WB9M�Ahe]8�V�"	�g/���4wCob--N�����˻j�d0N��ӠQ�6��$~�&���j��rgxU�c*	��ix���V>�xg��ƾfŉ��9�g�ê����mJ��Oa�_p��)��b����a �b^�:��R�+��{��#*1�]ᙰP.%� T�C�F���K�8\����K�C�j��6��f$��?*	^�r���$wG��}�Dȡj�"�^_R1�L���Q��h�U�(L����U�&ݤ�C�!J�9dF��tU�dC��1�T-]Hp�$��� �`iM?(���R��Zjr|�2SZ������4���T��
FXגގ����˕��i�O�ve�i�I�L���̴��]:R.M.���{�5~�_�7���uG������F#�{e1|�=K��Ed���2$C�)��Lw����X Rr�y�kB� �f0��e#����&��R��<JLJ}�ҧD�Az��h��a�a�Z{�8��OB��c�~�Ӭ�bڝ�OLs��\	=�*Y �Rh{ի�gD�B5_��1T�T��a�NV�г
���q�u�I��=Ѣ�L�,��`��H�����Z���+P�@'�"��R�:q��g�pBY_��N��Q�Ȉ8�}{��؞�����΅��tuee�u׽��w�vǻn{ջ^q��������c׾�[_?77G�_x��E������{w���F:ʎŏ*y��3��<�Rzay��M���+a�gp#���~���`��� ��Y�c��S���r�y�(	��$�1o$�����h�-��X%�qH��=̏�u`P6�Qx}V��G�)�	IV�8�)�'.v�
w���"AQ�U�@�GU6���;�,��UB�X�-�ceG�Xbf)��ӭY��1�*F�/P;3�4x��dwEyB�)��(�X}�j�j����1�5VԑD���*��P#a�!���=t����-�5K��l3��a<�Ǽ�l�;��/>��s�}�����7��g�����=}�sO?���K�����+T)�����/��W\w��N���y;��R� r�zC��ɀ��?嫺���,�M$q1������|d��u�&@���@���Ȁt�dA�)R)�6< myd����[ϲY��ؖjH=���4FI�ߠ�\�D���6l9�����\���.�9���)���Ӧ�K�"�?������-H/��,�6� u���$t��H�0�%�ȁ�K�A��]#������*��q0�-�C�VïS<�j)��N��55��@�zk�3Fmff~8�;D�&2LM	U_kP+�^�2�t��?z]��@h�����K�Å'�~��Kg����r��@�M����ok���2F�<~ᅧǷ��Дu��O���l��T��������㎛�łe2Ua8�4�KC� _��+@D/@(�_��YsY���&C�p�E*�1�Ca���0�Խ�S�:�}}�"�jo��"�)�����{<���]?.���Q�+o2��f�	���	��%U���ڔ6��S\B!��
�U9Z���.��ʌc��Kp�@A��ic�IT��x���@�KeR>�-�TL�x���&������U)�߼ U�J���n�r�
�4S'���d�'��H'��j��K�D(�ad��#��i���18�ԋhȧ�ScIZ� ���_}�����V�^A�VeW���J}H��8cl A���r-��D}���C��}�Ǆm�S��@3w�G��y������`u[g����A}FA�����.])�KP�*� X�L�ư@��n�0���ե�|$���1�s"`�IE��,���GxB-9����I �m�%�z�2�ߍ]V�:({3��$����듖�D�`~#�C�.���$Oy���d/��`�/�àX3%"�]��-a4��0oa�R����,g�@z>���Нi�?��ѿ�WO�����?�퓗.�W�: ���8E�p�h��!f���,k+�TM��,������XN�?x���k�N� �BU��m�0#~h��s���V��4E
�H�H��ܴ��lje�GU�5�>��̀1F�Rb~�3�GM��<�r}�=���o ����pTqZ���ˊ��N��ʔ���F�F����w��V����Z�iO�QL[��H����hԜ���<f�4=N��N�3����6I/rZ$��>�������m�N��a���9l�1��`D�u*�)��F�^��O�"���%	�
C
��.�:������m-E?����o��3����<tF�sK��ҜJJ���)1.aZB4�m
э6(��h�c��KDN�5G�yD悃�V�\�m��%�w����Â�kv�1qv����NFxJ�[0�E�ԌŰʐDڕ�w�T�M_5\e�4��-C�΅�(��D���6�t��3Rأ�O�-�6p
:u��̌4Z�j��No�D����L��fJ>_y���Ҥ(�9hh��2�3h&�_��,xc�i�0!������SOI㖦�PK���i
_�pJ�4z���S�jMM�4F�F���O¸^֒�eJ��au�^���j��_�����O���i'g~�քo,��i�4�)�*��0��΋�1��N��R0y��Sw�q��9�Τ�����H@L�9��e��RR)����������ܭ�;;�z�Rn�Z�Ab�ei��&eҝG��%7X�b8�f���ƹQD�C-��+�C!���l0Cfz�@1·b:����
*�hj�K�=��8�o��B=\�ƒ�� �_�3����Hx��P5�QA��Z!�Xń��!RD`0�KE���i\zL�H(��B%�6%աa� �T����ԋT�t0�xJ��ԃ�$=,w����:��d�j��"��}j&Io���h�>_�O����Vm}{�ԅ5M~dT�TMaD'ػ����07Z)*$D0�r�9ݿ��7���X�F*�������w#A1�w����//_<   �<�,��vP�
r�^�^~��&�lu��"�N�����fô�P����I��] ��9��Y,�(;>n:��$�?FJ��?=���������׳������@�?�z�+�u��B�9��8oG�h|ew��oМ��X����J,T���IPn�� �X��;9l�R�0��ZD�R�_��UV�[2�Ւf%���ѧ�Ǧ�GRեn�Qog�n����|T�E����,�k��#��b�`favjAE��r�h�{���K/8����Qu�ֳ�i�����̾(_�6@ Ɛ!�(�L������^;q|�R�
Ҏ�7����O�A��4�)�Os�4�s�5��,���f���Vti17��0�M7�x�?uqh�!n���b<O����i�*�p�9�V�l�BK�E�EH`�	);�Gw5gU�ݳ�ƽO�W-Z�<1�@l��������Μ:[qX���x��w�h���;h���(C<B^�!�������Q֥�ُ ��B� ���*�έ^�i���d������)%�i�SQ~V�@¨ �@
��%���&�	|^ɯ�����R�6�����C�n�A]ř;r�Ю;_{�p,�'m,gϝ�����C�-���2-��'MXN6��1ȳ��J�?�����.��������T�ɠQ���Q��!���+�z")m8[�m�:����'��zAP9�ҥ��~�a@�ter�y�BZE	Fj�BP��*_,�a�b`�0�_s�Rrӥ\���"G�i�F�;�hPӼ��6�����wߗ�� � ������t.}�ޯ�T\�W�v�g*e���^{�׽��[�C�ݥ�����Nv�nq<J�{9�����W���n��7���v��Ix(\�������o-���x�ޣ�7���_�U�ҩ{��M�sKjm��i5I��!_2Z44�ъ�$�F)��_$*��cJ��sI��M52���qe��N���[)�{P������;v�Z#�_��������������es�ӺI6�o\�wgs�ڹ�;��ݺ��v�?����ˌ�Z9 Ǯ�8�aenS[�nIo ��1���'$8�POA�dB^��l2c#q����jO�������6c�M�H
�L�%A5Eԑr���/��Xy�d`_V'-�1q�x5��Zѓ�9��KA~'�A%
-,���-V��Z�U����y�0W[Y��̸�yo���Tk��7_��d���լ�a�h���9��(�f�o��vɅP��;�l`mӾ9BW�G�n
��?�|�_}��Q����N4�81!��(�(/���`��
��OB2���� 4�U�UJu�X�	����u�o���7���~���s/�ŧ?��?�����6��g;s���,��ƅn������������R���u��_���4�%��M�CQ����j�����ՠfų���ڛ�S�K��U��Ti�U$o�%`}5p�+]eM�Q��!`���!���󄠤M�k�Oj"�[� �V�� wc ��vzcT�~P!%q�\�@�C��4A�d�#��@e�q{�#ās�� h�J���P�G��pDwZq }N���u���8��Bם�r#'`u�x{�Y�l�Ƌ�h��$��)7�_4��|{��B�9�� @��S�m���VUe�D�0�P�&!V�߻���97	�c_z�Ə��O���������|��Gg]�et�P����t�;�����)+�5f����g�{���[�/۽�
;PH�[�B��":oL��ip�k��`Ԉݝ��m�'�Q_��h��Ͽg����M���5a���oP��V�]����b������:W�5�_G�S�XC��Fqc�MJx�3Cj���}�Y�����0e�=������̶�o�o�R����,5isK��۝����P�����@4 ���ء��oC	uD�D��v�1���#o7�|�dp��e1<7SK�)���K�<�K�HTb��ԗ!�gp�q繷�Z\�shqn�b>�����F�Q��>��C�<�ʻ�N����=��~ݛ�/+(���]o|�[^�����Ek�U����2���o��o=�z�D�|�
�)�j4b�؁�5�Hn�D��Ie�O?钤�
T!F+�p1R�q�y�r![�>[@i��@I�dw��T�aP�����U���ah� Ǵo��t	4Djm4��fJ�l�}9�~#6�-�g�y_K��E&�7[�Z�Y;%���1���qL�*zEF��8$Q6���o��B��=+��T� ��V9"v"��S���ie�^���h���E� ��,��*�ڋ" B0t:���0a�����ҥ����ʑFqǽ��yo�W�'O�~��{�����<��c>���������-,�SO<�O}�#���ƯZ�2�7	�o���ܟ��|�g�����Ͻ������47�<��+��v���ks�����|�iD�J�ߕ����á�AK�
�ńJ�-1���2�|�1SX�-C)7�{�D̋�=ׁ�Ûk�\|�1RTs�`{�1���	!ЅH���@%�h�R/!|�n!�G�35�j�;Ҕ��js�=$*�CH�άw���T���Q��˯t�MA�F�&lٯ���̐����	06R��~�����I��2�))��4&3CN+Cx�u)C����y�dh�^	��5"BA��Y�bÿ/W5���峗:_ ���ܥ��������w�h�3�)=}~*�[���O��g��}���G?���=��IӐr=y��i�j��y>����w�?��Qe��MyL���2�u��အɡ����@�	���+�����g%�'%�F�`����,[�;�+0#Ըf<��:��lp��B|m��-�	T(�0F)�Xm ��/�h�%��5mת^e#�t5��$h�d��Eo����&FY@�*y!���/L��\SnjX&`��}�T����!����J8�1��L�M��@*' �8.F��z��]ю�
L}����zr4����j~��jܴ�p���C�ۉF��M��t}��詧��L���1{����N�˝v�1���16��l�����4=F^sh�2���s�ʓIT>}a���櫫{|o7(�X�=���m�u��bيŭ9A.�U��z�����*��#���I}�?0N ̔�P3�o�/2#=h�p���*0�x�7���<X�yH6�H�-]�Zi}�X��1CU&���K��U��L��xe�/�G�VOy1
>-ڙ�iK�![�K)�����t�ɘN,�rHl�d��w:"h�"��j�z�rkD(��~*��dCpHd�����"G��a,JiE�}������H6Y���/nUk���N���IL欭]�ॺ���Eu�[E�3@(oey�I���;���_�����[�@���`G�)/��-�(�I��0��B(���3xíG-�;s�苌��/?l䟕U���_����,U ]V%�lhM~��@�W[�� �t.qP�x���N��~���ୡ���X@�g�W)Q��C(�^=���"-�IUTqy,]tе�Em�Ta��1b�ԲŃN�Ψo�j�F�+����*"\���ф �3��Q2��	�����vw<����H�_џH��hB�5�C^�\'	΁�#�G����J�#�B�N��:�pg*E��� ��w��{�{�0�ɯ���wgg��({���\�<7z���"c�2������;��Zp�`�㙌*ս):�=Z�Qx�:@���V�@Bi��d:$P�%w���=/�=s�%��ǒ?�X��&�D�a�`� �T�0Xg�g^�.�x3�&�v�%R�KM�&��C傾}�-�l��}�Zѫ�-B?TnR�YH,ó�T� B���@�=�d�������g�?�NY=��l~R�I�#�8���^�F�C]ZTt�%}�5��^���}^��/b�>����Bz&aw��Ŷ�1����VV#���9�t��J��ݗD%8͋�?�7&��|����������������p�)AW3�[����r������駿y��aU^8w�&�h:�,��x�}�A�I�d�4�^�����V�{a<\�U��g-�˴�BH��Ag��e���5Q A�W�*`�d���W�ϪK]���Fy����l��dJ�����G\�;�]�u��e��� ����<���"�Ńٮ;*{U�����CO=�B0e���d M�4�Ѕuh���D$��q�On���sa*� s*U*����Da>���j�2��8�N�m�fZ�EQW���%W��6�t��i����L�V��A�ҵH��������*EY�v�F����(jؽ���C�ٰY��7.W�f��������8��3Vzγ�+��*c$��sO���_'-�]]w�1�s&�e�z+i�}��TE6��U2��[=��#���v�pJG�(�+(�5%�q5e��j�f~v�	A5r��[N3wV�	���NM�=5<��)�F�5�ψ/��f�=r*?��q��S�syBLPJv����e5p+�ƦȀ)y�!�EH��j��I0�a���Yo��T�D]�P���}�-�UK� F��Z3��MF���y�;A@�h�{T�˔�Ô��+�R����Kд�D�u)�1SrRL�Q�E���rŁ�с����y�9.f��u�moZ�w�������4y�k'?����������Y��d�e��0���#ПC�&1����l���7��������?����{����7�����/���厷�l��:zsrM��:G����H(�)����b67��[Vk�V[Uߨ-<sn�wo��V)ӌOze�`Oe&� �S���!�v<3�l��nt1��Z�Ԓ:��!D�66�{^�����?=gU���i���cq��L���/�H�~�@��/2��7��O֠I���T��5pP0H�����%�!�0�1.�ED��u���Gi�=@�{�@���eH&'��]Br"��r7��f<�|��H�XL+�j0�S��n��|�w��� �n�=%�.@����/�x{����cG�ǞL�y�B1az�^�v7�{�3����o{��n}�{�����앭]&{hLǎ�s��>W9p�#7�ݟ�zD� �پ��{����՝��)A�
����O7����O`U��(zJ���ȣ�ֽ���U���^�a��Kdju3*�-����kqg8����^s7���6�.�*L:^����N;�vZ�nze{��vo�����ŃG*>X:S�D<#��VH��C�������;����Z����ϟ:�Y�P�g�H��ݝe ��I�
��j�����>�%�׬ҀI�r�#�o�OF����a���'}��Q�w���;�=�@�h=0� ����8]�+N $�u�h�DK4�@��R3�Ъ����o}0z�nk����@��x���w�0{�R_Zܳ��ֽ<��ء�Υ���Jmέ�ɖ?�nz�=G���1Z�x�h-^�|5�F�Bۓ����2嬙����ʰ?^y��{?�I���C����0�<���9+.��H��=ǎ�Q���#���^�1$���Y!����Fķ�1�$(��C�#$�@Z�zO|�:!
�{��_2�vi�*y�؄�X�V4C�����:x��6JX�Ѡ�j�Č�A�Ї27�����_��㴶��?�sk�vJU�9rܐ=�2�S]h������$q�;&� ��V
`c���H}ަ?�t��"�;��,��!�f{����7�k��.2wB�(��^��u�>�%"��3㖥v5~�ō�ͷ�����?�����-�5��?�n��}���zk�����\����.��çג�W^y�[y�Zc�?�/]�4[�L��<}�L�v:������}+V�.�F���?�Ѫ�pӭ7x�s��K�kOJ�B���N�yw��z(MqɉGD�(�e�R}�"^L�\ 9�1X�w�90Ub�_uʌt#��.��cj\�V�PSˮ����~\.�E��KO��ݥr�]��8?|'�i�4��& ��:�<�����'t�������eb{N  �b�Sr��OH�B(�TQp�Pt`2eD�~�R8*��8��ԟ)��c�7�WJۨ�3v�������pQ��p���d�0-:�� թWT�N�q� #�謋j ITA�v�n�g{�y������g�Ӯ�h�/�+7������������G/'��뺃����K��7��n�j,��_�2�Q��B6/n����T� �Ѫ�L8ۘN�y�0eb��'O����o{�뢸{��WVO��h�|��[��*$�(P3�H�
�?5A<pGj��A�g�E�d�3�ԧ���Ae\�zi\�1?F���֪�$��E��M[2�t�h�]���xh3� �S�@\�4���C��2j�y(^�T�z;�9>��~�F�Yr(�c�Z!()�%�)\s9	ƪ�
��6����2��CĂ��J���|0���J��9�\���d��z-(�M�E�S�Z�(Ye,i+)�~��z�n�_&^'; �X
��h�j%���V��-T���f4�'}�g��F^����/?{v���!v���f�!�[K��~�Z9}iS��FE8�֣��z$Y���:m�޸���g��m��7Zq'���'�f��Cp�j]leǒa �3r{.p�H�j��.�}9*���Q4�4	.<j֪u�E+X2�P[e��?�2�D4��v.�y7cnɥ�%2�>�($�����OXp�m�k�w@]��a"�5����+tƉ�.�k�k~~��%�E��� �|I��������#a �&��1��h��S������FY�I��J8Sm!I��'K��Ys����\k����s��(�'�S*k����RLjU	�a�u��Y9������������ɧ�p���[��QL��b{���z��7�ꩧ_8�\l'�t�۳x�;��Շ�љ����g/0xa%��pn�H��������C��˗N��O��?�Č���&W*,�斈Ϭ�`����;�z� E�����l��s1H"�3lx���+Ѷ*2i�JR���=`5C�$��chya�s��7AI��Wb�!S �3]{�/��j  �5��z�PEJ,>�p�{��k�.1��7� �Ÿy���F�(�k]<ȕ���#ݟ�Tx�`N��
-M��:��`������Z*"����V�63�5@�WJ�7�*#��i{,�r�>W�Dt8탬m�z,��^�4�Q��w�k������gf�����[>����G�'�ה�󓑴j�+���Ω:<�>�t��뗮�n��WՏ�x�뾇��o|�1nD��ȶ����C{;���-�j�NE%��3i�&KKSr,�"	l�4�:E7���:(4�?����<5~�;�CrF�0J�t�:�E%0�oSzJ��PyK���(z\�
qz��ut�pk��փ�+�&�WD  ډ�r��-�ړ V& dʜ���lI���r&�,����k��Ey��C���j�@�0�]�3��LБ��;�M�4<�"�I������<oB[(��UH�zM@��h�Cx�4�$�3��%��LK%���z蚹��nt��y���;S�7��p���c�dc�p�ks���~���XY^�篙���5tX,�9z������Q;~���z���tv��ʱ_���.���v��H��B/t�����r/`�8ҰX&#��fᤕ�Ԯ�iӤ".����h� �J���lX1�Jݟ	��e��6�1��׉uh5��(�S�Pp0��Cg;f�H-�[�C��3�Չ"	����qX8[�x����
�J���zo�@��	ca�������;�b�!	�*U��૘���e�A! q�9`��g���D��
DO֒��2(�����qDY��G��B�*��~��s�����{�X���$aX�tSR�`˓�7���k��׽�ox���@�Ƣ���v.�f��Z�-����췾N�v�ؑw��=3��'�|����o���s5�r��ׯ�^>���0�Ә_Q�3����3/6+dX�1��f��ʲ<   Đ|h3E��JQt@�'!6H@��,�,��g����Y/S�%�P�u5�tv�����b����$�����Jo�X� t�<��=�@�T�� vO*�9���M!�2�u�m4�g4(P `���n�*K��j$I�JU�$n�J4I�Jqp�kH�v��Y�4o�1E��T�� KU�Fʒ�N�%�V�C�ΰ;��V�b0<�~��)��Jd�kt��R\DA�cd���h����8iTk�O�i6�jD6ELse�ԣ��贈�&�l"hO{�'�����S��ğ�/����#�7�8����d�U.��/��F���H�*���͇Q��@SG��Q��c����&��깖�L:�=��?��)�ѯ��3s%��0C�"I��7�'	��b%pFcB�I��W�>i�-����6� .��Wj�\��>p��D�l��i�&�Ǌ��} D��N9���l�ݢ(TB���[�M��!�J�U� �ש�2�S��XL�Ұ1�$)R*(�3uG8���
3i�"��u�g�!a�itP}����tT�R�߇�z�-MȽ>��>��j��@'��qisj�5�B�;��otD�*��������u�5�x0:Կ�Q��oy�+��[_�����8���Y<r��ۗ��6M'�p�Б�䈹g�[�р�C�������`��4��A_��ԭbb.I�M�:�&w)�:���C���FLAu'm瓎��AM��$�p%p*��C��=��1y�c9a�;2��N�L���%�7�%`M"wA�*�A�(`H�遅����_�\b�!"eZ��!�㠪��x8���pL��&tSW�H���7(J�G����`�c*M�4�|�!��b�T3'0?��U/&Ť^���j��l6�,4OK��z�� 7�ݡ>��ڈ%-2ʎ֨E}��jxe\2��]g�����I!:Ƙ�99��s_�䇓���+���Q�^�ⴖ�i��ڹ3Խ��.��������0��ٷ|��g�AI�aŢ��`���b�aAJ�,�4t�j3��`�$D�*�bM;�@�Nn+�8zA	���g�2��(���Uiu�խ�*���Q�_3���<@��7�}0瘖e��l�-Ԛ�����"��2ĀLL�ơ���\".P�Z)eޘT�-��'A��\�	���i�,*C��̧h2�Oh�^Y�%�039��!�v4��JAC�
{�U�!
�iHQ�q�2K�C�-��d�y×�(�r��B�-!�Wo^�7M�*�{�J3D�1E�:����2/��`Z��Q��u�.�Fk��������̨�6�}���_�l�aN�y�����n���7�>C�E�	��d ƫQ����/�V[����Q!���a��¢'�p�@I�h�gi�T���$X�2a`5 r(�*±�P���c��)QC�]"^�M���6�Hڏ�a�"'Qq��XkFRtV������+� ]f��o�G_$��J�4�x��77��"C�>73���5$�A�z����a(�ү�z�G�M�N��G��R�b�A�LR��]�*���1YH� fb�CAE(
J(ez�J8/�]y8l� ��h��qI�8�x��6���#�]$�Lw�1�s�BFӴT�Y[;?�l6 vr�{+��&E�߃�ַ��׾ٯ/lv&����9�P�Zo|���[a����N�W�4*~����^�V#�D��vH�@�E��PL:�vK@V�s&�N:}���y�$�D4�.2-_u�K���h�3j�=��d�����(y5nW�N�*05�܅��U�MpόsBD-�(t�t���i>�*�%<���i5�����O���h}}��@�1	=}6���������1�2�ˣZ	�@��E�s��9L�����W�T��-`XP�*��9U�c�K��t>�c��&�	*���*$����W �j3݋�+����/��A�����u���'x���;�~gB`�Ԋ�I�3y���1���N)j:bu��+�@���j��}{��έ$�(ic�����{^��<��<�ҕ˗Ix�@�o*.T'_���/~�k``H*d��8t���^A:��{bw�TY=�3.��:�/�Yi�`�&�!����H�� @�\��ЗM�8�e�U�ܙj�6R$@�r�_��N�:
�v��%wcЛ�J��J�RR��j����R���c�B	�� V��hڱ���<s�Yl~H+8[�� �n�b���hD�C�Ao$ ^�� m�p���:L~��gg����m����G�.D��N6�����^E��Έ�E�W�MMk��'=�P	 ��֡�t�`Y����e�	��}�g�s��i+��`��H鬭��/3x8ϼ���<���(WnP�����z�k\�x	wp���Q
q�fe����kQ���s�a�&�!��{\�b�E�����v�Y � ���E4B)'�"�#0�+�wb��˧�0�pf�r5d�U��A�ܬ���#)H�>�?��F	�.������*%�R�`0� ��H݉­Jj4��)�J��~%�1�wf��_����s��q�M��n���^ �;Dl5��˰ �I&�lI�_��C�U��7p�Jۉq]�pH�M��g�����=��oė�I��J*G��4h��M�v�F/*4�S��l}ϝ7-�CZh��@w mURi{s����Ҁ�DT��ˏ�>���O�K�+g_>���?��/~�/��';�k�Az8cެ�����0�����-�+#�SM��j�<SY�.�=�>�0Ѣ������@@���Y��pJ�JT������U4�����C�VU��J��Ԥ)h��b�=i
��&�a48J0���㋂S�LB�q�����H~�H�F�ૹS�>mv�O�s�������;�$B�<g�V���NwH����6d�i���E1�8>l`�n�Y1�7�W���ys�t��z$�%el���t��`�rK�!�+H�hmY� ğ$�<*� �7�w�y�>ͨTX��h	q*e�O_� ��_�sA��d�)�F�ӈs�2����@��}�����g�x�sO~�Ĺ�/uw:��5�-x�.�~'��f�p!�p��PaOI�L��	��#Q<�	��W����&P,Y;Z�9DR4� �:E��ޢZC�{���U��&v���	R��G�˃l8Vk��Ąҍr�����UK��mI��H�C���E�b��#��6P8 {D0�Tt��A����&������^��4+��ݧo�;��L(T���	�?��	#���?�3c��mIr� U�3�t��hns���Yߵ��d����s����]�j��(����B�D�[�8I�e��~��C�C��p�\� PL�ED�9�>�-D0�n��2@f��(6��cAe�V��������;6̺��O���i�����h�&*�|��bQ�?/�����oO��_~�����m��`���jm�UJ�8�+֞~�a�C]��u���v*\���ź����l�f-��b<�i�#�);ra�W��a�c��8�I��4��c7i�NV����X������[��G��#�|�غQ2���9&��RV�=���a���;B!�ػP^����v���ǧu�c�,���R��O��:S�}.xk��aó������vy8��g�ӡ+��~���l�]j1���'/�FC��t��ژ/Y�34�8����H��!���y����g��Vs�^me3eHU=|���}[ �DY��������g��{-R΂�o���⚅�<<����/&�ۺ�?Ec�w�E�������f�-��O~TΆb�nr,N�"�̜�����XNk�/Ӝ�!F�1|��v����ʍ �?@�|K����C�U�'��{w�n(]�G'5��X�e�ִg10�(�'A�׺�BI�yd���-�Q�g/�g~u������Ie��N�V�)������eÀ�Eҝ��R��i�w|�c�}� �@���������˕�k�@���@R4�� ����&38&�d��Y$���b�>6���@�lio�}���WQ��H�ɺc_�||�/g�}J<g�_�^ŊW�-_�A눊Z(��Y�I��T��~W����{	��2?��V] �KWt�F%fɏs�&�������h2��:�qh�݋�)��]x>��25k	��,͇�#��Ӿ�t�|�m7���ߤ;��rF�ofp��v�������+.A3f�Bv���W~U�~�n���.��O(�˜�E�cdD�z �qA��*U�A�8��$�Z�ao��X��_|�O�Q?Րr���_`u�
���#D�`ѪTaa�q�;��S�o�����2�:��s�P�����#������oV�*62p��LK�j��w��˿�?���rG�w:N�v9�|�b��렐��.������o~�������;�6רd\��~���嬸;j�K�K���x��_��-8�dʀu-����F��:>�v{��|5{^�c���G���V=�e��Q�U�5P��L� �Hl��e��]��\GNh�/���i�X�����\�{�jҡ+�6a��Z�gk@a�l��ffR����� n[�\��ĵ�U��C�BLU/�3�[��7���Q~l{r�ԖB�I���L)b�x�!� 1�G"�U���/�o��Ȍ���鄌�;ȵ��^��$������~TH�X�Bscf��=<~V ����V<��Rb@�C�xx�W������o�����`��WR�PDe^�z���q���oB��)�+��6�����q�R��0_��r\4��S
����<��J�J�S��|$�L}
#�˜>^�V��%Y��%��ݱe�9a3�h;c��W�i�Ns�c�2�gk��?��j�s���t{���$�Z�Ր��@�����q�&lm��M�+m��}��K@'�!��]�N�$/c�:g�ׁê��(AM�e�El��`s^*)��,�����"����{���/z#�GD�6�r�'��#�ia��_���Ō�xXmg�H��Hȳ˰#T����m\�<8�k�X��Z��gփF��w��� 2&kƂ0�]͑�J s!g���n���S�15m��Aa�7WG�Κ	�黣���P ��Κ'�����en���ؕ��q��>v)��-뤳���R��?���akl�K�9���0j�l%����@��'�X������"9]6�C�j�2
ZK�0�n�J�I�Y��@(C�?pt�(c�4�Ya�#l��v�G����!-��	���޸tE�~�_6�ˎs�vA䣊�*��s7HE�<5H�J(SsO3�g�xD�&ӧ�e�(��*N`�
+"A�w`��������n^՛_�:��m�c1"�v��+t5�[�����r��Tl^�e7��ߙE~1V�M_�K��a����7X�JoCm��U�L����������3}�e�PdNg�����x�Dx���4�4[U
m���Y���A�]A����êz\��6+Q�IdG���u�뾙�M����*'��Jo��pZX.��a8����~3f0���E2q��ƶg?�#���ϋe����'"���Ύl�$M�z�7��$W��<[?=s�{��G�mg�[�xH/����mF�xtĄc}�|>.�gn#�7�Py��t�z�З��gq~1��i�Rv����kV���Ĉ%��
-����� ���������F$E��`��\<��~��?�M�c�|ed#4���kG��+���s����XoxCbI���>�&2�J\���P
.�8�ոݧD��[c��a�����i���ܬ�[o$b�s�j���YU�Q5�9읱~J�1���]q�MtN������8n�/�|�N�wG����jal�t���N���a���\?�[�RiƏ�\�����_�[7����ָ,`�*�<'�?T=Em�HȘQ}^m����8i�/jr���Q<$��7[t������+��!�;gW�%�� )T�b������w��z��')�������ک�n�Z����^�6K�:lYd��˸x�Eg@�Q��o�̏#�0�]����<�7�Q(Vl�?������TiJ=0+�Ɔݕ��� �A�W�l0�����d0uG�Z� G��ӳ���3�Q��U��b�J5�&'ɝ?ϝʅ�@ \��f�ɶ��-3�\48V�Э���T�fg�bP���6GFBr-�|�X����ݜ�ʌU%/��e�Y [�Cބ��cg��;�O|-��Bk�bR��Ԁ�j·�����2J*�Cq�s��K��RSuacD��)W��N���6�kF�S�x��*~���t��3lY,�p�h�S� ��)Z��u�����/+�H�o�����ʼ�<XxM��v�{	�A�3�T%���C���@���#�뺤�
v�|�=�D�D��`;��1q��'Ug�t�G�t��û�f�`��Ґ:(���11��.�����M'!)�rrt�|z�Z���v��g�y�:'ޚd���n����a�ض~<�s��kk�����_VǤ��P@����嵢�sD�O�4Π5ɝ+5�5�4����-	�*o��@���je��vb��o�޿�����j](�]3��\�/O漡P�*�z�!�r����$��^e<W\<�$�	��薾��������}�X�61���;[�&%��i�{��d]ȃ��힤�֫p���\�ICiF�j��׫jh?���ڹ���,i;��p�8Y�h�=�zZ�����f�x:n�^�y5ԂDޚ�:�!�Յ �}�|��|=������u93�^>�yPY0�)���80O�;��rby8�F�s��p���q�}_2۬�5z�b�H�M�Z���AI��T�.�����+��L�w��F��gJ�W7��x�'�5펥������׿�ޙ�Z1�B[���Ai~Cʅ�h�8��N߶:���~��Gw��f��X�+��~`��2+�����dw�\͍6rY�Ǡ�@�+�1]��b��x���YY�Xl��@gy<��Oɷ�Y�sVa�10��bb�.��q=0��;����Q3���U�/&_��P^]i�r\�x����o������6#�֨�i:��G���r��K�X�k�Nn@�y��X���W
0�X�@�8�������A��f?@?���������!���TnN��e�s�V.qg�I`�e® Ya���8]p�C��w�<��oQ���j����\W�f��K�RG��uJ�d芽�W����׿t��C[��I�ovs�?�a|ɥ@:n�v���v���#�D(Ġ�l�����b���ϔ\��H ��_��h[[��.�!�7�N{�Rq�?����_�#��Ƶ�3���D)X2�_�J�Z{Կ�X<�F�޹���l���������8[��5���<9l���˞lv��'
�6���э}$;�tY�>���.H3iP��-S���B��i�wH�7rn���ezxD���c��@�Ҵ�.����J�ڣ�q��zK�Ӧ�>=x�1y
�cUdHU|��'oH��^����6X��ꞃ�-����h2L��Q�c���$�W�v�h����kׄ�l[�W~�o텵;��_)~#�Ά�]TN"�)�.H��@yk$b~�3�u_���)�U��g���w�����ӿ�~�y���s^%̠��d7����<�iwx&����Y[�T��׋xy�����P(S��v��y�2[��L
�+с�1��	��������A���5A�ZW����8�t�_�Z���q���ҧ��g���$\ �q���qq>o�UF��z�-�R�_g�w,fS)P������]ԉ����Q��U�Q)-����MŬ���~���*�]���k�@\DEI���[	
3��%5��
)�!��`�PiK�� �!��bz䘩��p�v����Ƶ����h�&ڮ`V�+�L��^^V����:��&�S�<w�f�c�F��>�(]�|���{���S�%g�OH ��6��� �Ȟ���u�M��������Iڇ�Y�B��ƨu��Fv��{�I����L���ao��6ǘ����I߶_\k<   ��]�]F�
�vsM�\����ELjx���>ъ������Ȅ�P���s�A�)�3����s���"Q���hUBrSeK�����jy���9�l�0Ē� c���� <^��C����ΰ	j�]�������}1܊����=c�G:�X���#1��a0�{����=n�חH�Mb�my��M�oE�d����"���Ĭ����������s�h�gRI�`��TՋ�m�;Eo������E(��`�Xmnݏ��d����Qgm�k�z8o�;�'�^-�7�"H�'
���|�����JW�#�.4�v�PA��O+���i�Z�w�2bjm�_��7ڈ����Z<�i4��72�8M#4�Q�սTd�q��� p'����{�ݫ��*��Z[����!)�G2�w����w�㇜�]��|�����k�e憼$m&x���px�����|tCN�_�-���S�i1���I]�*�d���8n��{�'�]M�\K�����ƫ�Tq�L��4�M�
k�O���NN�m#ֿ�W��a��KD�A�b5'��5��4��㣞����`O��Ě����>>}f��{�,���o�̏_z���Ru����R�~��v�-�X�M^~�u��Q��"�1��APaQ���Y�+�k_4��N'�fL�bb���v��?7��r�w��Q�v�\q�ol���n[r����*C[��<^����ۆ��i��L�4�	�W]��������������|� <�#eAh$�HϜI��h�����w?|�����o���[;�Y��I"���ƽ�ޞ�p��7j.D>w���k��M�C�Ӄ���s'qSR����Bע�Q��ĕ��p')�.hy҉('w�]��H@�<�U��La��O�m�b]�	&\v��F�hRUc��\����)�<����<�x��8�>�؅v9ý�<2xwJ�X�/1�oB:�MĿ%.S����pX$%tӬ���Ɓ��9<'��k��-�@��F+^����C"ʛ����T��+���an�o7�O��}�;�	9�4�H��Ow� 2��a2\W����5���܊��A������"^���B:podSs��;@д5��NO�E�	��m�wT]�%�jb���D����y�n� �=_M���~[�H���eCi�a^�q5gu�؀�	w�
@X��4�o��J�dR䔝�\��"ѓ��$�蔝Z_�1����{�׎�` ?����?�G�Uu{������h��8Q�؄T��G�b������W�u	�4)���� YM0Õ�0�.j�-�d[��c�����i2X|�M���=�M���.�ԣ��
�tV#zT�%d���+Qj�������}k�#	'��-c�p>ʘ�=��_d�ݝ�%Q�e�P�G����]d������Cr%+��&"r ?�w�O������q��.`���
B=�ޅ.�mM.,�-�����k͞�-���?U���f�:|n��K������	 4C=�C����%h��)�o'd ������#����dA�"��y~<��15�y��@ގ�!x@.���? �������5c����wlpO�����	ȶ)0j�=�����A����L��n��`۪�α�x�p�MmX7o�$���J��^�4�m#Q��W��`[~s�b{��{C��t���:	j�NY�K2�	��
ݍM��:�)ـ��  ^�@qW��_��w]7�����SZX�����Um�q#��fV��(�v�{��0���*,���/���u�΃� �Q�/qR[X�j�#�r�s��p��}�7���?
NRfp�;��P�����-����E{@�硲��flxS�d&.�s�Q|vd��_�[l+&�ƠO���)����1&�cES���4��}�g��4F�bj�W��t����8"<IǕ+�~��Y��}v�֌&��i���B;�W�N-��������\�Η�t�A#�N�YZdG#�l_mJc�8_��[*n=,�4=0�ߓ"2���v7Zo�<]b�����&�i�\?v������k0�������t�d�p� raV�n�ō�4ۮJ�c"��*i��.D�56k�#Eiop�����xL�oq Ix("&\���4cm��뽐��QW ]��&��=Kr����&g7����v���$���?. �]7�V1N8��GP}E�/ܖX�9��W�E4�j��,��\۷*�^9
X�����jo�K��x	��������������E����_`J��qM��AD�̸G7>9jT�)hPs�.T�j�<*���k�ݥa���̞n��W�
nU�����W��ޚ�|q2��=���\����>���C��o���yq�Fel�$���.��gO����iM���O�~�pG��#�P,���Pj��e=������t����Ę�2���5Smq�9��|T��j,YJ���֍��[6���NY[Lwy�h̔�2�:�؜�݋�*|��@b44j�䠫�
�U��W��+��3����M�ܢ�Ќ��'��t\u��.��������U�x�=o���j����J��`{�$I�Q�X����^UԻ�9UIP2;�>����6��k�!���ǱGֳf���r��fs���՛ף7�؋t�L�$�&���R.��,a�vT��ʍ#�aK&���)�p���ǡ�u����n�w�ձ��[��1s߶��F��>Uܟ["/��	�Ʋn�%AR�no��56.��O��u�E=N{�Y����,5���c����$�|��l��iN<\�2wo��<�4d�ދϩ��luԘ�I�ԤnT�ҡ0c���.-��b�27N�l�������q���V�9���j�U���D3�����O��qcPY�H>��Ɔٴ�]����d��7�i��L�L+Db.&^	�5M)����9!R�o�2�(�FҚրw�w4�^Mz�$M���bt���������<�(��G��O/Z#�b��3�z1	M�D3��`щ-���/s�$(��'Nb�
X�S��e������jz����R>�XH��$tc�P*> f���Ѿ� ~�@{�97g�Ug��c�0�8���J�Ge8)6�4k��e<�Yך�_\�2���"Z���G@N��A{ʩ!��Di��.��˭?nL�D��{y�?y������D�r<r��z�A��o`5���K�\}u����&���g��sE���s�Rt����\�ƨ��f9p��m�,'��ϖ�"ᗵQڙ� ꇩ8\�&.�f�/sX�l�1�fx��\2F����)V�(ˇ6��?�~�z3׷��|���Q�6�u�_`�"�b��_���Ȓ��I_l���L�aof$�tS�jB |+��^}���#��,O�7�2X0�Z?���$��[�
���`��%j�3�����.�K�q�Cc",�fD%��:KN��o�.M>5Z��h���R�o'���W7�S����}�ڏ��W��cB^�q���w)@_|���������"\fO���K��}�v�C������G9�ȶDҦ\�O���zfT;��S}�&S �4��QE�iB����p���gV���5���9����_]j��oցj~��������Q�R�����^���%֪�(�Ȇ���ݑʝ�ׅZ����o��굂�s�kB����9�K�f#S3{�������m��~�����%(�@�?ˆj�t��Y�C}q=L�m��5�b��kxQ��`dz뀷�VTDSÁF��~���򚇏Z����c]��<ۆ�ʒ�n�7M|�I况��\v�����)�M��'}x~���/8W�����F_1�]K
똪��wh{>��O�"��abFl=tX��\�01�;��3���, d�LoQ�~�6l���>���2xbU�>����k!s��Au��-o�q��OCh0B��wI*�61��Z��ؕ\;��ѡ��J�^'�4RvRݞ,��=g�6fsm'�j�yWf�g<<37�:�#[H��B�� t�@��`n0�3r]a�wG1��R�(��f`7# ��~[�80Y��L���S s	��׻¦�d���Dq0L��2{�]����3?��-��t���Zq;�^ƝZw4�R,���h�F���w�����O��C�"��wJ�p�~�D����_|z��u�:��=��ť�݋���֋�K��� �U�C��^������6��g�j�Ͷݱg�B5��0�ټ_��Fg�x��v2�s}�ۤ����}��ʜ@��hs��� ��=h��½l?B� RXb@����)D3E�P<�;���jI_�{fG1m��<z&�t
��n�#�;�[������B�U��XA���mp��&ؐ٨Y��QH�U�B� H�x���I��a�c__�A�9��0�dx4��Ɍ��E��g�7�m7V$��$5�ۙ����4_�8�k�~�Ыs� �D�S����t%ކ�>`-3������ǚ�Y����ó��eәa��Ş��rLvb����x��'樌��E��V(��U�xQ��L���_=�%��?t�)�m�X�=A��LeH�?��~�G��,9���%. ��f"�~�N���
��0��/�����k[x�/;��8!��|���>��og_1�^b����c�Y�E.�| ]�(,��d��\�̉��|�`�̰|��P�%^�
R�j�⼙W\1[����|��l�|^�HE���̶�9T�*�D���)Z\������ �0�|ųf6    IEND�B`�" �5 ���    AaR    �4            @=��4 ���    AaR  �         �  �  P�" j$ �4  �x�����嵆=���̞=��}�q�1	��"J�B
Z(--���(=�����{Bwwx����w�&���_�?׵�O�}��=�^�A%%%�K���>�ǋ�ﱗ�<�()�O�>��dP�?��)���$���,��pp���%�+��̒����?}���_�	�C%�s_Y���%+���=���HI�y��������g_�
��'��6���/u�A���%�5��;���}����9�`��g���Ͽ����_4�8��������?���/��/��_Q|ܼ��l,��%߃���g\�>���e�!�l�������>|q����u� 7_ǉ�3�g���{��o���w�lZ��m����n�Z�]�F�ׯY��+V4֬\��U�Wl��>��W.[��K�ip��xl��s�X�t�Ac���+�,[>�W�:h,^�Lcђ�X�x	�]��,\��������/�X�D>w�J���V}m��c��-[��c)_�H��¥\�>[!׀�kZf�7����5�V4x����F�w2���v�������{q�غi� ��lmX���5Ì�a��.]�D����r�}�X��$��X��8�gry�X�z�ƊU�5�e��|��y�/���Z?ӆ�bny�a�_"��a��]����k��b�ҥ�ob����8�{�� '��4֭�p�`y��K�`��m�ņe�K������w������ ����%V�]��j�ځ0\2����x�_�'<�����/Z$|.^��d�����X�l���g�-a�X�N�y��0x�7��5�:�ڿj�j����|%���W4d��m�]���k���׭��
k����4�,�p�ظf�A������.�۲q�W��71�s���Ұl�����X���}<�M����Eq�~0=�Oa�����5�[�Ac݆����g�]]�\��lXf����q��J�>X,~F�Z>��T>�a���-�}�4�-Z�a�yl�3K�����F���{�%+��s�y��3v ˌ�+64�/S�ɯ�MrG6��撜s?�SK�g6�Uo�_n�=�8�y��_�s��0׋���{�g���k��Y��"���3A�P�=��B)o�b�</O>�ֳl�gr����M��s�N�$Ϯ���Cs�/�?ar������?ŧ}�������}��,�q�f�7�l�V([d��'�łǟ��?�뫖�Q����/_�������S�ß\�EO/�m��c<�ޏ�Mv�6߇K~.�!��!��m�����}z+�d�p�}d��L��b���ȟ	n�{�;�����wmX�I�o�u�l�sW/[?���[��c�ްz֯ڬ��ܶq�nة���민��Pw��W.S��[p{��z���o���r��m�7:O��1�����	���ŅO?��g<���\���}d��n���ڹϋ��t�w�>|ʼ���yz?��
�/��k�N�.�j��g�zZ����s������v�؅��o���r�����$��T�W������έ�ի�1�^Y4l��'yJ�撱p�b=gӺ-غq�.y��:��[2�B��K����d�L1�F��zy�qs��"���]����07�q���<�71�f�7�0��ޒ�u+7�r��m�&ï���2e84>�,q�u9C��S�˦��@/l��|�1� ��e�l�b,%+�\�z�k�\� ��}n/��ۏ��W�ͷ_{�~��W4R��I�)����?�
���o����Z\���㎞�������;PWY��a�1|�`/��AC1r�0����#QW^G�A��Hm�&��v`����y��ŵW�O<��~���]?��x����w�sغ~�<�[�c�6l��g�\��B���6J9�e�<�r�&���u�Rce���)�e4��O���LF���~�.�*����}f��>�F�)2F����fp�:j��=�H��4���{�><����8�x�7^}]5��a���F�O�/0�m�咬S��\'�Բ%�'שq\���ѵ���(��K٬.��&���ސ��}�c��.����}~��p��g�Y�c����hnE.����@uY*F��ȡ�1�d�.�F�����	2<�d�Fui9ʇ��u�\W+U����k`���ks�)]���q8���k���^��������OX�)?�������}/�m�����J��g���������߯����G��9�KrL���F���(����y�Url������x�96��L.��FG���q��=�a�h�Y��9��d��n����C�l7~a���+P��'���)o��5��`�s{��}S����>�\�[�n�~^����H�C>��G�]w�����������\������SAS.�É��
�k��PY�*aj�2���T��W��������:+v���$�~d|!�Q4��h�$��qH�h�nlEO�	�
-�Ԧ��Ҿ �s�jl�eK<	��
{y%�,�K᪪A�<O'�9�\���ۛ��=�a�<ן��<��og�Bc�9>~�})o^�g��Z�Le�Y.¢OK�%~�у'�|6=c��z���ZV�3�i��<s�|Q_�X,ǖ�9K�)[Ƨ�c�_\_��o��x�0�z�@lX�Uc˺��]|��;�lٮǋ}��s1�
��wO�e�6�m��x��>����h�-f���Y�wݳ�9� ���&�4�y�me�������}��?��ۢ�䘺�� �w��߸��q���q�	'���5��ZS�:9|��M��%�֊�N�r��R�Ոۇ|,�)��[0������s�L���d-��rk8n�&�8��x��c<����mhOe��ѕ���q0g�!8l�$̞4�;њH)�)�a)�����Zt��1cq��9�ѥ�������)c��7�R���D��ǟ��wޕ��E)�v�3.�k�=���xdSwa�s�0����͍��Od�pl��l�e��,�s�
��7}%Ȭax�Wa�Kr�}d�|7��~g�8.��&w(�����d��,SK�{�]|"ZI&�,ðJF���|�B�<�0���Pt�O���c�J$
�q�aFˤ|/�*2L���\����2�պ�sjD׸M�=v��� �b�g&A6E��G�@.C^�M�hIf4�n���p���FVxL��E�I����~9a��r�m�����h��֝�	�aD�_3�;G1��3��Ϟ8I������d
>����;K4*G�"��`<   ��Q8qޱ�������+����>��|�޻��3쓼���L�.�9�#<��zB�7L��5us<�D1�_Ś[��n/Y?�05��n�Y��&�m����z���%oZ�Y�M��[5�N��eP����Pk�75�c�����g��/��������8�3p���a���H����+�C���dRx4���}��	zS�� �T_]�K�Åh $yT�R&'�Q�����:���6�ӎl͉4Eo��)e�WoCTr0�=v�Xv�qz�ڕi��zY���۴'�|6�ζ�ޒS����\7<�{D�ّ�xE�c�dp>R��"Qte����1M͘�ӋCǎ�̩��3��ه��9�1q��BAX���+��t�e�룺:q�'�ҋ.�m�ޢ\SC>z�֍|���xn�^�*��e�ݓ�.�z>�e�<N������[��n�z/��d��a��}fI�5z\̱�'&��a��_�ʥazۦ���y����2�l�$y�sx�W�{��7u{���x��T����܊�/�>N<��Dkl�5�J���(+a�3��|�++G��ah����҂��:�k]����s�љ�B��)�G]���D���m1)��9[D�2�S����
�,��;YGD��N����RH8�[=��|�4x�O�eU�y[�I�\.�F�ׁ��AG">�M!�5���s��O�_gQ3>���|���/��%�p5��]�;��a���PB<vPG�)�C ��p
9_9)'�L(�~��ƴ�0��]��ه�ys1w��>�X�p�̔�)���
�N�u�F�׎�y������//ľ];�_�������O�ǽ�*6mڈ�K�w�%�"����߇�Wk�5�a<�`!>�˗��}�.���-����[�\�_�v��§�����d]b�8��̾e��&���^�����g�|�۫�ױN�y�:��u���6���u|����}���Wf�nب9�#�?���_����忕�?��{<|�}X���a��ǟ�O/��M���\���	�*�5��Q�h�_�ӠӅt0��'$�'z��m�ܧU�)�F{Br�hVY]¥_����s)�̕�.B�_ɜ)��T��1�r��"T�FP8K����B$���/,̹lH��iN�a���������|2K?@M�W��x	}V�9I�熽�B^D��n,.χx�pRN{���D�Π-�ESHX�2�]ʊV�lrw7�1�GGF�w<��BN<v�<�iLhkWo=���pʑG�ԣ�����,)������F�l�P�b%�5�>y~z�Opן��s۷���5����PC|ɶ��أO⑇��=��Y���g�Y<�5��ur�z�:]�C�G6�2�[�N�$������1�M��,\��<���>�꽩#6�z6�U�����ÒE���O������_���T~fW	���Ւ�/��������E'�7������d>�
����؈QmmHğ�Dc���Ç\$%�~�x�f�Yd�Ki����s�G�xo�M_�����%�?��?���h`\^㩃�R{]%\V��j��7�^S�K[u5j�o֕����ɐ_�90rP�<o>E��Y�ɼ� ��_��x�h,���O��2�z��{�R.4JYA��\�CF���
���{3��k�sG�苣+^@�C�@�A�ϝ�~\��|n�x�I��Ι0'>�>�(�s��m�?�̞6�D��Z)�ģ	�s�y���^��>�w��Go��׿������?�'.g�"����_V_C�~e��X�i�6)�whl\���I�Ͷ8�l�a�����<���#�k����QkM���3��%���sx�G����}7��~<�ȣxT<�S�>�Ţ˟������E��,�<k�!�W��F�񟭙<2�+5J���ە2�#��z+"� 
r�3��h^T�Q�p��9t�D��r~=�FV &�A��r̈:�Lw�ക*����CDW���j$�+*P=b���2�l0�.JP_Y�ڲV�B�ê�8���"�?��o��,����oF�M���y$���	��pϜ������I{�'o��h�"9��%�EK0�љV��^g�����9$Wo��ɿ<)���n��m�8�S	���8�Cp��G�����'��ys�`ʘ1��Ӄt8,��R;����b���n\t�9��u����\g�����v�<�}�/�a�e�����#�a���J�r�Z�x����5�$��X7&�c�m���p_���(f��u�%^~�E<���/��{�U=~���T�?|���������`���{>\�n{��HЉhH���>���ng�F�o��[��VX�m�	a5��#z�Nɉ<���pv�¾��T�VJn�M|iME9�j�vX����Ih�Be�P�ra�t����@%�4J�P6��*�|W��r�|�Xʼ�ӰW�t���w���2'"֨j{�S��r7�{��>�Mo�y��W�o0�?�C�e$乥/n
�5��БʨߦGi��Qp��nB�/��<�m�
�W2����[��f���<Sy�M>�VA��aD�⻄U.Ƿ�c�ر�=y2N�O�7ϟ��8�̘�άx6�䴢Ϊ*�eJTs���p��挓N�o��K��oj|����͊�O��{�I��
�m݊����V���?�m1��q)�[d�˕�WH��N��I.ƶJ�=����~x�}�Y�f�^�^�a���>2�q�z<p�}��_�֠���>}߮ݸ�����ת-�֤�K$5�))+3aק�&bn4ԏDu�`XE��
���Xa�����V��׳�L�j���*jJ-�i���	g�5V�{娗ܑyy]U%j*G�b�0Xj�e��5Å��Y6墹�+��6����%�l��YP5܆�r�~T��V��N�e�����?h�ˠ3�(��@�'X�md�K��:;�K�:j�r돫O�'���� ǭq�9g��\�fw�N�	y4��h���oZ�M���������[��ӡ��=N�U��i��1�%C�������G	�SD�g���v�8���q��G�᝚ܒ�(���ڑ#�wQ����Ξ���C��/Q/��O�L�?~�#Y���/>���6^����=����M�,s�m���v��k'4�Ʀ~��c.���az��xH�5����>��عe�r�w�/��Y�=C[���^�]t 'ްE4�Q�8�O��,	a�Ge�CpUG`��`'j�zQ?" e�[rlJW��Z4���ka��u]�R%y�W�mº�Ҏ��z���:��j*+-����R熵. ��QS.~�.��������$�qj� �F5�|p�Ga恧��[A��ryFŧ�Y�K.F/@�ٶ��	j.���;��_����3ި�9���)��X�����mλ$�e�E��k'�%gm�����v��=�ZF�<��i��Y�ۜ�I��z�����=�[h�!�����ՓO����Y3q��p���t���0g�$��-���U�},�ʲ%�Q��g�\sŕx������%O/�ٗ}!럽�>~�}���xa�^l[/>a�
,{f�,x��z���X�h�.W/Y����b�J��U�>��a6m���m�>�����\�a��!�I���)��.5�O�_�vڤh9u�DQ_�r�Nʨ$j��0R���2£��4�n��¨�s��~ʇ�(��z�2jX�]�Q�l�ae�c�:�A�<Vg���֊���H~V%���Ԇ�aV��c�P�F]�<C#���G� �kF"܁q퇡7w�h�x��h�u�'݉p�䟒cE�n�}^�u�d�u��ki�?�0�K��h�d�a�0��3�5KNJ����6A�O�.^E����R������%��K��uD|��w�|F�L��4�m�����/��pK��"�IZ�3��-�H���:��5	�hz$$#�̎oo��Q=�5a�8ߒ��q��G��I�߰�A�y�վ%�e�pʵH#�3cn���s�����||����S|��{���M[��5��X�B�ۆ��k�����f۞����2�н��?���x��'�YJ��[T~/�P���?�--G�𑨭�f�P]Q����u�]ka��[�T[Q9�Z�@��'\R�,�����vɽf�A|(�a�'��L�'m���d���'����s �X�XJf�Y2%G�N�=%�#6�4����.菱��ǎ���k�3�8q�͘��3�M_����ѓ����GJ.�.~!��|^�x�ƀ䫒_�a�s�4s-����l+ɸ#�ݨ��e�/s:�����uʺ��/)9@{�	9}���$�S��a�o4$�Z�$�u�����
s�y�����Yų�GUc�9u�L�]��0���C.��y��u����u(������jpo.��m8���Ǝ�	��g�=�����S�`�x��D��!�?����nlĩ�]�p�X�x1�y�%��O���g�i���^x��G�mm�W�{��[wi���y��{^�,mݲ�7m��t�?,��0Ǧ.�u��`}�&���"ϟ��Z�C�+�Ue�ʯ]�l���L"��h�_�kP�+�d�~�auI�_�:�QKuT<AE��d�*��80|0s3�x�J�Q�"�Q\ָF&ҍ����b���bL�rL�^�9���	co�ܞ[p��?bN�����/�y�E��<����=�pa���i8�D�"�������)�=i��1m���h�&ˢǬK������>�x
�/9f[��K���r�A~}R��ċ�D���ú�=�1����x:�1���g *����N�ŕ� ��Iv򝨿䓺��)�?"�].��$�D��x��*�-f��#��>[a]����&�3D���9ǉ_>u�\�v�q8Y<���S1����ӝ55<׋�n�~�G��_�
kIεu7>z㽁>����~a�~�}��l�c��V���o�q�lX����-;������ò��_���ӏ-����%w�����N)�-���h�M���J�K���jӰY���:|�����L|Ay�,E?�W`��2��U�G��exU%��9���K����ࠓ�+�ݖkqB��8���|��i�{0��$�o��1�cЕ�-�z�\癒3MC"Ѝ���ڔ|נ�n��C�A*FԠ�R��p�̓�,vJ9�@�N�A�.�j�*�I��J)���z	a% >�^#�
j[5�2�:lu(���<��5+���_���0��
�V�L�! �ꨵ�ZY�m�)�L�H/��đr����?iH e� k��E�~n����:�;�Hӷ�>Hˑ��tg��c�c��/��6�`X���	������!��k�[�Qt�VO�l�l�lk<�c�OĹ���y�����NtfR�:����[��6Dʟ N9�8�����]�떬>�B�ǧ���>C5�}��_j/�ݾm��v�^?t��x���dY�0�EN�2L~]��䶮�J�G���Ç���W�<�Nr���zɩd�ڎa��1�d��h)ʄ=&l_�v��/�qrf���#�3��Ü�pLϯp|�q|�_1'}'�o|s��br�ߐ/�M%�E�>!K7�u]�V��V�ը���B� ���'�����;���%ϖ�N��NbTa��X�����̗�|&�Q�pTXe�!�[�?&�wc����3��^y��pR�7��K��}EGŋ3�o�GH>�]�R�p������W=w��CDƑF֞G�!��>Hd�|>׹O����8�ù�,|Ȱ�X�Y"�I�K��J��nۼ���d�,7�NsY3�{���z2.>�t�� y��ѽ��ٵ~��nY�pmӽ���ި�b��أu�a�-�ݽk�d���&�}
K����Q�1�1�y�5,;J��jEmI���N�����>xCƣ�sZ|'�7~:��^���_��g\�3���9�78}��Q����oű�����1��tLl}�8�M�ќ�G�y�͂���w�@Y]	j��Pn��Z��^��^mˋ8ú��Y�䠶{�����nmO��
��N�!�-�@����$��n�&�^Sg�	2L��ә��e���`X���6N�Gn�6i�s�"��jD��*�Ơ7=����'�s<��td�ŧt�}mF�+��##�'-�iDd=f�"ڐA�.�PMB}�iOg��q_��o��r����1�y�o�����	2����K�}$ؾ���lo���.yi�<;M|���5m
����+�@gJ�O��@p��s��h\s�L��ӎ>�s$�}��8��#p✹8a�1�փ�B���j����住�G4�}}�����ضu�@����.}٥�`]�a���!I���^r4j�C�4;�Tx�-i���	�:�;�ǉ�~����-���;�]�2�z̝pfu�g�+vZ��3d��g#Pz��'�?y�$j�E%w�U_L�Q['a-�'T�k(����ܺ�^4\5N�*P?R� rx�,φ�����G�iC^�5۵�M~Y�2s�4���xDw�*��`�ǦO&YfNG����:-�0=)f��0u��@:�-R^���E���]��2_e#:QN�4�	e�pT�ΉOO*�gV#�q{N96�I�	�	������ZG��g���m��-�)����k�Kv�0��Nf�o3�j$�Nn�'=<sдǩL7����7��s���krlxӘ�avR�(̙2'q,�8�͝�=�0�������_�:g�[�̶��[�O�eF1��d����!M)�!w ���a�ˠ���Q5�+�Z�r�2�Q�L@6>1_/\�F�kr��&K�����!n+i�:[�xK�m�~��ƥ��U#굍-�� ,�#:���U�v6�E�eo#�n7B��٧�m�3�\�YfEuI��r]]	�עZߐr������9҆���b��#��l���k?$�x��'�e15�>"���0}8�v����/�O�˨z�=��j�w�|�\��q�f�D4y�C��$��L��r�K|P�y����-�y��F����[��i�-�`���_��^�G���9�����1��:3�7��e�e.���֨�>�F!���5��~�7,� �����X ��(:!=��R��W`��k�´1�u|B}yn���x�������[6��-:����{~D��0LOQ�p�R/AOl��*��KԎ`��N����.��=���`h�]r5'F�V���2�bpX�A)=�'A����;��R�w��$�a�Z*,�#�a�n��m)e�אDsj�h�S<U��gcE�c���*��6��jl���%o���U	�u~e�V��6K�MA�`�]����%���_�<M���ZS�X/���h�Ms��n��R�y�Y��̉������c]�Ǟ�[����x~r�B\q�S�����qW`j�H��F�zh�C}���R�r&��"�) hSB���Wg�5ϛa�X��&s�u���r���s���Wf["i=W��%�r�*�d�|�a�#�d{T.���i����d�ٸ�8֗��v"���;s�hJf��ͼ����{��!��شq3V�Z�cع�?�}�=��/�y}ĳO<#܈�
%ES��V!�Ӫ崳ڡ�!oL�ٍq��9�A�(w��<����rɵI���Wxmpk]3�O�F�;E_�pKN���#�VQ%9�0=/�t�RZ��8�j���Sʃ������)�4�FG�	��<��}�sK��O�s�׌K����c=n
����.,�~oR��d�˲o��i?wP끵���6>'������_������p�wHy+�J:h�]�B*/��ot6:���7�l�O�
�ۆsO܍N݇������w�n|��q�ԧ0�����gDW��p���'�����$ơ�̃�� �$|�<����~�I�e�7#jB*��r>%��m+Q-���:��ۗ�r\��Mo��~t���s��+V�±U�A
�:��h���E��N�ám3 �4���PX�'u	��9�?Zs��❃���Ƥzi֕s|��8�aƤC��M���v�Ŗ�[�u�V�ݾW�0�����~����a�IP��'1!�`R���
<un������V�Bm�c��"Vz���v��
�l<   W�Z������&��ƺf���+��L� �����u2�o�������]=�܊C'LR��O��1��8|�cP�2�aa�"�D��rXŷ7�"�d��!��u�|/K�F�DA�w����qxkH����d��ql�������ɽ���H����h�[Z8�	'd8v")��1-�'���w�"\z�c�2�Z���J�}��)e�]�3q.��"�?m���u\~�˸���ޅ;p���p�1�c�aŤ)�"9��0�*|1̎aC0r��R6�G���t�x�b��E[Нꐼ�=�YoWMf�B��1-�_��Kk=�m��^JyqȺ�c�ҙDO֋����r���h_$�+6�E��g�����<�+�!�O��>/:�o�U�[��>Ϝ�阗�LF�>q
������k�ۑ���c���طc�2�1p�{Gv�|�	�� ��{��န#�a�_2����0�X-����9:v(-����<�)��m�	w�I���wȨ1�\ԣ+߈)��q���Q^O9z.�?�L�,e�]��n�������n��6��H&��C���p���6�%�'�2U�K�a�y��ᶫ҇`}�G��H�j09��ؑp��|��
h��h�`2u[�S�}B��o���r�!y�')9n^�5ѫd@�Y3J�����]�&�T�����!V?�~�=��ն0Z:CW�I�;�J\pֿp�9O��˷���g����ه��݋3f-Ù��b^�rL��y����JN�ȒTB_݊��)T��w���m���C8I�l?0N�j��ڨ�֌�-��'*��;��~$ZW�k;fG �v)������ItD�T�G�<+!yf�;�#%:;*��(�	���LSw�9ۼ{�''���1�����a�۱���ٹO���a��[�0�q>���2�_SZ�y?=����֩�}�G(�1�?V�c)w%��׍�΋}t}�o`s�yǋ�����=���/Ƥ�^)G�+����8aΑ�+��W_��2�����:ɺrrI���u���zL-�q��6�ܦ�����9�04E[���%WZu���Q��n'E~�f̶6����	��=�w�I�U�/�v���d�<�)3�c�5G�t����y)�/������!+Ք�7��R+K�k���$*�N�e�l�v���^���'O{���|�e�����˳����??�m\u�\r�r�6��8fگ�W}��TX��2Ă�#+Pe���'~�'ϴ� �C��[��K�Y��4R��v����&�$~ɵ�� &�?���V��Kd�KXl���t�5�:9�nsw�}��7/�������#S/�S�i���\Z��çNû/��^b뇅_r�k�s�w���c��3L��ʑa�a��_5�Rٵ�իsI/Q9܂n�|e�&��4�S�T�Òs1���%�j��Ί�r.8c>�2�[�p�1�JW��5w.����7��#��Ϯ�λ@��O���:5�<�ڔSzb���f��\�9�o_��tћ��3�6*�Q{��:���Gl����brL��t�s���Ѭ3#�P<](�.)��pF��V�m�6��^�}�=�Q��s�Z��׊�_���F9���h?кRy_oNr9��+��TapI�<�1ɭ�yv�0�k2�̹�}'���#��Kq���+��g�o��?؈[~�*~~�N|�[0}ܭR��X��Y�4O��YrO�RN`+���km(H��E�׌�D�x�v�m�����-MhJ��1٢��=��l/6����M~�mi;ZS6aT�qB�o��L�hw���������X_[��$��y��F�<��d}���x~�.���kڏ�mu�'�!�_ۗ��{n/�z�I�G�9�S�<���'����VǪ+�U/Av�#��T*����D�ѪÜ��U)e�+
o}�z	M@��qls:j1�=~����OƏ.�H~{F=Ř�v���~�t�$Ә>v<��뛔ߎl^��I���;�?�������v��2=n�Yꅩ��Cz�+���Kp̧�u�y0�#����7X��1��ps ��G0Z����HKN�tO���-�Q�nCE�8�cQ5��_��^��]�<��b��g�)�����a��bƸ#��2Q�\���r���o
�M�����P=��,�B&"�بp��w��c��e�-W��t�۸����׽��.݂�NzGM�3'����G73В����e%�"V��i��G��[/ag�K�f��9/���1�qa��Kn@�s��8Ւ�W)��%1�J=&܄q�.L
����X��Z����^M~{��e�jkǆ+��K���9l�#ǻ�Kl����
������\I�;�0�m��g�~���ʰ��V/1^�T�\�/6��#�jݪ�����a�U�=1ɑcڗ��0����Z����^ �{~}͵Zou��7�'�\&>�(]�{��8v�l\v��Z/˾��S��z�C�7��Pn�/��-�&Ȱ�h�S�_.ٶ�>����Y/��G�O��a�X2�c�2a�*9���o���}�Y�Do�hm�8^)�ue?:y���p��k��í�ݏoÖ�v�￺�-ۇ;���{4��n<{����?㡿ލ���;;Ec��Ӊ��Ds�Z`w�QV��p�ͮ��V�{�8,�����)c��	���K�?�__����
��]��3�W��K�t�K8w���{m����)�.ygj��s�+��S���f�U{��ܦ	AG��Q);���.�[����
�%GW"��sDd;��ݭ�&q��	q������e$�K�E�;��4���9v�ڏM�v�������ˇ��AnY��y�&]����-�uk���`֯qI?l��bJ��G��D�ao�K��O�H�'vGU��%���⳾�K�s���:?�9�|[�"��]���%�<I�8�b���9$�5�H�j.������%��GM;L�YA�%��O}UO�Hi�^"(���^��t�F�����=UuZ'U���[�N�u���F�;2�I���7!`��%�>�s�����Hǧ��ӃYGcBf*����m?^o{�����}�v<s�S���7`�ҵ�;`֤I-���zD�M�%�������h�������.�J��QQ2CJơ��P��O���{hO\�#
��y3�����]W}���� ��<u�������Y�_��1��;w`ެKђ��mW~g*G�����愓}�=پz�`�pZ�)��+2�a?P���-LR~Y�͹�>�9�d�%���B�<��z	2̶9�W۱c/6��?�0f�6}0����Lݚ�Ρ��æ^�Z�z��������p��������d8�p�5'�	�8���G�ߴ��\r�j��r��e��eCy�\��yb�Ȩ��`j+Y�'���DN�W�ȳ�'�-�����\�K�Iw�*?ƵN�G���d�:�갩�3:���}��Ұ��]ɢ%Ь���c�ؖ��o����_N���{'�:�Y�:�v��=Z��Z���<�#�rE����3G�s�;?������WK�?	��&���[ǭ�Y���f���3�8�F8/�w���{�f�T��{a-��S�6V�;Y�E#c1��85��w��pəw�W�_��߰�����wqߍ������ߏ��.����Ir��9�$�/>�P�F{�L�p�j�!�ݺ�<hGR8��ɢ�G�A�T�+�6����|�2���8��X����;u\���[�]��Ʈ�ضs�v��hw��z�^�`���X?�yc���8��]�K�N�fX5���.<1v!
u'�<R������#��A~�g�sL�o!�$���ɠ�c.����>n����s�ZL]5�F3��_z rKV�:��ZL�M)��^��q�#��l�f4��ox���0�Z�_/A�ؗ=R���9W������ؾ�i���8�)&;�ձ���8e�mr�:�I�����A:�������mg�k@�h�E���4��Anm�Y����B���n��+�cH��%��:C)c����h�P��\�t!�mB�+eXm���hEU�d9��V:��>]��bR�*�<�񣓖��g��M<�;.w��&n��E���=�ť[qٷ������(�O�w�t�ƠvHD�ZݒVU����V��`xTc���H��r9�|4���v�}���7o݆��v}�a�Uy �l����HK�H/a�f?L�Y?��=�o���6r�>��T�z	z���y|��a�R���̡��!�M�'�'�Fɡ�V3̚:1��u��%=�aX�W�3U��b��z���^r���k?vg_�F��U��\!�c?�:�8��6JYݦeX�/9Kj�x�)���Kq��;൶"oֲ���}��a�"��ǔkƾ���F�����:��u4�=Oft�X�Ǌ�Or� zbAtK���{^��$�[�/���:�a�mRntG;��4/�s����\`�!�ӧ�r9N�cqj��O@Rʜl��Mݘ6y6�=�N\��e�����_�$�~������p���/�߇+��3�n��؏�=N��1���)�Q&wL��]�v��r�<s+Ƿ6%c����{o���v�={�Q<����c�잩�^r� ��&æ�<u�md8#95�:[u� �F����N7!z��0�<�lgf;���]�m�����⠎ay"K��bo�������ϧ7 ��T3��K�7u<�Qihg�g���m된�O옢~�3�%�N��@��s:�SK~������/(ü���{�(^���7�{��MT��ϼS�V��Vm�b�ºPγ��*8����%���h�$��x�scI����&9˱f�MftE����pA<��5J��$�f�|I�sL^M�,r���Kjn���,+�P��R-�F]o�J�̡���͝���]����!eO=�z?JK��ǩ�NO<�8q�_q��O��_��.x���_�~{�s��/_��x�|��L�!ym�\�NL�>=�n��N�ny�71��C�hN������~��ߏ�����^V�9��6���uȜۙ~�^��^�^c�'A��ױ/9������^����}Z/Af��a{3��0�]���!����S2Vd�0L�=�yu��70���qï�ܴq����}Y��Ì1��ߥ��s�5*���G�Jb���t�W#����VǾA�΄0+�L&,�}.4�ZD�cZ��Ժ�D��㺳b��;�s�����hD�%��®)َ���B:��9�~�,[X.J���F[�oȠ��>�❬�ܜ�"��]��3��p��d�`��o(�`ݮ����iwJ�Cɯ�i�m�ž1�<�~�^�I)k��b⫃ֈ^/W���-VR��%ը�G�0)��]�g��1G��_�0~~�Z��W�ˋ���_??�E�9��1�K�o1
����;�tQ�W��7���^ƞݻ�[8^�a3Vmކm�:lf;��عy���49��6^���b�6����EWm��ӥ\i��a�եc��ב�03u�h;Z?���0�ט:2m��l��|��l|D�~)㉹_ۨ�im�cN�{���B(�^"�
}-������M��E��?����-��!�M�[��_i/���,Κ�gy�['�̲�܅�6q#�
"M��]����0#>��MY��b�?�r����7S/τ<���<���|ⳣ9�K�K|7�����|�o�>v)�G�?I�>k}�|o�ǵ�j
�,!�OV�����$���b�fD>��Ɣ���U��;*QR�Ð�4����z����;c�ę3�6�+O�%��Is�<Ԏ�DA��y˺�lЏ;��{��ƫ�%v
�k7mŚ�;�u���0�����a�/��k/��~��az	�Ih��p�z	2�6�5�a�K�n�~�m͎�je�׀9���Cf^G&Ɉ�C0>�x
�f�-f�x	rjt�����sd�K���j(�U7��n��úar�j@>��J����Cv��M����)������wq��]�X��҃�#P6Ftx1Ι�W�G�Fۤ\������E��Cl�rZ���!ߗ��9�8������>%��q�L���e�B�`Y�����Ʉ�H������^�Ψ���Y�ǧ� ��t �a>a�G�-��r�t�vS0#�r��wEڱ��EXxߓX��#x��w�����_�=�~�Q�?�8����ϲ2�h5�N`���w�X��8Kǧ�D������9�c�G���_o���v�܁�wb���X�c7���?�Ü��ui����k>��+o�8�b�����M�D��Z�|G��
�s�Ѩ�?�:l����>?��a������,�7�p��V�{�i�-x�r��<ft��7uæ���͙,�6i�a������0��c���z����������W�96u�dH�gJ�҈����+.Z6
����S���#S�f�yG#o��
ìkfy�qx��F-t�`߼���<�:�}���;���K��$��wQOL��5TГ�o��&$���r�T�]�bi�{ǹ Z���}�v%�Z�⯶����3��zŨ�3�����z%V=�4v�]���q/�;v-ǂ���g����߈?��nL�|JeE�s8�[�O��Kѯv�y{�iBw�]�F�<l��������ۯaۖ�ؼm���f�ݶS9&�����2�'�+8��9s��T�^Ky���4m����/��?m��:O��.���t�ت`sK_߯���a�K���0s�^�K֑r�ι�z�S��7�s|d�������ǘsE��]�s�%���\���>r��{k����F�\��?�A���m��@����`Y�:�N�-^�C]�<>ZG�k����s
��6���N'M�Y��8�i4�s����.�����o�t�,si���<����>�:�q 6�OT�dL�!�,��w;�2�P�u�
_�?��a�t�͆}��13���7�%ƹ㲘�;3FM�������N�7�[W�Ŀ��'<q���?���w?�'��F����Ҍ.�T�|�rLm�T�
⑾����<��z�k{�n�．k������5[�ܞ�ر�o,�6�a�>�0�9w8w�p�����^�'���u�o���� ,�-��p�k�믯S�u��򺻩��N�ф����Rߣ���_��>�~��76������lQ=Y�?��'�:^fYF��m�R}s˳��cw�ז��
s.5OD�Be́Ȱ�����b>�2�����g<�oM���eӐ�u)��Q�h.���6�QẎkv���u��|2.e� ��e�	�ؾO�Y''�����)f��ֵ���\s�x??�ז���Ų�a^%�P���w�L�0g��t��o�Ͽ�3��&�myL��O�_�c�sѐ���8��䘝�fCq�������ʵ+���o`��-���.lM�:��_���_}Kۚ�.&��/af>G�9��]��0���2�e�y~�KG@��p�i����7�5/�`�m�k{�O�����l�6`96�Ss��<��IoLO��;_�Ϧ���#�)�+�����������<��T���Ȱ���|́Ȱ�f�*���sѲ�D��W|�1e8��|v����/������p��&���~�x3~?���;r�,�ș�Ff~S�M���z̥Y'���f���1s܌���0��9/se)�zsm�,6���s�{-���ћoŨl7<#E��Y�h:N۲Ǥ�ձǭ�����8�f������-��I^�~�2�~�v���;���1���ܒc2����f��7���%�[�H&�/E��\���cs�3� ép` �U��p����y3��a�8���uFs��0��h��#O�ͳP��Ɠ�|���߳�F�:�*O�h����7vΌ�4:�����`ۅ����'q쩶5�}����z+Z��"����%>%��2����6,���ˬ�ޝA���6rF���x�M];�W��xBAM6:l��jk?�\7�<0gW�8;�k��t�qr�y��L�y�NA���g��+ɹe��Øq�%��ƴ±�pO�,�Z��҈�L�t6�7ю�p����pݵxSr�5V+Û6���}{T���?2�d�m�aS/a�Y��]2L��r�9�<   ������>��:�\:L/�6'�qG��#�W窣?`t�K2H��_����{�V�M�s�{�}}E^�s�B�md�ԇ0�b7����t�{�͙�+l��\��޻�L�ܙ��m���O/�j�5���o�����R�[�Z�'�%�?�9����3K��f���5x����i~�i�4�HL�#��0:L�ɯ�W��ŞW�����<���!���stgZ�ƸpL!�����0��	��;�\�?���Dg������d��|:�0��	c
)>�c3���P���ￅ��`��W�y�n���v�ީ���0L-&���a�d�m�d،E2S�9���eʰ��^�D�)�-�Q�����4���X-z����ņ_j2�,YeD�oNp`�=��6s	j u���&�!s|MH�������;L-Ήס��Ӧ�M5��77J��`o������&�Z�Y�0��ũ�'�i'�Y�Ϩ�?=��>�6��k	rI&��r�����������O�k����4/
��Z�9��&���g�m&�~�hl���b�U��_���L#����d��/�����ߓ�:��B�[)���cc���W�@W�Lt6��؍��$��4�S�����C����=�߼�w���wh>g�0�K�a�ylf^G�M;f�ði�о?�n�d�^�~8,�B��w@t�m�����	g�O��l+�����zdؔ�|^�	�ŀ����\\��X4�̚2������sɼ��0ze�5��k�?7�ؔ묯�pz�a3w�)���O�3Ѧ�s�Vj� о���}]#5���!D��,��^�W~&��d��׺�>O��'S�y��j��f^�d�.n�7���l�b)�xj�������sP��g�������5�5��G���p���*qɺM�+�A�����aV뉸������E[^4<�U?<sT��(�J�?��Cex���X�v��y˦�_�&dxJ�8_}D,U&��`2��7t'6^��a�j� w䑹nq�6���^�_S���|�^�:����~����o�0^���e�i�~Y�R��~��]���;�t����u��l�`N������>����;��bN��G����&�י�KX�[��9S�&j_���'Pgɳ����qrNat:���=�-��L)�6i����2���}�E�I^ɰ��ȴ��f�	�ɜk�~��vtc;�5w�'&��$ׁ�͉��q��9}֩Í�V��~���y�'�p�T��[�O+�h�a���?�@޶u��td��0��8�-=���1�8؏8��[�P���9������%���KP�C� �V��o�D��2�]�3s:�0���96�k� �&�3�s�����3�:�cW�I_K�yNw�Ί���&�9s��x���ɠ��'vV�P7��i�����<����P�M���Z����5���I�[�9�YW,y�?s:�h�mXVu�䉿GS�p��[q����G��״e_���u�Xn�G�}�K��j�U���㦟ݨ�9���,:�J�����HL{�ɍ�u!��?��끍�O�����H�1�ۛm�_��]�f��o���[u���|w�?ɾ�>�ݴ�:�u4*÷\���.FWs\u�Z����ըf���.��|�66n݀�����`�����O&�����aN����h��tZ廲͒�j�I���������L����h��g!�u[<�ì�`NǺ	-��f4ǣ��	; /���^��i^���>�ׅK�g�=��G��p�\�sg�o���m<6� �Iz�h��d>�:�9�c�����w�������g�1	����x\��pe��]>e�-hN��5W�����8��a�ë�ץ���vt�؎�	 ����`	��݊�[
��R�hi��֨��i{J}�wޝ���{��?֓�{͚�̫�z����q��;�7v��xV|��J��|��W�`�1Z��86��9S���3c����z��8��K#�`��^&��q�ㆾ0.�j5~O�,�\�G`���Ϩ���%8?�����09wL�(�v�+.�u�4�p���◚8�����d�bK���o��K�.���������[����0k���{Ǭ�g/�Ƅkk&x���0�0kN��!��0c	:�Ъq	�R�����z��g>_#���ɹI�z2��b#L����ih
#�K�U�����q��|�_g��%j?ck1A�uړ��� �Y��;��l9:j�x�I�᪇������"7���k���a�k6M;�Z��N�lL���4��T��0
5S�~�:<��	�d�Ɗ�o�����ɳ��8�ս���oׁ̔��|<1K<q	���seu��h�f���us��[�P���s���,9������_�0c|4�#f|-=:J�z]s����"�;�\y	e�U�J�P��+b8��O�p�<+/���M1L�z�.nܼ�����i�Wm�jF�/��3.�:)��r>.�%�>$���y:�����c��捰 ��֘k����c��z�8K����01�g�>�5m��	����9/�|Xd�$N�X',g�������<�+_7~�k��5�S���h�R��5z(�Oc�
kk����!íu�u��G�.�7�[�Q��)SK��QKp��i��%���í[�Ŷ5[1��@����/����W��͏��_b�