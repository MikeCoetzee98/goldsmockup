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
    final product = Provider.of<Product>(context, listen: false);
    //final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: GridTile(
        
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          
          backgroundColor: Colors.black54,
          title: Text(
            product.title,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.left,
          ),
           trailing: Text('R' + product.price.toString(), style: TextStyle( fontSize: 10, color: Colors.white
           ),
           textAlign: TextAlign.center,),
            ),
        ),
      );
    
  }
}
