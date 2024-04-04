**Esto es lo que hemos dado el 5 de abril sobre "SQL"

-CREATE table "nombre de la tabla"
-SELECT * from "nombre de la tabla"
-INSERT into "nombre tabla"("pones lo que quieres seleccionar de la tabla") values ("lo que quieres añadir")
-.schema, .table, .open, .clone 
-DROP table "nombre de la tabla"
-STRIC Sirve para que los datos que le pasemos sean del tipo que le hemos indicado
-COUNT cuanta los elementos que tienes 
-DISTINC devuelve los valores distintos de una tabla
```SQL
 select distinct (pais) from usuarios;
```
Te muestra esto:
    España
    Rusia
    Suecia
    Colombia
    Italia

`sqlite3 ejemplo.db` para arrancar una base de datos, en cuanto mando un comando create, el archivo se crea automaticamente.
`abrir sqlite3`, creamos una tabla y usamos `clone` para crearla, luego la podemos abrir con `.open`.



```SQL
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS mensajes;

CREATE TABLE 'usuarios'('id', 'nombre', 'edad');

CREATE TABLE 'mensajes'('id', 'mensajes', 'autor');

INSERT INTO usuarios VALUES(1, 'admin', 33);
INSERT INTO usuarios VALUES(2, 'user0', 12);
INSERT INTO usuarios VALUES(3, 'user1', 41);
INSERT INTO usuarios VALUES(4, 'user2', 31);
INSERT INTO usuarios VALUES(5, 'user3', 21);

--SELECT * FROM usuarios;
--SELECT * FROM usuarios WHERE edad > 25;
```
                                  arriba
Para crear una base datos por codigo| 
                                  abajo
```SQL
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
```
