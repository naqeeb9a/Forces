import 'package:flutter/material.dart';
import 'package:forces/Utils/utils.dart';

class EventsCard extends StatelessWidget {
  final String title, text;
  final IconData icon;
  final Color color;
  const EventsCard(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: kGrey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 2))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: kWhite,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: kWhite, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(color: kGrey),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: kBlack,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Read More",
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
