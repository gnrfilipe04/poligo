import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:poligo/app/screens/home/store/counter_store.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CounterStore controller;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => Text(controller.counter.toString()));
  }
}
