// var func = () => {print('this is arrow func')};

int getSum(int a, int b) {
  return a + b;
}

// int getCount(List<int> li) {
//   return li.length;
// }

// int getCount(List<int> li) => li.length;
// 간단한 식을 리턴하는 함수는 화살표 함수로 만들 수 있다.
// 두 줄 이상의 복잡한 함수는 화살표 함수를 사용해서 선언할 수 없다.
var getCount = (List<int> li) => li.length; //간단한 화살표 함수, 익명함수

// 함수를 매개변수로 받아서 해당 함수를 실행해본다.
var func = (Function foo) {
  bool a = foo();
  print(a);
};

Function returnFunc = () {
  return () => 'a' == 'b';
};

// foo() => 1 + 2;

void namedParam({String? str1, String str2 = 'Default Value'}) {
  print('str1: ${str1}, str2: ${str2}');
}

void optionalFoo(String str1, [String? str2]) {
  print('str1: ${str1}, str2: ${str2}');
}

Function lexicalFunc() {
  var level1 = '1';

  return () {
    var level2 = '2';

    () {
      var level3 = '3';

      () {
        var level4 = '4';

        () {
          var level5 = '5';

          print(
              'level1: ${level1}, level2: ${level2}, level3: ${level3}, level4: ${level4}, level5: ${level5}');
        }();
      }();
    }();
  };
}

var makeInt = (int a) => (int b) => a + b;

main() {
  // func();
  // getSum(1, 2);

  // int count = getCount(List.generate(3, (index) => index + 1));
  // print('count: ${count}');

  // var boo = () => 'a' == 'b';
  // func(boo);

  // print(returnFunc()());
  // print('foo: ${foo()}');

  // var function = lexicalFunc();
  // function();

  var b = makeInt(1);
  print(b(2));

  // namedParam(str1: 'Fisrt Func');
  // namedParam(str2: 'Second Func');
  // namedParam(str1: 'Third Func', str2: 'yeah!!');

  // optionalFoo('param-str1');
  // optionalFoo('param-str1', 'param-str2');
}
