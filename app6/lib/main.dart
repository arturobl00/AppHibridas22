import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  create() async {
    try {
      await FirebaseFirestore.instance
          .collection("datos")
          .doc(email.text)
          .set({"name": name.text, "email": email.text});
      // ignore: avoid_print
      print("Dato Registrado");
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Crud Flutter Firebase"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 22.0,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email User",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 22.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        create();
                        name.clear();
                        email.clear();
                      },
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.green),
                      child: const Text("Create")),
                  ElevatedButton(
                      onPressed: () {},
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.yellow),
                      child: const Text("Update")),
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text("Delete")),
                ],
              )
            ],
          ),
        ));
  }
}
