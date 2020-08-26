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
  // ??? print assert
  assert(key == 123);
  assert(key == "123");
  print("key = ${key}");
  // var result = assert(key == 123);
  // print(assert(key == 123));
  // Error: `assert` can't be used as an expression.
}


/*
key = 123

 */
