import 'package:flutter/material.dart';

class DetailPushNamed extends StatefulWidget {
  DetailPushNamed({super.key});

  Map<String, dynamic> args = {'nome': '', 'idade': 0, 'profissao': ''};

  @override
  State<DetailPushNamed> createState() => _DetailPushNamed();
}

class _DetailPushNamed extends State<DetailPushNamed> {
  _DetailPushNamed({Key? key});

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        widget.args =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.args);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes 2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.args["nome"]),
            Text(widget.args["idade"].toString()),
            Text(widget.args["profissao"]),
          ],
        ),
      ),
    );
  }
}
