import 'package:flutter/material.dart';

import 'about.dart';
import 'contact_page.dart';
import 'home_page.dart';
import 'menu_page.dart';
import 'people.dart';
import 'web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOW Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC83A22)),
        scaffoldBackgroundColor: const Color(0xFFFFFBF7),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/people': (context) => const People(),
        '/twitter': (context) =>
            const WebPage(title: 'Twitter/X', url: 'https://x.com'),
        '/facebook': (context) =>
            const WebPage(title: 'Facebook', url: 'https://www.facebook.com'),
      },
    );
  }
}
