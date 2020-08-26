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
  String s = "dart string";
  print("s = $s");
  String contains = "dart string";
  print("contains = ${contains.contains("s")}");
  String substring = "dart string";
  print("substring = ${substring.substring(4)}");
}

/*

s = dart string
contains = true
substring =  string

 */

/*

s = string
replaceAll = String String
replaceFirst = string string
replaceFirstMapped = nulltring string
replaceAllMapped = nulltring nulltring
replaceRange = String string

 */

/*

方法

contains(), substring()

startsWith(), endsWith()

indexOf(), lastIndexOf()

toLowerCase(), toUpperCase()

trim(), trimLeft(), trimRight()

split(), replace???()

 */
