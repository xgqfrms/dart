# Dart Basic

1. select file & right click debug

2. open shell & run file `dart filename.dart`


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

```sh
# dart2aot main.dart main.dart.aot
$ dart2aot bin/main.dart bin/main.dart.aot

# Dart runtime (dartaotruntime):
$ dartaotruntime bin/main.dart.aot

$ time dartaotruntime bin/main.dart.aot

 ```
