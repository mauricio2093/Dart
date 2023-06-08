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

void main() {
  print(
      'the satellite ${name} was created in ${year}, its antenna has a diameter of ${antennaDiameter}, He traveled through several planets as: ${flybyOnjects}');

  print('${name1.runtimeType} ${name2.runtimeType} ${name3.runtimeType}');

  print(double.parse(price.toString()).round() + age);

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
}
