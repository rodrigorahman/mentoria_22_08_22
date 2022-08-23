import 'package:password_generate/password_generate.dart';

void main() {
 final passwordDefault = PasswordGenerate();
 print('Senha Padrão Gerada: ${passwordDefault.generate()}');


 final passwordSize = PasswordGenerate(size: 50);
 print('Senha Gerada 50: ${passwordSize.generate()}');

 final customPassword = PasswordGenerate(size: 50, skipCharacters: ['`', '^', '~', '_', '|', '{', '}']);
 print('Senha Gerada Sem Caractes especiais: ${customPassword.generate()}');
}
