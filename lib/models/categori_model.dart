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
    
    List<CategoriModel> Categoris = [];

    Categoris.add(
      CategoriModel(
        name: 'Ice',
        iconPath: ,
        boxColor: Color(0xFF00B0FF),
      )
    );

    Categoris.add(
      CategoriModel(
        name: 'Hot',
        iconPath: ,
        boxColor: Color(0xFFFF6F00),
      )
    );
    Categoris.add(
      CategoriModel(
        name: 'take out only',
        iconPath: ,
        boxColor: Color(0xFFCDDC39),
      )
    );
    
    return Categoris;
  }
}