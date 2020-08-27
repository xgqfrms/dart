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
  // ❌⚠️ do not use bool / num as the key of map
  dynamic bad = {"a": 1, true: false, 1: 111};
  print("bad = $bad");
  dynamic map = {"a": 1, "b": 2, "c": 3, "str": "string", "bool": true};
  print("\nmap = $map");
  const mc = {"key": 1, "str": "string", "bool": true};
  print("mc = $mc");
  // var m = new Map("key", 1);
  // var m = new Map({"key": 1});
  var m = new Map();
  // m.addEntries({"key": 3});
  // m.addEntries();
  m.addAll({"key": 3});
  print("m = $m");
}


/*

bad = {a: 1, true: false, 1: 111}

map = {a: 1, b: 2, c: 3, str: string, bool: true}
mc = {key: 1, str: string, bool: true}
m = {key: 3}

 */
