/**
 *
 * @author xgqfrms
 * @license MIT
 * @copyright xgqfrms
 * @created 2019-01-01
 *
 * @description
 * @augments
 * @example
 *
 */

void main() {
  num n = 1;
  int i = 1;
  double f = 1.0;
  // double f = 1;
  print("n is int, ${n is int}");
  print("n is double, ${n is double}");
  print("\n");
  print("i == n, ${i == n}, $i, $n");
  print("\n");
  // num ❓隐式数据类型转换, int => double
  print("f == n, ${f == n}, $f, $n");
  print("\n");
  // num ❓隐式数据类型转换, int => double
  print("i == f, ${i == f}, $i, $f");
  print("\n");
  int count = 3;
  for (num i = 0; i < count; i++) {
    print("i = ${i}");
  }
  // for (int i = 0; i < count; i++) {
  //   print("i = ${i}");
  // }
  // for (double i = 0; i < count; i++) {
  //   print("i = ${i}");
  // }
  // for (dynamic i = 0; i < count; i++) {
  //   print("i = ${i}");
  // }
  // for (var i = 0; i < count; i++) {
  //   print("i = ${i}");
  // }
}

/*

n is int, true
n is double, false

i == n, true, 1, 1


f == n, true, 1.0, 1


i == f, true, 1, 1.0


i = 0
i = 1
i = 2

 */
