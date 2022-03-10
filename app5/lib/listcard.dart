import 'package:app5/cardimg.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/img1.jpg"),
          CardImage("assets/img/img2.jpg"),
          CardImage("assets/img/img3.jpg"),
          CardImage("assets/img/img4.jpg"),
          CardImage("assets/img/img5.jpg"),
          CardImage("assets/img/img6.jpg"),
        ],
      ),
    );
  }
}