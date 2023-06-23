void main() {
  myFuntion();

  var result = fibonacci(20);
  print(result);

  var myRetorn = myFunctionWithReturn();
  print(myRetorn);
}

void myFuntion() {
  print("Esto es una funcion");
}

String myFunctionWithReturn() {
  return "Esto es una funcion";
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
