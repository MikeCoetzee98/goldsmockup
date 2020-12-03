import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class DescriptionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productId =
        ModalRoute.of(context).settings.arguments as String; // this gets the id
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findbyId(productId);
    
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        alignment: Alignment.topLeft,
        
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Description:',
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(fontFamily: 'PatuaOne', fontSize: 20),
                    ),
                    Text(
                      'R' + '${loadedProduct.price}',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontFamily: 'PatuaOne'),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.7,
                  child: Text(
                    loadedProduct.description,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(fontFamily: 'PatuaOne', fontSize: 14),
                  ),
                ),

                //-----------------------------------------------------------------Buttons
                SizedBox(height: 30),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: size.width * 0.45,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Row(children: [
                                      IconButton(
                                          icon: Icon(Icons.remove),
                                          onPressed: null),
                                      Text('0'),
                                      IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: null),
                                    ]),
                                    Text('Quantity'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (loadedProduct.category == 'nutrition')
                            DropdownButton(
                                items: <String>[
                                  'Vanilla',
                                  'Chocolate',
                                  'Strawberry'
                                ].map((String value) {
                                  return new DropdownMenuItem(
                                    child: Text(
                                      'Flavor',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: null)
                          else if (loadedProduct.category == 'apparel')
                            DropdownButton(
                                items: <String>['Small', 'Medium', 'Large']
                                    .map((String value) {
                                  return new DropdownMenuItem(
                                    child: Text('Size',
                                        style: TextStyle(color: Colors.black)),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: null)

                          //quantity and dropdown list
                        ],
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              color: Colors.white,
                              child: Text(
                                'Add to cart',
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: null,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
   
    );
  }
}
