import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// Main class
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// The home page
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _currentColor = Colors.white;
  final _randomColorRange = 0xffffffff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() {
          _currentColor = Color(Random().nextInt(_randomColorRange));
        }),
        child: AnimatedContainer(
          color: _currentColor,
          duration: const Duration(milliseconds: 150),
          child: Center(
            child: Text(
              "Hey there",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: _currentColor),
            ),
          ),
        ),
      ),
    );
  }
}
