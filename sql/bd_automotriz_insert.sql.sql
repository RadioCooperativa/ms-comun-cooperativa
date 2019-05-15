INSERT INTO T_CONCESIONARIA (nombre_concesionaria,descripcion_concesionaria, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion, vigente) VALUES
('Hernández Motores', 'Hernández Motores', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Balmaceda', 'Balmaceda', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Aste', 'Aste', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('AutoFip', 'AutoFip', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Automotora Chicureo', 'Automotora Chicureo', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Bruno Fritsch', 'Bruno Fritsch', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Kovacs', 'Kovacs', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Lira Larrain', 'Lira Larrain', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Peugeot', 'Peugeot', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Portillo', 'Portillo', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Valenzuela Delarze', 'Valenzuela Delarze', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Alameda', 'Alameda', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Covema', 'Covema', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Tecnosur', 'Tecnosur', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Tecnocid', 'Tecnocid', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Difor', 'Difor', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Arecheta', 'Arecheta', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0);

INSERT INTO T_MARCA (nombre_marca, descripcion_marca, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion, vigente) VALUES
('Peugeot', 'Peugeot', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0);

INSERT INTO T_MODELO (id_marca, nombre_modelo, descripcion_modelo, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion, vigente) VALUES
(1, 'Allure BlueHDi 130 EAT8', 'Allure BlueHDi 130 EAT8', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
(1, 'Allure BlueHDi 100', 'Allure BlueHDi 100', CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0);

INSERT INTO T_REGISTROS_MARCA_CONCESIONARIA (id_marca, id_concesionaria) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17);


INSERT INTO T_SUCURSAL (nombre_sucursal, descripcion_sucursal, id_comuna, id_concesionaria, direccion_sucursal, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion, vigente) VALUES
('Antofagasta', 'Antofagasta', 2, 1, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Calama', 'Calama', 12, 1, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Copiapó', 'Copiapó', 17, 2, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('La Serena', 'La Serena', 26, 2, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Ovalle', 'Ovalle', 36, 2, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Valparaíso', 'Valparaíso', 41, 3, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Viña del Mar', 'Viña del Mar', 47, 3, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Curauma', 'Curauma', 41, 3, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Los Andes', 'Los Andes', 49, 4, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Colina', 'Colina', 314, 5, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Mall Plaza Tobalaba', 'Mall Plaza Tobalaba', 311, 6, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Mall Plaza Vespucio', 'Mall Plaza Vespucio', 288, 6, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Vicuña Mackenna', 'Vicuña Mackenna', 279, 6, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Movicenter', 'Movicenter', 285, 7, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Vitacura', 'Vitacura', 310, 7, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Providencia', 'Providencia', 301, 8, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Providencia', 'Providencia', 301, 9, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Huechuraba', 'Huechuraba', 285, 9, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Gran Avenida', 'Gran Avenida', 308, 10, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('La Dehesa', 'La Dehesa', 293, 10, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Las Condes', 'Las Condes', 292, 10, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Mall plaza oeste', 'Mall plaza oeste', 280, 10, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Mall plaza sur', 'Mall plaza sur', 317, 10, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Bilbao', 'Bilbao', 301, 11, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Irarrazaval', 'Irarrazaval', 298, 11, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Mall plaza egaña', 'Mall plaza egaña', 291, 11, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Rancagua', 'Rancagua', 79, 12, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Curicó', 'Curicó', 125, 12, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Talca', 'Talca', 112, 13, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Chillán', 'Chillán', 175, 13, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0),
('Concepción', 'Concepción', 142, 6, NULL, CURRENT_TIMESTAMP(), NULL, NULL, NULL, 0);

-- INSERT INTO T_REGISTROS_MODELO_SUCURSAL (id_modelo, id_sucursal) VALUES
-- (1,1);
