import 'package:password_generate/src/string_utils.dart';

class PasswordGenerate {
  final int size;
  final List<String> skipCharacters;

  PasswordGenerate({
    this.size = 21,
    this.skipCharacters = const [],
  });

  String generate() => StringUtils().generateRandomString(size, skipCharacters);
}
