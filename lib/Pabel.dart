import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


Widget PabelLogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Shimmer.fromColors(
      baseColor: Color(0xff7f00ff),
      highlightColor: Color(0xffe100ff),
      child: Center(
        child: Container(
          child: Center(
            child: Text(
              "Pabel",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                shadows: <Shadow>[
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black54,
                    offset: Offset.fromDirection(15,3)
                  )
                ]

              ),
            ),
          ),

        ),
      ),)
  ],);
}