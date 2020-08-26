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



## 跳转到 Dart 源代码

光标放到 Dart 关键字上面

1. VS Code 右键，Go To Definition
2. command + F12 （F12这个需要按住fn）
3. command + 7 ❓❌ 不好使

