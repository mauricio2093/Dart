void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://');
    print(value);
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('Error!! OOP !! $err');
  } finally {
    print('fin del try y catch');
  }

  print('Fin del programa');

  emitNumber().listen((int event) => print('Stream value: $event'));
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parámetros en el URL');

  //throw 'Error en la petición http';

  //return 'Respuesta de la peticion http';
}

Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
