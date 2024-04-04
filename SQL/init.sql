DROP TABLE IF EXISTS mensajes;
DROP TABLE IF EXISTS usuarios;
PRAGMA foreign_keys = on;

CREATE TABLE 'usuarios'(
  'id' INTEGER NOT NULL UNIQUE,
  'nombre' TEXT NOT NULL UNIQUE,
  'edad' INTEGER,
  'pais' TEXT,
  'email' TEXT NOT NULL UNIQUE,
  'balance' REAL NOT NULL,
  'rol' TEXT NOT NULL,
  PRIMARY KEY ('id' AUTOINCREMENT)
)STRICT;

CREATE TABLE 'mensajes'(
 'id' INTEGER NOT NULL UNIQUE,
 'mensaje' TEXT NOT NULL,
 'autor' INTEGER NOT NULL,
 FOREIGN KEY ('autor') REFERENCES 'usuarios' ('id'),
 PRIMARY KEY ('id' AUTOINCREMENT)
)STRICT;


INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Pepe', 33, 'España', 'Pepops@gmail.com', 1200, 'admin');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Максим', 24, 'Rusia', 'Mим@hotmail.com', 12989, 'normalUser');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Gustav', 56, 'Suecia', 'Gustav@yahoo.com', 40000, 'normalUser');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Salvador', 33, 'Colombia', 'ColombiaxSiempreEnMiCorazon@gmail.com', 4, 'mod');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Aurelio', 33, 'Italia', 'Ar@gmail.com', 120, 'normalUser');

INSERT INTO mensajes (mensaje, autor) VALUES ('holiwi', 1);
INSERT INTO mensajes (mensaje, autor) VALUES ('.....', 2);
INSERT INTO mensajes (mensaje, autor) VALUES ('Nieva mucho por aqui', 3);
INSERT INTO mensajes (mensaje, autor) VALUES ('Que paso papaaaaa', 4);
INSERT INTO mensajes (mensaje, autor) VALUES ('Pizza', 5);

--SELECT * FROM usuarios;
--SELECT * FROM usuarios WHERE edad > 25;


