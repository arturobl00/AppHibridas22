import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  //const CardImage({Key? key}) : super(key: key);
  String pathImage = "assets/img/img1.jpg";
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 220.0,
      width: 180.0,
      margin: const EdgeInsets.only(top: 100.0, left: 20.0),
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: const BorderRadius.all(Radius.circular(30.0))),
    );

    return Container(
      child: card,
    );
  }
}
