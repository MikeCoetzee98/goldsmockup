import 'package:flutter/material.dart';

class MainGridItems extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  MainGridItems(this.id, this.title, this.image); // <- constructor

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: GridTile(
        child: GestureDetector(
          onTap: (){          
          },
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,         
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          
        ),
      ),
    );
  }
}
