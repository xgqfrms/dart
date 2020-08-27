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
  var m = new Map();
  dynamic map = {
    1: "Dart",
    2: "Flutter",
    3: "Go",
  };
  print("map = $map");
  print("\n");
  print("map.length = ${map.length}");
  print("map.isEmpty = ${map.isEmpty}");
  print("map.isNotEmpty= ${map.isNotEmpty}");
  print("\n");
  // map.forEach(print);
  // type '(Object) => void' is not a subtype of type '(int, String) => void' of 'f'
  map.forEach((k, v) => {print("k, v = $k, $v")});
  print("\n");
  // forEach 自定义函数
  void for_each_callback(key, value) {
    print("key, value = $key, $value");
  }
  map.forEach(for_each_callback);
  print("\n");
  print("map.containsKey(1) = ${map.containsKey(1)}");
  print("map.containsValue('Go') = ${map.containsValue("Go")}");
  map.remove(2);
  print("map = $map");
  // print("\n");
  // print("map = ${map.Keys()}");
  // print("map = ${map.Values()}");
  // print("map = ${map.Entries()}");
  // print("\n");
}

/*

map = {1: Dart, 2: Flutter, 3: Go}

map.length = 3
map.isEmpty = false
map.isNotEmpty= true

k, v = 1, Dart
k, v = 2, Flutter
k, v = 3, Go

key, value = 1, Dart
key, value = 2, Flutter
key, value = 3, Go

map.containsKey(1) = true
map.containsValue('Go') = true
map = {1: Dart, 3: Go}

 */
