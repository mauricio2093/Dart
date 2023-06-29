void main() {
  final Hero wolverine = Hero('Logan', 'Regeneración');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  final Animal felino = Animal(
    name: 'Leon',
    type: 'carnivoro',
    isExtinct: false,
  );

  print(felino);
  print(felino.name);
  print(felino.type);

  final Map<String, dynamic> rawJson = {
    'brand': 'kia picanto',
    'year': 2023,
    'isUse': false,
  };

  final automobile = Car.fromMap(rawJson);
  print(automobile.infoCar());

  //final windPlant
}

class MyClass {
  String name;
  int age;

  MyClass(
    this.name,
    this.age,
  );
}

class Hero {
  String name;
  String power;

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
}

class Animal {
  String name;
  String type;
  bool isExtinct;

  Animal({
    required this.name,
    this.type = 'Sin tipo',
    required this.isExtinct,
  });

  @override //sobre escribiendo una funcion nativa
  String toString() {
    return '$name, $type, is Extinct: ${isExtinct ? 'YES!' : 'Nope'}';
  }
}

class Car {
  String brand;
  int year;
  bool isUse;

  Car({
    required this.brand,
    required this.year,
    required this.isUse,
  });

  Car.fromMap(Map<String, dynamic> json)
      : brand = json['brand'] ?? 'No name found',
        year = json['year'] ?? 'No year found',
        isUse = json['isUse'] ?? 'No is Used found';

  String infoCar() {
    return '$brand, $year, was Used: ${isUse ? 'YES!' : 'Nope'}';
  }
}

// Clases abstratas y enumeraciones

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type; // nuclear, wind, water

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

// Extends o Implements
class WindPlant {}
