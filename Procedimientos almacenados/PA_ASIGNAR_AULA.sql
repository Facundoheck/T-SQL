CREATE PROCEDURE [dbo].[PA_ASIGNAR_AULA] ( 
	@aula_asignada VARCHAR(25) OUTPUT
) AS

SET NOCOUNT ON

SELECT @aula_asignada = 'El aula asignada es: ' + CONVERT (VARCHAR(5), RIGHT(RAND(),1) )
