Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((numero) => numero % 6 != 0).take(3);
  stream.listen((numero) {
    print('Listem value: $numero');
  });
}

int callback(int value) {
  return (value + 1) * 2;
}
