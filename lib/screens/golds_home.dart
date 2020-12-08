import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import '../widgets/carousel.dart';
import '../widgets/main_grid_display.dart';
import '../widgets/image_clipper.dart';

class GoldsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white)),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child:
// -------------------------------------------------------- Rounded Image -------------------------------------------
              Center(
            child: ClipPath(
              clipper: MyCLipper(),
                          child: Container(
                height: size.height * 0.3, 
                               
                width: double.infinity,
                decoration: BoxDecoration(
                  image:  const DecorationImage(
                      image: AssetImage("assets/images/conquer.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
             
            ),
//---------------------------------------------------------------------------Golds Gear Image---------------------------------------------------------------------------
            Center(
              child: Container(
                height: size.height * 0.11,
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 15),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const AssetImage("assets/images/gear_main.png"),
                      fit: BoxFit.fill),
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
              height: 10,
            ),

//---------------------------------------------------------------------------Text WIDGET---------------------------------------------------------------------------
            Center(
              child: Container(
                height: 50,
                
                width: MediaQuery.of(context).size.width * 1,
                child: const Text(
                  'SHOP GOLDS GYM!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PatuaOne', fontSize: 30),
                ),
              ),
            ),

//---------------------------------------------------------------------------Display Gridview---------------------------------------------------------------------------

            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: GridItemDisplay())),
              
            
            SizedBox(height: 10),

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
                    child: const Text(
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
