import 'dart:io';
import 'dart:math';

// Helper input
double input(String msg) {
  stdout.write(msg);
  return double.parse(stdin.readLineSync()!);
}

// Abstrak
abstract class BangunDatar { double hitung(); }
abstract class BangunRuang { double hitung(); }

// Bangun Datar
class Persegi extends BangunDatar {
  double s; Persegi(this.s);
  @override double hitung() => s * s;
}
class PersegiPanjang extends BangunDatar {
  double p,l; PersegiPanjang(this.p,this.l);
  @override double hitung() => p*l;
}
class Lingkaran extends BangunDatar {
  double r; Lingkaran(this.r);
  @override double hitung() => pi*r*r;
}
class Segitiga extends BangunDatar {
  double a,t; Segitiga(this.a,this.t);
  @override double hitung() => 0.5*a*t;
}

// Bangun Ruang
class Kubus extends BangunRuang {
  double s; Kubus(this.s);
  @override double hitung() => pow(s,3).toDouble();
}
class Balok extends BangunRuang {
  double p,l,t; Balok(this.p,this.l,this.t);
  @override double hitung() => p*l*t;
}
class Bola extends BangunRuang {
  double r; Bola(this.r);
  @override double hitung() => 4/3*pi*pow(r,3);
}
class Tabung extends BangunRuang {
  double r,t; Tabung(this.r,this.t);
  @override double hitung() => pi*r*r*t;
}

void main() {
  print("=== PROGRAM OOP  ===");
  print("1. Luas Bangun Datar");
  print("2. Volume Bangun Ruang");
  stdout.write("Pilih menu (1/2): ");
  int menu = int.parse(stdin.readLineSync()!);

  if (menu == 1) {
    var opsi = {
      1: () => Persegi(input("Sisi: ")).hitung(),
      2: () => PersegiPanjang(input("Panjang: "), input("Lebar: ")).hitung(),
      3: () => Lingkaran(input("Jari-jari: ")).hitung(),
      4: () => Segitiga(input("Alas: "), input("Tinggi: ")).hitung(),
    };
    print("\n-- Pilih Bangun Datar --\n1. Persegi\n2. Persegi Panjang\n3. Lingkaran\n4. Segitiga");
    stdout.write("Pilihan: ");
    int pilih = int.parse(stdin.readLineSync()!);
    print("Hasil = ${opsi[pilih]?.call() ?? 'Pilihan tidak valid!'}");
  } else if (menu == 2) {
    var opsi = {
      1: () => Kubus(input("Sisi: ")).hitung(),
      2: () => Balok(input("Panjang: "), input("Lebar: "), input("Tinggi: ")).hitung(),
      3: () => Bola(input("Jari-jari: ")).hitung(),
      4: () => Tabung(input("Jari-jari: "), input("Tinggi: ")).hitung(),
    };
    print("\n-- Pilih Bangun Ruang --\n1. Kubus\n2. Balok\n3. Bola\n4. Tabung");
    stdout.write("Pilihan: ");
    int pilih = int.parse(stdin.readLineSync()!);
    print("Hasil = ${opsi[pilih]?.call() ?? 'Pilihan tidak valid!'}");
  } else {
    print("Menu tidak ada!");
  }
}
