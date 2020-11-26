import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            width: 70,
            color: Color(0xFFFFEB3B),
            child: FlatButton(
                onPressed: _launchInsta,
                child:
                    Image.asset('assets/images/instab.png', fit: BoxFit.fill), ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            width: 70,
            color: Color(0xFFFFEB3B),
            child: FlatButton(
                onPressed: null,
                child: Image.asset('assets/images/facebookb.png',
                    fit: BoxFit.fill)),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            width: 70,
            color: Color(0xFFFFEB3B),
            child: FlatButton(
              onPressed: null,
              child:
                  Image.asset('assets/images/twitterb.png', fit: BoxFit.fill),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            width: 70,
            color: Color(0xFFFFEB3B),
            child: FlatButton(
              onPressed: null,
              child: Image.asset(
                'assets/images/emailimage.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
  _launchInsta() async {
  const url = 'https://www.instagram.com/goldsgymnutritionsa';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}