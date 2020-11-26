import 'package:GoldsGearApp/widgets/products_grid.dart';

import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ]),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
// ------------------------------------------------------------ Image -------------------------------------------------------------
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width *double.infinity,
                child: FlatButton(
                padding: EdgeInsets.all(10),
                
                
                  child: Image.asset("assets/images/gear_main.png", fit: BoxFit.contain),
                  onPressed: () {Navigator.of(context).pushNamed('/');
                  },),
                 ) ),
             
            

//----------------------------------------------------------- Text ------------------------------------------------------------
            Center(
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  'Products',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'PatuaOne', fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ProductsGrid(),
          ],
        ),
      ),
    );
  }
}
