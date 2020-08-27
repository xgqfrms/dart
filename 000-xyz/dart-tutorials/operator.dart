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
  int i = 0;
  int ii = 0;
  print("i = ${i++}, $i");
  print("ii = ${++ii}, $ii");
  print("\n");
  double f = 1.0;
  double ff = 1.0;
  print("f = ${f++}, $f");
  print("ff = ${++ff}, $ff");
}


/*

i = 0, 1
ii = 1, 1


f = 1.0, 2.0
ff = 2.0, 2.0

 */
