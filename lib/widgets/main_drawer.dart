import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                child: DrawerHeader(
                  child: (Text('')),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/drawer_logo.jpg"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
            ),

            //-------------------------Drawer items---------------------------------
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'PatuaOne',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),

            Divider(),
            //-------------------------Drawer items---------------------------------
            ListTile(
              leading: Icon(Icons.shopping_basket, color: Colors.black),
              title: Text(
                'Products',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'PatuaOne',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/products');
              },
            ),

            Divider(),
            //-------------------------Drawer items---------------------------------
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.black),
              title: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'PatuaOne',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),

            Divider(),
            
            //-------------------------Drawer items---------------------------------
            ListTile(
              leading: Icon(Icons.email, color: Colors.black),
              title: Text(
                'Contact',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'PatuaOne',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),

            Divider(),
            //-------------------------Drawer items---------------------------------

            ListTile(
              leading: Icon(Icons.arrow_back, color: Colors.black),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'PatuaOne',
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),

            Divider(),

            //-------------------------Drawer items---------------------------------
          ],
        ),
      ),
    );
  }
}
