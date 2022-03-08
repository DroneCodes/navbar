import 'package:flutter/material.dart';
import 'package:navbar/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("With Love we say Hello",
          style: TextStyle(fontWeight: FontWeight.bold)
          ),

          SizedBox(height: size.height * 0.04,),
          Image.asset(
            "assets/images/Patricks.png",
            height: size.height * 0.2,),
        ],
      )),
    );
  }
}
