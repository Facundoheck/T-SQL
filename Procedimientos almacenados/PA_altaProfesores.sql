CREATE PROCEDURE altaProfesor
	@prof_id VARCHAR(10),
	@carrera_id VARCHAR(10),
	@nombre VARCHAR(50),
	@apellido VARCHAR(50),
	@fecha_nac DATE,
	@direccion VARCHAR(100),
	@telefono VARCHAR(50)
AS
BEGIN
	INSERT INTO PROFESORES (prof_id,carrera_id,nombre,apellido,fecha_nacimiento,direccion,telefono)
	VALUES (@prof_id,@carrera_id,@nombre,@apellido,@fecha_nac,@direccion,@telefono);
END;
