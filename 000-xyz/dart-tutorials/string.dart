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
  String single_quote = 'signle quote string';
  print("single_quote = ${single_quote}");
  String double_quote = "double quote string";
  print("double_quote = ${double_quote}");
  String signle_multi_lines = '''
    signle
    multi lines
    multi lines string
  ''';
  print("signle_multi_lines = ${signle_multi_lines}");
  String double_multi_lines = """
    double
    multi lines
    multi lines string
  """;
  print("double_multi_lines = ${double_multi_lines}");
  String backslash_n = "string line1\nstring line2\nstring line3";
  print("backslash_n = ${backslash_n}");
  String raw_string = r"string line1\nstring line2\nstring line3";
  print("raw_string = ${raw_string}");
  dynamic s1 = "abc";
  dynamic s2 = "xyz";
  print("s1 + s2 = ${s1 + s2}");
  // print("s1 * s2 = ${s1 * s2}");
  // ❌type 'String' is not a subtype of type 'int' of 'times'
  print("s1 * 3 = ${s1 * 3}");
  // print("s1 - s2 = ${s1 - s2}");
  // ❌NoSuchMethodError: Class 'String' has no instance method '-'.
  print("s1 == s2 = ${s1 == s2}");
  print("s1[0] = ${s1[0]}");
  // print("s2[-1] = ${s1[-1]}");
  // ❌ RangeError (index): Invalid value: Not in range 0..2, inclusive: -1
  var dollar = "\$ symbol";
  print("\$dollar = $dollar");
  print("$s2[2] = $s2[2]");
  // ⚠️ bug: xyz[2] = xyz[2]
  print("$s2[2] = ${s2[2]}");
}

/*

single_quote = signle quote string
double_quote = double quote string
signle_multi_lines =     signle
    multi lines
    multi lines string

double_multi_lines =     double
    multi lines
    multi lines string

backslash_n = string line1
string line2
string line3

raw_string = string line1\nstring line2\nstring line3
 */


/*

s1 + s2 = abcxyz
s1 * 3 = abcabcabc
s1 == s2 = false
s1[0] = a

$dollar = $ symbol
xyz[2] = xyz[2]
xyz[2] = z
 */
