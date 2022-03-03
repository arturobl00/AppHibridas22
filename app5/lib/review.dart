import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    final nombre = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: const Text(
        "Dulce",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );

    final detalle = Container(
      margin: const EdgeInsets.only(left: 20.0, top: 5.0),
      child: const Text(
        "1 review 5 photos",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 10.0, color: Colors.black45),
      ),
    );

    final comentario = Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
      child: const Text(
        "Me Gusto mucho la experiencia.",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );

    final estrella = Container(
        margin: const EdgeInsets.only(
          top: 1.0,
        ),
        child: const Icon(
          Icons.star,
          color: Colors.yellow,
        ));

    final grupo1 = Row(
      children: [
        detalle,
        estrella,
        estrella,
        estrella,
        estrella,
      ],
    );

    final grupo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [nombre, grupo1, comentario],
    );

    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20.0),
          width: 60.0,
          height: 60.0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/img/foto1.jpg"))),
        ),
        grupo
      ],
    );
  }
}
