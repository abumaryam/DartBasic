import 'dart:io';
import 'dart:math';
import 'package:chalkdart/chalk.dart';

// Fungsi untuk menampilkan menu
void showMenu() {
  print('Kalkulator');
  print('NIP: ARN211-47083');
  print('Menu:');
  print('1. Penambahan');
  print('2. Perkalian');
  print('3. Perhitungan Luas segitiga sama sisi');
  print('4. Perhitungan sisi miring segitiga');
  print('5. Keluar');
}

void process(String choice) {
  double a, b, c, hasil;
  stdout.write('\x1B[2J'); //clear screen
  switch (choice) {
    case '1':
      print('Anda memilih penambahan');
      print('Masukkan nilai variabel a:');
      try {
        a = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      print('Masukkan nilai variabel b:');
      try {
        b = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      hasil = a + b;
      print(chalk.white.onYellow('Hasil penambahan $a dan $b adalah $hasil'));
      break;
    case '2':
      print('Anda memilih perkalian');
      print('Masukkan nilai variabel a:');
      try {
        a = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      print('Masukkan nilai variabel b:');
      try {
        b = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      hasil = a * b;
      print('Hasil perkalian $a dan $b adalah $hasil');
      print(chalk.white.onYellow('Hasil perkalian $a dan $b adalah $hasil'));
      break;
    case '3':
      print('Anda memilih perhitungan luas segitiga sama sisi');
      print('Masukkan nilai sisi segitiga:');
      try {
        a = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      hasil = sqrt(3) / 4 * a * a;
      print(chalk.white.onYellow('Luas segitiga sama sisi dengan sisi $a adalah $hasil'));
      break;
    case '4':
      print('Masukkan nilai alas segitiga:');
      try {
        a = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      print('Masukkan nilai tinggi segitiga:');
      try {
        b = double.parse(stdin.readLineSync()!);
      } catch (e) {
        print(chalk.black.onRed('Input bukan bertipe data double'));
        break;
      }
      c = sqrt(a * a + b * b);
      print(chalk.white.onYellow('Sisi miring segitiga dengan alas $a dan tinggi $b adalah $c'));
      break;
    case '5':
      print('Terima kasih telah menggunakan program kalkulator HSI!');
      break;
    default:
      print('Pilihan anda tidak ada');
  }
}

void main() {
  String choice;
  bool exit = false;

  while (!exit) {
    showMenu();
    print('Pilihan?');
    choice = stdin.readLineSync()!;
    process(choice);
    if (choice == '5') {
      exit = true;
    }
  }
}
