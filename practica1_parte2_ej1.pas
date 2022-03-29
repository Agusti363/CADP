{

1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5


}
program practica1_parte2_ej1;
var
i,num,suma:integer;
a:integer;
begin
    suma:=0;
  writeln ('ingrese 10 numeros');
  for i:=1 to 10 do begin 
  readln(num);
  if (num>5)then
        a:=a+1;
  suma:=suma+num;
  end;
  
  writeln('la suma de los numeros leidos ',suma);
  writeln('la cantidad de numeros mayores a 5 es ',a);
  

  
end.
