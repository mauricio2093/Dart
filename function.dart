void main() {
  myFuntion();

  var result = fibonacci(20);
  print(result);

  var myRetorn = myFunctionWithReturn();
  print(myRetorn);

  print(greetEveryone());

  print('sum 2 numbers ${addTwoNumbers(73)}');
  print('sum 3 numbers ${addThreeNumbers(73, 9)}');
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

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, [int? b]) {
  b = b ?? 0; // condicionales null

  return a + b;
}

int addThreeNumbers(int a, [int b = 0]) => a + b + 23;
