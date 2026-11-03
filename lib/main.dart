import 'package:flutter/material.dart';

import 'home_page.dart';
import 'menu_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOW Pizza',
      theme: ThemeData(colorSchemeSeed: Colors.deepOrange),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
      },
      // Pages owned by other members are not merged yet.
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text(settings.name ?? '')),
          body: const Center(child: Text('Coming soon')),
        ),
      ),
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
