import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, color}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Interface());
  }
}

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout Demo"),
        ),
        body: Column(children: [
          const TitleSection(),
          buttonSection,
        ]));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text("Oeschinen Lake Campground",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Text("Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.grey[500]))
            ],
          )),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text("41"),
        ],
      ),
    );
  }
}

Column _builButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
    ],
  );
}

// ignore: avoid_unnecessary_containers
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _builButtonColumn(Colors.indigo, Icons.home, 'Home'),
      _builButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
      _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
      _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
    ],
  ),
);
