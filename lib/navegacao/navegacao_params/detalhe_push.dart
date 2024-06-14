import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail({super.key});
  String? nome = '';
  int? idade = 0;
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        final stateArgs =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
        widget.nome = stateArgs['nome'] ?? 'nome não encontrado';
        widget.idade = stateArgs['idade'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    print("O ${widget.nome} tem ${widget.idade}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de detalhes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args?['nome']),
            Text(
              args!['idade'].toString(),
            ),
          ],
        ),
      ),
    );
  }
}
