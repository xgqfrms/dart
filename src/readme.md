# Dart Basic

1. select file & right click debug

2. open shell & run file `dart filename.dart`


https://dart.dev/guides/language/language-tour

https://dart.dev/tutorials

https://dart.dev/samples


```sh
$ dart filename.dart

```

## stagehand & cli

```sh
$ mkdir demo & cd demo
$ stagehand console-full

```

```sh
# auto install packages
$ pub get

```

```sh
# run app
$ dart bin/main.dart

```


## AOT

> H:\Program Files\Dart-SDK\dart-sdk\bin

`H:\Program Files\Dart-SDK\dart-sdk\bin\dart2aot main.dart main.dart.aot`

```sh
# dart2aot main.dart main.dart.aot
$ dart2aot bin/main.dart bin/main.dart.aot

# Dart runtime (dartaotruntime):
$ dartaotruntime bin/main.dart.aot

$ time dartaotruntime bin/main.dart.aot

```

