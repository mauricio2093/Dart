void main() {
  const myHi = 'Hello';
  String myWorld = 'World!';

  for (int i = 0; i < 5; i++) {
    bool isPair = i % 2 == 0;
    if (isPair) {
      print('$myHi, $myWorld ${i + 1}');
    } else {
      print('${myHi.toUpperCase()}, ${myWorld.toUpperCase()} ${i + 1}');
    }
  }
}
