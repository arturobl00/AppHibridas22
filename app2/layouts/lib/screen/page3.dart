import 'package:flutter/material.dart';
import 'package:layouts/screen/animacion.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi appBar"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Hola Tercera pagina"),
          Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: RaisedButton(
              child: const Text('Open Animated'),
              onPressed: () {
                // Navega a la segunda ruta cuando se pulsa.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedContainerApp()),
                );
              },
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go back"),
          )
        ],
      )),
    );
  }
}
