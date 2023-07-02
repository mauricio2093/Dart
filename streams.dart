void main() {
  emitNumbers().listen((event) {
    print('Stream value: $event');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) => value).take(5);
}
