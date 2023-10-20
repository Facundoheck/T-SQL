CREATE PROCEDURE buscarProfesor
	@profesor VARCHAR(50)
AS
BEGIN
	SELECT *
	FROM PROFESORES
	WHERE nombre = @profesor;
END;

--exec buscarProfesor @profesor = 'Santiago';