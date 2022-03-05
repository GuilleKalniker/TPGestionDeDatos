USE GD2C2021
GO

--Droppeos 

--DROPS INDICES
IF OBJECT_ID('HAY_TABLA.Viaje.ix_viaje','U') IS NOT NULL
  DROP INDEX HAY_TABLA.Viaje.ix_viaje;

IF OBJECT_ID('HAY_TABLA.Recorrido.ix_recorrido','U') IS NOT NULL
  DROP INDEX HAY_TABLA.Recorrido.ix_recorrido;

IF OBJECT_ID('HAY_TABLA.Orden.ix_orden','U') IS NOT NULL
  DROP INDEX HAY_TABLA.Orden.ix_orden;

--DROPS TABLAS

IF OBJECT_ID('HAY_TABLA.Viaje','U') IS NOT NULL
DROP TABLE HAY_TABLA.Viaje;

IF OBJECT_ID('HAY_TABLA.Orden_X_Tarea','U') IS NOT NULL
DROP TABLE HAY_TABLA.Orden_X_Tarea;

IF OBJECT_ID('HAY_TABLA.Orden','U') IS NOT NULL
DROP TABLE HAY_TABLA.Orden;

IF OBJECT_ID('HAY_TABLA.Camion','U') IS NOT NULL
DROP TABLE HAY_TABLA.Camion;

IF OBJECT_ID('HAY_TABLA.Recorrido','U') IS NOT NULL
DROP TABLE HAY_TABLA.Recorrido;

IF OBJECT_ID('HAY_TABLA.Material_X_Tarea','U') IS NOT NULL
DROP TABLE HAY_TABLA.Material_X_Tarea;

IF OBJECT_ID('HAY_TABLA.Mecanico','U') IS NOT NULL
DROP TABLE HAY_TABLA.Mecanico;

IF OBJECT_ID('HAY_TABLA.Viaje_X_Paquete','U') IS NOT NULL
DROP TABLE HAY_TABLA.Viaje_X_Paquete;

IF OBJECT_ID('HAY_TABLA.Tarea','U') IS NOT NULL
DROP TABLE HAY_TABLA.Tarea;

IF OBJECT_ID('HAY_TABLA.Taller','U') IS NOT NULL
DROP TABLE HAY_TABLA.Taller;

IF OBJECT_ID('HAY_TABLA.Ciudad','U') IS NOT NULL
DROP TABLE HAY_TABLA.Ciudad;

IF OBJECT_ID('HAY_TABLA.Paquete','U') IS NOT NULL
DROP TABLE HAY_TABLA.Paquete;

IF OBJECT_ID('HAY_TABLA.Chofer','U') IS NOT NULL
  DROP TABLE HAY_TABLA.Chofer;

IF OBJECT_ID('HAY_TABLA.Modelo','U') IS NOT NULL
DROP TABLE HAY_TABLA.Modelo;

IF OBJECT_ID('HAY_TABLA.Marca','U') IS NOT NULL
DROP TABLE HAY_TABLA.Marca;

IF OBJECT_ID('HAY_TABLA.Estado','U') IS NOT NULL
DROP TABLE HAY_TABLA.Estado;

IF OBJECT_ID('HAY_TABLA.Material','U') IS NOT NULL
DROP TABLE HAY_TABLA.Material;

--DROPS FUNCIONES

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_MODELO') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_MODELO;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_CIUDAD') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_CIUDAD;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_ESTADO') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_ESTADO;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_RECORRIDO') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_RECORRIDO;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_TALLER') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_TALLER;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_ORDEN') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_ORDEN;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_VIAJE') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_VIAJE;

IF OBJECT_ID('HAY_TABLA.OBTENER_PK_MARCA') IS NOT NULL
DROP FUNCTION HAY_TABLA.OBTENER_PK_MARCA;



-- DROPS STORED PROCEDURES
IF OBJECT_ID('HAY_TABLA.migrar_taller') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_taller;

IF OBJECT_ID('HAY_TABLA.migrar_chofer') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_chofer;

IF OBJECT_ID('HAY_TABLA.migrar_paquete') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_paquete;

IF OBJECT_ID('HAY_TABLA.migrar_mecanico') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_mecanico;

IF OBJECT_ID('HAY_TABLA.migrar_tarea') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_tarea;

IF OBJECT_ID('HAY_TABLA.migrar_material') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_material;

IF OBJECT_ID('HAY_TABLA.migrar_estado') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_estado;

IF OBJECT_ID('HAY_TABLA.migrar_marca') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_marca;

IF OBJECT_ID('HAY_TABLA.migrar_ciudad') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_ciudad;

IF OBJECT_ID('HAY_TABLA.migrar_recorrido') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_recorrido;

IF OBJECT_ID('HAY_TABLA.migrar_modelo') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_modelo;

IF OBJECT_ID('HAY_TABLA.migrar_camion') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_camion;

IF OBJECT_ID('HAY_TABLA.migrar_viaje') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_viaje;

IF OBJECT_ID('HAY_TABLA.migrar_orden') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_orden;

IF OBJECT_ID('HAY_TABLA.migrar_material_x_tarea') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_material_x_tarea;

IF OBJECT_ID('HAY_TABLA.migrar_orden_x_tarea') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_orden_x_tarea;

IF OBJECT_ID('HAY_TABLA.migrar_viaje_x_paquete') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_viaje_x_paquete;

--DROPS VIEWS
IF OBJECT_ID('HAY_TABLA.view_camion') IS NOT NULL
  DROP VIEW HAY_TABLA.view_camion;

IF OBJECT_ID('HAY_TABLA.view_recorridos') IS NOT NULL
  DROP VIEW HAY_TABLA.view_recorridos;

IF OBJECT_ID('HAY_TABLA.view_viajes') IS NOT NULL
  DROP VIEW HAY_TABLA.view_viajes;

IF OBJECT_ID('HAY_TABLA.view_ordenes_x_taller') IS NOT NULL
  DROP VIEW HAY_TABLA.view_ordenes_x_taller;

--Drop del schema
DROP SCHEMA HAY_TABLA
GO

-- Creamos SCHEMA de nuestro trabajo practico
CREATE SCHEMA HAY_TABLA
GO
-- Tablas --
CREATE TABLE HAY_TABLA.Orden (
	nro_orden bigint IDENTITY(1,1) NOT NULL,
	fk_camion nvarchar(255) NOT NULL,
	fk_estado int NOT NULL,
	fecha_generacion nvarchar(255) NULL
);
GO

CREATE TABLE HAY_TABLA.Camion (
	patente nvarchar(255) NOT NULL,
	fk_modelo bigint NOT NULL,
	fk_marca int NOT NULL,
	nro_chas nvarchar(255) NULL,
	nro_motor nvarchar(255) NULL,
	fecha_alta datetime2(3) NULL,
);
GO

CREATE TABLE HAY_TABLA.Modelo (
	pk_modelo bigint IDENTITY(1,1) NOT NULL,
	nombre_camion nvarchar(255) NOT NULL,
	vel_maxima int NULL,
	capacidad_tanque int NULL,
	capacidad_carga int NULL,
);
GO

CREATE TABLE HAY_TABLA.Viaje (
	pk_viaje bigint IDENTITY(1,1) NOT NULL,
	fk_camion nvarchar(255) NOT NULL,
	fk_chofer bigint NOT NULL,
	fk_recorrido int NOT NULL,
	fecha_inicio datetime2(7) NULL,
	fecha_fin datetime2(7) NULL,
	consumo_combustible decimal(18,2) NULL,
);
GO

CREATE TABLE HAY_TABLA.Recorrido (
	pk_recorrido int IDENTITY(1,1) NOT NULL,
	ciudad_origen bigint NOT NULL,
	ciudad_destino bigint NOT NULL,
	km int NULL,
	precio decimal(18,2) NULL,
);
GO

CREATE TABLE HAY_TABLA.Marca (
	pk_marca int IDENTITY(1,1) NOT NULL,
	descripcion nvarchar(255) NULL,
);
GO

CREATE TABLE HAY_TABLA.Estado (
	pk_estado int IDENTITY(1,1) NOT NULL,
	descripcion nvarchar(255) NULL,
);
GO

CREATE TABLE HAY_TABLA.Material (
	cod_material nvarchar(100) NOT NULL,
	precio decimal(18,2) NULL,
	descripcion nvarchar(255) NULL
);
GO

CREATE TABLE HAY_TABLA.Material_X_Tarea (
	pk_material nvarchar(100) NOT NULL,
	pk_tarea int NOT NULL,
	cantidad int NOT NULL
);
GO

CREATE TABLE HAY_TABLA.Tarea (
	codigo int NOT NULL,
	descripcion nvarchar(255) NULL,
	tiempo_estimado int NULL,
	tipo nvarchar(255) NULL
);
GO

CREATE TABLE HAY_TABLA.Orden_X_Tarea (
	pk_tarea int NOT NULL,
	pk_orden bigint NOT NULL,
	pk_mecanico int NOT NULL,
	fecha_inicio_planificado datetime2(3) NULL,
	fecha_inicio datetime2(3) NULL,
	fecha_fin datetime2(3) NULL,
	tiempo_real int NULL
);
GO

CREATE TABLE HAY_TABLA.Mecanico (
	nro_legajo int NOT NULL,
	fk_taller int NOT NULL,
	nombre nvarchar(255) NULL,
	apellido nvarchar(255) NULL,
	dni decimal(18,0) NULL,
	direccion nvarchar(255) NULL,
	telefono int NULL,
	mail nvarchar(255) NULL,
	fecha_nac datetime2(3) NULL,
	costo_hora int NULL
);
GO

CREATE TABLE HAY_TABLA.Taller (
	pk_taller int IDENTITY(1,1) NOT NULL,
	direccion nvarchar(255) NULL,
	telefono decimal(18,0) NULL,
	mail nvarchar(255) NULL,
	nombre nvarchar(255) NULL,
	fk_ciudad bigint NOT NULL
);
GO

CREATE TABLE HAY_TABLA.Chofer (
	nro_legajo bigint NOT NULL,
	nombre nvarchar(255) NULL,
	apellido nvarchar(255) NULL,
	dni decimal(18,2) NULL,
	direccion nvarchar(255) NULL,
	telefono int NULL,
	mail nvarchar(255) NULL,
	fecha_nac datetime2(3) NULL,
	costo_hora int NULL
);
GO

CREATE TABLE HAY_TABLA.Ciudad (
	pk_ciudad bigint IDENTITY (1,1) NOT NULL,
	descripcion nvarchar(255) NULL
);
GO

CREATE TABLE HAY_TABLA.Viaje_X_Paquete (
	pk_paquete nvarchar(255) NOT NULL,
	pk_viaje bigint NOT NULL,
	cantidad int NULL
);
GO


CREATE TABLE HAY_TABLA.Paquete (
	descripcion nvarchar(255) NOT NULL, 
	peso_max decimal(18,2) NULL,
	alto_max decimal(18,2) NULL,
	largo_max decimal(18,2) NULL,
	precio decimal(18,2) NULL
);
GO

-- Primary Keys --

ALTER TABLE HAY_TABLA.Orden 
ADD PRIMARY KEY (nro_orden);
GO

ALTER TABLE HAY_TABLA.Camion
ADD PRIMARY KEY (patente);
GO

ALTER TABLE HAY_TABLA.Modelo
ADD PRIMARY KEY (pk_modelo);
GO

ALTER TABLE HAY_TABLA.Viaje
ADD PRIMARY KEY (pk_viaje);
GO

ALTER TABLE HAY_TABLA.Recorrido
ADD PRIMARY KEY (pk_recorrido);
GO

ALTER TABLE HAY_TABLA.Marca 
ADD PRIMARY KEY (pk_marca);
GO

ALTER TABLE HAY_TABLA.Estado 
ADD PRIMARY KEY (pk_estado);
GO

ALTER TABLE HAY_TABLA.Material
ADD PRIMARY KEY (cod_material);
GO

ALTER TABLE HAY_TABLA.Material_X_Tarea
ADD PRIMARY KEY (pk_material, pk_tarea);
GO

ALTER TABLE HAY_TABLA.Tarea
ADD PRIMARY KEY (codigo);
GO

ALTER TABLE HAY_TABLA.Orden_X_Tarea
ADD PRIMARY KEY (pk_orden,pk_tarea,pk_mecanico);
GO

ALTER TABLE HAY_TABLA.Mecanico 
ADD PRIMARY KEY (nro_legajo);
GO

ALTER TABLE HAY_TABLA.Taller
ADD PRIMARY KEY (pk_taller);
GO

ALTER TABLE HAY_TABLA.Chofer 
ADD PRIMARY KEY (nro_legajo);
GO

ALTER TABLE HAY_TABLA.Ciudad
ADD PRIMARY KEY (pk_ciudad);
GO

ALTER TABLE HAY_TABLA.Viaje_X_Paquete
ADD PRIMARY KEY (pk_paquete, pk_viaje);
GO

ALTER TABLE HAY_TABLA.Paquete
ADD PRIMARY KEY (descripcion);
GO

-- Foreign Keys --
ALTER TABLE HAY_TABLA.Orden
ADD FOREIGN KEY (fk_camion) REFERENCES HAY_TABLA.Camion(patente);
GO

ALTER TABLE HAY_TABLA.Orden
ADD FOREIGN KEY (fk_estado) REFERENCES HAY_TABLA.Estado(pk_estado);
GO

ALTER TABLE HAY_TABLA.Mecanico
ADD FOREIGN KEY (fk_taller) REFERENCES HAY_TABLA.Taller(pk_taller);
GO

ALTER TABLE HAY_TABLA.Camion
ADD FOREIGN KEY (fk_modelo) REFERENCES HAY_TABLA.Modelo(pk_modelo);
GO

ALTER TABLE HAY_TABLA.Camion
ADD FOREIGN KEY (fk_marca) REFERENCES HAY_TABLA.Marca(pk_marca);
GO

ALTER TABLE HAY_TABLA.Viaje
ADD FOREIGN KEY (fk_camion) REFERENCES HAY_TABLA.Camion(patente);
GO

ALTER TABLE HAY_TABLA.Viaje
ADD FOREIGN KEY (fk_chofer) REFERENCES HAY_TABLA.Chofer(nro_legajo);
GO

ALTER TABLE HAY_TABLA.Viaje
ADD FOREIGN KEY (fk_recorrido) REFERENCES HAY_TABLA.Recorrido(pk_recorrido);
GO

ALTER TABLE HAY_TABLA.Recorrido
ADD FOREIGN KEY (ciudad_origen) REFERENCES HAY_TABLA.Ciudad(pk_ciudad);
GO

ALTER TABLE HAY_TABLA.Recorrido
ADD FOREIGN KEY (ciudad_destino) REFERENCES HAY_TABLA.Ciudad(pk_ciudad);
GO

ALTER TABLE HAY_TABLA.Orden_x_Tarea
ADD FOREIGN KEY (pk_tarea) REFERENCES HAY_TABLA.Tarea(codigo) ;
GO

ALTER TABLE HAY_TABLA.Orden_x_Tarea
ADD FOREIGN KEY (pk_orden) REFERENCES HAY_TABLA.Orden(nro_orden) ;
GO

ALTER TABLE HAY_TABLA.Orden_x_Tarea
ADD FOREIGN KEY (pk_mecanico) REFERENCES HAY_TABLA.Mecanico(nro_legajo) ;
GO

ALTER TABLE HAY_TABLA.Taller
ADD FOREIGN KEY (fk_ciudad) REFERENCES HAY_TABLA.Ciudad(pk_ciudad) ;
GO




--Funciones
--Obtener PK de la ciudad a traves de su descripcion
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_CIUDAD(@ciudad NVARCHAR(255)) RETURNS bigint AS
	BEGIN
		DECLARE @pk_ciudad bigint;

		SELECT @pk_ciudad = pk_ciudad FROM HAY_TABLA.Ciudad 
		WHERE descripcion = @ciudad;

		RETURN @pk_ciudad;
	END
GO

--Obtener PK del estado a traves de su descripcion
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_ESTADO(@estado NVARCHAR(255)) RETURNS int AS
	BEGIN
		DECLARE @pk_estado int;

		SELECT @pk_estado = pk_estado FROM HAY_TABLA.Estado 
		WHERE descripcion = @estado;

		RETURN @pk_estado;
	END
GO

--Obtener PK del recorrido a traves de su ciudad_origen y ciudad_destino
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_RECORRIDO(@km int, @precio decimal(18,2)) RETURNS int AS
	BEGIN
		DECLARE @pk_recorrido int;
		
		SELECT @pk_recorrido = pk_recorrido FROM HAY_TABLA.Recorrido
		WHERE km = @km and precio = @precio; 

		RETURN @pk_recorrido;
	END
GO


--Obtener PK del Taller a traves de su direccion
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_TALLER(@direccion nvarchar(255)) RETURNS int AS
	BEGIN
		DECLARE @pk_taller int;

		SELECT @pk_taller = pk_taller FROM HAY_TABLA.Taller 
		WHERE direccion = @direccion;

		RETURN @pk_taller;
	END
GO

--Obtener PK del Viaje a traves de su fecha_inicio, fecha_fin y combustible
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_VIAJE(@fecha_inicio datetime2(7), @fecha_fin datetime2(7), @combustible decimal(18,2), @legajo_chofer bigint, @patente nvarchar(255)) RETURNS bigint AS
	BEGIN
		DECLARE @pk_viaje bigint;

		SELECT @pk_viaje = pk_viaje FROM HAY_TABLA.Viaje 
		WHERE fecha_inicio = @fecha_inicio
		AND fecha_fin = @fecha_fin
		AND consumo_combustible = @combustible
		AND fk_chofer = @legajo_chofer
		AND fk_camion = @patente;

		RETURN @pk_viaje;
	END
GO

--Obtener PK de la Orden a traves de su fecha_generacion
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_ORDEN(@fk_camion nvarchar(255), @descrip_estado nvarchar(255), @fecha nvarchar(255)) RETURNS bigint AS
	BEGIN
		DECLARE @pk_orden bigint;
		DECLARE @fk_estado int = HAY_TABLA.OBTENER_PK_ESTADO(@descrip_estado)
		

		SELECT @pk_orden = nro_orden FROM HAY_TABLA.Orden 
		WHERE HAY_TABLA.Orden.fk_camion = @fk_camion AND HAY_TABLA.Orden.fk_estado = @fk_estado 
		AND HAY_TABLA.Orden.fecha_generacion = @fecha
		RETURN @pk_orden;
	END
GO

--Obtener PK de la Marca a traves de su descripcion
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_MARCA(@marca NVARCHAR(255)) RETURNS int AS
	BEGIN
		DECLARE @pk_marca int;

		SELECT @pk_marca = pk_marca FROM HAY_TABLA.Marca 
		WHERE descripcion = @marca;

		RETURN @pk_marca;
	END
GO

--Obtener PK del Modelo a traves de su descripcion
GO
	CREATE FUNCTION HAY_TABLA.OBTENER_PK_MODELO(@modelo_camion nvarchar(255),@modelo_carga int) RETURNS bigint AS
	BEGIN
		DECLARE @pk_modelo bigint;

		SELECT @pk_modelo = pk_modelo FROM HAY_TABLA.Modelo 
		WHERE nombre_camion = @modelo_camion
		AND capacidad_carga = @modelo_carga;

		RETURN @pk_modelo;
	END
GO



----------------------Procedures-----------------------------
--TALLER
CREATE PROCEDURE HAY_TABLA.migrar_taller AS
BEGIN
	INSERT INTO HAY_TABLA.Taller (direccion, telefono, mail, nombre, fk_ciudad)
		SELECT DISTINCT TALLER_DIRECCION, TALLER_TELEFONO, TALLER_MAIL, TALLER_NOMBRE, HAY_TABLA.OBTENER_PK_CIUDAD(TALLER_CIUDAD) FROM gd_esquema.Maestra
		WHERE TALLER_NOMBRE IS NOT NULL
END
GO
--CHOFER
CREATE PROCEDURE HAY_TABLA.migrar_chofer AS
BEGIN
	INSERT INTO HAY_TABLA.Chofer (nro_legajo, nombre, apellido, direccion, dni, telefono, mail, fecha_nac, costo_hora)
		SELECT DISTINCT CHOFER_NRO_LEGAJO, CHOFER_NOMBRE, CHOFER_APELLIDO, CHOFER_DIRECCION, CHOFER_DNI, CHOFER_TELEFONO, CHOFER_MAIL, CHOFER_FECHA_NAC, CHOFER_COSTO_HORA FROM gd_esquema.Maestra
		WHERE CHOFER_NRO_LEGAJO IS NOT NULL
END
GO
-- PAQUETE
CREATE PROCEDURE HAY_TABLA.migrar_paquete AS
BEGIN
	INSERT INTO HAY_TABLA.Paquete(descripcion, peso_max, alto_max, largo_max, precio)
		SELECT DISTINCT PAQUETE_DESCRIPCION, PAQUETE_PESO_MAX, PAQUETE_ALTO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PRECIO FROM gd_esquema.Maestra
		WHERE PAQUETE_DESCRIPCION IS NOT NULL
END
GO
--MECANICO
CREATE PROCEDURE HAY_TABLA.migrar_mecanico AS
BEGIN
	INSERT INTO HAY_TABLA.Mecanico(nro_legajo, fk_taller, nombre, apellido, direccion, dni, telefono, mail, fecha_nac, costo_hora)
		SELECT DISTINCT MECANICO_NRO_LEGAJO, HAY_TABLA.OBTENER_PK_TALLER(TALLER_DIRECCION) , MECANICO_NOMBRE, MECANICO_APELLIDO, MECANICO_DIRECCION, MECANICO_DNI, MECANICO_TELEFONO, MECANICO_MAIL, MECANICO_FECHA_NAC, MECANICO_COSTO_HORA FROM gd_esquema.Maestra
		WHERE MECANICO_NRO_LEGAJO IS NOT NULL
END
GO
--TAREA
CREATE PROCEDURE HAY_TABLA.migrar_tarea AS
BEGIN
	INSERT INTO HAY_TABLA.Tarea(codigo, descripcion, tipo, tiempo_estimado)
		SELECT DISTINCT TAREA_CODIGO, TAREA_DESCRIPCION, TIPO_TAREA, TAREA_TIEMPO_ESTIMADO FROM gd_esquema.Maestra
		WHERE TAREA_CODIGO IS NOT NULL
END
GO
--MATERIAL
CREATE PROCEDURE HAY_TABLA.migrar_material AS
BEGIN
	INSERT INTO HAY_TABLA.Material(cod_material, precio, descripcion)
		SELECT DISTINCT MATERIAL_COD, MATERIAL_PRECIO, MATERIAL_DESCRIPCION FROM gd_esquema.Maestra
		WHERE MATERIAL_COD IS NOT NULL
END
GO 
--ESTADO
CREATE PROCEDURE HAY_TABLA.migrar_estado AS
BEGIN
	INSERT INTO HAY_TABLA.Estado(descripcion)
		SELECT DISTINCT ORDEN_TRABAJO_ESTADO FROM gd_esquema.Maestra
		WHERE ORDEN_TRABAJO_ESTADO IS NOT NULL
END
GO
--MARCA
CREATE PROCEDURE HAY_TABLA.migrar_marca AS
BEGIN
	INSERT INTO HAY_TABLA.Marca(descripcion)
		SELECT DISTINCT MARCA_CAMION_MARCA FROM gd_esquema.Maestra
		WHERE MARCA_CAMION_MARCA IS NOT NULL
END
GO
--CIUDAD
CREATE PROCEDURE HAY_TABLA.migrar_ciudad AS
BEGIN
	INSERT INTO HAY_TABLA.Ciudad(descripcion)
		SELECT DISTINCT RECORRIDO_CIUDAD_DESTINO FROM gd_esquema.Maestra
		WHERE RECORRIDO_CIUDAD_DESTINO IS NOT NULL
		UNION
		SELECT DISTINCT RECORRIDO_CIUDAD_ORIGEN FROM gd_esquema.Maestra
		WHERE RECORRIDO_CIUDAD_ORIGEN IS NOT NULL
		UNION
		SELECT DISTINCT TALLER_CIUDAD FROM gd_esquema.Maestra
		WHERE TALLER_CIUDAD IS NOT NULL 

END
GO
--RECORRIDO
CREATE PROCEDURE HAY_TABLA.migrar_recorrido AS
BEGIN
	INSERT INTO HAY_TABLA.Recorrido(ciudad_destino, ciudad_origen, km, precio)
		SELECT DISTINCT HAY_TABLA.OBTENER_PK_CIUDAD(RECORRIDO_CIUDAD_DESTINO), HAY_TABLA.OBTENER_PK_CIUDAD(RECORRIDO_CIUDAD_ORIGEN), RECORRIDO_KM, RECORRIDO_PRECIO 
		FROM gd_esquema.Maestra
		WHERE RECORRIDO_KM IS NOT NULL
END
GO
--VIAJE
CREATE PROCEDURE HAY_TABLA.migrar_viaje AS
BEGIN
	INSERT INTO HAY_TABLA.Viaje(fk_camion, fk_chofer, fk_recorrido, fecha_inicio, fecha_fin, consumo_combustible)
		SELECT DISTINCT CAMION_PATENTE, CHOFER_NRO_LEGAJO, HAY_TABLA.OBTENER_PK_RECORRIDO(RECORRIDO_KM, RECORRIDO_PRECIO), VIAJE_FECHA_INICIO, VIAJE_FECHA_FIN, VIAJE_CONSUMO_COMBUSTIBLE
		FROM gd_esquema.Maestra
		WHERE VIAJE_FECHA_INICIO IS NOT NULL
END
GO
--ORDEN
CREATE PROCEDURE HAY_TABLA.migrar_orden AS
BEGIN
	INSERT INTO HAY_TABLA.Orden(fk_camion, fk_estado, fecha_generacion)
		SELECT DISTINCT CAMION_PATENTE, HAY_TABLA.OBTENER_PK_ESTADO(ORDEN_TRABAJO_ESTADO), ORDEN_TRABAJO_FECHA 
		FROM gd_esquema.Maestra
		WHERE ORDEN_TRABAJO_ESTADO IS NOT NULL
END
GO
--MATERIAL X TAREA
CREATE PROCEDURE HAY_TABLA.migrar_material_x_tarea AS
BEGIN
	INSERT INTO HAY_TABLA.Material_X_Tarea(pk_tarea,pk_material,cantidad)
		SELECT  TAREA_CODIGO, MATERIAL_COD, count(*) as cantidad  FROM gd_esquema.Maestra
		WHERE MATERIAL_COD IS NOT NULL
		GROUP BY TAREA_CODIGO,MATERIAL_COD
END
GO 

--VIAJE X PAQUETE
CREATE PROCEDURE HAY_TABLA.migrar_viaje_x_paquete AS
BEGIN
	INSERT INTO HAY_TABLA.Viaje_X_Paquete(pk_paquete,pk_viaje,cantidad)
		SELECT DISTINCT PAQUETE_DESCRIPCION, HAY_TABLA.OBTENER_PK_VIAJE(VIAJE_FECHA_INICIO,VIAJE_FECHA_FIN,VIAJE_CONSUMO_COMBUSTIBLE, CHOFER_NRO_LEGAJO, CAMION_PATENTE), SUM(PAQUETE_CANTIDAD)  
		FROM gd_esquema.Maestra
		WHERE PAQUETE_DESCRIPCION IS NOT NULL
		GROUP BY PAQUETE_DESCRIPCION, HAY_TABLA.OBTENER_PK_VIAJE(VIAJE_FECHA_INICIO,VIAJE_FECHA_FIN,VIAJE_CONSUMO_COMBUSTIBLE, CHOFER_NRO_LEGAJO, CAMION_PATENTE)
END
GO 

--ORDEN X TAREA
CREATE PROCEDURE HAY_TABLA.migrar_orden_x_tarea AS
BEGIN
	
	INSERT INTO HAY_TABLA.Orden_X_Tarea(pk_orden,pk_tarea,pk_mecanico,fecha_inicio_planificado,fecha_inicio,fecha_fin)
		SELECT DISTINCT HAY_TABLA.OBTENER_PK_ORDEN(CAMION_PATENTE, ORDEN_TRABAJO_ESTADO, ORDEN_TRABAJO_FECHA),TAREA_CODIGO, MECANICO_NRO_LEGAJO, TAREA_FECHA_INICIO_PLANIFICADO,TAREA_FECHA_INICIO,TAREA_FECHA_FIN  
		FROM gd_esquema.Maestra
		WHERE TAREA_CODIGO IS NOT NULL  ORDER BY 1
END
GO 
--CAMION
CREATE PROCEDURE HAY_TABLA.migrar_camion AS
BEGIN
	INSERT INTO HAY_TABLA.Camion(patente,fk_marca,fk_modelo,nro_chas,fecha_alta,nro_motor)
		SELECT DISTINCT CAMION_PATENTE, HAY_TABLA.OBTENER_PK_MARCA(MARCA_CAMION_MARCA) , HAY_TABLA.OBTENER_PK_MODELO(MODELO_CAMION, MODELO_CAPACIDAD_CARGA), CAMION_NRO_CHASIS, CAMION_FECHA_ALTA, CAMION_NRO_MOTOR
		FROM gd_esquema.Maestra
		WHERE CAMION_PATENTE IS NOT NULL
END
GO
--MODELO
CREATE PROCEDURE HAY_TABLA.migrar_modelo AS
BEGIN
	INSERT INTO HAY_TABLA.Modelo(nombre_camion,vel_maxima,capacidad_tanque,capacidad_carga)
		SELECT DISTINCT MODELO_CAMION, MODELO_VELOCIDAD_MAX,MODELO_CAPACIDAD_TANQUE,MODELO_CAPACIDAD_CARGA
		FROM gd_esquema.Maestra
		WHERE MODELO_CAMION IS NOT NULL AND MODELO_VELOCIDAD_MAX IS NOT NULL
END
GO 

CREATE INDEX ix_recorrido ON HAY_TABLA.Recorrido (km, precio);
CREATE INDEX ix_orden ON HAY_TABLA.Orden (fecha_generacion);
CREATE INDEX ix_viaje ON HAY_TABLA.Viaje (fecha_inicio, fecha_fin, consumo_combustible, fk_chofer, fk_camion);

EXEC HAY_TABLA.migrar_ciudad;
EXEC HAY_TABLA.migrar_taller; 
EXEC HAY_TABLA.migrar_chofer; 
EXEC HAY_TABLA.migrar_paquete; 
EXEC HAY_TABLA.migrar_mecanico;
EXEC HAY_TABLA.migrar_tarea;
EXEC HAY_TABLA.migrar_material;
EXEC HAY_TABLA.migrar_estado; 
EXEC HAY_TABLA.migrar_marca; 
EXEC HAY_TABLA.migrar_recorrido; 
EXEC HAY_TABLA.migrar_modelo;
EXEC HAY_TABLA.migrar_camion;
EXEC HAY_TABLA.migrar_viaje;
EXEC HAY_TABLA.migrar_orden; 
EXEC HAY_TABLA.migrar_material_x_tarea;
EXEC HAY_TABLA.migrar_orden_x_tarea;
EXEC HAY_TABLA.migrar_viaje_x_paquete;
go

--VISTAS
--View que junta el recorrido con su ciudad de origen y destino
CREATE VIEW HAY_TABLA.view_recorridos AS 
	SELECT r.pk_recorrido, co.descripcion ciudad_origen, cd.descripcion ciudad_destino, r.km, r.precio FROM HAY_TABLA.Recorrido r
	JOIN HAY_TABLA.Ciudad co ON r.ciudad_origen = co.pk_ciudad
	JOIN HAY_TABLA.Ciudad cd ON r.ciudad_destino = cd.pk_ciudad;
GO

--View que muestra todo lo relacionado a un viaje, ademas aprovechamos la view anterior para mostrar las ciudades del viaje.
CREATE VIEW HAY_TABLA.view_viajes AS
	SELECT * FROM HAY_TABLA.Viaje v
	JOIN HAY_TABLA.Chofer c ON v.fk_chofer = c.nro_legajo
	JOIN HAY_TABLA.Camion ca ON v.fk_camion = ca.patente
	JOIN HAY_TABLA.view_recorridos vr ON v.fk_recorrido = vr.pk_recorrido
GO 

--View que muestra la informacion basica de un camion y los km que recorrió
CREATE VIEW HAY_TABLA.view_camion AS
	SELECT HAY_TABLA.Camion.patente, HAY_TABLA.Marca.descripcion, HAY_TABLA.Modelo.nombre_camion, HAY_TABLA.Modelo.vel_maxima, SUM(HAY_TABLA.Recorrido.km) AS [KMs Recorridos]
	FROM  HAY_TABLA.Camion JOIN HAY_TABLA.Marca ON HAY_TABLA.Camion.fk_marca = HAY_TABLA.Marca.pk_marca
	  JOIN HAY_TABLA.Modelo ON HAY_TABLA.Camion.fk_modelo = HAY_TABLA.Modelo.pk_modelo
	  JOIN HAY_TABLA.Viaje ON HAY_TABLA.Viaje.fk_camion = HAY_TABLA.Camion.patente
	  JOIN HAY_TABLA.Recorrido ON HAY_TABLA.Viaje.fk_recorrido = HAY_TABLA.Recorrido.pk_recorrido
	GROUP BY HAY_TABLA.Camion.patente, HAY_TABLA.Marca.descripcion, HAY_TABLA.Modelo.nombre_camion, HAY_TABLA.Modelo.vel_maxima
GO 



 
