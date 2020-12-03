import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import '../widgets/description_container.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productId =
        ModalRoute.of(context).settings.arguments as String; // this gets the id
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findbyId(productId);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
            width: double.infinity,
            child: const DecoratedBox(
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            child: Container(
              color: Colors.white,
              height: 300,
              width: double.infinity,
              child: Image.network(loadedProduct.imageUrl, fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: size.width * 0.85,
              child: Text(
                loadedProduct.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black, fontSize: 30, fontFamily: 'PatuaOne'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //------------------------------------------------------------------------------------ Image
          Flexible(child: DescriptionContainer())
        ],
      ),
    );
  }
}
