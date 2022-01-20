import 'package:flutter/widgets.dart';

class SecondScreenController{
  final ValueNotifier<int> count = ValueNotifier(0); 

  void increment() => count.value++;

  int get value => count.value;
}