import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interface 2"),
      ),
      body: PageView(
        children: const [Page1(), Page2(), Page3()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "User")
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: Column(
        children: const [
          Text(
            "Mi pagina 1",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "Mi pagina 2",
            style: TextStyle(color: Colors.white),
          ),
        ],
      )),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
          child: Text(
        "Mi pagina 2",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
          child: Text(
        "Mi pagina 1",
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
