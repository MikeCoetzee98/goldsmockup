import 'package:GoldsGearApp/widgets/main_grid_items.dart';
import 'package:flutter/material.dart';
import 'package:GoldsGearApp/models/gridmain.dart';

class GridItemDisplay extends StatelessWidget {
  final List<GridItem> loadedItems = [
          GridItem(
            id: 'g1',
            title: 'Nutrition',
            image: 'assets/images/nutrition_main.PNG',
          ),
          GridItem(
            id: 'g2',
            title: 'Apparel',
            image: 'assets/images/gold_cloth.PNG',
          ),
          GridItem(
            id: 'g3',
            title: 'Equipment',
            image: 'assets/images/equipment_main.PNG',
          ),
          GridItem(
            id: 'g4',
            title: 'Shop All',
            image: 'assets/images/gg_gold.png',
            
          ),
        ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: new NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(10.0),
        itemCount: loadedItems.length,
        itemBuilder: (ctx, i) => MainGridItems(loadedItems[i].id,
            loadedItems[i].title, loadedItems[i].image),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      );
  }
}