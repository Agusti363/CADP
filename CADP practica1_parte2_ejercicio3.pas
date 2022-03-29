{
3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota
}
program Hello;
type
    rango=1..10;
    nombres= string[20];
var
cant8,cant7:integer;
 nota:rango;
 nombre:nombres;
begin
cant7:=0;
cant8:=0;
repeat 
    writeln ('ingrese nombre');
    readln(nombre);
    writeln ('ingrese nota');
    readln(nota);
        if (nota>=8) then 
            cant8:=cant8+1
         else 
            if (nota < 7)then
                 cant7:=cant7+1;

  
until(nombre='Zidane Zinedine');

writeln('la cantidad de alumnos aprobados con nota 8 o superior son ',cant8);
writeln('la cantidad de alumnos desaprobados con nota 7 o inferior son ',cant7);

end.
