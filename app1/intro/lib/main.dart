import 'package:flutter/material.dart';
import 'package:intro/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //home: const MyHomePage(title: "My HomePage",),
      //home: const Ejemplo(),
      //home: const Ejemplo2(),
      home: const HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text("Resultado final"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Ejemplo extends StatelessWidget {
  const Ejemplo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hola a mi primer Widget"),
    );
  }
}

class Ejemplo2 extends StatelessWidget {
  const Ejemplo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primer App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Hibridas"),
        ),
        body: Center(
            child: Column(
          children: const [
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
            Text("Hola Mi Segundo Widget"),
          ],
        )),
      ),
    );
  }
}
