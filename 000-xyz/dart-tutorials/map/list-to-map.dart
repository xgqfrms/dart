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
  dynamic list = [1, 2, 3, "str", true];
  print("list = $list");
  print("\n");
  // const map = list.asMap();
  // const 初始化 bug
  // dynamic map = list.asMap();
  // var map = list.asMap();
  final map = list.asMap();
  // list index == map key
  print("map = $map");
}


/*


list = [1, 2, 3, str, true]


map = {0: 1, 1: 2, 2: 3, 3: str, 4: true}

 */
