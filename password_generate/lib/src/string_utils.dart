import 'dart:math';

class StringUtils {
  final _random = Random.secure();

  String generateRandomString(int size,
      [List<String> skipCharacters = const []]) {
    // var password = '';
    // var i = 0;
    // while (i <= size) {
    //   password += _generateCharacter(skipCharacters);
    //   i++;
    // }
    // return password;

    return List.generate(size, (index) => _generateCharacter(skipCharacters))
        .join('');
  }

  String _generateCharacter(List<String> skipCharacters) {
    final caracterNum = _random.nextInt(33) + 94;
    final char = String.fromCharCode(caracterNum);

    if (skipCharacters.contains(char)) {
      return _generateCharacter(skipCharacters);
    }

    return char;
  }
}
