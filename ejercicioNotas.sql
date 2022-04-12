create database notas;

CREATE TABLE IF NOT EXISTS notas.usuarios (
  idUsuarios INT AUTO_INCREMENT,
  nombre VARCHAR(45) NOT NULL,
  email VARCHAR(25) NOT NULL,
  PRIMARY KEY (idUsuarios));

CREATE TABLE IF NOT EXISTS notas.acciones (
  idAccion INT NOT NULL AUTO_INCREMENT,
  accion VARCHAR(45) NULL,
  PRIMARY KEY (idAccion));

CREATE TABLE IF NOT EXISTS notas.notas (
  idNotas INT AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  fecha_creacion DATETIME NOT NULL,
  fecha_modificacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  descripcion TEXT NOT NULL,
  fecha_eliminacion TINYINT NOT NULL,
  idUsuarios INT NOT NULL,
  acciones_category_id INT NOT NULL,
  idAcciones INT NOT NULL,
  PRIMARY KEY (idNotas),
    FOREIGN KEY (idUsuarios) REFERENCES notas.usuarios (idUsuarios),
    FOREIGN KEY (idAcciones) REFERENCES notas.acciones (idAccion));


CREATE TABLE IF NOT EXISTS notas.categorias (
  idCategoria INT AUTO_INCREMENT,
  descripcion VARCHAR(45) NOT NULL,
  PRIMARY KEY (idCategoria));

CREATE TABLE IF NOT EXISTS notas.tipo_categorias (
  idTipoCategorias INT NOT NULL AUTO_INCREMENT,
  idNotas INT NOT NULL,
  idCategoria INT NOT NULL,
  PRIMARY KEY (idTipoCategorias),
    FOREIGN KEY (idNotas) REFERENCES notas.notas (idNotas),
    FOREIGN KEY (idCategoria) REFERENCES notas.categorias (idCategoria));
    
INSERT INTO notas.tipo_categorias (idNotas, idCategoria) VALUES(
	1,3),
	(2,4),
	(6,8),
	(9,1),
	(7,5),
	(3,6),
	(4,2),
	(8,7),
	(9,10),
	(5,9);
    
    
select * from tipo_categorias;
    
INSERT INTO notas.notas (titulo, fecha_creacion, fecha_modificacion, descripcion, fecha_eliminacion, idUsuarios, idAcciones) VALUES (
"Nota 1", "2022-04-01", "2022-04-10", "Descripcion de la nota 1", 1, 1, 2),
("Nota 2", "2022-04-02", "2022-04-10", "Descripcion de la nota 2", 0, 2, 1),
("Nota 3", "2022-04-04", "2022-04-10", "Descripcion de la nota 3", 1, 3, 3),
("Nota 4", "2022-04-03", "2022-04-10", "Descripcion de la nota 4", 0, 4, 2),
("Nota 5", "2022-04-05", "2022-04-10", "Descripcion de la nota 5", 1, 5, 1),
("Nota 6", "2022-04-07", "2022-04-10", "Descripcion de la nota 6", 0, 6, 3),
("Nota 7", "2022-04-09", "2022-04-10", "Descripcion de la nota 7", 1, 7, 2),
("Nota 8", "2022-03-01", "2022-04-10", "Descripcion de la nota 8", 0, 8, 1),
("Nota 9", "2022-04-02", "2022-04-10", "Descripcion de la nota 9", 1, 9, 3),
("Nota 10", "2022-02-16", "2022-04-10", "Descripcion de la nota 10", 0, 10, 1);

select * from notas;

INSERT INTO notas.acciones (accion) VALUES(
"crear"),
("actualizar"),
("eliminar");

select * from acciones;

INSERT INTO notas.categorias (descripcion) VALUES(
	"deportes"),
    ("religion"),
    ("politica"),
    ("cultura"),
    ("arte"),
    ("comida"),
    ("musica"),
    ("sofware"),
    ("hardware"),
    ("educacion");
    
select * from categorias;
    
INSERT INTO notas.usuarios(nombre, email) VALUES (
'Ernesto', 'ernesto@prueba.com'),
('Jose', 'jose@prueba.com'),
('Maria', 'maria@prueba.com'),
('Mario', 'mario@prueba.com'),
('Sofia', 'sofia@prueba.com'),
('Fabiana', 'fabiana@prueba.com'),
('Eduardo', 'eduardo@prueba.com'),
('Estrella', 'estrella@prueba.com'),
('Sara', 'sara@prueba.com'),
('Gabriela', 'gabriela@prueba.com');

select * from usuarios;