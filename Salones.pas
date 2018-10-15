Program Salones;

CONST
   CANT_SALONES = 200;
   MAX_PIZARRONES = 4;

TYPE
   TSalon = RECORD
                idSalon : Integer;
                asientos : Integer;
                pizarrones : 1..MAX_PIZARRONES;
                hayProyector : Boolean;
            END;

   TFacultad = ARRAY [1..CANT_SALONES] OF TSalon;

procedure informeSalones (facu: TFacultad);
VAR
    i : Integer;
begin

        Writeln(' Cantidad de Asientos  - Pizarrones - Con Proyector');
        for i := 1 to CANT_SALONES do
            with facu[i] do 
            Writeln(asientos , '            ' , pizarrones , '     ' , hayProyector  )  
end;
procedure salonMasAsientos (facu: TFacultad; VAR indSalon: Integer; VAR maxAsientos: Integer);
VAR
    i : Integer;
begin
Writeln ('esntreeee');
    for i := 1 to CANT_SALONES do
            with facu[i] do 
            if asientos > maxAsientos then
                begin
                    idSalon := indSalon;
                    asientos := maxAsientos;
                end;
end;
function primerSalonSinAsientos (facu: TFacultad) : Integer;
 VAR
 i: Integer;
    begin
    Writeln ('esntreeee');
   i := 1;
    while (i > CANT_SALONES) or (facu[i].asientos = 0) do
        i := i + 1 ;
    if i <= CANT_SALONES  then
        primerSalonSinAsientos := facu[i-1].idSalon
    else
        primerSalonSinAsientos := 0
        
    end;
function conSalon (VAR idenSalon, asiento, pizaron  : Integer; VAR Proyector : Char) : TSalon;
begin

    with conSalon do
    begin
       
        idSalon := idenSalon ;
        asientos :=asientos ;
        pizarrones := pizaron ;
        if Proyector = 's' then
            hayProyector := true
        else
            hayProyector := false
    end; 
    
end;
procedure leoDatos(facu: TFacultad);
VAR 
 idenSalon, asiento, pizaron, i   : Integer ;
 Proyector : Char;
begin
i:=0;
Writeln ('IDE');
readln (idenSalon);
while idenSalon > 0 do
    begin
    Writeln('canti asiento - pizarron - tien proyector  - idproximo ');
    readln (asiento);
    readln (pizaron);
    readln (Proyector);
    Writeln('1');
    facu[i] := conSalon( idenSalon, asiento, pizaron, Proyector);
    
    readln (idenSalon);
    i:= i +1 ;
    end;
end;
VAR 
 op : Integer;
 facu : TFacultad;
 indSalon, maxAsientos: Integer;
begin
repeat
Writeln ('1 - leodato');
Writeln ('2 - informe salones');
Writeln ('3 - salon Mas asientos');
Writeln ('4 - Sin asiento');
readln(op);
    case op of
        1 : leoDatos(facu);
        2 : informeSalones(facu);
        3 : salonMasAsientos (facu,  indSalon, maxAsientos);
        4 : Writeln (primerSalonSinAsientos(facu));
    end;
until (op = 0)

end.
 