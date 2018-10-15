program numPrimo.pas (input, output);
var
    cant, numPrimo, divisor, fin, a : Integer;
    raiz : Real;

begin
    Writeln('Escribe la cantidad de primos a mostrar');
    Read(cant);
    numPrimo:=1;
    a := 0;
    while (a <> cant) do
    begin
        
        fin:= trunc(sqrt(numPrimo));
        
        divisor:= 2;
        while (divisor <= fin) and (numPrimo mod divgisor <> 0) do
        begin
       
            
            if divisor = fin then
            begin
            Write('-- numPrimo: ');
            Write(numPrimo);
            Write('  --- raiz: ');
                raiz := sqrt(numPrimo);
                WriteLn (raiz:0:2 );
                a:=a + 1;
            end;
            divisor:= divisor + 1;
                
        end;

        numPrimo := numPrimo + 1

    end

end.
