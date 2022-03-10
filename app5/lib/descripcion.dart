import 'package:app5/review.dart';
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
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      top: 320.0, left: 20.0, right: 40.0),
                  child: const Text(
                    "Duwili Ella",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
                margin:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 40.0),
                child: Text(
                  miTexto,
                  style: const TextStyle(fontSize: 16.0, color: Colors.black45),
                  textAlign: TextAlign.justify,
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  // ignore: deprecated_member_use
                  Scaffold.of(context).showSnackBar(
                      const SnackBar(content: Text("Hola pulsaste el Botón")));
                },
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 50.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blueAccent,
                  ),
                  child: const Center(
                      child: Text(
                    "Navigator",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Text(
                "All Reviews",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            Review("assets/img/foto1.jpg", "Dulce", "3 reviews 5 photos",
                "Fue una gran Experiencia"),
            Review("assets/img/img1.jpg", "Esther", "1 reviews 1 photos",
                "EL Mejor Lugar"),
            Review("assets/img/img2.jpg", "Maria", "2 reviews 8 photos",
                "Me encanto"),
            Review("assets/img/img3.jpg", "Joana", "6 reviews 2 photos",
                "Tienes que vivirlo"),
            Review("assets/img/img4.jpg", "Carmen", "10 reviews 8 photos",
                "Excelente!"),
          ],
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
