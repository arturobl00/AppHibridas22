import 'package:app4/layouts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Lista(),
    );
  }
}

class Lista extends StatefulWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proyecto Interface"),
      ),
      body: const Fotos(),
    );
  }
}

class Textos extends StatefulWidget {
  const Textos({Key? key}) : super(key: key);

  @override
  _TextosState createState() => _TextosState();
}

class _TextosState extends State<Textos> {
  List<String> itemsList = [
    "Page 1",
    "Page 2",
    "Page 3",
    "Page 4",
    "Page 5",
    "Incremento",
    "Segundo"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(itemsList[index]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Layouts(),
                        settings: RouteSettings(arguments: itemsList[index])));
              },
            ),
          );
        });
  }
}

class Fotos extends StatelessWidget {
  const Fotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext contex, int index) {
          return Image.network(
            "https://picsum.photos/id/$index/400/200",
            height: 200,
          );
        });
  }
}
