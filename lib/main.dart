import 'package:aladdog_client/pages/DemoPage.dart';
import 'package:aladdog_client/pages/HomePage.dart';
import 'package:aladdog_client/pages/LoginPage.dart';
import 'package:aladdog_client/pages/ShiftPage.dart';
import 'package:aladdog_client/pages/ShiftSettlePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/demo': (context) => const DemoPage(),
        '/login': (context) => const LoginPage(),
        '/shift': (context) => const ShiftPage(),
        '/home': (context) => const HomePage(),
        '/shift/settle': (context) => const ShiftSettlePage(),
      },
    );
  }
}
