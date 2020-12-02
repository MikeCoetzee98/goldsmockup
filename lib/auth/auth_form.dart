import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  bool isLogin;

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  var _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Form(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
//---------------------------------------------------------------------------------------
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration:
                                    InputDecoration(labelText: 'Email Address'),
                              ),
                              if (!_isLogin)
                                TextFormField(
                                  decoration:
                                      InputDecoration(labelText: 'User Name'),
                                ),

                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration:
                                    InputDecoration(labelText: 'Password'),
                                obscureText: true,
                              ),
                              SizedBox(height: 6),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: FlatButton(
                                      color: Colors.transparent,
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/home');
                                      },
                                      child: Text(
                                        _isLogin ? 'Login' : 'Signup',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FlatButton(
                                      color: Colors.transparent,
                                      textColor: Colors.black,
                                      child: Text(_isLogin
                                          ? 'Create Account'
                                          : 'Already have an account'),
                                      onPressed: () {
                                        setState(() {
                                          _isLogin = !_isLogin;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
