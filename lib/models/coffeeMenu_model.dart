import 'package:flutter/material.dart';

class CoffeemenuModel {
  String name;
  String price;
  String categories;
  String iconPath;
  String leading;
  bool inventory;

  // コンストラクタの作成
  CoffeemenuModel({
    required this.name,
    required this.price,
    required this.categories,
    required this.iconPath,
    required this.leading,
    required this.inventory,
  });

  // モデルクラスに追加
  
  static List<CoffeemenuModel> getMenu() {
    List <CoffeemenuModel> menu = [];

    menu.add(
      CoffeemenuModel(
        name: 'IceCoffee',
        price: '140円',
        categories: 'Ice',
        iconPath: 'images/IceCoffee.jpeg',
        leading: '短めの説明文',
        inventory: true,
      )
    );

    return menu;
  }

}