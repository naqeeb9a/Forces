import 'package:flutter/material.dart';
import 'package:forces/Screens/TimeTable/time_slots.dart';
import 'package:forces/Screens/app_bar.dart';
import 'package:forces/Utils/utils.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Timetable",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            calenderRow(),
            const Divider(),
            const TimeSlots(
                text: "Assembly",
                align: Alignment.center,
                time: "08:00 am",
                containerColor: kTransparent,
                textColor: Colors.orange,
                borderColor: Colors.orange),
            const TimeSlots(
                text: "English",
                align: Alignment.centerLeft,
                time: "08:00 am",
                containerColor: Colors.cyan,
                textColor: kWhite,
                borderColor: Colors.cyan),
            const TimeSlots(
                text: "Islamiat",
                align: Alignment.centerLeft,
                time: "09:20 am",
                containerColor: Colors.amber,
                textColor: kWhite,
                borderColor: Colors.amber),
            const TimeSlots(
                text: "Science",
                align: Alignment.centerLeft,
                time: "10:00 am",
                containerColor: Colors.indigo,
                textColor: kWhite,
                borderColor: Colors.indigo),
            const TimeSlots(
                text: "Urdu",
                align: Alignment.centerLeft,
                time: "11:20 am",
                containerColor: Colors.lime,
                textColor: kWhite,
                borderColor: Colors.lime),
            const TimeSlots(
                text: "Break",
                align: Alignment.center,
                time: "12:00 am",
                containerColor: kTransparent,
                textColor: Colors.purple,
                borderColor: Colors.purple),
            const TimeSlots(
                text: "Maths",
                align: Alignment.centerLeft,
                time: "01:20 am",
                containerColor: Colors.pink,
                textColor: kWhite,
                borderColor: Colors.pink),
            const TimeSlots(
                text: "Arts",
                align: Alignment.centerLeft,
                time: "02:00 am",
                containerColor: Colors.tealAccent,
                textColor: kWhite,
                borderColor: Colors.tealAccent),
          ],
        ),
      ),
    );
  }

  Row calenderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text(
          "Mon",
          style: TextStyle(
            color: kBlack,
          ),
        ),
        Text(
          "Tue",
          style: TextStyle(color: kBlack),
        ),
        Text(
          "Wed",
          style: TextStyle(color: kBlack),
        ),
        Text(
          "Thu",
          style: TextStyle(color: kBlack),
        ),
        Text(
          "Fri",
          style: TextStyle(color: kBlack),
        ),
        Text(
          "Sat",
          style: TextStyle(color: kRed),
        ),
        Text(
          "Sun",
          style: TextStyle(color: kRed),
        ),
      ],
    );
  }
}
