program laboratorio.pas;
var
    num1, Factor, FactorA, Expo, fin : Integer;

begin
    Expo := 1;
    Factor := 2;
    FactorA :=1;
    readln(num1);
    fin:= trunc(sqrt(num1));

    while (num1 > 1)  and (Factor <= fin) do    begin

        if (num1 mod Factor = 0) then
        begin

            num1 := num1 div Factor;
            if (Factor = FactorA) then
            begin
                 Expo := Expo + 1;
                
            end

            else
            begin
                if Expo <> 1 then
                    begin
                    write('^',Expo);
                    Expo :=1;
                    end
                else
                    writeln();
                write(Factor);
                FactorA := Factor;

            end;
        end
        else
            Factor := Factor +1;
        writeln('num1 --', num1 );

    end;
     if Expo <> 1 then
                    begin
                    writeln('^',Expo);
                    Expo :=1;
                    end
    else if num1 <> 1 then
               writeln(num1);
    
    
  readln()

end.
