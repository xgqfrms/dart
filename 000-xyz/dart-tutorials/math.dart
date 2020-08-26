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
 */
