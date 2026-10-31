import 'package:flutter/material.dart';

// Import pages
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'WOW Pizza',

      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
      ),

      // Named Routes
      initialRoute: '/about',

      routes: {'/about': (context) => const AboutPage()},
    );
  }
}
