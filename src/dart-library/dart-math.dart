import 'dart:math';

void main() {
  int max = 6;
  dynamic dice;
  // int nextInt(int max);
  dice = Random().nextInt(max);
  // 0 ~ 5,
  dice += 1;
  // 1 ~ 6,
  print('random dice = ${dice}');
}


/// https://api.dart.dev/stable/2.8.4/dart-math/Random/nextInt.html

// 生成非负随机整数，其范围从0（包括0）到max（不包括）均匀分布








/*


# gist id => DartPad url

https://gist.github.com/xgqfrms/9e42e9a14d690037ae8b2207b63f1d61

https://dartpad.dev/9e42e9a14d690037ae8b2207b63f1d61

https://dartpad.dartlang.org/9e42e9a14d690037ae8b2207b63f1d61

*/
