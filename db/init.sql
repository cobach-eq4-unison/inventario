SET NAMES utf8mb4;
USE inventario;

CREATE TABLE IF NOT EXISTS equipos (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(100) NOT NULL,
    tipo           ENUM('Computadora de escritorio','Laptop','Proyector','Impresora','Tableta','Switch de red','Access point') NOT NULL,
    marca          VARCHAR(50)  NOT NULL,
    numero_serie   VARCHAR(50)  NOT NULL UNIQUE,
    ubicacion      VARCHAR(100) NOT NULL,
    estado         ENUM('Disponible','En uso','En mantenimiento','Fuera de servicio') NOT NULL DEFAULT 'Disponible',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO equipos (nombre, tipo, marca, numero_serie, ubicacion, estado) VALUES
('PC Laboratorio 1', 'Computadora de escritorio', 'Dell', 'COB-001', 'Laboratorio de cómputo', 'En uso'),
('PC Laboratorio 2', 'Computadora de escritorio', 'Dell', 'COB-002', 'Laboratorio de cómputo', 'En mantenimiento'),
('Laptop Dirección', 'Laptop', 'HP', 'COB-003', 'Dirección', 'En uso'),
('Laptop Docentes', 'Laptop', 'Lenovo', 'COB-004', 'Sala de maestros', 'Disponible'),
('Proyector Aula 3', 'Proyector', 'Epson', 'COB-005', 'Aula 3', 'En uso'),
('Impresora Admin', 'Impresora', 'HP', 'COB-006', 'Administración', 'Fuera de servicio'),
('Tableta Préstamo 1', 'Tableta', 'Samsung', 'COB-007', 'Biblioteca', 'Disponible'),
('Switch Principal', 'Switch de red', 'Cisco', 'COB-008', 'Cuarto de red', 'En uso'),
('Access Point Planta Alta', 'Access point', 'TP-Link', 'COB-009', 'Pasillo planta alta', 'En uso');
