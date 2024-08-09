import 'package:ex1/main.dart';
import 'package:ex1/model/person.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddForm extends StatefulWidget {
  const MyAddForm({super.key});

  @override
  State<MyAddForm> createState() => _MyAddFormState();
}

class _MyAddFormState extends State<MyAddForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  int _age = 20;
  EJob _ejob = EJob.A;
  void submitForm() {
    _formKey.currentState!.validate();
    _formKey.currentState!.save();
    data.add(Person(name: _name, age: _age, job: _ejob));
    _formKey.currentState!.reset();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) => const MyApp(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Register"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณากรอกชื่อ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                  decoration: InputDecoration(
                    label: Text(
                      "ชื่อ-สกุล",
                      style: GoogleFonts.kanit(
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "กรุณากรอกอายุ";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(
                      "อายุ",
                      style: GoogleFonts.kanit(
                        textStyle: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                    value: _ejob,
                    decoration: InputDecoration(
                      label: Text(
                        "อาชีพ",
                        style: GoogleFonts.kanit(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    items: EJob.values.map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e.title),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _ejob = value!;
                      });
                    }),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: submitForm,
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "บันทึก",
                    style: GoogleFonts.kanit(
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
