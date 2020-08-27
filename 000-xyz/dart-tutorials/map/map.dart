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
  // ❌⚠️ do not use bool as the key of map
  dynamic bad = {"a": 1, true: false, 1: 111};
  print("bad = $bad");
  dynamic map = {"a": 1, 2: 222, "c": 3, "str": "string", "bool": true};
  print("\nmap = $map");
  // print("map[0] = ${map[0]}");
  print("map[2] = ${map[2]}");
  print('map["a"] = ${map["a"]}');
  map[2] = 2;
  print("map[2] = ${map[2]}");
  const mc = {"key": 1, "str": "string", "bool": true};
  print("\nmc = $mc");
  // var m = new Map("key", 1);
  // var m = new Map({"key": 1});
  var m = new Map();
  // m.addEntries({"key": 3});
  // m.addEntries();
  m.addAll({"key": 3});
  print("m = $m");
}


/*

  void forEach(void f(K key, V value));

 */
/*

bad = {a: 1, true: false, 1: 111}

map = {a: 1, b: 2, c: 3, str: string, bool: true}

map[2] = 222
map["a"] = 1
map[2] = 2

mc = {key: 1, str: string, bool: true}
m = {key: 3}

 */
