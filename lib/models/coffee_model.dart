import 'package:flutter/material.dart';

class CoffeeModel {
  String name;
  String price;
  String categories;
  int times;
  String iconPath;

  // コンストラクタの作成 -> 作成したモデルクラスの変数を定義する
  CoffeeModel({
    required this.name,
    required this.price,
    required this.categories,
    required this.times,
    required this.iconPath,
  });

  static List<CoffeeModel> getCoofee() {
    List <CoffeeModel> coffee = [];

    coffee.add(
      CoffeeModel(
        name: 'Ice Coffee',
        price: '230',
        categories: 'Ice',
        times: 3,
        iconPath: '',
      )
    );

    return coffee;
  }

}