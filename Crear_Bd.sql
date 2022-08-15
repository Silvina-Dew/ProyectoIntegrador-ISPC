CREATE DATABASE BD_canina;

use BD_canina;

CREATE TABLE Dueno
(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Telefono varchar (20),
Direccion varchar (50),
CONSTRAINT pk_dni PRIMARY KEY (DNI)
);

CREATE TABLE Perro
(
ID_Perro int,
Nombre varchar (25),
Fecha_nac date,
sexo varchar (25),
DNI_dueno int,
CONSTRAINT pk_perro PRIMARY KEY (ID_Perro),
CONSTRAINT fk_dni FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial
(
ID_Historial int,
Fecha date,
Perro int,
Descripcion varchar (50),
monto decimal,
CONSTRAINT pk_historial PRIMARY KEY (ID_Historial),
CONSTRAINT fk_perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);