import 'package:coffee_app/models/coffeeMenu_model.dart';
import 'package:coffee_app/pages/cart_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // List<CategoriModel> categoris = [];
  List<CoffeemenuModel> menu = [];

  void _getInfoMethod() {
     menu = CoffeemenuModel.getMenu();
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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),

        // waa tapped cart 
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage())),
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
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
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          // メニューのリスト -> ListViewを追加すると止まってしまう
          Container(
            height: 300,
            color: Colors.green[300],
            child: ListView.separated(
              itemCount: menu.length,
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    // 上のmenuとチグハグにならないように余白を調整
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      // Tileのwidgetサイズが分かりやすいように色付けする
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: ListTile(
                        // 名前 -> IceCoggee
                        // 値段= > 200円
                        // カテゴリ -> テイクアウト・冷たい
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(menu[index].iconPath),
                        ),
                        title: Text(menu[index].name),
                        subtitle: Text(menu[index].price),
                        trailing: IconButton(
                          icon: Icon(Icons.favorite),
                          onPressed: () {},
                        ),
                      ),
                    ),
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
