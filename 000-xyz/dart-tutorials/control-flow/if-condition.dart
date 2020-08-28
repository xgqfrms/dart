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
  dynamic d;
  String s = "S";
  String a = "A";
  String b = "B";
  String c = "C";
  d = 95;
  if (d >= 95) {
    print("s = ${s}");
  }
  d = 80;
  if (d >= 80) {
    print("a = ${a}");
  }
  d = 0;
  if (d >= 60) {
    print("b = ${b}");
  } else {
    print("c = ${c}");
  }
}


/*

s = S
a = A
c = C

 */
