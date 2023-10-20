SELECT COUNT(prof_id) cant_profes, CARRERAS.nombre from PROFESORES
INNER join CARRERAS ON PROFESORES.carrera_id=CARRERAS.carrera_id
group by CARRERAS.nombre
