# dart docs

> API

## dart `..`

![](https://img2018.cnblogs.com/blog/740516/201908/740516-20190809002945195-1964847630.png)

```dart

/**
 *
 * @author xgqfrms
 * @license MIT
 * @copyright xgqfrms
 * @created 2019-08-09
 *
 * @description flutter navigator Return data from a screen
 * @augments
 * @example
 *
 */

import 'package:flutter/material.dart';

import 'details.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'flutter navigator Animate a widget across screens',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: HomeScreen(),
        );
    }
}

class HomeScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Returning Data Demo'),
            ),
            body: Center(
                child: SelectionButton(),
            ),
        );
    }
}

class SelectionButton extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return RaisedButton(
            onPressed: () {
                _navigateAndDisplaySelection(context);
            },
            child: Text('Pick an option, any option!'),
        );
    }
    // A method that launches the SelectionScreen
    // and awaits the result from Navigator.pop.
    _navigateAndDisplaySelection(BuildContext context) async {
        // Navigator.push returns a Future that completes after calling
        // Navigator.pop on the Selection Screen.
        final result = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SelectionScreen(),
            ),
        );
        // After the Selection Screen returns a result,
        // hide any previous snackbars and show the new result.
        Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
            SnackBar(
                content: Text("$result"),
            ),
        );
        // TODO: .. ???
    }
}


```

## dart .. syntax

https://dart.dev/guides/language/language-tour

# dart & Cascade notation (..)

https://dart.dev/guides/language/language-tour#cascade-notation-

```dart
querySelector('#confirm') // Get an object.
  ..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));

```

## dart .. operator

https://dart.dev/guides/language/language-tour

```dart

```





