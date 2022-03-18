import 'package:flutter/material.dart';
import 'package:forces/Screens/HomeWork/home_work_cards.dart';
import 'package:forces/Screens/app_bar.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Homework"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            infoRow("Current Week", Colors.blueAccent),
            const HomeWorkCards(
              title: "Multiplication and Division . Chap : 2",
              text: "Mathematics",
              color: Colors.red,
            ),
            const HomeWorkCards(
              title: "Solar System",
              text: "Science",
              color: Colors.blue,
            ),
            infoRow("Previous Week", Colors.blueAccent),
            const HomeWorkCards(
              title: "Synonyms & Antonyms",
              text: "English",
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  infoRow(String text, Color color) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(color: color),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Divider(
            color: color,
          ),
        )
      ],
    );
  }
}
