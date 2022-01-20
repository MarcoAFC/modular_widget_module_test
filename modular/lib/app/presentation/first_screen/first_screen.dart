import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('./second');
        },
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}