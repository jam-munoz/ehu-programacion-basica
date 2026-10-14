with Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
use Ada.Text_IO,Ada.Integer_Text_IO,Ada.Float_Text_IO;
with proximo_autobus;

procedure prueba_proximo_autobus is
   -- Este programa sirve para probar el subprograma proximo_autobus
   -- con diversos casos de prueba

   codigo_bus, hora, minutos, resultado, esperado: Integer;
   tipo_dia: Character;

begin

   -- Caso de prueba 1 - el que se da en el enunciado.
   codigo_bus:= 10001;
   hora:= 13;
   minutos:=37;
   tipo_dia:='L';
   esperado:= 3;
   resultado:=proximo_autobus(codigo_bus, hora, minutos, tipo_dia);
   put_line("Caso 1: Son las " & hora'image & " y " & minutos'image & " horas de un dia " & tipo_dia'img);
   put_line("El proximo bus con codigo " & codigo_bus'img & " sale en " & esperado'img & " minutos");
   put_line("   Y segun tu programa sale en: " & resultado'img & " minutos");
   new_line;
   put_line("#################################");

   -- Caso de prueba 2 - el que se da en el enunciado pero en un dia festivo
   codigo_bus:= 10001;
   hora:= 13;
   minutos:=37;
   tipo_dia:='F';
   esperado:=8;
   resultado:=proximo_autobus(codigo_bus, hora, minutos, tipo_dia);
   put_line("Caso 2: Son las " & hora'image & " y " & minutos'image & " horas de un dia " & tipo_dia'img);
    put_line("El proximo bus con codigo " & codigo_bus'img & " sale en " & esperado'img & " minutos");
   put_line("   Y segun tu programa sale en: " & resultado'img & " minutos");
   new_line;
   put_line("#################################");


   -- Caso de prueba 3 - el que se da en el enunciado pero faltando cero minutos
   codigo_bus:= 10001;
   hora:= 13;
   minutos:=40;
   tipo_dia:='L';
   esperado:= 0;
   resultado:=proximo_autobus(codigo_bus, hora, minutos, tipo_dia);
   put_line("Caso 3: Son las " & hora'image & " y " & minutos'image & " horas de un dia " & tipo_dia'img);
   put_line("El proximo bus con codigo " & codigo_bus'img & " sale en " & esperado'img & " minutos");
   put_line("   Y segun tu programa sale en: " & resultado'img & " minutos");
   new_line;
   put_line("#################################");


   -- COMPLETAR LOS DEMAS CASOS DE PRUEBA



end prueba_proximo_autobus ;