-- Crear base de datos
CREATE DATABASE IF NOT EXISTS oemspotsys;
USE oemspotsys;

-- Crear usuario
CREATE USER 'Oemspot'@'%' IDENTIFIED BY 'Oem2017*';
GRANT ALL PRIVILEGES ON oemspotsys.* TO 'Oemspot'@'%';

-- Crear esquema (no es necesario en MySQL, se crea la base de datos en su lugar)
-- CREATE SCHEMA m2ss;

-- Crear tablas
CREATE TABLE arb (
  ArbolID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE arbitm (
  ArbolID INT NOT NULL,
  ItemID INT NOT NULL,
  Nombre VARCHAR(32),
  ParentID INT NOT NULL,
  Orden INT,
  SystemParameter INT,
  PRIMARY KEY (ArbolID, ItemID),
  UNIQUE (ArbolID, Nombre)
);

CREATE TABLE aut (
  AutoID INT NOT NULL PRIMARY KEY,
  Patente VARCHAR(32),
  UNIQUE (Patente)
);

CREATE TABLE autcatval (
  AutoID INT NOT NULL,
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (AutoID, CategoriaID, ValorID)
);

CREATE TABLE autprx (
  AutoID INT NOT NULL,
  PropiedadID INT NOT NULL,
  Valor VARCHAR(255),
  PRIMARY KEY (AutoID, PropiedadID)
);

CREATE TABLE cat (
  CategoriaID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE catval (
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  Nombre VARCHAR(32),
  SystemParameter INT,
  PRIMARY KEY (CategoriaID, ValorID),
  UNIQUE (CategoriaID, Nombre)
);

CREATE TABLE cfg (
  ConfiguracionID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE cfgfrm (
  ConfiguracionID BIGINT NOT NULL,
  GrupoModulos BIGINT NOT NULL,
  Formulario BIGINT NOT NULL,
  f_editable CHAR(1),
  f_height BIGINT NOT NULL,
  f_left BIGINT NOT NULL,
  f_top BIGINT NOT NULL,
  f_width BIGINT NOT NULL,
  SystemParameter BIGINT NOT NULL,
  PRIMARY KEY (ConfiguracionID, GrupoModulos, Formulario)
);

CREATE TABLE cfgopt (
  ConfiguracionID INT NOT NULL,
  OpcionID INT NOT NULL,
  Nombre VARCHAR(32),
  Valor VARCHAR(255),
  SystemParameter INT,
  PRIMARY KEY (ConfiguracionID, OpcionID),
  UNIQUE (ConfiguracionID, Nombre)
);

CREATE TABLE clc (
  CompraID INT NOT NULL PRIMARY KEY,
  LicenciaID INT NOT NULL,
  SoftwareKey VARCHAR(32)
);

CREATE TABLE cobranza (
  Ticket VARCHAR(50) NOT NULL PRIMARY KEY,
  fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE comunicacion (
  Id_persona INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Apellido VARCHAR(64),
  Nombre VARCHAR(64),
  Sexo VARCHAR(1),
  Documento VARCHAR(128) NOT NULL,
  FechaNacimiento DATETIME,
  Fechafin DATETIME
);

CREATE TABLE cul (
  CulturaID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  Descripcion VARCHAR(64),
  UNIQUE (Nombre)
);

CREATE TABLE dim (
  DimensionID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Descripcion TEXT,
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE est (
  EstadoID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE estval (
  EstadoID INT NOT NULL,
  ValorID INT NOT NULL,
  Nombre VARCHAR(32),
  SystemParameter INT,
  PRIMARY KEY (EstadoID, ValorID),
  UNIQUE (EstadoID, Nombre)
);

CREATE TABLE geo (
  GeoID BIGINT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32) NOT NULL,
  IpHost VARCHAR(32) NOT NULL DEFAULT '127.0.0.1',
  CmdPort BIGINT NOT NULL DEFAULT 4550,
  DataPort BIGINT NOT NULL DEFAULT 5550,
  User VARCHAR(32) NOT NULL DEFAULT 'Admin',
  Psw VARCHAR(32) NOT NULL
);

CREATE TABLE geogrpmdl (
  GrupoModulos BIGINT NOT NULL,
  GeoID BIGINT NOT NULL,
  PRIMARY KEY (GrupoModulos, GeoID)
);

CREATE TABLE gru (
  GrupoID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Descripcion TEXT,
  UNIQUE (Nombre)
);

CREATE TABLE grucatval (
  GrupoID INT NOT NULL,
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (GrupoID, CategoriaID, ValorID)
);

CREATE TABLE gruidn (
  GrupoID INT NOT NULL,
  IdentificacionID INT NOT NULL,
  PRIMARY KEY (GrupoID, IdentificacionID)
);

CREATE TABLE grumdlprf (
  GrupoID INT NOT NULL,
  ModuloID INT NOT NULL,
  PerfilID INT NOT NULL,
  FechaInicio DATETIME,
  FechaFin DATETIME,
  PRIMARY KEY (GrupoID, ModuloID, PerfilID)
);

CREATE TABLE idn (
  IdentificacionID INT NOT NULL PRIMARY KEY,
  Numero VARCHAR(32),
  UNIQUE (Numero)
);

CREATE TABLE idncatval (
  IdentificacionID INT NOT NULL,
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (IdentificacionID, CategoriaID, ValorID)
);

CREATE TABLE idnpnc (
  identificacionID BIGINT NOT NULL PRIMARY KEY
);

CREATE TABLE ins (
  InsID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Valor TEXT,
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE lge (
  LogID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE lic (
  LicenciaID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SoftwareKey VARCHAR(32),
  Descripcion TEXT,
  UNIQUE (Nombre)
);

CREATE TABLE logevt (
  LogID INT NOT NULL,
  EventoID INT NOT NULL,
  Descripcion TEXT,
  SystemParameter INT,
  PRIMARY KEY (LogID, EventoID)
);

CREATE TABLE lot (
  LoteID BIGINT NOT NULL PRIMARY KEY,
  Lote VARCHAR(50) NOT NULL,
  UF VARCHAR(50) NOT NULL,
  Calle VARCHAR(50) NOT NULL,
  Numero VARCHAR(200),
  Interno VARCHAR(50) NOT NULL
);

CREATE TABLE lotcatval (
  LoteID BIGINT NOT NULL,
  CategoriaID BIGINT NOT NULL,
  ValorID BIGINT NOT NULL,
  PRIMARY KEY (LoteID, CategoriaID, ValorID)
);

CREATE TABLE lotper (
  LoteID BIGINT NOT NULL,
  PersonaID BIGINT NOT NULL,
  PerfilID BIGINT NOT NULL,
  CategoriaID BIGINT NOT NULL,
  ValorID BIGINT NOT NULL,
  FechaInicio DATETIME,
  FechaFin DATETIME,
  CreationDate DATETIME,
  CREATEDByID INT,
  LastUpdateDate DATETIME,
  LastUpdateDateByID INT,
  PRIMARY KEY (LoteID, PersonaID, PerfilID, CategoriaID, ValorID)
);

CREATE TABLE lotpercatval (
  PersonaID BIGINT NOT NULL,
  CategoriaID BIGINT NOT NULL,
  ValorID BIGINT NOT NULL,
  PRIMARY KEY (PersonaID, CategoriaID, ValorID)
);

CREATE TABLE mdl (
  ModuloID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Descripcion TEXT,
  Address INT,
  ModuloEntradaID INT NOT NULL,
  ModuloSalidaID INT NOT NULL,
  GrupoModulos INT,
  OrdenEncuesta INT,
  duracion_pulso BIGINT,
  ValidacionTicket SMALLINT,
  UNIQUE (Nombre)
);

CREATE TABLE mdlcam (
  ModuloID BIGINT NOT NULL,
  Camara VARCHAR(2) NOT NULL,
  PRIMARY KEY (ModuloID)
);

CREATE TABLE mdlcatval (
  ModuloID INT NOT NULL,
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (ModuloID, CategoriaID, ValorID)
);

CREATE TABLE mdlestval (
  ModuloID INT NOT NULL,
  EstadoID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (ModuloID, EstadoID, ValorID)
);

CREATE TABLE mvt (
  MovimientoID BIGINT NOT NULL PRIMARY KEY,
  ModuloID INT NOT NULL,
  IdentificacionID INT NOT NULL,
  FechaHora DATETIME
);

CREATE TABLE mvtcatval (
  MovimientoID BIGINT NOT NULL,
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (MovimientoID, CategoriaID, ValorID)
);

CREATE TABLE nsl (
  UsuarioID INT NOT NULL,
  LicenciaID INT NOT NULL,
  PRIMARY KEY (UsuarioID, LicenciaID)
);

CREATE TABLE nts (
  NotaID INT NOT NULL PRIMARY KEY,
  Texto TEXT,
  SystemParameter INT
);

CREATE TABLE pdtidn (
  PdtIdnID BIGINT NOT NULL PRIMARY KEY,
  ModuloID BIGINT NOT NULL,
  Numero VARCHAR(32) NOT NULL,
  Descripcion VARCHAR(32) NOT NULL,
  Perfil BIGINT
);

CREATE TABLE pdtmdl (
  PdtMdlID BIGINT NOT NULL PRIMARY KEY,
  ModuloID BIGINT NOT NULL,
  FechaInicio BIGINT,
  FechaFin BIGINT,
  Parametros VARCHAR(32),
  Perfil BIGINT
);

CREATE TABLE pdtmdlprf (
  PerfilID BIGINT NOT NULL,
  ModuloID BIGINT NOT NULL,
  PdtMdlID BIGINT NOT NULL,
  PRIMARY KEY (PerfilID, ModuloID, PdtMdlID)
);

CREATE TABLE per (
  PersonaID BIGINT NOT NULL PRIMARY KEY,
  Apellido VARCHAR(64),
  Nombre VARCHAR(64),
  Sexo VARCHAR(1),
  Documento VARCHAR(128) NOT NULL,
  FechaNacimiento DATETIME,
  Fechafin DATETIME
);

CREATE TABLE percatval (
  PersonaID BIGINT NOT NULL,
  CategoriaID BIGINT NOT NULL,
  ValorID BIGINT NOT NULL,
  PRIMARY KEY (PersonaID, CategoriaID, ValorID)
);

CREATE TABLE perdoc (
  PersonaID BIGINT NOT NULL,
  DocumentoID BIGINT NOT NULL,
  PRIMARY KEY (PersonaID, DocumentoID)
);

CREATE TABLE perper (
  PersonaID BIGINT NOT NULL,
  PerfilID BIGINT NOT NULL,
  FechaInicio DATETIME,
  FechaFin DATETIME,
  PRIMARY KEY (PersonaID, PerfilID)
);

CREATE TABLE perprx (
  PersonaID INT NOT NULL,
  PropiedadID INT NOT NULL,
  Valor VARCHAR(255),
  PRIMARY KEY (PersonaID, PropiedadID)
);

CREATE TABLE perprxcatval (
  PersonaID BIGINT NOT NULL,
  CategoriaID BIGINT NOT NULL,
  ValorID BIGINT NOT NULL,
  PRIMARY KEY (PersonaID, CategoriaID, ValorID)
);

CREATE TABLE perfil (
  PerfilID BIGINT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(50) NOT NULL,
  Controlador VARCHAR(50),
  Salida VARCHAR(50),
  Interno CHAR(1) NOT NULL DEFAULT '1'
);

CREATE TABLE pergr (
  PersonaID INT NOT NULL,
  GrupoID INT NOT NULL,
  FechaInicio DATETIME,
  FechaFin DATETIME,
  PRIMARY KEY (PersonaID, GrupoID)
);

CREATE TABLE prd (
  ProductoID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Descripcion TEXT,
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE prdcatval (
  ProductoID INT NOT NULL,
  CategoriaID INT NOT NULL,
  ValorID INT NOT NULL,
  PRIMARY KEY (ProductoID, CategoriaID, ValorID)
);

CREATE TABLE pro (
  PropiedadID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE prp (
  PropiedadID BIGINT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter BIGINT,
  UNIQUE (Nombre)
);

CREATE TABLE prpcatval (
  PropiedadID BIGINT NOT NULL,
  CategoriaID BIGINT NOT NULL,
  ValorID BIGINT NOT NULL,
  PRIMARY KEY (PropiedadID, CategoriaID, ValorID)
);

CREATE TABLE rpt (
  ReporteID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE rptgrp (
  ReporteID INT NOT NULL,
  GrupoID INT NOT NULL,
  PRIMARY KEY (ReporteID, GrupoID)
);

CREATE TABLE rptevt (
  ReporteID INT NOT NULL,
  EventoID INT NOT NULL,
  PRIMARY KEY (ReporteID, EventoID)
);

CREATE TABLE usr (
  UsuarioID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Psw VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE usrlot (
  UsuarioID INT NOT NULL,
  LoteID INT NOT NULL,
  PRIMARY KEY (UsuarioID, LoteID)
);

CREATE TABLE val (
  ValorID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  SystemParameter INT,
  UNIQUE (Nombre)
);

CREATE TABLE ver (
  VersionID INT NOT NULL PRIMARY KEY,
  Numero VARCHAR(32),
  UNIQUE (Numero)
);

CREATE TABLE vrc (
  VariableID INT NOT NULL PRIMARY KEY,
  Nombre VARCHAR(32),
  Valor TEXT,
  SystemParameter INT,
  UNIQUE (Nombre)
);
