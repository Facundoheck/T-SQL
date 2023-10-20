SELECT
    P.Apellido,
    P.Nombre,
    C.Nombre AS Carrera,
    CASE
        WHEN P.Telefono IS NOT NULL THEN P.Telefono
        ELSE 'No tiene'
    END AS Telefono
FROM
    Profesores P
JOIN
    Carreras C ON P.IdCarrera = C.IdCarrera
LEFT JOIN
    CursosProfesores CP ON P.IdProfesor = CP.IdProfesor
WHERE
    CP.IdCurso IS NULL
ORDER BY
    P.Apellido DESC;
