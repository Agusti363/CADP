{
4. El siguiente programa intenta resolver un enunciado. Sin embargo, el código posee 5 errores. Indicar en
qué línea se encuentra cada error y en qué consiste el error.

Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada
programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero
destinado por mes al pago de salarios, y el salario del empleado mayor legajo.

}

program programadores;

 procedure leerDatos(var legajo: integer; var salario : real); //se agrega var a salario
 begin
 writeln('Ingrese el nro de legajo y el salario');
 read(legajo);
 read(salario);
 end;
 
 //fin proceso
 
 procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer;var maxSalario:real);
 begin //se elimina la variable maxSalario
 if (nuevoLegajo > maxLegajo) then begin
 maxLegajo:= nuevoLegajo;
 maxSalario := nuevoSalario; 
 end;
 end;

 // fin proceso
 
 var
 legajo, maxLegajo, i : integer;
 salario, maxSalario,sumaSalarios : real;  //Falta declarar sumaSalarios
 
 begin
 maxSalario:=0;             //Falta inicializar maxSalario
 sumaSalarios := 0;     
 for i := 1 to 3 do begin
 leerDatos(legajo, salario); //recibe los parametros al reves
 actualizarMaximo(legajo, salario, maxLegajo, maxSalario);//Falta ingresar maxSalario
 sumaSalarios := sumaSalarios + salario;
 end;
 writeln('En todo el mes se gastan ', sumaSalarios:2:1, ' pesos');
 writeln('El salario del empleado más nuevo es ',maxSalario:2:1);
 end.
