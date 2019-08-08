# dart

> dart for flutter

## Dart SDK install

> zh-Hans & Windows

```sh
# windows & user env
PUB_HOSTED_URL
https://pub.flutter-io.cn

# windows & system env & DART_SDK
DART_SDK
H:\Program Files\Dart-SDK\dart-sdk

# windows & system env & JDK (Open JDK)
JAVA_HOME
H:\JDK-12

# windows & system env & PATH
H:\Program Files\Dart-SDK\dart-sdk\bin
%JAVA_HOME%\bin


```

## dart 2.3.2

https://dart.dev/get-dart

> macOS

```sh
$ brew tap dart-lang/dart
$ brew install dart

$ brew upgrade dart
```

```sh
$ brew info dart

$ dart --version

```

https://dart.dev/tools/sdk/archive

https://dart.dev/tools/dart-vm

https://github.com/IOT-DSA/docs/wiki/Update-Dart-SDK

## 手动安装 Dart SDK

> 使用工具自动安装 Dart SDK 失败时，还可以手动安装。

1. 下载并解压，将 dart sdk 中的 bin 文件夹添加到系统环境变量即可。

> 手动添加 env

```sh
# windows & user env
PUB_HOSTED_URL
https://pub.flutter-io.cn

# windows & system env & DART_SDK
DART_SDK
# not work
H:\Program Files\Dart-SDK\dart-sdk
## OK
H:\Program Files\Dart-SDK\dart-sdk\bin

# windows & system env & JDK (Open JDK)
JAVA_HOME
H:\JDK-12

# windows & system env & PATH
H:\Program Files\Dart-SDK\dart-sdk\bin
%JAVA_HOME%\bin


```

```sh
$ dart app.dart
# Hello World!

# Here’s an example of running a Dart file on the command line:
$ dart --enable-asserts app.dart
```

https://www.dart-china.org/t/topic/480#heading--manual-install


***

# Flutter 1.5

> include dart

https://flutter.dev/docs/get-started/install

https://flutter.dev/docs/get-started/install/macos

## v1.5.4-hotfix.2

https://flutter.dev/docs/development/tools/sdk/releases?tab=macos


## v1.7.x


***
