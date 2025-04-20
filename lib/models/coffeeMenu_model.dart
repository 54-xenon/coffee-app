import 'package:flutter/material.dart';

class CoffeemenuModel {
  String name;
  String price;
  String categories;
  String leading;
  bool inventory;

  // コンストラクタの作成
  CoffeemenuModel({
    required this.name,
    required this.price,
    required this.categories,
    required this.leading,
    required this.inventory,
  });

  // モデルクラスに追加
  
  static List<CoffeemenuModel> getMenu() {
    List <CoffeemenuModel> menu = [];

    menu.add(
      CoffeemenuModel(
        name: 'IceCoffee',
        price: '200ドル',
        categories: 'Ice',
        leading: '短めの説明文',
        inventory: true,
      )
    );

    return menu;
  }

}