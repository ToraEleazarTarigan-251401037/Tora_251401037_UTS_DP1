program NilaiPraktikan;
uses crt;

var
  nama1, nama2, nama3, nama4, nama5: string;
  nilai1, nilai2, nilai3, nilai4, nilai5: integer;
  indeks1, indeks2, indeks3, indeks4, indeks5: string;
  lulus, ulang: integer;

begin
  clrscr;

  { Input data praktikan 1 }
  write('Nama Praktikan 1: ');
  readln(nama1);
  write('Nilai Akhir     : ');
  readln(nilai1);
  writeln;

  { Input data praktikan 2 }
  write('Nama Praktikan 2: ');
  readln(nama2);
  write('Nilai Akhir     : ');
  readln(nilai2);
  writeln;

  { Input data praktikan 3 }
  write('Nama Praktikan 3: ');
  readln(nama3);
  write('Nilai Akhir     : ');
  readln(nilai3);
  writeln;

  { Input data praktikan 4 }
  write('Nama Praktikan 4: ');
  readln(nama4);
  write('Nilai Akhir     : ');
  readln(nilai4);
  writeln;

  { Input data praktikan 5 }
  write('Nama Praktikan 5: ');
  readln(nama5);
  write('Nilai Akhir     : ');
  readln(nilai5);
  writeln;

  { Menentukan indeks masing-masing praktikan }
  if (nilai1 > 90) then indeks1 := 'A'
  else if (nilai1 > 85) then indeks1 := 'B+'
  else if (nilai1 > 75) then indeks1 := 'C+'
  else if (nilai1 > 70) then indeks1 := 'C'
  else if (nilai1 > 65) then indeks1 := 'D'
  else indeks1 := 'E';

  if (nilai2 > 90) then indeks2 := 'A'
  else if (nilai2 > 85) then indeks2 := 'B+'
  else if (nilai2 > 75) then indeks2 := 'C+'
  else if (nilai2 > 70) then indeks2 := 'C'
  else if (nilai2 > 65) then indeks2 := 'D'
  else indeks2 := 'E';

  if (nilai3 > 90) then indeks3 := 'A'
  else if (nilai3 > 85) then indeks3 := 'B+'
  else if (nilai3 > 75) then indeks3 := 'C+'
  else if (nilai3 > 70) then indeks3 := 'C'
  else if (nilai3 > 65) then indeks3 := 'D'
  else indeks3 := 'E';

  if (nilai4 > 90) then indeks4 := 'A'
  else if (nilai4 > 85) then indeks4 := 'B+'
  else if (nilai4 > 75) then indeks4 := 'C+'
  else if (nilai4 > 70) then indeks4 := 'C'
  else if (nilai4 > 65) then indeks4 := 'D'
  else indeks4 := 'E';

  if (nilai5 > 90) then indeks5 := 'A'
  else if (nilai5 > 85) then indeks5 := 'B+'
  else if (nilai5 > 75) then indeks5 := 'C+'
  else if (nilai5 > 70) then indeks5 := 'C'
  else if (nilai5 > 65) then indeks5 := 'D'
  else indeks5 := 'E';

  { Menghitung jumlah lulus dan mengulang }
  lulus := 0;
  ulang := 0;

  if (nilai1 > 65) then lulus := lulus + 1 else ulang := ulang + 1;
  if (nilai2 > 65) then lulus := lulus + 1 else ulang := ulang + 1;
  if (nilai3 > 65) then lulus := lulus + 1 else ulang := ulang + 1;
  if (nilai4 > 65) then lulus := lulus + 1 else ulang := ulang + 1;
  if (nilai5 > 65) then lulus := lulus + 1 else ulang := ulang + 1;

  { Menampilkan hasil akhir }

  writeln('Indeks Nilai Praktikan 1: ', indeks1);
  writeln('Indeks Nilai Praktikan 2: ', indeks2);
  writeln('Indeks Nilai Praktikan 3: ', indeks3);
  writeln('Indeks Nilai Praktikan 4: ', indeks4);
  writeln('Indeks Nilai Praktikan 5: ', indeks5);
  writeln;
  writeln('Total Praktikan Lulus    : ', lulus);
  writeln('Total Praktikan Mengulang: ', ulang);

  readln;
end.
