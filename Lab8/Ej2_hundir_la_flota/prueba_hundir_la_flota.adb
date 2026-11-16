with Ada.Text_Io, tipos, obtener_lista_de_barcos, imprimir_lista_de_barcos;
use Ada.Text_Io, tipos;

procedure prueba_hundir_la_flota is
   -- este programa hace llamadas a los subprogramas obtener_lista_de_barcos e
   -- imprimir_lista_de_barcos para comprobar si su funcionamiento es correcto

   procedure vaciar_tablero(T: out T_Tablero) is
 
   begin
      for fila in 1..N loop
         for col in 1..N loop
            T(fila,col):= ' ';
         end loop;
      end loop;
   end vaciar_tablero;
   
   procedure imprimir_tablero (T: in T_Tablero) is
   
   begin
      put_line("Estado del Tablero:");
      new_line;
      put(" ----------------------------------------");
      new_line;
      for fila in 1..N loop
         put("| ");
         for col in 1..N loop
            put(T(fila,col));
            put(" | ");
         end loop;
         new_line;
         put(" ----------------------------------------");

         new_line;
      end loop;
      new_line(2);
   end imprimir_tablero;
   
   Tablero: T_Tablero;
   Barcos: Lista_Barcos;

begin

   put_line("CASO DE PRUEBA 1 -- El ejemplo del enunciado.");
  
   vaciar_tablero(Tablero);
   Tablero(2,4):='*';
   Tablero(3,4):='*';
   Tablero(4,4):='*';
   Tablero(5,4):='*';

   Tablero(3,9):='*';
   Tablero(3,10):='*';
   
   Tablero(7,2):='*';
   Tablero(8,2):='*';
   Tablero(9,2):='*';
   
   Tablero(7,4):='*';
   Tablero(7,5):='*';
   Tablero(7,6):='*';
   Tablero(7,7):='*';
   Tablero(7,8):='*';
   Tablero(7,9):='*';
   
   imprimir_tablero(Tablero);
   
   put_line("El resultado deberia ser el siguiente: ");
   new_line;
   put_line("El tablero contiene 4 barcos:");
   put_line(" * Un barco de longitud 4 colocado en vertical a partir de la casilla (2,4)");
   put_line(" * Un barco de longitud 2 colocado en horizontal a partir de la casilla (3,9)");
   put_line(" * Un barco de longitud 3 colocado en vertical a partir de la casilla (7,2)");
   put_line(" * Un barco de longitud 6 colocado en horizontal a partir de la casilla (7,4)");
   new_line;
   put_line("Y el resultado segun tu programa es:");
   new_line;
   
   obtener_lista_de_barcos(Tablero, Barcos);
   imprimir_lista_de_barcos(Barcos);



   -- faltan varios casos de prueba



end prueba_hundir_la_flota;
