import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: MaterialColor(
            Colors.grey.shade50.value,
            {
              50: Colors.grey.shade50,
              100: Colors.grey.shade100,
              200: Colors.grey.shade200,
              300: Colors.grey.shade300,
              400: Colors.grey.shade400,
              500: Colors.grey.shade500,
              600: Colors.grey.shade600,
              700: Colors.grey.shade700,
              800: Colors.grey.shade800,
              900: Colors.grey.shade900
            },
          ),
        ),
        home: HomePage());
  }
}
