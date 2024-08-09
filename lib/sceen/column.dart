import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.orange[50],
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.all(5),
          child: const Text(
            "Hi Mr.Jirawat",
            style: TextStyle(fontSize: 30, letterSpacing: 2),
          ),
        ),
        Container(
          color: Colors.orange[50],
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.all(5),
          child: const Text(
            "Hi Mr.Jirawat",
            style: TextStyle(fontSize: 30, letterSpacing: 2),
          ),
        ),
        Container(
          color: Colors.orange[50],
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.all(5),
          child: const Text(
            "Hi Mr.Jirawat",
            style: TextStyle(fontSize: 30, letterSpacing: 2),
          ),
        ),
      ],
    );
  }
}
