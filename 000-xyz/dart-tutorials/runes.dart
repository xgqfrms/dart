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
  // dynamic d;
  // var x = "";
  // int i = 0;
  // double f = 1.0;
  // String s = "";
  // print("x = x");
  // print("i = i");
  // print("f = f");
  // print("s = s");
  var string = "Dart🎯";
  // var string = "Dart 🎯";
  print("string = $string");
  dynamic runes = string.runes.toList();
  print("runes = $runes");
}


/*

string = Dart 🎯
runes = [68, 97, 114, 116, 32, 127919]

 */

/*

string = Dart🎯
runes = [68, 97, 114, 116, 127919]

 */
