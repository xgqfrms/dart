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
  dynamic list;
  list = [
    "abc",
    123,
    true,
    ["array"]
  ];
  String s = "item =";
  for (var item in list) {
    print("${s} $item");
  }
}


/*

item = abc
item = 123
item = true
item = [array]

 */
