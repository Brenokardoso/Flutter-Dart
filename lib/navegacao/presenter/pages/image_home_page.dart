import 'package:flutter/material.dart';

class ImageHomePage extends StatelessWidget {
  const ImageHomePage({super.key});

  @override
  Widget build(context) {
    String? link =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-wncTrH5GDbA9_oBMfwRXJpSApxKfUrYLDg&s";
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home Page Images",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          return Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      color: Colors.red,
                      child: const Image(
                        image: AssetImage("lib/assets/images/earth.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: 250,
                      height: 250,
                      child: Image.asset(
                        "lib/assets/images/duck.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      color: Colors.red,
                      width: 250,
                      height: 250,
                      child: Image.network(
                        link,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 250,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/images/duck.png"),
                        ),
                      ),
                      child: Text(
                        "Teste de imagem" * 25,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
