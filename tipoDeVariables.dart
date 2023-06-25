import 'dart:ffi';

void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyOnjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  // aunque la variable almacene un tipo de referencia como string, puede cambiar ese tipo especificandolo
  // si un objeto no esta restringido aun solo tipo, se especifica Object como tipo o dinamic si es necesario

  Object name1 = 'Bob';

  dynamic name2 = 'Bob';

  // pero tambia se puede declarar explicitamente el tipo que se inferirá
  String name3 = 'Bob';

  // Otras variables
  var Name = '';
  final int age = 10; // final variable que solo se puede establecer una vez
  const double price = 20.0; // const constante en un tiempo de compilación
  late String aux; // late despues le va asignar un valor
  bool isOpen = false;
  List numbersList = [1, 2, 3, 4];
  var myList = [
    "mauricio",
    "cadena",
    "@mauricio2093",
    "cadenna",
  ];
  print(myList);
  print(myList[1]);

  print(
      'the satellite ${name} was created in ${year}, its antenna has a diameter of ${antennaDiameter}, He traveled through several planets as: ${flybyOnjects}');

  print('${name1.runtimeType} ${name2.runtimeType} ${name3.runtimeType}');

  print(double.parse(price.toString()).round() + age);

  // Sets
  var mySet = {
    "mauricio",
    "cadena",
    "@mauricio2093",
    "cadena",
  };

  print(mySet);

  // Maps
  var myMaps = {
    "Mauricio": 29,
    "Lina": 31,
  };
  print(myMaps);
  print(myMaps["Mauricio"]);

  var myMap = Map<String, int>();
  myMap["Mauricio"] = 29;
  myMap["Lina"] = 31;

  print(myMap["Lina"]);

  //Null Safety - Dart no permite variables de valor null

  String? animal; // Nullable type. Can be `null` or string.
  late String animal1; // Non-nullable type. Cannot be `null` but can be string.

  //Default Value
  int weLikeToCount = 1;

  const int i = 1;

  int? lineCount;
  assert(lineCount == null);
  // interrupe la ejecucion normal si alguna declcondicion boleana es falsa
  print(lineCount);

  countLines(i) {
    for (int i = 1; i < 11; i++) {
      print('Numero: $i');
      assert(i < 11);
    }
  }

  if (weLikeToCount == 0) {
    lineCount = countLines(i);
  } else {
    lineCount = 0;
  }

  print(lineCount);

  // Constantes

  final myFinal = "Mi propiedad final";
  // myFinal = "Mi nueva propiedad final"; Error
  var myInt = 6;
  final myFinalInt = myInt;
  print(myFinalInt);

  const myConst = "Mi propiedad constante";
  // myConst = "Mi nueva propiedad constante"; Error
  var myDouble = 6.0;
  // const myConstDouble = myDouble; Error

  //valor opcional
  String? myOptionalString;
  print(myOptionalString);

  myOptionalString = "Valor no nulo";
  print(myOptionalString);

  // Tipos de Variables
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = <String>['impostor'];

  //String Multiline
  print("""
  $pokemon 
  $hp 
  $isAlive
  $abilities
  """);

  // Dynamic == null
  dynamic errorMessage = 'Hola';

  for (int j = 0; j < 6; j++) {
    switch (j) {
      case 0:
        print("esto es $errorMessage");
      case 1:
        print("esto es ${errorMessage = true}");
      case 2:
        print("esto es ${errorMessage = [1, 2, 3, 4, 5]}");
      case 3:
        print("esto es ${errorMessage = () => true}");
      case 4:
        print("esto es ${errorMessage = 1}");
      case 5:
        print("esto es ${errorMessage = null}");
      case 6:
        print(
            "esto es ${errorMessage += 1}"); /* no genera error cuidado
                                                 con dynamic */
      default:
        print("Error");
    }
  }
  // Maps
  final Map<String, dynamic> pokemons = {
    'name': 'Ditto',
    'HP': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      1: 'ditt/front.png',
      2: 'ditto/backend.png',
    }
  };

  print("Front ${pokemons['sprites'][1]}");
  print("Backend ${pokemons['sprites'][2]}");

  final pokemons2 = Map<String, dynamic>();
  pokemons2["name"] = 'Ditto';
  pokemons2['HP'] = 100;
  pokemons2['isAlive'] = true;
  pokemons2['abilities'] = <String>['impostor'];
  pokemons2['sprites'] = Map<int, String>();
  pokemons2['sprites'][1] = 'ditt/front.png';
  pokemons2['sprites'][2] = 'ditt/backend.png';

  print("Front ${pokemons2['sprites'][1]}");
  print("Backend ${pokemons2['sprites'][2]}");
}
