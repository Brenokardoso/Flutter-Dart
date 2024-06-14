import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page2'),
      ),
      body: Center(
        child: FilledButton(
            onPressed: () =>
                Navigator.of(context).pushNamed("detalhes_page", arguments: {
                  "nome": "Breno Cardoso",
                  "idade": 25,
                  "profissao": "garoto de programa",
                }),
            child: const Text("Detalhamento 2°")),
      ),
    );
  }
}
