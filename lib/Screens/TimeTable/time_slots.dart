import 'package:flutter/material.dart';
import 'package:forces/Utils/utils.dart';

class TimeSlots extends StatelessWidget {
  final String time, text;
  final Color containerColor, textColor, borderColor;
  final Alignment align;
  const TimeSlots(
      {Key? key,
      required this.text,
      required this.align,
      required this.time,
      required this.containerColor,
      required this.textColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          time,
          style: const TextStyle(color: kBlack),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: containerColor,
                border: Border.all(color: borderColor, width: 2)),
            alignment: align,
            child: Text(
              text,
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
