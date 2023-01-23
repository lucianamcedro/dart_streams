Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //dividir a streams, ter mais de um ouvinte

  // stream = stream.asBroadcastStream();

  // stream = stream.take(10);
  // stream.listen((numero) {
  //   print('Listem 1 value: $numero');
  // });

  // stream.listen((numero) {
  //   print('Listem 2 value: $numero');
  // });

  stream = stream.asBroadcastStream().take(10);

  stream.listen((numero) {
    print('Listem 1 value: $numero');
  });

  stream.listen((numero) {
    print('Listem 2 value: $numero');
  });
}

int callback(int value) {
  return (value + 1) * 2;
}
