import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import '../widgets/carousel.dart';
import '../widgets/main_grid_display.dart';
import '../widgets/socials_row.dart';

class GoldsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: SizedBox(height: 10),
            ),
//---------------------------------------------------------------------------Golds Gear Image---------------------------------------------------------------------------
            Center(
              child: Container(
                height: 100,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/gear_main.png"),
                      fit: BoxFit.contain),
                ),
              ),
//---------------------------------------------------------------------------Carousel Slider---------------------------------------------------------------------------
            ),
            SizedBox(
                height: 10,
              ),
            
            Center(
              child: AdSlider(),
            ),
            SizedBox(
                height: 5,
              ),
            
//---------------------------------------------------------------------------Text WIDGET---------------------------------------------------------------------------
            Center(
              child: Container(
                height: 60,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 1,
                child: Text(
                  'GOLDS GYM NUTRITION ONLINE',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PatuaOne', fontSize: 30),
                ),
              ),
            ),

//---------------------------------------------------------------------------Display Gridview---------------------------------------------------------------------------

            Center(
              child: Container(
                height: 280,
                child: GridItemDisplay(),
              ),
            ),
//---------------------------------------------------------------------------Display contact image---------------------------------------------------------------------------
            
            Center(
              child: Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 1,
                  child: Text(
                    'FOLLOW OUR SOCIAL MEDIA',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'PatuaOne', fontSize: 30),
                  )),
            ),
            

//--------------------------------------------------------- socials --------------------------------------------------------------

            Center(child: SocialRow()),
            SizedBox(height: 5),
//------------------------------------------------------ Email card--------------------------------------------------------------------
            Center(
              
              child: ClipRRect(
                
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  
                  height: 50,
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * double.infinity,
                  child: Card(
                    
                    margin: EdgeInsets.all(5),
                    color: Colors.yellow,
                    child: Text(
                    
                      'DEVELOPED BY MIKE COETZEE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'PatuaOne',
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
