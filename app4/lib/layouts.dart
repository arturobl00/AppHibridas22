import 'package:flutter/material.dart';

class Layouts extends StatefulWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  _LayoutsState createState() => _LayoutsState();
}

class _LayoutsState extends State<Layouts> {
  String selectItem = "";
  @override
  Widget build(BuildContext context) {
    selectItem = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text(selectItem),
      ),
      body: Container(),
    );
  }
}
