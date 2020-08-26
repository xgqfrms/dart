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
  double a = 3;
  double b = 7;
  // int a = 3;
  // int b = 7;
  var add = a + b;
  print("add = ${add}");
  var minus = a - b;
  print("minus = ${minus}");
  var multiply = a * b;
  print("multiply = ${multiply}");
  var division = a / b;
  print("division = ${division}");
  var remainder = a % b;
  print("remainder = ${remainder}");
  var rounding = a ~/ b;
  print("rounding = ${rounding}");
  dynamic even = 2;
  dynamic odd = 3;
  print("\neven = ${even.isEven}");
  print("odd = ${odd.isOdd}");
  // double: static const double nan = 0.0 / 0.0;
  // dynamic nan = 0 / 0;
  dynamic nan = 0.0 / 0.0;
  print("nan = ${nan.isNaN}");
  double neg = -12;
  print("\nneg = ${neg.abs()}");
  double float = 12.5;
  print("float = ${float.round()}");
  print("float = ${float.floor()}");
  print("float = ${float.ceil()}");
  double f = 3.1415926;
  print("f = ${f.toInt()}");
  int i = 8;
  print("float = ${i.toDouble()}");
}

/*

add = 10.0
minus = -4.0
multiply = 21.0
division = 0.42857142857142855
remainder = 3.0
rounding = 0

even = true
odd = true
nan = true

neg = 12.0
float = 13
float = 12
float = 13
f = 3
float = 8.0
 */

/*

add = 10
minus = -4
multiply = 21
division = 0.42857142857142855
remainder = 3
rounding = 0

even = true
odd = true
nan = true

neg = 12.0
float = 13
float = 12
float = 13
f = 3
float = 8.0
 */
