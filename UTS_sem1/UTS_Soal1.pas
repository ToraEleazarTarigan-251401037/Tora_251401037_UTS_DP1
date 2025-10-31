program RentalMobilSederhana;
uses crt;
var
  mobil   : string;
  hari   : integer;
  jarak_tempuh  : integer;
  total_biaya   : longint;
  biaya_jarak   : longint;

begin
    clrscr;
  // --- Input Data ---
  write('Masukkan Jenis Mobil (Ekonomi/Sedan/SUV): ');
  readln(mobil);

  write('Pemesanan Berapa Hari                   : ');
  readln(hari);

  write('Berkendara Seberapa Jauh (km)           : ');
  readln(jarak_tempuh);

  // --- 1. Hitung Biaya Harian ---
  // Menghitung biaya berdasarkan jenis mobil dan lama sewa
  if (mobil = 'Ekonomi') then
    total_biaya := 300000 * hari
  else if (mobil = 'Sedan') then
    total_biaya := 400000 * hari
  else if (mobil = 'SUV') then
    total_biaya := 500000 * hari;

  // --- 2. Hitung Biaya Jarak Tempuh ---
  // Menghitung biaya jarak tempuh secara berjenjang
  if (jarak_tempuh <= 100) then
    biaya_jarak := jarak_tempuh * 1500
  else if (jarak_tempuh <= 200) then
    // 100 km pertama + sisa (km 101-200)
    biaya_jarak := (100 * 1500) + ((jarak_tempuh - 100) * 1000)
  else
    // 100 km pertama + 100 km kedua + sisa (di atas 200 km)
    biaya_jarak := (100 * 1500) + (100 * 1000) + ((jarak_tempuh - 200) * 500);

  // --- 3. Hitung Total Akhir ---
  // Menjumlahkan biaya harian dan biaya jarak
  total_biaya := total_biaya + biaya_jarak;

  // --- Output ---
  writeln(total_biaya);

  // Tahan layar agar hasil terlihat
  readln;
end.