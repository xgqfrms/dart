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
  dynamic varibale = "xgqfrms";
  print("varibale = ${varibale}");
  varibale = 2020;
  print("varibale = ${varibale}");
  // var name = "xgqfrms";
  // var name;
  String name;
  print("name = ${name}");
  // 默认值 null
  name = "xgqfrms";
  print("Hello ${name}");
  // name = 2020;
  // print("Hello ${name}");
  // print(typeof name);
  // print(name is dynamic);
  // Unnecessary type check, the result is always true.
  // 泛型 🚀generic
  var list = new List<dynamic>();
  print("list = $list");
  list.add(1);
  list.add('hello');
  list.add(true);
  print("list = $list");
}

/*

使用var声明变量的同时未进行初始化，此变量的类型会被推断为 dynamic动态类型。

varibale = xgqfrms
varibale = 2020


list = []
list = [1, hello, true]
 */
