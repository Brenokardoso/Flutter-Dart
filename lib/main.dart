// import 'package:dart_flutter/presenter/pages/home_page.dart';
import 'package:dart_flutter/navegacao/home_page_navigate.dart'
    as new_home_page;
import 'package:dart_flutter/navegacao/pages/page1.dart';
import 'package:dart_flutter/navegacao/pages/page2.dart';
import 'package:dart_flutter/navegacao/pages/page3.dart';
import 'package:dart_flutter/navegacao/pages/page4.dart';
import 'package:dart_flutter/presenter/pages/home_page.dart' as old_home_page;
import 'package:dart_flutter/presenter/pages/image_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Academia do Flutter",
      theme: ThemeData.dark(),
      // home: const old_home_page.HomePage(),
      // home: const ImageHomePage(),
      routes: {
        "/": (context) => const new_home_page.HomePage(),
        "/Page1": (context) => const Page1(),
        "/Page2": (context) => const Page2(),
        "/Page3": (context) => const Page3(),
        "/Page4": (context) => const Page4(),
      },
    );
  }
}
