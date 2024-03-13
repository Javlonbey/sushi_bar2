import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_bar2/components/shoop_pay.dart';
import 'package:sushi_bar2/models/shop.dart';
import 'package:sushi_bar2/pages/cart_page.dart';
import 'package:sushi_bar2/pages/intro_page.dart';
import 'package:sushi_bar2/pages/settings_page.dart';
import 'package:sushi_bar2/screen/login_screen.dart';
import 'package:sushi_bar2/screen/profile_screen.dart';

import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
        '/settingspage': (context) => const SettingsPage(),
        '/shooppay': (context) => const ShoopPay(),
        '/profilescreen': (context) => const ProfileScreen(),
        '/loginscreen': (context) => const LoginScreen(),
      },
    );
  }
}
