
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
  final sum = 1 + 2;
  print("sum = ${sum}");
  final time = new DateTime.now();
  // final 的初始值必须是静态，但是可以动态变化，可以理解为是一个 var 在初始化后立即锁定了值
  print("time = ${time}");
}

/*

sum = 3
time = 2020-08-26 18:03:17.889662

 */
