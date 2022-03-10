import 'package:app5/cardimg.dart';
import 'package:app5/descripcion.dart';
import 'package:app5/fondo.dart';
import 'package:app5/listcard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Descripcion(), Fondo(), ListCard()],
    );
  }
}
