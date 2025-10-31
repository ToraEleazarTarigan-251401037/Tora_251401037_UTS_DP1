program BilanganPrima;
uses crt;

var
  n, i, j: integer;
  prima: boolean;
  pertama: boolean;

begin
  clrscr;
  write('Masukkan nilai n: ');
  readln(n);

  writeln;
  writeln('Bilangan prima dari 1 sampai ', n, ' adalah:');

  pertama := true;

  for i := 2 to n do
  begin
    prima := true;
    for j := 2 to i div 2 do
    begin
      if (i mod j = 0) then
      begin
        prima := false;
        break;
      end;
    end;

    if prima then
    begin
      if not pertama then
        write(', ');
      write(i);
      pertama := false;
    end;
  end;

  writeln;
  readln;
end.
