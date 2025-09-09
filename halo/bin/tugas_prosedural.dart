import 'dart:io';
import 'dart:math';

// Fungsi helper input
double input(String msg) {
  stdout.write(msg);
  return double.parse(stdin.readLineSync()!);
}

// Fungsi Luas Bangun Datar
double luasPersegi({required double sisi}) => sisi * sisi;
double luasPersegiPanjang({required double panjang, required double lebar}) => panjang * lebar;
double luasLingkaran({required double r}) => pi * r * r;
double luasSegitiga({required double alas, required double tinggi}) => 0.5 * alas * tinggi;

// Fungsi Volume Bangun Ruang
double volumeKubus({required double sisi}) => pow(sisi, 3).toDouble();
double volumeBalok({required double panjang, required double lebar, required double tinggi}) => panjang * lebar * tinggi;
double volumeBola({required double r}) => 4 / 3 * pi * pow(r, 3);
double volumeTabung({required double r, required double tinggi}) => pi * r * r * tinggi;

void main() {
  print("=== PROGRAM PROCEDURAL ===");
  print("1. Luas Bangun Datar");
  print("2. Volume Bangun Ruang");
  stdout.write("Pilih menu (1/2): ");
  int menu = int.parse(stdin.readLineSync()!);

  if (menu == 1) {
    var opsi = {
      1: () => "Luas Persegi = ${luasPersegi(sisi: input('Masukkan sisi: '))}",
      2: () => "Luas Persegi Panjang = ${luasPersegiPanjang(panjang: input('Masukkan panjang: '), lebar: input('Masukkan lebar: '))}",
      3: () => "Luas Lingkaran = ${luasLingkaran(r: input('Masukkan jari-jari: '))}",
      4: () => "Luas Segitiga = ${luasSegitiga(alas: input('Masukkan alas: '), tinggi: input('Masukkan tinggi: '))}",
    };

    print("\n-- Pilih Bangun Datar --");
    print("1. Persegi\n2. Persegi Panjang\n3. Lingkaran\n4. Segitiga");
    stdout.write("Pilihan: ");
    int pilih = int.parse(stdin.readLineSync()!);

    if (opsi.containsKey(pilih)) {
      print(opsi[pilih]!());
    } else {
      print("Pilihan tidak valid!");
    }
  }

  else if (menu == 2) {
    var opsi = {
      1: () => "Volume Kubus = ${volumeKubus(sisi: input('Masukkan sisi: '))}",
      2: () => "Volume Balok = ${volumeBalok(panjang: input('Masukkan panjang: '), lebar: input('Masukkan lebar: '), tinggi: input('Masukkan tinggi: '))}",
      3: () => "Volume Bola = ${volumeBola(r: input('Masukkan jari-jari: '))}",
      4: () => "Volume Tabung = ${volumeTabung(r: input('Masukkan jari-jari: '), tinggi: input('Masukkan tinggi: '))}",
    };

    print("\n-- Pilih Bangun Ruang --");
    print("1. Kubus\n2. Balok\n3. Bola\n4. Tabung");
    stdout.write("Pilihan: ");
    int pilih = int.parse(stdin.readLineSync()!);

    if (opsi.containsKey(pilih)) {
      print(opsi[pilih]!());
    } else {
      print("Pilihan tidak valid!");
    }
  }

  else {
    print("Menu tidak ada!");
  }
}
