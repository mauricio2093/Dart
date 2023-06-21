void main() {
  var myInt = 8;
  String myString = "ola";

  if (myInt == 6 && myString == "Hola") {
    print("el valor es 6 y Hola");
  } else if (myInt == 7 || myString == "Hola") {
    print("el valor es 7 o Hola");
  } else {
    print("el valor no es 6 ni 7 ni Hola");
  }
  // Loops
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  // CallBascks
  var callbacks = [];

  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }
  // ForEach
  var collection = [1, 2, 3];
  collection.forEach(print);
}
