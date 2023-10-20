## ESTRUCTURA DE TABLAS 
<p>1. Generar un script para crear la tabla CURSOS. Definir los tipos de datos que se crean conveniente.</p>
<p>2. Agregar todas las claves primarias y claves foráneas que crea conveniente (3 tablas).</p> 
<p>3. Generar un script para agregar el campo “Descripcion” - VARCHAR(300) - a la tabla CARRERAS.</p>

## PROCEDIMIENTOS ALMACENADOS
<p>1. Crear un procedimiento almacenado que actualice el campo “descripción” de toda la tabla CARRERAS que tengan profesores asignados nacidos en el año 1988.</p>
<p>Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS</p>
<p>El campo descripción de la tabla CARRERAS debe concatenar los campos carrera_id, nombre, fecha-hora (utilizar GETDATE) y el aula asignada, para este último utilizar el PA_ASIGNAR_AULA.</p>
<p>Agregar profesores a la base de datos mediante un procedimiento almacenado (PA_altaProfesores)</p>
<p>Busqueda de profesores en la base de datos (PA_buscaProfesores)</p>

## LISTADOS
<p>1.	Generar una consulta que liste el nombre de las carreras con la cantidad de profesores asignados a la misma.</p>
<p>2.	Generar una consulta que liste apellido y nombre de los profesores que no estén asignados a un curso, indicando el nombre de la carrera que pertenece, el número de teléfono y en caso de no poseer teléfono mostrar una leyenda “No tiene”. 
Nota: Ordenados de forma descendente por apellido</p>
<p>3.   

Table: Signups
+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
+----------------+----------+
user_id is the column of unique values for this table.
Each row contains information about the signup time for the user with ID user_id.
 

Table: Confirmations

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
| action         | ENUM     |
+----------------+----------+

(user_id, time_stamp) is the primary key (combination of columns with unique values) for this table.
user_id is a foreign key (reference column) to the Signups table.
action is an ENUM (category) of the type ('confirmed', 'timeout')
Each row of this table indicates that the user with ID user_id requested a confirmation message at time_stamp and that confirmation message was either confirmed ('confirmed') or expired without confirming ('timeout').
The confirmation rate of a user is the number of 'confirmed' messages divided by the total number of requested confirmation messages. The confirmation rate of a user that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.
Write a solution to find the confirmation rate of each user.
Return the result table in any order.</p>
