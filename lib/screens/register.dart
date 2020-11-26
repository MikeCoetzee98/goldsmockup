import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
//-----------------------------------------------Image--------------------------------------------
          Center(
            child: Container(
              height: 250,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/gg_gold.png"),
                    fit: BoxFit.fitHeight),
              ),
            ),
          ),
//-----------------------------------------------Text Input--------------------------------------------
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                style: TextStyle(fontSize: 25, fontFamily: 'PatuaOne'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Enter Email Address'),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 15,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                style: TextStyle(fontSize: 25, fontFamily: 'PatuaOne'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Enter UserName'),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 15,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                style: TextStyle(fontSize: 25, fontFamily: 'PatuaOne'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Enter Password'),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 15,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                style: TextStyle(fontSize: 25, fontFamily: 'PatuaOne'),
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'ReEnter Password'),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 50,
            ),
          ),
//--------------------------------------------Register Button---------------------------------------
          Center(
            child: SizedBox(
              height: 50,
              width: 250,
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {},
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 25, fontFamily: 'PatuaOne'),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.black,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
