# Learn Dart: First Step to Flutter

> learn the fundamentals of Dart

https://www.educative.io/courses/learn-dart-first-step-to-flutter

https://gitee.com/LeiYu-Io/Dart-Basic/

https://www.imooc.com/video/17728


## dart runtime

```sh
# Flutter 1.20

$ dart --version
# Dart VM version: 2.8.4 (stable) (Wed Jun 3 12:26:04 2020 +0200) on "macos_x64"

$ dart --help
$ dart -h
# Usage: dart [<vm-flags>] <dart-script-file> [<script-arguments>]
# Executes the Dart script <dart-script-file> with the given list of <script-arguments>.
```

```sh
# dart [<vm-flags>] <dart-script-file> [<script-arguments>]
$ dart main.dart

```

```sh
$ brew tap dart-lang/dart

$ brew install dart
# 2.9.1
$ brew upgrade dart

$ brew switch dart 2.1.0

$ brew info dart
```


https://dart.dev/get-dart


## ffi

```dart
import 'dart:ffi';

/*

dart:ffi

Foreign Function Interface for interoperability with the C programming language.

NOTE: Dart:FFI is in beta, and breaking API changes might still happen.

For further details, please see: https://dart.dev/server/c-interop

*/
```


## final vs const

final 和 const 的区别: final 对象本身不可变, 但是 const 对象的引用却是可以变的.


https://dart.dev/guides/language/language-tour#:~:text=A%20final%20variable%20can%20be,the%20first%20time%20it's%20used.


If you never intend to change a variable, use final or const, either instead of var or in addition to a type.
A final variable can be set only once; a const variable is a compile-time constant. (Const variables are implicitly final.) A final top-level or class variable is initialized the first time it’s used.

如果您从未打算更改变量，请使用final或const，而不是var或除了类型之外。
最终变量只能设置一次； const变量是编译时常量。 （常量变量隐式为最终变量。）最终的顶级变量或类变量在首次使用时被初始化

Note: Instance variables can be final but not const.
Final instance variables must be initialized before the constructor body starts — at the variable declaration, by a constructor parameter, or in the constructor’s initializer list.

注意：实例变量可以是最终变量，但不能是const。
必须在构造函数主体开始之前初始化最终实例变量-在变量声明中，通过构造函数参数或在构造函数的初始化列表中


```dart

const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

var foo = const [];
final bar = const [];
const baz = []; // Equivalent to `const []`


foo = [1, 2, 3]; // Was const []

baz = [42]; // Error: Constant variables can't be assigned a value.

```

As of Dart 2.5, you can define constants that use type checks and casts (is and as), collection if, and spread operators (... and ...?):

```dart
// Valid compile-time constants as of Dart 2.5.

const Object i = 3;
// Where i is a const Object with an int value...

const list = [i as int];
// Use a typecast.

const map = {if (i is int) i: "int"};
// Use is and collection if.

const set = {if (list is List<int>) ...list};
// ...and a spread.

```

const 不可修改的 value（修饰 value 不可变）

final 不可修改的 var（修饰 var 值初始化后不可变）

final 的初始值必须是静态，但是可以动态变化，可以理解为是一个 var 在初始化后立即锁定了值

const 的初始值必须是静态，不可动态变化的


## Dart 数据类型

https://dart.dev/guides/language/type-system

https://dart.dev/guides/language/language-tour#built-in-types


```dart
// Number
num
// An integer or floating-point number.
int
double

// Boolean
bool

String
// Dart 字符串是 UTF-16 编码的字符序列。可以使用单引号或者双引号来创建字符串

List

Map

Set

Runes

Symbols

```

https://dart.cn/guides/language/language-tour#built-in-types

> Dart 内置类型

```dart

numbers
strings
booleans
lists (也被称为 arrays)

sets
maps
runes (用于在字符串中表示 Unicode 字符)

symbols

```

https://api.dart.dev/stable/2.9.1/dart-core/dart-core-library.html


```dart
int meaningOfLife = 42;
double valueOfPi  = 3.141592;
bool visible      = true;

String shakespeareQuote = "All the world's a stage, ...";

StringBuffer moreShakespeare = new StringBuffer();
moreShakespeare.write('And all the men and women ');
moreShakespeare.write('merely players; ...');

var numbers = new RegExp(r'\d+');

List superheroes = [ 'Batman', 'Superman', 'Harry Potter' ];

Set villains = new Set();
villains.add('Joker');
villains.addAll( ['Lex Luther', 'Voldemort'] );


Map sidekicks = { 'Batman': 'Robin',
                  'Superman': 'Lois Lane',
                  'Harry Potter': 'Ron and Hermione' };

DateTime now = new DateTime.now();
DateTime berlinWallFell = new DateTime(1989, 11, 9);
DateTime moonLanding = DateTime.parse("1969-07-20");

Duration timeRemaining = new Duration(hours:56, minutes:14);

Uri dartlang = Uri.parse('http://dartlang.org/');

```

http://www.dartlang.org/docs/dart-up-and-running/

http://www.dartlang.org/docs/dart-up-and-running/contents/ch02.html#built-in-types

https://www.dartlang.org/docs/dart-up-and-running/ch03.html#dartcore---numbers-collections-strings-and-more



## VSCode 跳转到 Dart 源代码

> 光标放到 Dart 关键字上面

1. VS Code 右键，Go To Definition
2. command + F12 （F12这个需要按住fn）
3. command + click 好使
4. command + 7 ❓❌ 不好使


## type checker

https://stackoverflow.com/questions/7715948/how-to-perform-runtime-type-checking-in-dart

https://stackoverflow.com/questions/54301730/dart-how-to-check-if-a-variable-type-is-string/54302255

```dart
// is
dynamic key = 123;
key = "123";
if (key is num) {
 print("type is number");
} else if (key is String) {
 print("type is string");
} else {
 print("type is unknown");
}

```

## math

```dart
~/ 取整

% 取余

/ 除

+

-

* 乘

属性: isNaN, isEven, isOdd

even 偶数

odd 奇数

方法: abs(), round(), floor(), ceil(), toInt(), toDouble()

```

## String

```dart

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
}

```

```dart
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
  print("rreplaceRange = $replaceRange");
}

```

> String operator

https://api.dart.dev/stable/2.9.1/dart-core/String/operator_plus.html

https://api.dart.dev/stable/2.9.1/dart-core/String/operator_multiply.html

https://api.dart.dev/stable/2.9.1/dart-core/String/operator_equals.html

https://api.dart.dev/stable/2.9.1/dart-core/String/operator_get.html

+

*

==

[]

${}

$var

${var1 + var2}

属性 length， isEmpty, isNotEmpty

方法

contains(), substring()

startsWith(), endsWith()

indexOf(), lastIndexOf()

toLowerCase(), toUpperCase()

trim(), trimLeft(), trimRight()

split(), replace???()

https://api.dart.dev/stable/2.9.1/dart-core/String-class.html#operators


https://dart.cn/guides/libraries/library-tour#strings-and-regular-expressions


## list

> array

```dart

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

```

[], length

add(), insert()

remove(), clear()

indexOf(), lastIndexOf()

sort(), sublist()

shuffle(), asMap(),

<!-- forEach() -->


## imperative programming

This style of programming is called imperative programming.

这种编程样式称为命令式编程。

It is essentially a programming paradigm wherein you write a set of instructions that execute in sequential order.

从本质上讲，它是一种编程范例，其中您编写了一组按顺序执行的指令。

Imperative programming doesn’t necessarily describe what the program should accomplish, rather it shows how the program should accomplish it.

命令式编程不一定描述程序应完成的任务，而是说明程序应如何完成。


## Dart & Runes

> 符文

> Unicode UTF-16

```dart
var string = 'Dart 🎯';
string.runes.toList();
// [68, 97, 114, 116]

void main() {
  var string = "Dart🎯";
  // var string = "Dart 🎯";
  print("string = $string");
  dynamic runes = string.runes.toList();
  print("runes = $runes");
}

```

https://api.dart.dev/stable/2.9.1/dart-core/String-class.html

https://api.dart.dev/stable/2.9.1/dart-core/Runes-class.html

https://api.dart.dev/stable/2.9.1/dart-core/String/runes.html


## Map

https://api.dart.dev/stable/2.9.1/dart-core/Map-class.html

```dart
void main() {
  // ❌⚠️ do not use bool / num as the key of map
  dynamic bad = {"a": 1, true: false, 1: 111};
  print("bad = $bad");
  dynamic map = {"a": 1, "b": 2, "c": 3, "str": "string", "bool": true};
  print("\nmap = $map");
  const mc = {"key": 1, "str": "string", "bool": true};
  print("mc = $mc");
  // var m = new Map("key", 1);
  // var m = new Map({"key": 1});
  var m = new Map();
  // m.addEntries({"key": 3});
  // m.addEntries();
  m.addAll({"key": 3});
  print("m = $m");
}

```

```dart
[], length

isEmpty, isNotEmpty

keys, values, entries

containsKey(), containsValue()

remove()

​forEach()

```

list.asMap

```dart
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

```

## 泛型 🚀generic

<!-- https://api.dart.dev/stable/2.9.1/dart-core/Generic-class.html -->

https://dart.dev/guides/language/language-tour#generics

https://api.dart.dev/stable/2.9.1/dart-core/Invocation/Invocation.genericMethod.html

TypeScript

https://www.typescriptlang.org/docs/handbook/generics.html

https://stackoverflow.com/questions/59677862/how-to-create-objects-of-generic-types-in-flutter-dart

```dart

void main() {
  dynamic d;
  print("d default = $d");
  print("\n");
  d = 1;
  print("d num = $d");
  d = "str";
  print("d string = $d");
  d = true;
  print("d bool = $d");
  // 泛型 🚀generic
  var list = new List<dynamic>();
  print("\n");
  print("list = $list");
  list.add(1);
  list.add('hello');
  list.add(true);
  print("list = $list");
}

```

## operator

```dart

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


```

```dart
void main() {
  int i = 0;
  int ii = 1;
  double f = 1.0;
  double ff = 2.0;
  double fff = 3.0;
  print("i == ii, ${i == ii}");
  print("i != ii, ${i != ii}");
  print("f <= ff, ${f <= ff}");
  print("f < ff, ${f < ff}");
  print("fff >= ff, ${fff >= ff}");
  print("fff >= ff, ${fff > ff}");
}


```

```dart

void main() {
  bool b = true;
  print("b = ${b}");
  print("b = ${!b}");
  print("b = ${b && false}");
  print("b = ${b || false}");
}

```
## ??= 短路赋值运算符, TS 🚀

```dart
void main() {
  dynamic d;
  print("d = ${d}");
  // null || 1;
  // ??= 短路赋值运算符, TS 🚀
  d ??= 1;
  print("d ??= ${d}");
  // var n = null;
  // "" ❌不好使
  // var n = "";
  // n ??= "string";
  // print("n ??= ${n}");
  // 0 ❌不好使
  // var n = 0;
  // n ??= 7;
  // print("n ??= ${n}");
  // false ❌不好使
  // var n = false;
  // n ??= true;
  // print("n ??= ${n}");
  print("\n");
  int i = 0;
  print("i = ${i}");
  i += 3;
  print("i += ${i}");
  i -= 1;
  print("i -= ${i}");
  i *= 3;
  print("i *= ${i}");
  // int ❌, /= 必须是 double 类型,
  // i /= 2;
  // print("i /= ${i}");
  i %= 2;
  print("i %= ${i}");
  // double, ✅ /= 必须是 double 类型
  double dd = 2.0;
  dd /= 2;
  print("dd /= ${dd}");
  // int => double, ✅ / 必须是 double 类型
  int x = 3;
  // x = x / 2;
  print("x / 2 = ${x / 2}");
}


```

## ?? null 空值合并操作符，ES2020，TS

```dart
// exp ?? exp
// condition ? exp : exp

void main() {
  dynamic d;
  // String s = "";
  bool b = true;
  print("b = ${b}");
  d = b ? "true value" : "false value";
  print("d = ${d}");
  // int x = 0;
  // int y = 1;
  // dynamic x = false;
  // dynamic y = 1;
  dynamic x;
  dynamic y = 1;
  print("\n");
  // 🚀 ?? null 空值合并操作符，ES2020，TS
  // ✅ ?? 只有初始值是 null，才会执行
  dynamic z = x ?? y;
  print("z = $z");
}

```

```dart


```

```dart


```






