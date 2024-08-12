import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;

  const Display({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AutoSizeText(
          value,
          minFontSize: 30,
          maxFontSize: 80,
          maxLines: 1,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 80,
          ),
        ),
      ],
    );
  }
}
