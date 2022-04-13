{

a) La función calcularPromedio calcula y retorna el promedio entre las variables globales suma y cant, pero
parece incompleta. ¿qué debería agregarle para que funcione correctamente?
b) En el programa principal, la función calcularPromedio es invocada dos veces, pero esto podría mejorarse.
¿cómo debería modificarse el programa principal para invocar a dicha función una única vez?
c) Si se leen por teclado los valores 48 (variable suma) y 6 (variable cant), ¿qué resultado imprime el
programa? Considere las tres posibilidades:
i) El programa original
ii) El programa luego de realizar la modificación del inciso a)
iii) El programa luego de realizar las modificaciones de los incisos a) y b)

}
program Practica2_ejercicio7;
var
suma, cant : integer;


function calcularPromedio:real;
var
prom:real;
begin
if (cant = 0) then
prom := -1
else
prom := suma / cant;
calcularPromedio:=prom; //a) una funcion necesita retornar un valor 
end;



begin { programa principal }
readln(suma);
readln(cant);
if (cant=0) then begin //b) se cambia la condicion para que solo se use una funcion
writeln('Dividir por cero no parece ser una buena idea')
end
else
writeln('El promedio es:'  , calcularPromedio:2:1);
end.
//i) no funciona
//ii)resultado -1
//iii)8.0