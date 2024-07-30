CREATE TABLE geo (
  GeoID int(10) unsigned NOT NULL DEFAULT 0,
  Nombre varchar(32) NOT NULL DEFAULT '',
  IpHost varchar(32) NOT NULL DEFAULT '127.0.0.1',
  CmdPort int(10) unsigned NOT NULL DEFAULT 4550,
  DataPort int(10) unsigned NOT NULL DEFAULT 5550,
  User varchar(32) NOT NULL DEFAULT 'Admin',
  Psw varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (GeoID)
);