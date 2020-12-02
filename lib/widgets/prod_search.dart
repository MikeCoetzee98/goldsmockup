import 'package:flutter/material.dart';

class ProdSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.25,
          child: Stack(
            children: [
              Container(
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
         
        Positioned(
         
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 36),
            padding: EdgeInsets.symmetric(horizontal: 36),
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.grey.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search),),
                  ),
                ),
              ],
            ),
          ),
        ),
         
            ])
             ),
      ],
    );
  }
}
