import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/presentation/second_screen/second_screen.dart';
import 'package:modular/app/presentation/second_screen/second_screen_controller.dart';

class SecondModule extends WidgetModule{
  SecondModule({Key? key}) : super(key: key);

  @override
  List<Bind<Object>> get binds => [
    Bind((i) => SecondScreenController())
  ];

  @override
  Widget get view => const SecondScreen();

}