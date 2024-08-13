import 'package:encrypt/encrypt.dart';

///
/// Created by Handy on 13/08/24
/// Macbook Air M2 - 2022
/// it.handy@borwita.co.id / it.handy
///

class EncryptionHelper {

  static final _key = Key.fromUtf8('PRIGRIMIRCINIOR');
  static final _iv = IV.fromUtf8('PRIGRIMIRCINIOR');

  // Enkripsi
  static String encrypt(String text) {
    final encrypter = Encrypter(AES(_key, mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(text, iv: _iv);
    return encrypted.base64;
  }

  // Dekripsi
  static String decrypt(String encryptedText) {
    final encrypter = Encrypter(AES(_key, mode: AESMode.cbc));
    final decrypted = encrypter.decrypt(Encrypted.fromBase64(encryptedText), iv: _iv);
    return decrypted;
  }
}
