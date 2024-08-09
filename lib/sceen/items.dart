import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  int qty = 1;

  void increatQTY() {
    setState(() {
      qty = qty + 1;
    });
  }

  void DecreatQTY() {
    setState(() {
      qty = qty <= 0 ? 0 : qty - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$qty",
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: increatQTY,
            child: const Text("+",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: DecreatQTY,
            child: const Text(
              "-",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
