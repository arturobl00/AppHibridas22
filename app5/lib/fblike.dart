import 'package:flutter/material.dart';

class FbLike extends StatefulWidget {
  const FbLike({Key? key}) : super(key: key);

  @override
  State<FbLike> createState() => _FbLikeState();
}

class _FbLikeState extends State<FbLike> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Scaffold.of(context)
            .showSnackBar(const SnackBar(content: Text("Te Gusto esta Foto")));
      },
      backgroundColor: Colors.red,
      mini: true,
      tooltip: "Me gusta",
      child: const Icon(Icons.favorite_border),
    );
  }
}
