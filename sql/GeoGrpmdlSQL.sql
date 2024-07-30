CREATE TABLE geogrpmdl (
  GrupoModulos int(10) unsigned NOT NULL DEFAULT 0,
  GeoID int(10) unsigned NOT NULL DEFAULT 0,  
  INDEX GeoID (GeoID),  
  PRIMARY KEY (GrupoModulos)
);