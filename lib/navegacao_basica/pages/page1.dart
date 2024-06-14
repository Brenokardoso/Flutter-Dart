import 'package:dart_flutter/navegacao_basica/navegacao_params/detalhe_push.dart';
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
            onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/Detalhes',
                      arguments: {
                        "nome":'breno',
                        "idade" : 22,
                      },
                    ),
                    builder: (context) => Detail(),
                  ),
                ),
            child: const Text("Ir para detalhamento")),
      ),
    );
  }
}
