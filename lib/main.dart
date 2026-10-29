import 'package:flutter/material.dart';

import 'menu_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const menuRoute = '/menu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOW Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC83A22),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFBF7),
        useMaterial3: true,
      ),
      initialRoute: menuRoute,
      routes: {menuRoute: (_) => const MenuPage()},
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const pizzas = <Pizza>[
    Pizza(
      name: 'Margherita',
      description: 'Tomato sauce, mozzarella and fresh basil',
      price: 14.90,
      imageUrl:
          'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?auto=format&fit=crop&w=900&q=80',
    ),
    Pizza(
      name: 'Pepperoni Feast',
      description: 'Pepperoni, mozzarella and oregano',
      price: 17.90,
      imageUrl:
          'https://images.unsplash.com/photo-1628840042765-356cda07504e?auto=format&fit=crop&w=900&q=80',
    ),
    Pizza(
      name: 'Garden Veggie',
      description: 'Peppers, mushrooms, olives and sweetcorn',
      price: 16.90,
      imageUrl:
          'https://images.unsplash.com/photo-1566843972142-a7fcb70de55a?auto=format&fit=crop&w=900&q=80',
    ),
    Pizza(
      name: 'Hawaiian',
      description: 'Turkey ham, pineapple and mozzarella',
      price: 18.90,
      imageUrl:
          'https://images.unsplash.com/photo-1594007654729-407eedc4be65?auto=format&fit=crop&w=900&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('WOW Pizza Menu'),
        centerTitle: true,
        backgroundColor: colors.surface,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          children: [
            Text(
              'Fresh from our oven',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              'Choose a pizza made with quality ingredients.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
            ),
            const SizedBox(height: 20),
            ...pizzas.map((pizza) => MenuCard(pizza: pizza)),
          ],
        ),
      ),
    );
  }
}
