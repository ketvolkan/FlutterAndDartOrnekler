import 'dart:io';

void main(List<String> args) {
  print("Instagrama Fotoğraf Yükleniyor...");
  uploadPhoto().then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Fotoğraf Yükleme İşlemi Bitti!"));
  print("Instagrama Fotoğraf Yükleniyor..");
  print(
      "Instagrama Fotoğraf Yükleniyor."); //Asenkron programlamada Methodun içindeki olayın süresini beklemeden işlemi Gerçekleştirir
}

//Senkron Çalışma Örneği
// void uploadPhoto() {
//   sleep(Duration(seconds: 5));
// }
Future<String> uploadPhoto() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    // return "Volkan Mehmetin Fotoğrafını Likeledi "; //Sürenin Sonunda Çalışacak kod
    throw Exception("Likeleme Başarısız!");
  });
  return sonuc;
}
