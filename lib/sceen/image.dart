import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png",
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 100),
        Image.asset(
          "assets/images/brand.png",
          width: 100,
          height: 100,
        )
      ],
    );
  }
}
