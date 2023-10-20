## ESTRUCTURA DE TABLAS 
<p>a. Generar un script para crear la tabla CURSOS. Definir los tipos de datos que se crean conveniente.</p>
<p>b. Agregar todas las claves primarias y claves foráneas que crea conveniente (3 tablas).</p> 
<p>c. Generar un script para agregar el campo “Descripcion” - VARCHAR(300) - a la tabla CARRERAS.</p>

## PROCEDIMIENTOS ALMACENADOS
<p>a. Crear un procedimiento almacenado que actualice el campo “descripción” de toda la tabla CARRERAS que tengan profesores asignados nacidos en el año 1988.</p>
<p>Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS</p>
<p>El campo descripción de la tabla CARRERAS debe concatenar los campos carrera_id, nombre, fecha-hora (utilizar GETDATE) y el aula asignada, para este último utilizar el PA_ASIGNAR_AULA.</p>
<p>Agregar profesores a la base de datos mediante un procedimiento almacenado (PA_altaProfesores)</p>
<p>Busqueda de profesores en la base de datos (PA_buscaProfesores)</p>

## LISTADOS
<p>a.	Generar una consulta que liste el nombre de las carreras con la cantidad de profesores asignados a la misma.</p>
<p>b.	Generar una consulta que liste apellido y nombre de los profesores que no estén asignados a un curso, indicando el nombre de la carrera que pertenece, el número de teléfono y en caso de no poseer teléfono mostrar una leyenda “No tiene”. 
Nota: Ordenados de forma descendente por apellido</p>
