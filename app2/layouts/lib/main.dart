// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:layouts/screen/page2.dart';
import 'package:layouts/screen/animacion.dart';

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
        debugShowCheckedModeBanner: false,
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
        body: ListView(children: [
      Image.asset(
        'images/paisaje.jpg',
        width: 600,
        height: 640,
        fit: BoxFit.cover,
      ),
      const TitleSection(),
      buttonSection,
      textSection,
      Container(
        padding: const EdgeInsets.only(left: 100.0, right: 100.0),
        child: RaisedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navega a la segunda ruta cuando se pulsa.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
        ),
      )
    ]));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28.0),
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
                  style: TextStyle(color: Colors.grey[500])),
              Text("Josshiuaa, Bojwiiiw",
                  style: TextStyle(color: Colors.grey[500]))
            ],
          )),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Icon(
            Icons.star_half_outlined,
            color: Colors.red[500],
          ),
          Icon(
            Icons.star_outline,
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
      _builButtonColumn(Colors.blue, Icons.call, 'CALL'),
      _builButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
      _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
    ],
  ),
);

Widget textSection = Container(
  padding:
      const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 20.0, top: 20.0),
  child: Column(
    children: [
      const Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese'
        'Alps. Situated 1,578 meters above sea level, it is one of the'
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          'images/flores2.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}
