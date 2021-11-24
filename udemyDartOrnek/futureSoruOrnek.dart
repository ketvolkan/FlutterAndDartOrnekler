import 'dart:io';

Map<int, dynamic> person = Map();
void main(List<String> args) {
  ekle();
  kisiGetir(16).then((Map kisi) {
    kisiKurslariGetir(kisi['isim']).then((List<String> kurslar) {
      print("Kurs : " + kurslar[0]);
      kursunIlkYorumu(kurslar[0]).then((Map value) {
        print("Yorum'u Atan : " +
            value['kullanici'] +
            "\nYorum : " +
            value['yorum']);
      });
    });
  }).catchError(() {
    print("Hata");
  });
}

void ekle() {
  person[0] = "Volkan";
  person[2] = "Ahmet";
  person[1] = "Mehmet";
  person[4] = "Can";
  person[5] = "Nazmi";
  person[16] = "Merve";
  person[7] = "Derya";
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
