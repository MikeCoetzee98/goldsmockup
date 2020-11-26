import 'package:flutter/material.dart';


import '../providers/product.dart';


class Products with ChangeNotifier {
  List<Product> _items = [
Product(
id: 'n1',
category: 'nutrition',
title: 'GOLD’S GAINS RAMPANT GAIN 4KG',
description: '40G PROTEIN , 140G CARBOHYDRATES, <2G FAT, 714 QUALITY KCAL, RAMPANT MASS GAINS, 3G CREATINE, 200G SERVING',
price: 349.00,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/02/RAMPANT-GAIN_CHOCOLATE_4KG-600x600.png',
),
//------------------------------------------- 2 -------------------------------------------

Product(
id: 'n2',
category: 'nutrition',
title: 'GOLD’S ESSENTIAL PURE CREATINE 200g',
description: 'PURE CREATINE MONOHYDRATE, INCREASED ATP PRODUCTION, IMPROVED PERFORMANCE (HIT), SPEEDS UP MUSCLE GROWTH, MAY FIGHT NEUROLOGICAL DISEASE, MAY LOWER BLOOD SUGAR, CAN IMPROVE BRAIN FUNCTION, SAFE AND EASY TO USE',
price: 119.00,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/02/CREA-T-200g-600x600.png',
),
//------------------------------------------- 3 -------------------------------------------

Product(id: 'n3',
category: 'nutrition',
title: 'GOLD’S GAINS RAMPANT GAIN 1KG',
description: '40G PROTEIN, 140G CARBOHYDRATES, <2G FAT, 714 QUALITY KCAL, RAMPANT MASS GAINS, 3G CREATINE, 200G SERVING',
price: 129.00,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/02/RAMPANT-GAIN_CHOCOLATE_1KG-600x600.png',
),
//------------------------------------------- 4 -------------------------------------------

Product(id: 'n4',
category: 'nutrition',
title: 'GOLD’S ISO-WHEY 908g',
description: '26G PROTEIN, <1G CARBOHYDRATES, <2G FAT, 100% PROTEIN FROM WHEY, WPI DOMINANT FORMULA, RAPID ABSORPTION, 79% PROTEIN BY WEIGHT',
price: 599.0,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/02/GOLDS-PROTEIN_ISO-WHEY_STRAWBERRY_908G-600x600.png',
),

//Clothing:
//------------------------------------------- 1 -------------------------------------------
Product(
id: 'c1',
category: 'apparel',
title: 'Gold’s Gym Uflex High Tech Cap',
description: 'Uflex Laser Cut 6 Panel Curved Peak Cap, One size fits all',
price: 379.95,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/08/Golds-Gym-Uflex-High-Tech-Cap.jpg',
),
//------------------------------------------- 2 -------------------------------------------
Product(
id: 'c2',
category: 'apparel',
title: 'GOLDS MEN’S BAMBOO WEIGHT PLATE TEE BLACK',
description: 'Grey on black, Tight fit',
price: 629.99,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/03/1514134_z-1.jpg',
),
//------------------------------------------- 3 -------------------------------------------
Product(
id: 'c3',
category: 'apparel',
title: 'GOLDS 2XU MEN’S TRACK PANT',
description: 'Cuffed Slim fit TrackPants',
price: 1099.99,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/03/1515191_z.jpg',
),
//------------------------------------------- 4 -------------------------------------------
Product(
id: 'c4',
category: 'apparel',
title: 'GOLDS MENS MUSCLE JOE STRINGER GREY',
description: 'With a generous cut that won’t get in your way, this vintage stringer is the go-to top for bodybuilders everywhere. ',
price: 419.99,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/03/1442431_z.jpg',
),
//Equiptment:

//------------------------------------------- 1 -------------------------------------------

Product(
id: 'e1',
category: 'equiptment',
title: 'Gold’s Gym Premium Ab Roller', description: 'PP Materia, NBR Foam Handle, Ideal for abdominal workouts and increasing core strength, Fully Foldable with Detachable Handles, Dual wheel for smooth functionality and stability, Comfort Foam Grips',
price: 439.00,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/08/Golds-Premium-Ab-Roller-1.png',
),
//------------------------------------------- 2 -------------------------------------------
Product(
id: 'e2',
category: 'equiptment',
title: 'Gold’s Gym 2 In 1 Recovery Roller',
description: 'Size: 26″ (66cm) x 6″ (15cm), EVA and PVC material, Breaks into two separate half rollers, with a twist lock, Two-in-One feature can be used as two separate',
price: 579.00,
imageUrl: 'https://www.goldsgear.co.za/wp-content/uploads/2020/08/Golds-2-in-1-Recovery-Roller-2.jpg',
),
  ];


  List<Product> get items { 


    return [..._items];
  } // getter returns list on items

  //--------------method to get id-----------------

  Product findbyId(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }



}