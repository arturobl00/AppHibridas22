import 'package:flutter/material.dart';

class Descripcion extends StatefulWidget {
  const Descripcion({Key? key}) : super(key: key);

  @override
  _DescripcionState createState() => _DescripcionState();
}

class _DescripcionState extends State<Descripcion> {
  String miTexto =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin:
                  const EdgeInsets.only(top: 320.0, left: 20.0, right: 40.0),
              child: const Text(
                "Duwili Ella",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            estrella,
            estrella,
            estrella,
            estrella,
            estrella2,
          ],
        ),
        Container(
            margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 40.0),
            child: Text(
              miTexto,
              style: const TextStyle(fontSize: 16.0, color: Colors.black45),
              textAlign: TextAlign.justify,
            )),
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 20.0),
          child: const ElevatedButton(
            onPressed: null,
            child: Text("Navigate B"),
          ),
        )
      ],
    );
  }
}

Widget estrella = Container(
    margin: const EdgeInsets.only(
      top: 323.0,
      left: 5.0,
    ),
    child: const Icon(
      Icons.star,
      color: Colors.yellow,
    ));

Widget estrella2 = Container(
    margin: const EdgeInsets.only(
      top: 323.0,
      left: 3.0,
    ),
    child: const Icon(
      Icons.star_outline,
      color: Colors.yellow,
    ));
