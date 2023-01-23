import 'dart:async';

void main() async {
  final interval = Duration(seconds: 2);
  //não precisa de StreamController
  final stream = Stream<int>.periodic(interval, callback);

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
