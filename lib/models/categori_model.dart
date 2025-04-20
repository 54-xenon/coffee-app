import 'package:flutter/material.dart';

class CategoriModel {
  String name;
  String iconPath;
  Color boxColor;


  // コンストラクタの作成
  CategoriModel({
    required this.name,
    required this.iconPath,
    required this.boxColor
  });

  // ここから下はよく分から
  static List<CategoriModel> getCategories() {
    
    List<CategoriModel> categoris = [];

    categoris.add(
      CategoriModel(
        name: 'Ice',
        iconPath: 'images/IceCoffee.jpeg',
        boxColor: Color(0xFF00B0FF),
      )
    );
    
    return categoris;
  }
}