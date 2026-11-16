with datos, posicion_de_dni, eliminar_repetidos, ordenar;
use datos;

procedure obtener_alumnos_y_tutorias_totales (Calendario: in Info_calendario;
                                              Lista: out Lista_tutorias_alumnos) is
  -- Pre: Calendario contiene informacion sobre la asistencia a tutorias (por cada dia
  --      laborable del cuatrimestre, la fecha y los numeros de DNI de quienes han acudido
  --      a tutorias).
  -- Post: Lista esta ORDENADA por el numero total de tutorias a las que han asistido los
  --       estudiantes.
  --       Si un alumno ha acudido mas de una vez a tutorias el mismo dia, solamente se le
  --       contabilizara una vez por ese dia para computar el numero total de asistencias.


begin


end obtener_alumnos_y_tutorias_totales;

