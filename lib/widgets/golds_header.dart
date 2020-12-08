import 'package:flutter/material.dart';

class GoldsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
              alignment: Alignment.topCenter,
              height: size.height * 0.25,
              child: Container(
                height: size.height * 0.25 - 22,
                decoration: BoxDecoration(
                  color: Color(0xFFFFED00),
                  image: DecorationImage(
                      image: AssetImage("assets/images/clear.png"),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
              ),
            );
  }
}