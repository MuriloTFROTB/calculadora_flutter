// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculadora_flutter/src/controllers/calc_controller.dart';
import 'package:calculadora_flutter/src/widgets/cal_hub.dart';
import 'package:calculadora_flutter/src/widgets/display_cal.dart';
import 'package:flutter/material.dart';

class CalculadoraMain extends StatefulWidget {
  const CalculadoraMain({super.key});

  @override
  State<CalculadoraMain> createState() => _CalculadoraMainState();
}

class _CalculadoraMainState extends State<CalculadoraMain> {
  final controller = CalcController();
  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Calculadora')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Display(value: controller.display),
            ),
            Expanded(
              flex: 3,
              child: ButtonHub(onButtonClick: controller.onButtonClick),
            )
          ],
        ),
      ),
    );
  }
}
