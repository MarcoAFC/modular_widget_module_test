import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/presentation/first_screen/first_screen.dart';
import 'package:modular/app/presentation/second_screen/second_module.dart';

class FirstModule extends Module{
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, _) => const FirstScreen()),
    ChildRoute('/second', child: (context, _) => SecondModule())
  ];
}