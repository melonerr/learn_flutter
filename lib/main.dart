import 'package:ex1/sceen/list-view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SX2024"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const ItemsList(),
      ),
    );
  }
}
