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
  // num: An integer or floating-point number.
  num number = 123;
  print("num = ${number}");
  int i = 666;
  print("int = ${i}");
  // i = 666.666;
  // Error: A value of type 'double' can't be assigned to a variable of type 'int'.
  double db = 999.999;
  print("double = ${db}");
  db = 999;
  print("double = ${db}");
}


/*

num = 123
int = 666
double = 999.999
double = 999.0

 */
