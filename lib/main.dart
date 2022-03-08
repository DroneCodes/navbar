import 'package:flutter/material.dart';
import 'package:navbar/body.dart';

import 'headerdrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("MeetRead"),
      ),
      body: Body(),
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              HeaderDrawer(),
              DrawerList(),
            ],
          ),
        )),
      ),
    );
  }
}

Widget DrawerList() {
  var currentPage = DrawerSections.dashboard;
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        menuItem(1, "Dashboad", Icons.dashboard_outlined,
            currentPage == DrawerSections.dashboard ? true : false),
        menuItem(2, "Contacts", Icons.people_alt_outlined,
            currentPage == DrawerSections.contacts ? true : false),
        menuItem(3, "Events", Icons.event,
            currentPage == DrawerSections.events ? true : false),
        menuItem(4, "Notes", Icons.notes,
            currentPage == DrawerSections.notes ? true : false),
        Divider(),
        menuItem(5, "Settings", Icons.settings_outlined,
            currentPage == DrawerSections.settings ? true : false),
        menuItem(6, "Notifications", Icons.notifications_outlined,
            currentPage == DrawerSections.notifications ? true : false),
        Divider(),
        menuItem(7, "Privacy Policy", Icons.privacy_tip_outlined,
            currentPage == DrawerSections.privacy_policy ? true : false),
        menuItem(8, "Send Feedback", Icons.feedback_outlined,
            currentPage == DrawerSections.send_feedback ? true : false),
      ],
    ),
  );
}

Widget menuItem(int id, String title, IconData icon, bool selected) {
  var currentPage = DrawerSections.dashboard;
  return Material(
    color: selected ? Colors.grey[200] : Colors.transparent,
    child: InkWell(
      onTap: () {
        BuildContext context = currentPage as BuildContext;
        Navigator.pop(context);
        setState(() {
          if (id == 1) {
            currentPage = DrawerSections.dashboard;
          } else if (id == 2) {
            currentPage = DrawerSections.contacts;
          } else if (id == 3) {
            currentPage = DrawerSections.events;
          } else if (id == 4) {
            currentPage = DrawerSections.notes;
          } else if (id == 5) {
            currentPage = DrawerSections.settings;
          } else if (id == 6) {
            currentPage = DrawerSections.notifications;
          } else if (id == 7) {
            currentPage = DrawerSections.privacy_policy;
          } else if (id == 8) {
            currentPage = DrawerSections.send_feedback;
          }
        });
      },
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                color: Colors.black,
                size: 20,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void setState(Null Function() param0) {
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
