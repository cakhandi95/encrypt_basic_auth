import 'package:encrypt_basic_auth_mfa/encryption_helper.dart';

void main(List<String> arguments) {

  String plainText = 'borwita';
  String encrypted = EncryptionHelper.encrypt(plainText);
  String decrypted = EncryptionHelper.decrypt(encrypted);

  print('Encrypted: $encrypted');
  print('Decrypted: $decrypted');
}