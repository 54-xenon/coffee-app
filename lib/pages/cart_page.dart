import 'package:flutter/material.dart';
// カートのページ => 追加したものを一覧で表示するwidget

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
    );
  }
}
