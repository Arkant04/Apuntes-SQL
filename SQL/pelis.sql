DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;
PRAGMA foreign_keys = on;

CREATE TABLE 'usuarios'(
  'id' INTEGER NOT NULL UNIQUE,
  'nombre' TEXT NOT NULL UNIQUE,
  'email' TEXT NOT NULL UNIQUE,
  'favPeli' TEXT,
  PRIMARY KEY ('id' AUTOINCREMENT)
)STRICT;

CREATE TABLE 'peliculas'(
    'titulo' TEXT NOT NULL,
    'id' INTEGER NOT NULL,
    'genero' TEXT,
    'año' INTEGER NOT NULL,
    'director' TEXT NOT NULL,
    'autor' TEXT NOT NULL,
    FOREIGN KEY ('autor') REFERENCES 'usuarios' ('id'),
 PRIMARY KEY ('id' AUTOINCREMENT)
)STRICT;


INSERT INTO usuarios (nombre, email, favPeli) VALUES ('Pepe', 'Epep@gmail.com', 'Django');

INSERT INTO peliculas (titulo, genero, año, director, autor) VALUES ('Django', 'western', 2012, 'Quentin Tarantino', 1);