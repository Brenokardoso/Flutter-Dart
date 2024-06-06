import 'package:dart_flutter/navegacao/home_page_navigate.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page1'),
      ),
      body: Center(
        child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Voltar")),
      ),
    );
  }
}
