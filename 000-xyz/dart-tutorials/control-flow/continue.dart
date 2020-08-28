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
      print("continue 仅仅跳出本次循环 = $d");
      // ✅ 仅仅跳出本次循环
      continue;
    }
  }
}


/*

i = 0
i = 1
i = 2
continue 仅仅跳出本次循环 = 3
i = 4
i = 5
i = 6

 */
