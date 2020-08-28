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
  print("d = ${d}");
  // null || 1;
  // ??= 短路赋值运算符, TS 🚀
  d ??= 1;
  print("d ??= ${d}");
  // var n = null;
  // "" ❌不好使
  // var n = "";
  // n ??= "string";
  // print("n ??= ${n}");
  // 0 ❌不好使
  // var n = 0;
  // n ??= 7;
  // print("n ??= ${n}");
  // false ❌不好使
  // var n = false;
  // n ??= true;
  // print("n ??= ${n}");
  print("\n");
  int i = 0;
  print("i = ${i}");
  i += 3;
  print("i += ${i}");
  i -= 1;
  print("i -= ${i}");
  i *= 3;
  print("i *= ${i}");
  // int ❌, /= 必须是 double 类型,
  // i /= 2;
  // print("i /= ${i}");
  i %= 2;
  print("i %= ${i}");
  // double, ✅ /= 必须是 double 类型
  double dd = 2.0;
  dd /= 2;
  print("dd /= ${dd}");
  // int => double, ✅ / 必须是 double 类型
  int x = 3;
  // x = x / 2;
  print("x / 2 = ${x / 2}");
}

/*

d = null
d ??= 1


i = 0
i += 3
i -= 2
i *= 6
i %= 0
dd /= 1.0

 */
