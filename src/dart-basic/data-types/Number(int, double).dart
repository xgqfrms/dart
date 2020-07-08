/// dart block comments
// https://dart.dev/guides/language/effective-dart/documentation#doc-comments
// https://dart.dev/samples#comments

/**
 *
 * @author xgqfrms
 * @license MIT
 * @copyright xgqfrms
 * @created 2020-07-07
 * @modified
 *
 * @description js class declaration
 * @augments
 * @example
 * @link
 *
 */

void main() {
  // abstract class String implements Comparable<String>, Pattern
  String s = "string type";
  print(s);
  // String s
  
  // Number n = 123;
  // Error: 'Number' isn't a type.
  
  int i = 123;
  // Number, int i
  print(i);
  
  double d = 3.1415926;
  // Number, double d
  print(d);
  
  // static type
  var vs = 'var string';
  var vi = 333;
  // vs = 999;
  // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  // vi = 'var int';
  // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  
  // dynamic type
  var a;
  a = 'abc';
  print(a);
  a = 123;
  print(a);
  
  dynamic D;
  D = 'xyz';
  print(D);
  D = 666;
  print(D);
  
}
