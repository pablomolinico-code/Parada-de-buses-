-- Compañía única
INSERT INTO Compania (Codigo, nombre) VALUES
('ALS', 'Alsa');

-- Buses de Alsa
INSERT INTO Bus (Matricula, Codigo_Compania) VALUES
('B0001', 'ALS'),
('B0002', 'ALS'),
('B0003', 'ALS');

-- Estaciones (nodos del grafo)
INSERT INTO Estacion (Codigo, nombre, precio) VALUES
('MAL', 'Malaga',  5),
('SEV', 'Sevilla', 8),
('COR', 'Cordoba', 6),
('MAD', 'Madrid', 12),
('GAL', 'Galicia', 15);

-- Trayectos (aristas del grafo, dirigidas: X --> Y)
INSERT INTO Trayecto (num_trayecto, parada_origen, parada_destino, tiempo, comodidad) VALUES
('T01', 'MAL', 'SEV', 150, 4),
('T02', 'SEV', 'MAL', 150, 4),
('T03', 'MAL', 'COR', 110, 3),
('T04', 'COR', 'MAL', 110, 3),
('T05', 'COR', 'MAD', 240, 5),
('T06', 'MAD', 'COR', 240, 5),
('T07', 'SEV', 'MAD', 230, 4),
('T08', 'MAD', 'SEV', 230, 4),
('T09', 'MAD', 'GAL', 300, 3),
('T10', 'GAL', 'MAD', 300, 3);

-- Horarios de buses por trayecto
INSERT INTO Bus_Trayecto (Matricula, num_trayecto, hora_salida) VALUES
('B0001', 'T01', '08:00:00'),
('B0002', 'T01', '14:30:00'),
('B0001', 'T02', '10:00:00'),
('B0002', 'T02', '17:00:00'),
('B0003', 'T03', '09:15:00'),
('B0003', 'T04', '12:00:00'),
('B0001', 'T05', '07:00:00'),
('B0002', 'T06', '16:00:00'),
('B0003', 'T07', '11:30:00'),
('B0001', 'T08', '19:00:00'),
('B0002', 'T09', '06:45:00'),
('B0003', 'T10', '20:15:00');