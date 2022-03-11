import 'dart:math';
import 'dart:mirrors';


int calculate() {
  return 6 * 7;
}

class Paint {
  int? color;
  int? strokeCap;
  double strokeWidth = 0.0;

  Paint(this.color, this.strokeCap);
  Paint.fromJSON(Map json)
      : color = int.parse(json['color']),
        strokeCap = int.parse(json['strokeCap']);

  @override
  String toString() => '$color, $strokeCap, $strokeWidth';

  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member : ${invocation.memberName}');
  }
}



int helloWorld(int a, int b) {


  ///函数的嵌套生成和作用域
  var makeAdder = (int addBy) => (int i) => addBy + i;

  var add2 = makeAdder(2);
  var add4 = makeAdder(4);

  assert(add2(2) == 4);
  assert(add4(2) == 6);

  //级联调用

  var paint = Paint(0,0)..color=0..strokeCap=0..strokeWidth=0.0;
  var paintFromJson = Paint.fromJSON({'color':'2', 'strokeCap':'3'});

  print(paintFromJson);


  print('42'.padLeft(5));
  //print('42'.parseInt());


  return 0;
}

String say(String from, String msg, [String device = 'carrier pigeon']) {
  var result = '$from say $msg with a $device';
  return result;
}
