import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int Clickscounter = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter Screen")),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(Clickscounter.toString(),
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Text("click${Clickscounter == 1 ? "" : "s"}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Clickscounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
