import 'package:flutter/material.dart';
import 'Grid_movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Film',
      theme: ThemeData(
        primarySwatch: Colors.red,

      ),
      home: Grid_movie(),
    );
  }
}
