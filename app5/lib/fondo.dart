import 'package:flutter/material.dart';

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(color: Colors.blueAccent),
      child: const Text(
        "Mi App",
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
  }
}
