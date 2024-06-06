import 'package:dart_flutter/navegacao/pages/page1.dart';
import 'package:dart_flutter/navegacao/pages/page2.dart';
import 'package:dart_flutter/navegacao/pages/page3.dart';
import 'package:dart_flutter/navegacao/pages/page4.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var space = SizedBox(height: 50);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page Navigate'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customButtonWidget(
                () => MaterialPageRoute(
                    settings: const RouteSettings(name: "Page1"),
                    builder: (_) => const Page1()),
                name: 'Pagina1',
              ),
              space,
              customButtonWidget(
                () => MaterialPageRoute(
                    settings: const RouteSettings(name: "Page2"),
                    builder: (_) => const Page2()),
                name: 'Pagina2',
              ),
              space,
              customButtonWidget(
                () => MaterialPageRoute(
                    settings: const RouteSettings(name: "Page3"),
                    builder: (_) => const Page3()),
                name: 'Pagina3',
              ),
              space,
              customButtonWidget(
                () => MaterialPageRoute(
                    settings: const RouteSettings(name: "Page4"),
                    builder: (_) => const Page4()),
                name: 'Pagina4',
              ),
              space,
              customButtonWidgetNamed("/Page1", name: 'Pagina - 1'),
              space,
              customButtonWidgetNamed("/Page2", name: 'Pagina - 2'),
              space,
              customButtonWidgetNamed("/Page3", name: 'Pagina - 3'),
              space,
              customButtonWidgetNamed("/Page4", name: 'Pagina - 4')
            ],
          ),
        ),
      ),
    );
  }
}

Widget customButtonWidget(dynamic route, {required String name}) {
  return Builder(
    builder: (context) {
      return ElevatedButton(
        onPressed: () => Navigator.of(context).push(route()),
        child: Text(
          " ir para $name",
          style: const TextStyle(color: Colors.white),
        ),
      );
    },
  );
}

Widget customButtonWidgetNamed(String routeNamed, {required String name}) {
  return Builder(
    builder: (context) {
      return ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed(routeNamed),
        child: Text(
          " ir para $name",
          style: const TextStyle(color: Colors.white),
        ),
      );
    },
  );
}
