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
  // var name = "xgqfrms";
  var name;
  name = "xgqfrms";
  print(typeof name);
  // print(name is dynamic);
  // Unnecessary type check, the result is always true.
  print("Hello ${name}");
  // do something...
  // return null;
}

/*

使用var声明变量的同时未进行初始化，此变量的类型会被推断为 dynamic动态类型。

 */
