import 'package:GoldsGearApp/screens/product_detail.dart';

import './screens/golds_home.dart';
import './screens/login.dart';
import './screens/products_screen.dart';
import './screens/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/products_provider.dart';
import './screens/product_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(appBarTheme: AppBarTheme(
          iconTheme: new IconThemeData(color: Colors.black),
          color: Colors.transparent,
        )),
        
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home': (context) => GoldsHome(),         
          '/register': (context) => RegisterScreen(),
          '/products': (context) => ProductsScreen(),
          '/product-detail': (context) => ProductDetailScreen()
        },
      ),
    );
  }
}

