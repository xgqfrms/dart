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
  dynamic list = [1, 2, 3, "string", false];
  print("list = $list");
  list.forEach(print);
  print("\n");
  // list.forEach((key, i) => {
  // type '(dynamic, dynamic) => Set<void>' is not a subtype of type '(Object) => dynamic' of 'f'
  list.forEach((key) => {
    // print("list = $key, $i")
    print("list = $key")
    // print("list = $key");
    // Error: Expected '}' before this.
  });
}

// forEach() 不是 List 专有的，只是一个通用迭代器方法


/*

  void forEach(void f(E element)) {
    for (E element in this) f(element);
  }

 */

/*

list = [1, 2, 3, string, false]
list = 1
list = 2
list = 3
list = string
list = false


list = 1
list = 2
list = 3
list = string
list = false
 */
