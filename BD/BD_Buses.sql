DROP DATABASE IF EXISTS Parada_Bus;
CREATE DATABASE Parada_Bus;
USE Parada_Bus;

CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(10) NOT NULL UNIQUE,
    nombre VARCHAR(25) NOT NULL,
    ape1 VARCHAR(25) NOT NULL,
    ape2 VARCHAR(25),
    pass VARCHAR(100) NOT NULL,
    p_tiempo DECIMAL(4,3) DEFAULT NULL,
    p_precio DECIMAL(4,3) DEFAULT NULL,
    p_comodidad DECIMAL(4,3) DEFAULT NULL,
    activo TINYINT DEFAULT 1
);

CREATE TABLE Estacion (
    Codigo VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE Compania (
    Codigo VARCHAR(5) PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL
);

CREATE TABLE Bus (
    Matricula VARCHAR(5) PRIMARY KEY,
    Codigo_Compania VARCHAR(5) NOT NULL,
    FOREIGN KEY (Codigo_Compania) REFERENCES Compania(Codigo)
);

CREATE TABLE Trayecto (
    num_trayecto VARCHAR(10) PRIMARY KEY,
    parada_origen VARCHAR(5),
    parada_destino VARCHAR(5),
    tiempo INT NOT NULL,
    comodidad INT NOT NULL,
    FOREIGN KEY (parada_origen) REFERENCES Estacion(Codigo),
    FOREIGN KEY (parada_destino) REFERENCES Estacion(Codigo)
);

CREATE TABLE Bus_Trayecto (
    Matricula VARCHAR(5),
    num_trayecto VARCHAR(10),
    hora_salida TIME NOT NULL,
    PRIMARY KEY (Matricula, num_trayecto, hora_salida),
    FOREIGN KEY (Matricula) REFERENCES Bus(Matricula),
    FOREIGN KEY (num_trayecto) REFERENCES Trayecto(num_trayecto)
);