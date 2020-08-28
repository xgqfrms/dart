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
  dynamic s;
  String a = "A";
  String b = "B";
  String c = "C";
  String d = "default";
  s = "C";
  switch (s) {
    case "A":
      print("a = ${a}");
      break;
    case "B":
      print("b = ${b}");
      break;
    case "C":
      print("c = ${c}");
      break;
    default:
      print("default = ${d}");
  }
}



/*

c = C

 */
