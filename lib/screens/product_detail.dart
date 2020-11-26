import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // this gets the id
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findbyId(productId);
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(loadedProduct.imageUrl, fit: BoxFit.contain),
                
              ),
          
              Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  loadedProduct.title, 
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PatuaOne'),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'R' + '${loadedProduct.price}',
                style: TextStyle(color: Colors.grey, fontSize: 20, fontFamily: 'PatuaOne'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Text(
                  'Description:',
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(fontFamily: 'PatuaOne', fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Text(
                  loadedProduct.description,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(fontFamily: 'PatuaOne', fontSize: 10),
                ),
              )
            ],
          ),
        ));
  }
}