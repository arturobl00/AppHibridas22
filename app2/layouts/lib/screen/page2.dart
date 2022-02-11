// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
