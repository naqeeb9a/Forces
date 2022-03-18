import 'package:flutter/material.dart';
import 'package:forces/Screens/Events&Annoucements/events_page.dart';
import 'package:forces/Screens/HomePage/custom_cards.dart';
import 'package:forces/Screens/HomeWork/home_work.dart';
import 'package:forces/Screens/TimeTable/time_table.dart';
import 'package:forces/Utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cardList = [
      {
        "image":
            "https://img.freepik.com/free-vector/timetable-line-concept-simple-line-icon-colored-illustration-timetable-symbol-flat-design-can-be-used-ui-ux_159242-4676.jpg",
        "text": "Timetable",
        "function": () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TimeTable()));
        }
      },
      {
        "image":
            "https://img.freepik.com/free-vector/cute-boy-study-with-laptop-cartoon-icon-illustration-education-technology-icon-concept-isolated-flat-cartoon-style_138676-2107.jpg",
        "text": "Homework",
        "function": () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeWork()));
        }
      },
      {
        "image":
            "https://img.freepik.com/free-vector/business-woman-clerk-working-office-desk_3446-679.jpg",
        "text": "Assessments",
        "function": () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TimeTable()));
        }
      },
      {
        "image":
            "https://static.vecteezy.com/system/resources/previews/004/896/078/original/announcement-concept-illustration-flat-design-eps10-simple-and-colorful-graphic-element-for-icon-sign-infographic-app-or-web-empty-state-ui-vector.jpg",
        "text": "Events & Announcements",
        "function": () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const EventsPage()));
        }
      },
      {
        "image":
            "https://static.vecteezy.com/system/resources/previews/004/896/134/original/done-all-tasks-have-been-completed-concept-illustration-flat-design-eps10-simple-and-modern-graphic-element-for-empty-state-app-or-web-ui-vector.jpg",
        "text": "Attendance",
        "function": () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TimeTable()));
        }
      },
      {
        "image":
            "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/08aea422-eab9-428b-82c9-9c04e411bb8c/dbf6p2t-0b348d01-de29-4914-b384-5fdef7605681.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzA4YWVhNDIyLWVhYjktNDI4Yi04MmM5LTljMDRlNDExYmI4Y1wvZGJmNnAydC0wYjM0OGQwMS1kZTI5LTQ5MTQtYjM4NC01ZmRlZjc2MDU2ODEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.T0Vn5-qAKLJaEk6X8AguTyJjWkL6ECYBkStOs3vSh28",
        "text": "Fees & Details",
        "function": () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TimeTable()));
        }
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hi, Mr.Pinkman",
          style: TextStyle(color: kBlack),
        ),
        backgroundColor: kTransparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: kBlack,
              ))
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 20,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemCount: cardList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCards(
            image: cardList[index]["image"],
            text: cardList[index]["text"],
            function: cardList[index]["function"],
          );
        },
      ),
    );
  }
}
