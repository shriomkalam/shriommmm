import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blueAccent,
    title: const Text("Home"),
    actions: const [],
    ),
    body: SingleChildScrollView(
    child: Container(
    padding: const EdgeInsets.all(20.0),
    child: const Column(
    children: [

      
    ],
    ),
    ),
    ),
    );
  }
}