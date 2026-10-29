import 'package:flutter/material.dart';

import 'menu_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      theme: ThemeData(colorSchemeSeed: Colors.deepOrange),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: ListView(
        children: const [
          MenuCard(name: 'Nasi Lemak', price: 6.50),
          MenuCard(name: 'Roti Canai', price: 2.00),
          MenuCard(name: 'Teh Tarik', price: 3.00),
        ],
      ),
    );
  }
}
