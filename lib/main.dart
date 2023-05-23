import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screens.dart';

void main() {
  runApp(
      const MyApp()); //toda aplicación en flutter tiene en su main la ejecucion de un witget inicial de todo el documento
}

class MyApp extends StatelessWidget {
  //las panttalas se crean stl

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
        home: const CounterScreen());
  }
}
