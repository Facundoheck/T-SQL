## ESTRUCTURA DE TABLAS 
<p>a. Generar un script para crear la tabla CURSOS. Definir los tipos de datos que se crean conveniente.</p>
<p>b. Agregar todas las claves primarias y claves foráneas que crea conveniente (3 tablas).</p> 
<p>c. Generar un script para agregar el campo “Descripcion” - VARCHAR(300) - a la tabla CARRERAS.</p>

## PROCEDIMIENTOS ALMACENADOS
<p>a. Crear un procedimiento almacenado que actualice el campo “descripción” de toda la tabla CARRERAS que tengan profesores asignados nacidos en el año 1988.</p>
<p>Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS</p>
<p>El campo descripción de la tabla CARRERAS debe concatenar los campos carrera_id, nombre, fecha-hora (utilizar GETDATE) y el aula asignada, para este último utilizar el PA_ASIGNAR_AULA.</p>

## LISTADOS
<p>a.	Generar una consulta que liste el nombre de las carreras con la cantidad de profesores asignados a la misma. Se recomienda utilizar la sentencia OUTER APPLY (no es obligatorio).</p>
