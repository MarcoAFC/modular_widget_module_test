import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/presentation/second_screen/second_screen_controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var controller = Modular.get<SecondScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second Screen"
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ValueListenableBuilder(
              valueListenable: controller.count, 
              builder: (context, value, child){
                return Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 32
                  ),
                );
              }
            ),
          ),
          Container(
            height: 30,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            minRadius: 32,
            child: IconButton(
              iconSize: 32,
              onPressed: (){
                controller.increment();
              },
              icon: const Icon(Icons.plus_one),
              color: Colors.white,
            ),
          )
        ],
      )
    );
  }
}