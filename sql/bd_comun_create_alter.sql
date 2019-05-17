CREATE TABLE T_REGION(
	id_region				int  not null,
	nombre_region 			varchar(100) not null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit(0),
 	CONSTRAINT PK_T_REGION PRIMARY KEY (id_region)
);

CREATE TABLE T_PROVINCIA(
	id_provincia			int  not null,
	nombre_provincia		varchar(100) null,
	id_region				int not null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit(0),
 	CONSTRAINT PK_T_PROVINCIA PRIMARY KEY (id_provincia)
);

CREATE TABLE T_COMUNA(
	id_comuna				int  not null,
	nombre_comuna 			varchar(100) null,
	id_provincia			int not null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit(0),
 	CONSTRAINT PK_T_COMUNA PRIMARY KEY (id_comuna)
);

CREATE TABLE T_CLIENTES(
	id_cliente				int not null AUTO_INCREMENT,
	id_tipo_cliente			int not null,
	nombre_cliente 			varchar(100) null,
	descripcion_cliente		varchar(200) null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit(0),
 	CONSTRAINT PK_T_CLIENTES PRIMARY KEY (id_cliente) 
);

CREATE TABLE T_TIPO_CLIENTES(
	id_tipo_cliente				int not null AUTO_INCREMENT,
	nombre_tipo_cliente 		varchar(100) null,
	descripcion_tipo_cliente	varchar(200) null,
	fecha_creacion 				date null,
  	fecha_modificacion 			date null,
  	usuario_creacion 			int null,
  	usuario_modificacion 		int null,
 	vigente 					bit(0),
 	CONSTRAINT PK_T_CLIENTES PRIMARY KEY (id_tipo_cliente) 
);

CREATE TABLE T_TIPO_USUARIO(
	id_tipo_usuario				int  not null AUTO_INCREMENT,
	nombre_tipo_usuario 		varchar(100) null,
	descripcion_tipo_usuario	varchar(200) null,
	fecha_creacion 				date null,
  	fecha_modificacion 			date null,
  	usuario_creacion 			int null,
  	usuario_modificacion 		int null,
 	vigente 					bit(0),
 	CONSTRAINT PK_T_TIPO_USUARIO PRIMARY KEY (id_tipo_usuario) 
);


CREATE TABLE T_USUARIOS(
	id_usuario				int not null AUTO_INCREMENT,
	id_tipo_usuario			int not null,
	nombre_usuario 			varchar(100) null,
	pass_usuario			varchar(200) null,
	descripcion_usuario		varchar(200) null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit(0),
 	CONSTRAINT PK_T_USUARIOS PRIMARY KEY (id_usuario) 
);

CREATE TABLE T_MARCA(
	id_marca				int not null AUTO_INCREMENT,
	nombre_marca 			varchar(100) null,
	descripcion_marca 		varchar(100) null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit,
 	CONSTRAINT PK_T_MARCA PRIMARY KEY (id_marca)
)ENGINE=InnoDb;

CREATE TABLE T_MODELO(
	id_modelo				int not null AUTO_INCREMENT,
    id_marca				int null,
	nombre_modelo			varchar(100) null,
	descripcion_modelo		varchar(100) null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit,
 	CONSTRAINT PK_T_SUCURSAL PRIMARY KEY (id_modelo)
)ENGINE=InnoDb;

CREATE TABLE T_REGISTROS_MARCA_CONCESIONARIA(
	id_marca 				int not null,
	id_concesionaria 		int not null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit
)ENGINE=InnoDb;


CREATE TABLE T_REGISTROS_MODELO_SUCURSAL(
	id_modelo 				int not null,
	id_sucursal 			int not null,
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit
)ENGINE=InnoDb;

CREATE TABLE T_CONCESIONARIA(
	id_concesionaria			int not null AUTO_INCREMENT,
	nombre_concesionaria		varchar(100) null,
	descripcion_concesionaria 	varchar(100) null,
	fecha_creacion 				date null,
  	fecha_modificacion 			date null,
  	usuario_creacion 			int null,
  	usuario_modificacion 		int null,
 	vigente 					bit,
 	CONSTRAINT PK_T_CONCESIONARIA PRIMARY KEY (id_concesionaria)
)ENGINE=InnoDb;

CREATE TABLE T_SUCURSAL(
	id_sucursal 			int not null AUTO_INCREMENT,
	nombre_sucursal			varchar(100) null,
	descripcion_sucursal 	varchar(100) null,
	id_comuna				int null,
	id_concesionaria		int null,
	direccion_sucursal		varchar(100),
	fecha_creacion 			date null,
  	fecha_modificacion 		date null,
  	usuario_creacion 		int null,
  	usuario_modificacion 	int null,
 	vigente 				bit,
 	CONSTRAINT PK_T_SUCURSAL PRIMARY KEY (id_sucursal)
)ENGINE=InnoDb;

/* === FOREIGN === */

ALTER TABLE T_PROVINCIA   ADD  CONSTRAINT FK_T_PROVINCIA_REGION FOREIGN KEY(id_region)
REFERENCES T_REGION (id_region);

ALTER TABLE T_COMUNA    ADD  CONSTRAINT FK_T_COMUNA_PROVINCIA FOREIGN KEY(id_provincia)
REFERENCES T_PROVINCIA (id_provincia);

ALTER TABLE T_CLIENTES  ADD  CONSTRAINT FK_T_FORMULARIOS_T_CLIENTES FOREIGN KEY(id_tipo_cliente)
REFERENCES T_TIPO_CLIENTES (id_tipo_cliente);

ALTER TABLE T_USUARIOS    ADD  CONSTRAINT FK_T_USUARIOS_TIPO_USUARIO FOREIGN KEY(id_tipo_usuario)
REFERENCES T_TIPO_USUARIO (id_tipo_usuario);

ALTER TABLE T_MODELO ADD CONSTRAINT FK_T_MODELO_MARCA FOREIGN KEY(id_marca)
REFERENCES T_MARCA (id_marca);

ALTER TABLE T_SUCURSAL ADD CONSTRAINT FK_T_SUCURSAL_CONCESIONARIA FOREIGN KEY(id_concesionaria)
REFERENCES T_CONCESIONARIA (id_concesionaria);

ALTER TABLE T_SUCURSAL ADD CONSTRAINT FK_T_SUCURSAL_T_COMUNA FOREIGN KEY(id_comuna)
REFERENCES T_COMUNA (id_comuna);

ALTER TABLE T_REGISTROS_MARCA_CONCESIONARIA ADD CONSTRAINT FK_T_REGISTROS_MARCA_CONCESIONARIA_MARCA FOREIGN KEY(id_marca)
REFERENCES T_MARCA (id_marca);

ALTER TABLE T_REGISTROS_MARCA_CONCESIONARIA ADD CONSTRAINT FK_T_REGISTROS_MARCA_CONCESIONARIA_CONCESIONARIA FOREIGN KEY(id_concesionaria)
REFERENCES T_CONCESIONARIA(id_concesionaria);

ALTER TABLE T_REGISTROS_MODELO_SUCURSAL ADD CONSTRAINT FK_T_REGISTROS_MODELO_SUCURSAL FOREIGN KEY(id_modelo)
REFERENCES T_MODELO(id_modelo);

ALTER TABLE T_REGISTROS_MODELO_SUCURSAL ADD CONSTRAINT FK_T_REGISTROS_SUCURSAL_MODELO FOREIGN KEY(id_sucursal)
REFERENCES T_SUCURSAL(id_sucursal);