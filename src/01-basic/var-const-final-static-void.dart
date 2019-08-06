
/**
 *
 * @author xgqfrms
 * @license MIT
 * @copyright xgqfrms
 *
 * @description var-const-final-static-void
 * @augments
 * @example
 * @link
 *
 */

var x = 2019;
var y = "2019";
String z = 'hello world!';

const abc = 'abc';

final ufo = 'UFO';

// static xyz = 'XYZ';
// Can't have modifier 'static' here.

void xyz = '123';

void main() {
    print('x = $x');
    print('y = $y');
    print('z = $z');
    print('abc = $abc');
    print('ufo = $ufo');
    // print('xyz = $xyz');
    // Error: This expression has type 'void' and can't be used.
}

