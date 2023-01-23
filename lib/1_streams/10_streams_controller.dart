import 'dart:async';

Future<void> main() async {
  final streamController = StreamController<int>.broadcast();
  final instream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => 'O valor par enviado é $numero')
      .listen((strConvertida) => print(strConvertida));

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    instream.add(numero);
    await Future.delayed(Duration(microseconds: 500));
  }
  await streamController.close();
}
