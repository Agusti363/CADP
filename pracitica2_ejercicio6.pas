{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program pracitica2_ejercicio6;
procedure LeerNum;
var
num,max1,par:integer;
begin
max1:=0;
Write('ingrese digito: ');
readln(num);
while (num>=0) do 
    begin 
    if ((num mod 2)=0)then
        par:=num;
    if (par>max1)then
        max1:=par;
    writeln('ingrese digito: ');
    readln(num);
    end;
    writeln('el numero mas alto es: ',max1);
end;
begin
LeerNum;
end.














