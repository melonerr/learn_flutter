import 'package:ex1/model/person.dart';
import 'package:ex1/sceen/addForm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({super.key});

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: data[index].job.color),
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].name,
                          style: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Text(
                          "อายุ: ${data[index].age} อาชีพ: ${data[index].job.title}",
                          style: GoogleFonts.kanit(
                            textStyle: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      data[index].job.image,
                      width: 80,
                      height: 80,
                    )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 100,
          width: 100,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const MyAddForm(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              size: 40,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
