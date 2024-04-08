// import 'package:dart_flutter/presenter/pages/home_page.dart';
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
      title: "MyApp",
      theme: ThemeData.dark(),
      // home: const HomePage(),
      home: const ImageHomePage(),
    );
  }
}
