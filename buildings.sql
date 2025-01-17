CREATE TABLE IF NOT EXISTS buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id INTEGER PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE IF NOT EXISTS rooms (
  number INTEGER,
  buildingid INTEGER,
  seating INTEGER,
  id INTEGER PRIMARY KEY
);

-- FOREIGN KEY (buildingid) REFERENCES buildings(id)
