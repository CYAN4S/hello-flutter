void main() {
  print('Hello, World!');
}

void dataType() {
  num a = 3.14;
  var b = 2; // int
  dynamic c = 42;
}

void operator() {
  var notNull = 'I\'m not null.';
  String isNull = notNull ?? 'It is null';

  var thisIsNull = null;
  int checkLength = thisIsNull?.length;

  int x = 10 ~/ 3; // 몫 연산

  var obj = Obj(1, 2)
  ..someMethod(); // 캐스케이드

  notNull is String;
  (notNull as String).length;
}

class Obj {
  Obj(int i, int j);
  void someMethod() {}

  static int j = 1;
}

void fnc() {
  final String name = 'Cyan';
  const int MAX_VALUE = 100;
}

int positionalOptional(int x, [int y = 10]) {
  return x + y; // 선택인자
}
// 다트에는 '이름 있는 인자' 기능 또한 있다.