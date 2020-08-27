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
  print("d default = $d");
  print("\n");
  d = 1;
  print("d num = $d");
  d = "str";
  print("d string = $d");
  d = true;
  print("d bool = $d");
  // 泛型 🚀generic
  var list = new List<dynamic>();
  print("\n");
  print("list = $list");
  list.add(1);
  list.add('hello');
  list.add(true);
  print("list = $list");
}


/*

d default = null


d num = 1
d string = str
d bool = true


list = []
list = [1, hello, true]

 */
