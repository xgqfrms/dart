
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
  const sum = 1 + 2;
  // const 的初始值必须是静态，不可动态变化的
  print("sum = ${sum}");
  // Const variables must be initialized with a constant value.
  const time = new DateTime.now();
  // Error: New expression is not a constant expression.
  print("time = ${time}");
}

/*

const-bug.dart:20:16: Error: New expression is not a constant expression.
  const time = new DateTime.now();

 */
