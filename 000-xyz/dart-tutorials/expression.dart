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
  // String s = "";
  bool b = true;
  print("b = ${b}");
  d = b ? "true value" : "false value";
  print("d = ${d}");
  // int x = 0;
  // int y = 1;
  // dynamic x = false;
  // dynamic y = 1;
  dynamic x;
  dynamic y = 1;
  print("\n");
  // 🚀 ?? null 空值合并操作符，ES2020，TS
  // ✅ ?? 只有初始值是 null，才会执行
  dynamic z = x ?? y;
  print("z = $z");
}
