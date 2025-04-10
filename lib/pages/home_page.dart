import 'package:flutter/material.dart';
import '../models/categori_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CategoriModel> categoris = [];

  void _getInfoMethod() {
    categoris = CategoriModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    // メソッドを呼び出して、モデルからデータを取得する
    _getInfoMethod();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Coffee Shop',
            style: TextStyle(
                color: Colors.white,
            )
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Categoris',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 200,
            child: ListView.separated(
              // スクロール方向を横並びにする
                scrollDirection: Axis.horizontal,
                itemCount: categoris.length,
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemBuilder: (context, index) {
                  return Container(
                    // カテゴリUIを戻り値にする
                    // モデルデータから引っ張ったやつ
                    width: 200,
                    decoration: BoxDecoration(
                      color: categoris[index].boxColor.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        // images
                        Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(categoris[index].iconPath),
                        )
                        // categoris text
                      ],
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
