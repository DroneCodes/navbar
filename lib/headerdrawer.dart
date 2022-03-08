import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("assets/images/profile_image2.png"))
              ),
            ),
            Text("MeetRead", style: TextStyle(color: Colors.white, fontSize: 20),),
            Text("oluwafisayomiogunyemi@gmail.com", style: TextStyle(color: Colors.blueGrey, fontSize: 14),)
          ],
        ),
        );
  }
}


