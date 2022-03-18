import 'package:flutter/material.dart';
import 'package:forces/Utils/utils.dart';

class CustomCards extends StatelessWidget {
  final String image, text;
  final VoidCallback function;
  const CustomCards(
      {Key? key,
      required this.image,
      required this.text,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kWhite,
            boxShadow: const [
              BoxShadow(offset: Offset(0, 1), blurRadius: 2, color: kGrey)
            ]),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                image,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
