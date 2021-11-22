import 'dart:io';

void main(List<String> args) {
  print("Verileri Çek");
  kisiIleIlgiliIslemler();
  print("Başka İşlem Yapılacak");
  print("İşlem Bitti");
}

void kisiIleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi);
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 4), () {
    return "Kişi( Ad: Volkan Soyad: Ket)";
  });
}
