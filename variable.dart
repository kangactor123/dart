// var staticVariable = '';

int initializeInt() {
  int sum = 0;
  for (var i = 0; i < 100000000000; i++) {
    sum += i;
  }
  return sum;
}

void main() {
  // var staticVariable;
  // print(staticVariable);
  // print(staticVariable.runtimeType);
  // staticVariable = 'this is dynamic var';
  // print(staticVariable);
  // print(staticVariable.runtimeType);

  // 기본 자료형
  // Dart 는 기본 자료형도 객체 타입이다.
  // String str = 'String';
  // print('str: ${str}, typeof ${str.runtimeType}');
  // int i = 1;
  // print('i: ${i}, typeof ${i.runtimeType}');
  // bool flag = false;
  // print('flag: ${flag}, typeof ${flag.runtimeType}');
  // double d = 0.003;
  // print('d: ${d}, typeof ${d.runtimeType}');

  // 기본적으로 Dart 는 초기화 하지 않는다면 null 값을 가진다.
  // late 키워드
  // 선언과 동시에 초기화 하지 않는 변수, 하지만 해당 변수를 초기화 한다고 Dart 컴파일러에게 보장하는 키워드
  // 주의할 점은 late 키워드를 사용한 변수가 초기화에 실패된다면 사용 시 Runtime 에러가 발생한다.
  late int i2;

  // print(i2);
  i2 = 3;
  print(i2);
  // 언제 사용하면 좋을까? >> 초기화 비용이 비쌀 경우
  // late 키워드를 사용할 경우 해당 변수가 사용되지 않는다면 초기화 되지 않는다.
  late int veryverybig = initializeInt();

  // final, const: 상수 키워드
  // final, const 키워드를 사용해 변수를 선언한다면 해당 변수는 상수가된다.
  final int finalInteger = 123123;
  final double PI = 3.14;
  const String ERROR_MSG = 'THIS IS 변할수 없는 VARIBALE';
  const NO_TYPE_ANNOTATION = 'NO_TYPE_ANNOTATION'; // 타입 어노테이션 없이 선언 가능

  final hi;
  hi = 'hi';
  // hi = 'hi2';

  // const hi2;

  // finalInteger = 1;
  // ERROR_MSG = 'CANT!!';

  // const DATE_1 = DateTime.now();

  final DATE_2 = DateTime.now();
  print(DATE_2);

  // final: 런타임 상수 키워드
  // const: 컴파일 상수 키워드
}
