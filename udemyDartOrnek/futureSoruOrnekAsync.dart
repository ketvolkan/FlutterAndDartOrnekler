import 'dart:io';

Map<int, dynamic> person = Map();
void main(List<String> args) {
  ekle();
  islem();
}

void ekle() {
  person[0] = "Volkan";
  person[16] = "Merve";
}

void islem() async {
  Map<String, dynamic> kisi = await kisiGetir(16);
  List<String> kurslar = await kisiKurslariGetir(kisi['isim']);
  Map<String, String> yorum = await kursunIlkYorumu(kurslar[0]);
  print("Kişi " + kisi['isim']);
  print("Kurs " + kurslar[0]);
  print("Yorum'u Atan " + yorum['kullanici'].toString());
  print("Yorum " + yorum["yorum"].toString());
}

Future<Map<String, String>> kursunIlkYorumu(String kursAdi) {
  return Future.delayed(Duration(seconds: 1), () {
    return {"yorum": "Kurs Mükkemmel", "kullanici": "Volkan"};
  });
}

Future<List<String>> kisiKurslariGetir(String username) {
  print("$username adlı kullanıcının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Java', 'react', 'flutter'];
  });
}

Future<Map<String, dynamic>> kisiGetir(int id) {
  print("$id id'li kullanıcı Getiriliyor!!!");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'id': '$id', 'isim': person[id].toString()};
  });
}
