import 'package:flutter/material.dart';

enum EJob {
  A(title: "AA", image: "assets/images/a.png", color: Colors.green),
  B(title: "BB", image: "assets/images/b.png", color: Colors.purple),
  C(title: "CC", image: "assets/images/c.png", color: Colors.pink),
  D(title: "DD", image: "assets/images/d.png", color: Colors.blue),
  E(title: "EE", image: "assets/images/e.png", color: Colors.yellow),
  F(title: "FF", image: "assets/images/f.png", color: Colors.amber);

  const EJob({required this.title, required this.image, required this.color});
  final String title, image;
  final Color color;
}

class Person {
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  EJob job;
}

List<Person> data = [
  Person(
    name: "AAAAA",
    age: 20,
    job: EJob.A,
  ),
  Person(
    name: "BBBBB",
    age: 20,
    job: EJob.B,
  ),
  // Person(
  //   name: "CCCCC",
  //   age: 20,
  //   job: EJob.C,
  // ),
  // Person(
  //   name: "DDDDD",
  //   age: 20,
  //   job: EJob.D,
  // ),
  // Person(
  //   name: "EEEEE",
  //   age: 20,
  //   job: EJob.E,
  // ),
  // Person(
  //   name: "FFFFF",
  //   age: 20,
  //   job: EJob.F,
  // ),
];
