import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // List<CategoriModel> categoris = [];

  void _getInfoMethod() {
    
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
        leading: Container(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                ),
            ),
          )
        ],
        backgroundColor: Colors.grey[900],
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
        ],
      ),
    );
  }
}
