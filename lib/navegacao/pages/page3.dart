import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
        centerTitle: true,
        title: const Text('Page3'),
      ),
      body: Center(
        child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Voltar")),
      ),
    );
  }
}
