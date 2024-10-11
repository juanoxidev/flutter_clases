import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
 // compartir info entre pantallas.
 // constructor
 HomeScreen({super.key, required this.name});  
  // se declara atributo
  String name;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        ),
        body: Center(
          child: Text('Welcome: ${name}'),
        )
    );
  }
}