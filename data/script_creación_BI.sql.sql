USE GD2C2021
GO

-- DROPS --
-- DROPS TABLAS --
IF OBJECT_ID('HAY_TABLA.BI_Hecho_materiales','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Hecho_materiales;

IF OBJECT_ID('HAY_TABLA.BI_Hecho_reparacion','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Hecho_reparacion;

IF OBJECT_ID('HAY_TABLA.BI_Hecho_facturacion','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Hecho_facturacion;

IF OBJECT_ID('HAY_TABLA.BI_Dim_camion','U') IS NOT NULL
  DROP TABLE HAY_TABLA.BI_Dim_camion;

IF OBJECT_ID('HAY_TABLA.BI_Dim_chofer','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_chofer;

IF OBJECT_ID('HAY_TABLA.BI_Dim_marca','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_marca;

IF OBJECT_ID('HAY_TABLA.BI_Dim_material','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_material;

IF OBJECT_ID('HAY_TABLA.BI_Dim_mecanico','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_mecanico;

IF OBJECT_ID('HAY_TABLA.BI_Dim_viaje','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_viaje;

IF OBJECT_ID('HAY_TABLA.BI_Dim_modelo','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_modelo;

IF OBJECT_ID('HAY_TABLA.BI_Dim_recorrido','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_recorrido;

IF OBJECT_ID('HAY_TABLA.BI_Dim_taller','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_taller;

IF OBJECT_ID('HAY_TABLA.BI_Dim_tiempo','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_tiempo;

IF OBJECT_ID('HAY_TABLA.BI_Dim_tipo_tarea','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_tipo_tarea;

IF OBJECT_ID('HAY_TABLA.BI_Dim_paquete','U') IS NOT NULL
DROP TABLE HAY_TABLA.BI_Dim_paquete;

-- DROPS PROCS --
IF OBJECT_ID('HAY_TABLA.migrar_dim_recorrido') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_recorrido;

IF OBJECT_ID('HAY_TABLA.migrar_dim_camion') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_camion;

IF OBJECT_ID('HAY_TABLA.migrar_dim_marca') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_marca;

IF OBJECT_ID('HAY_TABLA.migrar_dim_chofer') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_chofer;

IF OBJECT_ID('HAY_TABLA.migrar_dim_mecanico') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_mecanico;

IF OBJECT_ID('HAY_TABLA.migrar_dim_material') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_material;

IF OBJECT_ID('HAY_TABLA.migrar_dim_modelo') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_modelo;

IF OBJECT_ID('HAY_TABLA.migrar_dim_tipo_tarea') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_tipo_tarea;

IF OBJECT_ID('HAY_TABLA.migrar_dim_taller') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_taller;

IF OBJECT_ID('HAY_TABLA.migrar_dim_tiempo') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_tiempo;

IF OBJECT_ID('HAY_TABLA.migrar_dim_viaje') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_viaje;

IF OBJECT_ID('HAY_TABLA.cargar_hecho_reparacion') IS NOT NULL
DROP PROCEDURE HAY_TABLA.cargar_hecho_reparacion;

IF OBJECT_ID('HAY_TABLA.migrar_dim_paquete') IS NOT NULL
DROP PROCEDURE HAY_TABLA.migrar_dim_paquete;

IF OBJECT_ID('HAY_TABLA.cargar_hecho_facturacion') IS NOT NULL
DROP PROCEDURE HAY_TABLA.cargar_hecho_facturacion;

IF OBJECT_ID('HAY_TABLA.cargar_hecho_materiales') IS NOT NULL
DROP PROCEDURE HAY_TABLA.cargar_hecho_materiales;

-- DROPS FUNC --
IF OBJECT_ID('HAY_TABLA.ID_TIEMPO') IS NOT NULL
DROP FUNCTION HAY_TABLA.ID_TIEMPO;

IF OBJECT_ID('HAY_TABLA.COSTO_TAREA') IS NOT NULL
DROP FUNCTION HAY_TABLA.COSTO_TAREA;

IF OBJECT_ID('HAY_TABLA.COSTO_VIAJE') IS NOT NULL
DROP FUNCTION HAY_TABLA.COSTO_VIAJE;

IF OBJECT_ID('HAY_TABLA.COSTO_CHOFER') IS NOT NULL
DROP FUNCTION HAY_TABLA.COSTO_CHOFER;

IF OBJECT_ID('HAY_TABLA.COSTO_VIAJE_RECORRIDO') IS NOT NULL
DROP FUNCTION HAY_TABLA.COSTO_VIAJE_RECORRIDO;

-- DROPS VIEWS --
IF OBJECT_ID('HAY_TABLA.v_tiempo_fuera_servicio_x_cuatrimestre') IS NOT NULL
DROP VIEW  HAY_TABLA.v_tiempo_fuera_servicio_x_cuatrimestre;

IF OBJECT_ID('HAY_TABLA.v_top_5_tareas_x_modelo') IS NOT NULL
DROP VIEW  HAY_TABLA.v_top_5_tareas_x_modelo;

IF OBJECT_ID('HAY_TABLA.v_costo_total_x_mantenimiento') IS NOT NULL
DROP VIEW  HAY_TABLA.v_costo_total_x_mantenimiento;

IF OBJECT_ID('HAY_TABLA.v_desvio_x_tareea_x_taller') IS NOT NULL
DROP VIEW  HAY_TABLA.v_desvio_x_tareea_x_taller;

IF OBJECT_ID('HAY_TABLA.v_fact_x_recorrido_x_cuatri') IS NOT NULL
DROP VIEW  HAY_TABLA.v_fact_x_recorrido_x_cuatri;

IF OBJECT_ID('HAY_TABLA.v_costo_promedio_x_rango_etario_chofer') IS NOT NULL
DROP VIEW  HAY_TABLA.v_costo_promedio_x_rango_etario_chofer;

IF OBJECT_ID('HAY_TABLA.v_ganancia_x_camion') IS NOT NULL
DROP VIEW  HAY_TABLA.v_ganancia_x_camion;

IF OBJECT_ID('HAY_TABLA.top_10_materiales_x_taller') IS NOT NULL
DROP VIEW  HAY_TABLA.top_10_materiales_x_taller;



-- DIMENSIONES --
CREATE TABLE HAY_TABLA.BI_Dim_recorrido (
	pk_recorrido int NOT NULL,
	km int NOT NULL,
	precio decimal(18,2) NOT NULL,
	ciudad_i nvarchar(255) NOT NULL,
	ciudad_f nvarchar(255) NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_camion (
	patente nvarchar(255) NOT NULL,
	nro_chas nvarchar(255) NOT NULL,
	nro_motor nvarchar(255) NOT NULL,
	fecha_alta datetime2(3) NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_marca (
	pk_marca int NOT NULL,
	descripcion nvarchar(255) NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_chofer (
	nro_legajo bigint NOT NULL,
	nombre nvarchar(255) NOT NULL,
	apellido nvarchar(255) NOT NULL,
	dni decimal(18,2) NOT NULL,
	direccion nvarchar(255) NOT NULL,
	telefono int NOT NULL,
	mail nvarchar(255) NOT NULL,
	rango_edad nvarchar(255) NOT NULL,
	costo_hora int NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_mecanico (
	nro_legajo bigint NOT NULL,
	nombre nvarchar(255) NOT NULL,
	apellido nvarchar(255) NOT NULL,
	dni decimal(18,2) NOT NULL,
	direccion nvarchar(255) NOT NULL,
	telefono int NOT NULL,
	mail nvarchar(255) NOT NULL,
	rango_edad nvarchar(255) NOT NULL,
	costo_hora int NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_material (
	cod_material nvarchar(100) NOT NULL,
	precio decimal(18,2) NOT NULL,
	descripcion nvarchar(255) NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_modelo (
	pk_modelo bigint NOT NULL,
	nombre_camion nvarchar(255) NOT NULL,
	vel_maxima int NOT NULL,
	capacidad_tanque int NOT NULL,
	capacidad_carga int NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_tipo_tarea (
	codigo int NOT NULL,
	descripcion nvarchar(255) NOT NULL,
	tipo nvarchar(255) NOT NULL,
	tiempo_estimado int NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_taller (
	pk_taller int NOT NULL,
	direccion nvarchar(255) NOT NULL,
	telefono decimal(18,2) NOT NULL,
	mail nvarchar(255) NOT NULL,
	nombre nvarchar(255) NOT NULL,
	ciudad nvarchar(255) NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_tiempo (
	pk_tiempo int IDENTITY(1,1) NOT NULL,
	año int NOT NULL,
	cuatrimestre int NOT NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_paquete (
	descripcion nvarchar(255) NOT NULL,
	peso_max decimal(18,2) NOT NULL,
	largo_max decimal(18,2) NOT NULL,
	alto_max decimal(18,2) NOT NULL,
	precio decimal(18,2) NOT NULL,
);
GO

CREATE TABLE HAY_TABLA.BI_Dim_viaje (
	pk_viaje bigint NOT NULL,
	fecha_inicio datetime2(7) NOT NULL,
	fecha_fin datetime2(7) NOT NULL,
	consumo_combustible decimal(18,2) NOT NULL
);
GO

-- HECHOS --
CREATE TABLE HAY_TABLA.BI_Hecho_reparacion (
	fk_camion nvarchar(255)  NULL,
	fk_marca int  NULL,
	fk_modelo bigint  NULL,
	fk_taller int  NULL,
	fk_tipo_tarea int  NULL,
	fk_mecanico bigint NULL,
	fk_tiempo int  NULL,
	costo_mantenimiento bigint null,
	tiempo_fuera_de_servicio int NULL
);
GO

CREATE TABLE HAY_TABLA.BI_Hecho_materiales (
	fk_taller int NOT NULL,
	fk_tipo_tarea int  NOT NULL,
	fk_material nvarchar(100) NOT NULL,
	cantidad int null
);
GO

CREATE TABLE HAY_TABLA.BI_Hecho_facturacion (
	fk_tiempo int  NULL,
	fk_recorrido int NULL,
	fk_viaje bigint NULL,
	fk_paquete nvarchar(255) NULL,
	fk_chofer bigint NULL,
	fk_camion nvarchar(255) NULL,
	facturacion_viaje decimal (12,2) NULL,
	costo_viaje decimal(12,2) NULL
);
GO

-- PKS --
ALTER TABLE HAY_TABLA.BI_Dim_recorrido
ADD PRIMARY KEY (pk_recorrido);
GO

ALTER TABLE HAY_TABLA.BI_Dim_camion
ADD PRIMARY KEY (patente);
GO

ALTER TABLE HAY_TABLA.BI_Dim_marca
ADD PRIMARY KEY (pk_marca);
GO

ALTER TABLE HAY_TABLA.BI_Dim_chofer
ADD PRIMARY KEY (nro_legajo);
GO

ALTER TABLE HAY_TABLA.BI_Dim_mecanico
ADD PRIMARY KEY (nro_legajo);
GO

ALTER TABLE HAY_TABLA.BI_Dim_material
ADD PRIMARY KEY (cod_material);
GO

ALTER TABLE HAY_TABLA.BI_Dim_modelo
ADD PRIMARY KEY (pk_modelo);
GO

ALTER TABLE HAY_TABLA.BI_Dim_tipo_tarea
ADD PRIMARY KEY (codigo);
GO

ALTER TABLE HAY_TABLA.BI_Dim_taller
ADD PRIMARY KEY (pk_taller);
GO

ALTER TABLE HAY_TABLA.BI_Dim_tiempo
ADD PRIMARY KEY (pk_tiempo);
GO

ALTER TABLE HAY_TABLA.BI_Dim_viaje
ADD PRIMARY KEY (pk_viaje);
GO

ALTER TABLE HAY_TABLA.BI_Dim_paquete
ADD PRIMARY KEY (descripcion);
GO

-- FKS --
ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_camion) REFERENCES HAY_TABLA.BI_Dim_camion(patente) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_marca) REFERENCES HAY_TABLA.BI_Dim_marca(pk_marca) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_mecanico) REFERENCES HAY_TABLA.BI_Dim_mecanico(nro_legajo) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_modelo) REFERENCES HAY_TABLA.BI_Dim_modelo(pk_modelo) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_tipo_tarea) REFERENCES HAY_TABLA.BI_Dim_tipo_tarea(codigo) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_taller) REFERENCES HAY_TABLA.BI_Dim_taller(pk_taller) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_reparacion
ADD FOREIGN KEY (fk_tiempo) REFERENCES HAY_TABLA.BI_Dim_tiempo(pk_tiempo) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_facturacion
ADD FOREIGN KEY (fk_tiempo) REFERENCES HAY_TABLA.BI_Dim_tiempo(pk_tiempo) ;
GO

ALTER TABLE HAY_TABLA.BI_Hecho_facturacion
ADD FOREIGN KEY (fk_viaje) REFERENCES HAY_TABLA.BI_Dim_viaje(pk_viaje);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_facturacion
ADD FOREIGN KEY (fk_recorrido) REFERENCES HAY_TABLA.BI_Dim_recorrido(pk_recorrido);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_facturacion
ADD FOREIGN KEY (fk_paquete) REFERENCES HAY_TABLA.BI_Dim_paquete(descripcion);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_facturacion
ADD FOREIGN KEY (fk_chofer) REFERENCES HAY_TABLA.BI_Dim_chofer(nro_legajo);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_facturacion
ADD FOREIGN KEY (fk_camion) REFERENCES HAY_TABLA.BI_Dim_camion(patente);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_materiales
ADD FOREIGN KEY (fk_taller) REFERENCES HAY_TABLA.BI_Dim_taller(pk_taller);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_materiales
ADD FOREIGN KEY (fk_tipo_tarea) REFERENCES HAY_TABLA.BI_Dim_tipo_tarea(codigo);
GO

ALTER TABLE HAY_TABLA.BI_Hecho_materiales
ADD FOREIGN KEY (fk_material) REFERENCES HAY_TABLA.BI_Dim_material(cod_material);
GO

-- FUNCTION --
CREATE FUNCTION HAY_TABLA.ID_TIEMPO(@fecha DATE) RETURNS int AS
BEGIN
	DECLARE @año int,
			@quarter int,
			@id_tiempo int

	SET @año = DATEPART(YEAR, @fecha)
	SET @quarter = DATEPART(QUARTER, @fecha)

	SELECT @id_tiempo = pk_tiempo FROM HAY_TABLA.BI_Dim_tiempo WHERE año = @año AND cuatrimestre = @quarter
	RETURN @id_tiempo
END
GO


CREATE FUNCTION HAY_TABLA.COSTO_TAREA(@dias int, @mecanico int,@tarea int) RETURNS  decimal(12,2) AS
BEGIN
	declare @costo_mecanico  decimal(12,2)
	declare @costo_materiales  decimal(12,2)

	SET  @costo_mecanico = (select m.costo_hora from HAY_TABLA.Mecanico m  where m.nro_legajo = @mecanico) * 8 * @dias

	SET @costo_materiales = (select SUM(m.precio  * mxt.cantidad) FROM HAY_TABLA.Material_x_tarea mxt JOIN HAY_TABLA.Material m ON m.cod_material = mxt.pk_material where mxt.pk_tarea = @tarea )

	return @costo_materiales + @costo_mecanico

END
GO

CREATE FUNCTION HAY_TABLA.COSTO_VIAJE(@viaje bigint, @recorrido int) RETURNS  decimal(12,2) AS
BEGIN
	declare @costo  decimal(12,2)
	declare @costo_recorrido decimal(18,2)

	set @costo_recorrido = (select r.precio from HAY_TABLA.Recorrido r where r.pk_recorrido = @recorrido)

	SET  @costo = (select sum(vxp.cantidad * (@costo_recorrido + p.precio)) from HAY_TABLA.Viaje_X_Paquete vxp JOIN HAY_TABLA.Paquete p ON p.descripcion = vxp.pk_paquete where vxp.pk_viaje = @viaje) 
	
	return @costo
END
GO

CREATE FUNCTION HAY_TABLA.COSTO_CHOFER(@viaje bigint, @chofer bigint) RETURNS  decimal(12,2) AS
BEGIN
	 declare @costo decimal(12,2)
	 

	 set @costo = (select c.costo_hora from BI_Dim_chofer c where c.nro_legajo = @chofer) * 8 * (select (DATEDIFF(DD, v.fecha_inicio, v.fecha_fin)) from BI_Dim_viaje v where v.pk_viaje = @viaje)

	 return @costo
END
GO

CREATE FUNCTION HAY_TABLA.COSTO_VIAJE_RECORRIDO(@viaje bigint, @chofer bigint) RETURNS  decimal(12,2) AS
BEGIN
	 declare @costo decimal(12,2)
	 

	 set @costo = HAY_TABLA.COSTO_CHOFER(@viaje,@chofer) + (select dv.consumo_combustible from HAY_TABLA.BI_Dim_viaje dv where dv.pk_viaje = @viaje) *100

	 return @costo
END
GO


-- PROCEDURES --
CREATE PROCEDURE HAY_TABLA.migrar_dim_recorrido AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_recorrido(pk_recorrido, km, precio, ciudad_i, ciudad_f)
		SELECT DISTINCT r.pk_recorrido, r.km, r.precio, (SELECT descripcion FROM HAY_TABLA.Ciudad WHERE pk_ciudad = r.ciudad_origen), (SELECT descripcion FROM HAY_TABLA.Ciudad WHERE pk_ciudad = r.ciudad_destino)
		FROM HAY_TABLA.Recorrido r
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_camion AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_camion(patente, nro_chas, nro_motor, fecha_alta)
		SELECT DISTINCT c.patente, c.nro_chas, c.nro_motor, c.fecha_alta
		FROM HAY_TABLA.Camion c
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_marca AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_marca(pk_marca, descripcion)
		SELECT DISTINCT m.pk_marca, m.descripcion
		FROM HAY_TABLA.Marca m
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_paquete AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_paquete(descripcion,alto_max,largo_max,peso_max,precio)
		SELECT DISTINCT p.descripcion, p.alto_max, p.largo_max, p.peso_max, p.precio
		FROM HAY_TABLA.Paquete p
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_chofer AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_chofer(nro_legajo, nombre, apellido, dni, direccion, telefono,mail, rango_edad, costo_hora)
		SELECT DISTINCT c.nro_legajo, c.nombre, c.apellido, c.dni, c.direccion, c.telefono, c.mail, 
		(SELECT CASE
				WHEN YEAR(getdate()) - YEAR(c.fecha_nac) BETWEEN 18 AND 30 THEN '18 - 30 años'
				WHEN YEAR(getdate()) - YEAR(c.fecha_nac) BETWEEN 31 AND 50 THEN '31 - 50 años'
				WHEN YEAR(getdate()) - YEAR(c.fecha_nac) > 50 THEN '> 50 años'
				END
		), c.costo_hora
		FROM HAY_TABLA.Chofer c
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_mecanico AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_mecanico(nro_legajo, nombre, apellido, dni, direccion, telefono,mail, rango_edad, costo_hora)
		SELECT DISTINCT c.nro_legajo, c.nombre, c.apellido, c.dni, c.direccion, c.telefono, c.mail, 
		(SELECT CASE
				WHEN YEAR(getdate()) - YEAR(c.fecha_nac) BETWEEN 18 AND 30 THEN '18 - 30 años'
				WHEN YEAR(getdate()) - YEAR(c.fecha_nac) BETWEEN 31 AND 50 THEN '31 - 50 años'
				WHEN YEAR(getdate()) - YEAR(c.fecha_nac) > 50 THEN '> 50 años'
				END
		), c.costo_hora
		FROM HAY_TABLA.Mecanico c
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_material AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_material(cod_material, descripcion, precio)
		SELECT DISTINCT m.cod_material, m.descripcion, m.precio
		FROM HAY_TABLA.Material m
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_modelo AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_modelo(pk_modelo ,nombre_camion, vel_maxima, capacidad_tanque, capacidad_carga)
		SELECT DISTINCT m.pk_modelo, m.nombre_camion, m.vel_maxima, m.capacidad_tanque, m.capacidad_carga
		FROM HAY_TABLA.Modelo m
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_tipo_tarea AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_tipo_tarea(codigo, descripcion, tipo, tiempo_estimado)
		SELECT DISTINCT t.codigo, t.descripcion, t.tipo, t.tiempo_estimado
		FROM HAY_TABLA.Tarea t
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_taller AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_taller(pk_taller, direccion, telefono, mail, nombre, ciudad)
		SELECT DISTINCT t.pk_taller, t.direccion, t.telefono, t.mail, t.nombre, (SELECT descripcion FROM HAY_TABLA.Ciudad WHERE pk_ciudad = t.fk_ciudad)
		FROM HAY_TABLA.Taller t
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_tiempo AS
BEGIN
		INSERT INTO HAY_TABLA.BI_Dim_tiempo(año, cuatrimestre)
		SELECT DISTINCT YEAR(fecha_inicio), DATEPART(quarter, fecha_inicio)
		FROM HAY_TABLA.Orden_X_Tarea
		UNION
		SELECT DISTINCT YEAR(fecha_fin), DATEPART(quarter,fecha_fin)
		FROM HAY_TABLA.Orden_X_Tarea
		UNION
		SELECT DISTINCT YEAR(fecha_inicio), DATEPART(quarter,fecha_inicio)
		FROM HAY_TABLA.Viaje
		UNION
		SELECT DISTINCT YEAR(fecha_fin), DATEPART(quarter,fecha_fin)
		FROM HAY_TABLA.Viaje
END
GO

CREATE PROCEDURE HAY_TABLA.migrar_dim_viaje AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Dim_viaje(pk_viaje,fecha_inicio,fecha_fin,consumo_combustible)
		SELECT DISTINCT v.pk_viaje, v.fecha_inicio, v.fecha_fin, v.consumo_combustible
		FROM HAY_TABLA.Viaje v
END
GO

-- PROCEDURES HECHOS --

CREATE PROCEDURE HAY_TABLA.cargar_hecho_reparacion AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Hecho_reparacion(fk_camion, fk_modelo ,fk_tiempo,fk_taller, fk_tipo_tarea,tiempo_fuera_de_servicio, costo_mantenimiento)
		SELECT c.patente, c.fk_modelo, HAY_TABLA.ID_TIEMPO(oxt.fecha_inicio), mec.fk_taller ,oxt.pk_tarea ,(DATEDIFF(DD, oxt.fecha_inicio_planificado, oxt.fecha_inicio)), HAY_TABLA.COSTO_TAREA((DATEDIFF(DD, oxt.fecha_inicio, oxt.fecha_fin)), oxt.pk_mecanico, oxt.pk_tarea)
 		FROM HAY_TABLA.Camion c JOIN HAY_TABLA.Orden o ON o.fk_camion = c.patente
								JOIN HAY_TABLA.Orden_X_Tarea oxt ON o.nro_orden = oxt.pk_orden
								JOIN HAY_TABLA.Mecanico mec ON mec.nro_legajo = oxt.pk_mecanico  	
END
GO

CREATE PROCEDURE HAY_TABLA.cargar_hecho_facturacion AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Hecho_facturacion(fk_recorrido,fk_viaje,fk_tiempo,fk_paquete,facturacion_viaje,fk_chofer, fk_camion,costo_viaje)
		SELECT  r.pk_recorrido, v.pk_viaje,HAY_TABLA.ID_TIEMPO(v.fecha_inicio),vxp.pk_paquete , HAY_TABLA.COSTO_VIAJE(v.pk_viaje ,r.pk_recorrido),c.nro_legajo , ca.patente, HAY_TABLA.COSTO_VIAJE_RECORRIDO(v.pk_viaje,v.fk_chofer)
 		FROM HAY_TABLA.Recorrido r JOIN  HAY_TABLA.Viaje v ON r.pk_recorrido = v.fk_recorrido	
								   JOIN HAY_TABLA.Viaje_X_Paquete vxp ON vxp.pk_viaje = v.pk_viaje 	
								   JOIN HAY_TABLA.Chofer c ON c.nro_legajo = v.fk_chofer
								   JOIN HAY_TABLA.Camion ca ON ca.patente = v.fk_camion				
END
GO

CREATE PROCEDURE HAY_TABLA.cargar_hecho_materiales AS
BEGIN
	INSERT INTO HAY_TABLA.BI_Hecho_materiales(fk_material,fk_taller,fk_tipo_tarea,cantidad)
		SELECT  mxt.pk_material, mec.fk_taller,oxt.pk_tarea, mxt.cantidad
			FROM HAY_TABLA.Orden_X_Tarea oxt JOIN HAY_TABLA.Tarea t ON t.codigo = oxt.pk_tarea
				JOIN HAY_TABLA.Material_X_Tarea mxt ON mxt.pk_tarea = t.codigo		
				JOIN HAY_TABLA.Mecanico mec ON oxt.pk_mecanico = mec.nro_legajo
END
GO

EXEC HAY_TABLA.migrar_dim_paquete;
EXEC HAY_TABLA.migrar_dim_recorrido;
EXEC HAY_TABLA.migrar_dim_viaje;
EXEC HAY_TABLA.migrar_dim_camion;
EXEC HAY_TABLA.migrar_dim_marca;
EXEC HAY_TABLA.migrar_dim_chofer;
EXEC HAY_TABLA.migrar_dim_mecanico;
EXEC HAY_TABLA.migrar_dim_material;
EXEC HAY_TABLA.migrar_dim_modelo;
EXEC HAY_TABLA.migrar_dim_tipo_tarea;
EXEC HAY_TABLA.migrar_dim_taller;
EXEC HAY_TABLA.migrar_dim_tiempo;
EXEC HAY_TABLA.cargar_hecho_reparacion;
EXEC HAY_TABLA.cargar_hecho_facturacion;
EXEC HAY_TABLA.cargar_hecho_materiales;

GO
--VIEWS
/*
 Máximo tiempo fuera de servicio de cada camión por cuatrimestre
Se entiende por fuera de servicio cuando el camión está en el taller (tiene
una OT) y no se encuentra disponible para un viaje. 
*/
CREATE VIEW HAY_TABLA.v_tiempo_fuera_servicio_x_cuatrimestre AS
	SELECT  t.año AÑO, t.cuatrimestre CUATRIMESTRE,r.fk_camion FK_CAMION, MAX(r.tiempo_fuera_de_servicio) MAX_TIEMPO_OOS
	FROM HAY_TABLA.BI_Hecho_reparacion r 
	JOIN HAY_TABLA.BI_Dim_tiempo t ON t.pk_tiempo = r.fk_tiempo 
	GROUP BY r.fk_camion, t.año , t.cuatrimestre 
	--1197
GO

/*
Costo total de mantenimiento por camión, por taller, por cuatrimestre.
Se entiende por costo de mantenimiento el costo de materiales + el costo
de mano de obra insumido en cada tarea (correctivas y preventivas) 
*/
CREATE VIEW HAY_TABLA.v_costo_total_x_mantenimiento AS
	select t.año AÑO, t.cuatrimestre CUATRIMESTRE, r.fk_camion,r.fk_taller, sum(r.costo_mantenimiento) costo_total
	from HAY_TABLA.BI_Hecho_reparacion r
	JOIN HAY_TABLA.BI_Dim_tiempo t ON t.pk_tiempo = r.fk_tiempo 
	group by  t.año , t.cuatrimestre , r.fk_camion,r.fk_taller
GO


--Las 5 tareas que más se realizan por modelo de camión
CREATE VIEW HAY_TABLA.v_top_5_tareas_x_modelo AS
	SELECT  r.fk_modelo, dm.nombre_camion, r.fk_tipo_tarea, count(*) cantidad_veces_tarea
	FROM HAY_TABLA.BI_Hecho_reparacion r 
	JOIN HAY_TABLA.BI_Dim_modelo dm ON dm.pk_modelo = r.fk_modelo
	where  r.fk_tipo_tarea in (select top 5 rr.fk_tipo_tarea from  HAY_TABLA.BI_Hecho_reparacion rr where r.fk_modelo = rr.fk_modelo GROUP BY rr.fk_modelo,rr.fk_tipo_tarea order by count(*) desc)
	GROUP BY r.fk_modelo, dm.nombre_camion,r.fk_tipo_tarea
GO

-- Los 10 materiales más utilizados por taller
CREATE VIEW HAY_TABLA.top_10_materiales_x_taller AS
	 select hm.fk_taller, hm.fk_material, SUM(hm.cantidad) cantidad
	 from HAY_TABLA.BI_Hecho_materiales hm
	 where  hm.fk_material in (select top 10 hhmm.fk_material FROM HAY_TABLA.BI_Hecho_materiales hhmm where hhmm.fk_taller = hm.fk_taller GROUP BY hhmm.fk_material,hhmm.fk_taller order by sum(hhmm.cantidad) desc)
	 group by hm.fk_taller, hm.fk_material  
GO


-- Desvío promedio de cada tarea x taller. CREATE VIEW HAY_TABLA.v_desvio_x_tareea_x_taller AS
	select SUM(R.tiempo_fuera_de_servicio)/ COUNT(*) desvio_promedio, r.fk_taller taller, r.fk_tipo_tarea
	from HAY_TABLA.BI_Hecho_reparacion r
	GROUP BY r.fk_taller, r.fk_tipo_tarea
GO

/*
Facturación total por recorrido por cuatrimestre. (En función de la cantidad
y tipo de paquetes que transporta el camión y el recorrido) 
*/

CREATE VIEW HAY_TABLA.v_fact_x_recorrido_x_cuatri AS
	select  t.año AÑO, t.cuatrimestre CUATRIMESTRE, f.fk_recorrido recorrido, sum(f.facturacion_viaje) fact_total
	from HAY_TABLA.BI_Hecho_facturacion f
	JOIN HAY_TABLA.BI_Dim_tiempo t ON t.pk_tiempo = f.fk_tiempo 
	group by  t.año , t.cuatrimestre,f.fk_recorrido
GO

--Costo promedio x rango etario de choferes
CREATE VIEW HAY_TABLA.v_costo_promedio_x_rango_etario_chofer AS
	select  dc.rango_edad, sum(HAY_TABLA.COSTO_CHOFER(hf.fk_viaje, hf.fk_chofer) )/count(*) costo_promedio
	FROM HAY_TABLA.BI_Hecho_facturacion hf
	JOIN HAY_TABLA.BI_Dim_chofer dc ON dc.nro_legajo = hf.fk_chofer
	group by dc.rango_edad
GO

/*
 Ganancia por camión (Ingresos – Costo de viaje – Costo de mantenimiento)
	o Ingresos: en función de la cantidad y tipo de paquetes que
				transporta el camión y el recorrido.
	o Costo de viaje: costo del chofer + el costo de combustible.
				Tomar precio por lt de combustible $100.-
	o Costo de mantenimiento: costo de materiales + costo de mano de
				obra. 
*/

CREATE VIEW HAY_TABLA.v_ganancia_x_camion AS
	select  hr.fk_camion ,sum(hf.facturacion_viaje) - sum(hf.costo_viaje) - sum(hr.costo_mantenimiento) ganancia
	FROM HAY_TABLA.BI_Hecho_reparacion hr
	JOIN HAY_TABLA.BI_Hecho_facturacion hf ON hf.fk_camion = hr.fk_camion
	GROUP BY hr.fk_camion
	 
GO
