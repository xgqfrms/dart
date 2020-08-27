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
  var list = [1, 2, 3, "string", true, [4,5,6]];
  // var list = [1, 2, 3];
  print("list = $list");
  list[0] = 11;
  print("list = $list");
  // var lc = const [1, 2, 3];
  const lc = [1, 2, 3];
  print("lc = $lc");
  // lc[0] = 11;
  // Unsupported operation: Cannot modify an unmodifiable list
  var ln = new List(3);
  print("ln = $ln");
  ln = [...list];
  print("ln = $ln");
}

/*

list = [1, 2, 3]
list = [11, 2, 3]
lc = [1, 2, 3]
ln = [null, null, null]
ln = [11, 2, 3]
 */

/*


list = [1, 2, 3, string, true, [4, 5, 6]]
list = [11, 2, 3, string, true, [4, 5, 6]]
lc = [1, 2, 3]
ln = [null, null, null]
ln = [11, 2, 3, string, true, [4, 5, 6]]

 */

