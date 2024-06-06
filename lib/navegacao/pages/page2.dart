import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
        centerTitle: true,
        title: const Text('Page2'),
      ),
       body: Center(
        child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Voltar")),
      ),
    );
  }
}