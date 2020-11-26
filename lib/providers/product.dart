import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product(
      {
      @required this.id,
      @required this.category,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      
      });

      
}