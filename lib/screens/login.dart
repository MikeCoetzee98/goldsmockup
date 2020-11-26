import 'package:flutter/material.dart';
import '../auth/auth_form.dart';

class LoginScreen extends StatefulWidget {



  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Arnoldtricep.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(10),
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/clear.png"),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: AuthForm()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
