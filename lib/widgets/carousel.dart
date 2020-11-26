import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class AdSlider extends StatefulWidget {
  @override
  _AdSliderState createState() => _AdSliderState();
}

class _AdSliderState extends State<AdSlider> {
  int _current = 0;

  List sliderImages = [
    'assets/images/carousel_1.2.PNG',
    'assets/images/carousel_1.3.PNG',
    'assets/images/carousel_1.1.PNG',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
//---------------------------------------------------Items----------------------------------------
            items: sliderImages.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(color: Colors.yellow),
                    child: Image.asset(image, fit: BoxFit.fill),
                  );
                },
              );
            }).toList(),

//------------------------------------Options--------------------------------------

            options: CarouselOptions(
              height: 120.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.95,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.decelerate,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
              
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
