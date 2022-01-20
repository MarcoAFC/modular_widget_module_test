import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/presentation/first_screen/first_module.dart';

class AppModule extends Module{
  @override
  List<Bind> get binds => [

  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/first', module: FirstModule()),
  ];
}