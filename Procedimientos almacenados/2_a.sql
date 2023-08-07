CREATE PROCEDURE [dbo].[PA_ACTUALIZA_CARRERAS] AS 

--VARIABLES PARA RECORRER TABLA TEMPORAL
DECLARE 
	@Contador INT, 
	@Regs INT,
	@carrera_id INT,
	@carrera_nombre VARCHAR(50),
	@fecha_hoy DATETIME,
	@aula_asignada_rta VARCHAR(25) 

--CONSTANTES
DECLARE 
	@año_busqueda SMALLINT = 1988

-- nueva tabla
DECLARE @CARRERAS_DESC TABLE 
		(	
			ID INT Identity(1,1) PRIMARY KEY,
			carrera_id INT,
			carrera_nombre VARCHAR(50),
			fecha_hoy DATETIME
				
		)
			
-- registros
INSERT INTO @CARRERAS_DESC
  (
    carrera_id,
    carrera_nombre,
    fecha_hoy
  )
SELECT c.carrera_id,
       c.nombre,
       GETDATE()
FROM   CARRERAS c
       INNER JOIN PROFESORES AS p
            ON  p.carrera_id = c.carrera_id
WHERE  YEAR(p.fecha_nacimiento) = @año_busqueda

-- cantidad de registros
SET @Regs = @@ROWCOUNT 

SET @Contador = 1   

WHILE @Contador <= @Regs
BEGIN
	
	SELECT @carrera_id = carrera_id,
	       @carrera_nombre     = carrera_nombre,
	       @fecha_hoy          = GETDATE()
	FROM   @CARRERAS_DESC
	WHERE  ID                  = @Contador
	
	EXEC PA_ASIGNAR_AULA @aula_asignada = @aula_asignada_rta OUTPUT
	
	UPDATE CARRERAS
	SET    descripcion     = '(' + CONVERT(VARCHAR,@carrera_id) + ')' + @carrera_nombre + ' ' + @aula_asignada_rta + '. Fecha:' + CONVERT(VARCHAR(20), GETDATE())
	WHERE  carrera_id      = @carrera_id

	SET @Contador = @Contador + 1
END

RETURN 0

GO

/*
EXEC PA_ACTUALIZA_CARRERAS

SELECT * FROM carreras
 */