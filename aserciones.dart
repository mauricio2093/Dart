void main() {
  final mySquare = Square1(side: 10);

  print('area: ${mySquare.area} m²');

  final myProduct = Product(id: -5, name: '', price: -1.0);

  print('${myProduct.id}, ${myProduct.name}, ${myProduct.price}');
}

class Square1 {
  double _side; // _ guion es propiedad privada

  Square1({required double side})
      : assert(side > 0, 'Error: debe ser mayor a cero'),
        _side = side;

  double get area {
    return _side * _side;
  }
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.price,
    this.size,
    this.image,
    this.weight,
  })  : assert(id > 0),
        assert(name.isNotEmpty),
        assert(price > 0.0);

  final int id;
  final String name;
  final double price;
  final String? size;
  final String? image;
  final int? weight;
}
