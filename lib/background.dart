import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 2,
              left: 0,
              child: Image.asset(
                "assets/images/heart.png",
                width: size.width * 0.1,
              )
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/blood.png",
            width: size.width * 0.1,)
          ),
          child,
        ],
      ),
    );
  }
}
