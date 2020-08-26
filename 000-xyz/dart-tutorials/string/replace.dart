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
  String s = "string";
  print("s = $s");
  String replaceAll = "string string".replaceAll("s", "S");
  print("replaceAll = $replaceAll");
  String replaceFirst = "string string".replaceFirst("s", "s");
  print("replaceFirst = $replaceFirst");
  String replaceFirstMapped = "string string".replaceFirstMapped("s", (match) => null);
  print("replaceFirstMapped = $replaceFirstMapped");
  String replaceAllMapped = "string string".replaceAllMapped("s", (match) => null);
  print("replaceAllMapped = $replaceAllMapped");
  String replaceRange = "string string".replaceRange(0, 1, "S");
  print("replaceRange = $replaceRange");
}

/*

s = string
replaceAll = String String
replaceFirst = string string
replaceFirstMapped = nulltring string
replaceAllMapped = nulltring nulltring
replaceRange = String string

 */
