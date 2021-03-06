import 'package:flutter/material.dart';
import 'package:layouts/screen/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi appBar"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Hola segunda pagina"),
          Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: RaisedButton(
              child: const Text('Open route'),
              onPressed: () {
                // Navega a la segunda ruta cuando se pulsa.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page3()),
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
