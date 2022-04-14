{

5. 
a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de numA.

b. Utilizando el módulo realizado en el inciso a.
realizar un programa que lea secuencias de pares de números hasta encontrar el par (0,0)
e informe la cantidad total de pares de números leídos y la cantidad de
pares en las que numB es el doble de numA.

Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los valores
4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).


}
program Practica2_Parte2_Ejercicio5;

function EsDoble(numA,numB:integer):boolean;
begin
if (numB=(numA*2))then
    EsDoble:=true
    else EsDoble:=false;
end;
// Fin funcion

procedure Leer(var a,b:integer);
begin
writeln('ingrese primer digito');
readln(a);
writeln('ingrese segundo digito');
readln(b);
end;
//fin proceso Leer


//comienzo programa principal
var
Num1,Num2,CantTotal,CantBDoble:integer;

begin
CantTotal:=0;
CantBDoble:=0;
Leer(Num1,Num2);

while (Num1<>0)and(Num2<>0) do 
begin
    if (EsDoble(Num1,Num2)=true)then
    begin
    CantBDoble:=CantBDoble+1;
    CantTotal:=CantTotal+1;
    end else CantTotal:=CantTotal+1;
    Leer(Num1,Num2);
end;

writeln('cantidad de pares leido: ',CantTotal);
writeln('cantidad de veces que NumB es el doble: ',CantBDoble);
end.








