import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Home Page")),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                
              )
            ],
          ),
          child: const Text(
            "Centro",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
