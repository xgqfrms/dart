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
  dynamic key = 123;
  key = "123";
  if (key is num) {
    print("type is number");
  } else if (key is String) {
    print("type is string");
  } else {
    print("type is unknown");
  }
  // if (key == 123) {
  //   print("type is number");
  // } else if (key == "123") {
  //   print("type is string");
  // } else {
  //   print("type is unknown");
  // }
  print("key = ${key}");
  // ??? print assert
  assert(key == 123);
  assert(key == "123");
  // var result = assert(key == 123);
  // print(assert(key == 123));
  // Error: `assert` can't be used as an expression.
}

/*
key = 123

 */
