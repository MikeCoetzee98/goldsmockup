import 'package:GoldsGearApp/widgets/golds_header.dart';

import '../widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Column(
        children: [
          GoldsHeader(),
          Text(
            'Cart',
            textAlign: TextAlign.center,
            softWrap: true,
            style: TextStyle(fontFamily: 'PatuaOne', fontSize: 30),
          ),
          SizedBox(height: 10),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            children: [
              Column(
                children: [
                  Container(
                    width: size.width * 0.9,
                    height: 72,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.goldsgear.co.za/wp-content/uploads/2020/02/CREA-T-200g-600x600.png'),
                                    ),
                                  )),
                              Text(
                                'QTY x2',
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'GOLD’S ESSENTIAL \n PURE CREATINE 200g',
                                 textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Total',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'R238.00',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ]),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
