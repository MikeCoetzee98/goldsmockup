import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
//import 'package:shopApplication/screens/product_detail_screen.dart';
//import '../screens/product_detail_screen.dart';
import '../providers/product.dart';
//import '../providers/cart.dart';
import '../screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl); // <- constructor

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final product = Provider.of<Product>(context, listen: false);
    //final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: size.width * 0.4,
        
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(child: GestureDetector(
              onTap: () {
             Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                 arguments: product.id);
           },
              child: Image.network(product.imageUrl))),
            
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                    ),
                  ],
                ),
                child: Row(
                  
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: product.title,
                                
                                style: TextStyle(fontSize: 7, color: Colors.black, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "R" + product.price.toString(), style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
           
          ],
        ),

        // child: GestureDetector(
        //   onTap: () {
        //     Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
        //         arguments: product.id);
        //   },
        //   child: Image.network(
        //     product.imageUrl,
        //     fit: BoxFit.cover,
        //   ),
        // ),

        // footer: GridTileBar(

        //   backgroundColor: Colors.black54,
        //   title: Text(
        //     product.title,
        //     style: TextStyle(fontSize: 10),
        //     textAlign: TextAlign.left,
        //   ),
        //    trailing: Text('R' + product.price.toString(), style: TextStyle( fontSize: 10, color: Colors.white
        //    ),
        //    textAlign: TextAlign.center,),
        //     ),
      ),
    );
  }
}
