import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: MainDrawer(),
      body: Stack(
        children: [
          Container(
            height: 300.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/contactimage.PNG"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 320),
                Center(
                  child: Text(
                    'Contact Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'PatuaOne',
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 70,
                      width: 70,
                      child: FlatButton(
                        onPressed: _launchInsta,
                        child: Image.asset('assets/images/instab.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: FlatButton(
                        onPressed: _launchFacebook,
                        child: Image.asset('assets/images/facebookb.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: FlatButton(
                        onPressed: _launchTwitter,
                        child: Image.asset('assets/images/twitterb.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: FlatButton(
                        onPressed: () {}, //_launchGmail,
                        child: Image.asset('assets/images/emailimage.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Or Find Us Here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'PatuaOne',
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
                // add pinned location on map followed by address in Text()
              ],
            ),
          ),
        ],
      ),
    );
  }


// -----------------------------------------------  Instagram  ----------------------------------------------
  _launchInsta() async {
  const url = 'https://www.instagram.com/goldsgymnutritionsa';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
// -----------------------------------------------  Facebook  ----------------------------------------------
_launchFacebook() async {
  const url = 'https://www.facebook.com/goldsgymnutritionsa/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// -----------------------------------------------  Twitter  ----------------------------------------------
_launchTwitter() async {
  const url = 'https://www.twitter.com/goldsgym_sa';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// -----------------------------------------------  Gmail  ----------------------------------------------

// open gmail and automatically add goldsgym@mockup.fake to "recipients"
}
