import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page4'),
      ),
      body: Center(
        child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Voltar")),
      ),
    );
  }
}
