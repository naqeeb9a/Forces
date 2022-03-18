import 'package:flutter/material.dart';
import 'package:forces/Screens/Events&Annoucements/events_card.dart';
import 'package:forces/Screens/app_bar.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Events"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            EventsCard(
                title: "Independence Day",
                icon: Icons.announcement_outlined,
                color: Colors.blueAccent,
                text: "School will remain close on 14th August, 2019."),
            EventsCard(
                title: "Sports Week",
                icon: Icons.sports_outlined,
                color: Colors.amber,
                text:
                    "Sports week will start from 12th August to 24th August, students are adviced to be present all days."),
            EventsCard(
                title: "23rd March",
                icon: Icons.cell_tower,
                color: Colors.red,
                text: "School will remain close on 23rd March, 2019."),
          ],
        ),
      ),
    );
  }
}
