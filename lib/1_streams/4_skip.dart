Future<void> main() async {
  final interval = Duration(seconds: 1);
  //não precisa de StreamController
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skipWhile((numero) {
    print(numero);
    return numero < 5;
  });

//await for

//lop infinito de stream periodic, somando 2 em 2
//com pausa de 2segundos
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
