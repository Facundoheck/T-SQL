## CARPETA ESTRUCTURA DE TABLAS 
<p>1. Generar un script para crear la tabla CURSOS. Definir los tipos de datos que se crean conveniente.</p>
<p>2. Agregar todas las claves primarias y claves foráneas que crea conveniente (3 tablas).</p> 
<p>3. Generar un script para agregar el campo “Descripcion” - VARCHAR(300) - a la tabla CARRERAS.</p>

## CARPETA PROCEDIMIENTOS ALMACENADOS
<p>1. Crear un procedimiento almacenado que actualice el campo “descripción” de toda la tabla CARRERAS que tengan profesores asignados nacidos en el año 1988.</p>
<p>Nota: utilizar el nombre PA_ACTUALIZA_CARRERAS</p>
<p>El campo descripción de la tabla CARRERAS debe concatenar los campos carrera_id, nombre, fecha-hora (utilizar GETDATE) y el aula asignada, para este último utilizar el PA_ASIGNAR_AULA.</p>
<p>Agregar profesores a la base de datos mediante un procedimiento almacenado (PA_altaProfesores)</p>
<p>Busqueda de profesores en la base de datos (PA_buscaProfesores)</p>

## CARPETA LISTADOS
<p>1.	Generar una consulta que liste el nombre de las carreras con la cantidad de profesores asignados a la misma.</p>
<p>2.	Generar una consulta que liste apellido y nombre de los profesores que no estén asignados a un curso, indicando el nombre de la carrera que pertenece, el número de teléfono y en caso de no poseer teléfono mostrar una leyenda “No tiene”. 
Nota: Ordenados de forma descendente por apellido</p>   

<p>3. Confirmation Rate Calculation</p>

Calcular la tasa de confirmación de los usuarios basándose en las tablas proporcionadas: **Signups** y **Confirmations**.

#### Tabla Signups
- **user_id** (int): Identificador único para los usuarios.
- **time_stamp** (datetime): Marca de tiempo del registro.

#### Tabla Confirmations
- **user_id** (int): Clave foránea que referencia la tabla **Signups**.
- **time_stamp** (datetime): Marca de tiempo de la solicitud de confirmación.
- **action** (ENUM): Tipo de acción de confirmación ('confirmed', 'timeout').

#### Descripción del Problema
Cada fila en la tabla **Confirmations** representa una solicitud de confirmación realizada por un usuario. La tasa de confirmación de un usuario se calcula como el número de mensajes 'confirmed' dividido por el total de mensajes de confirmación solicitados. Los usuarios que no solicitaron ningún mensaje de confirmación tienen una tasa de confirmación de 0. La solución calcula y redondea la tasa de confirmación a dos decimales para cada usuario.
