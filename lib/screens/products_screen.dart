import 'package:GoldsGearApp/widgets/prod_search.dart';
import 'package:GoldsGearApp/widgets/products_grid.dart';

import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      resizeToAvoidBottomPadding: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert_rounded,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ]),
      drawer: MainDrawer(),
      body: 
          SingleChildScrollView(
            
            child: Column(
              
              children: <Widget>[
                ProdSearch(),
                SizedBox(height:10),
                
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
