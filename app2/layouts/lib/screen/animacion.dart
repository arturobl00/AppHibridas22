import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define las diferentes propiedades con valores por defecto.
  // Actualiza estas propiedades cuando el usuario toque un FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Animated Demo")),
        body: Center(
          child: AnimatedContainer(
            // Usa setState para reconstruir el widget con nuevos valores.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            // Define la duración de la animación.
            duration: const Duration(seconds: 2),
            // Proporciona una curva opcional para hacer que la animación se sienta más suave.
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          // Cuando el usuario toca el botón
          onPressed: () {
            // Usa setState para reconstruir el widget con nuevos valores.
            setState(() {
              // Crea un generador de números aleatorios.
              final random = Random();

              // Genera un ancho y alto aleatorio.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Genera un color aleatorio.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Genera un radio de borde aleatorio.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      ),
    );
  }
}
