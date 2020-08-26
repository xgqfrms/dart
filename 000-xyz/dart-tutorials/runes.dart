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
