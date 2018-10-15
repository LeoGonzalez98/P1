program difPotencia.pas (input, output);
var
    raiz1, raiz2, dif, num, resta: Integer;
begin
    Write('Ingrese la difeencia entre las potencias  ');
    Readln (dif);
    Write(dif);
    num := 1;
    repeat
    begin
        raiz1 := sqr(num);
        num := num + 1;
        raiz2 := sqr(num);
        resta := raiz2 - raiz1;
        
        Writeln(raiz1)
    end;
    until (resta>=dif)


end.
