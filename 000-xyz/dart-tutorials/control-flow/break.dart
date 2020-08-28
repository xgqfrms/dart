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
  int count = 7;
  for (var i = 0; i < count; i++) {
    if (i != 3) {
      print("i = ${i}");
    } else {
      d = i;
      print("break 跳出整个循环 = $d");
      // ✅ 跳出整个循环
      break;
    }
  }
}


/*

i = 0
i = 1
i = 2
break 跳出整个循环 = 3

 */
