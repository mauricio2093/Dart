/*******************************************************************************
Operadores
________________________________________________________________________________
Descripción                Operador                                Asociatividad
________________________________________________________________________________
posfijo unario            expr++ expr-- () [] ?[] . ?. !             Ninguno

prefijo unario            -expr !expr ~expr ++expr --expr await      Ninguno

multiplicativo            * / % ~/                                   izquierda

adictivo                  + -                                        izquierda

cambio                    << >> >>>                                  izquierda

bit a bit AND              &                                         izquierda

XOR bit a bit             ^                                          izquierda

bit a bit OR              |                                          izquierda

prueba relacional y       >= > <= < as is is!                        none
de tipo

igualdad                  == !=                                      none

AND logico                &&                                         izquierda

OR logico                 ||                                         izquierda

if null                   ??                                         izquierda

condicional              expr1 ? expr2 : expr3                       derecha

cascada                  .. ?..                                      izquierda

asignacion               = *= /= += -= &= ^=                         derecha

*******************************************************************************/

void main() {
  // incremento
  int a;
  int b;

  a = 0;
  a = ++a;
  print(a);

  b = 0;
  b = b++;
  print(b);

  assert(a != b);

  // decremento
  int c;
  int d;
  c = 0;
  c = --c;
  print(c);

  d = 0;
  d = d--;
  print(d);

  assert(c != d);

  // operadores de equidad y relacion
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  // Operadores de prueba de tipo :  Los operadores as , is y is! son utiles para verificar tipos en tiempo de ejecucion

  /*********************************************************************************
  __________________________________________________________________________________
   Operador   Significado
  __________________________________________________________________________________
   as         Typecast ( tambien se usa para especificar los prefijos de biblioteca)

   is         True si el objeto tiene el tipo especifacdo

   is!        True si el objeto no tiene el tipo especificado
  *********************************************************************************/

  // Operador de Asignacion
  int? e = null;
  a = 1;
  e ??= 5; // asigna un valor si la variable asignada es nula

  // operador de asignacion compuesta

  var num = 2;
  num *= 3;
  assert(a == 6);

  // Operadores logicos
  var col = 0;
  bool done = false;
  if (!done && (col == 0 || col == 3)) {
    // ...Do something...
  }

  //Operadores bit a bit y de desplazamiento

  final value = 0x22;
  final bitmask = 0x0f;

  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR
  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right
  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >> 4) == -0x03); // Shift right
  assert((-value >>> 4) > 0); // Unsigned shift right

  //Expresiones condicionales:  condition ? expr1 : expr2  ; expr1 ?? expr2
  bool isPublic = false;
  var visibility = isPublic ? 'public' : 'private';

  String playerName(String? name) => name != null ? name : 'Guest';

  //Notación en cascada  ( .., ?..)
  /*
    var paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
 */
  /* 
    Si el objeto sobre el que opera la cascada puede ser nulo, utilice una cascada de cortocircuito nulo?.. ( ) para la primera operación. Comenzando con ?..garantías de que ninguna de las operaciones en cascada se intenta en ese objeto nulo.

    querySelector('#confirm') // Get an object.
    ?..text = 'Confirm' // Use its members.
    ..classes.add('important')
    ..onClick.listen((e) => win
  */
}
