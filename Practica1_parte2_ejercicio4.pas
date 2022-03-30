{

4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
}



program Practica1_parte2_ejercicio4; //parte 4
var
i,num,min,min2:integer;
begin
min:=32766;
writeln ('ingrese 1000 numeros');
for i:=1 to 5 do begin
    readln(num);
    if(num<min) then begin
        min2:=min;
        min:=num;
     
    end  else   if (num<min2)then
            min2:=num;    
end;  

writeln('los dos numeros minimos fueron ',min, ' y ',min2);
end.

//parte 4 a

program Practica1_parte2_ejercicio4;
var
i,num,min,min2:integer;
begin
min:=32766;


repeat 
writeln ('ingrese un numeros');
    readln(num);
    if(num<min) then begin
        min2:=min;
        min:=num;
     
    end  else   if (num<min2)then
            min2:=num;   
until(num=0);

writeln('los dos numeros minimos fueron ',min, ' y ',min2);
end.

//PARTE 4B


program Practica1_parte2_ejercicio4;
var
i,num,min,min2:integer;
begin
min:=32766;

writeln ('ingrese un numero');
    readln(num);
    while (num<>0)do begin
        if(num<min) then begin
             min2:=min;
            min:=num;
     
        end  else   if (num<min2)then
                min2:=num;  
    writeln ('ingrese un numero');
    readln(num);
    end;

writeln('los dos numeros minimos fueron ',min, ' y ',min2);
end





