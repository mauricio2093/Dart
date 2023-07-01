void main() {
  final flipper = Delfin();
  print('flipper:');
  flipper.nadar();

  final batman = Murcielago();
  print('batman:');
  batman.caminar();
  batman.volar();

  final lucas = Pato();
  print('lucas:');
  lucas.caminar();
  lucas.nadar();
  lucas.volar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print('Estoy volando');
}

mixin class Caminante {
  void caminar() => print('Estoy Caminando');
}

mixin class Nadador {
  void nadar() => print('Estoy Nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}
