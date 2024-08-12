// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ButtonClick {
  final dynamic value;

  ButtonClick(this.value);
}

class CommomButtonClick extends ButtonClick {
  CommomButtonClick(super.value);
}

class EqualButtonClick extends ButtonClick {
  EqualButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class BackSpaceButtonClick extends ButtonClick {
  BackSpaceButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;
  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(
                value: 'AC',
                onTap: (value) => onButtonClick(
                  ClearButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
              Button(
                value: Icons.backspace_outlined,
                valueColorText: Colors.orange,
                onTap: (value) => onButtonClick(
                  BackSpaceButtonClick(value),
                ),
              ),
              Button(
                value: '%',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
              Button(
                value: '/',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(
                value: '7',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '8',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '9',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '*',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(
                value: '4',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '5',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '6',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '-',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(
                value: '1',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '2',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '3',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '+',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(
                value: Icons.history_sharp,
                valueColorText: Colors.orange,
              ),
              Button(
                value: '0',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '.',
                onTap: (value) => onButtonClick(
                  CommomButtonClick(value),
                ),
              ),
              Button(
                value: '=',
                onTap: (value) => onButtonClick(
                  EqualButtonClick(value),
                ),
                valueColorText: Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final dynamic value;
  final Color valueColorText;
  final Color valueColorButton;
  final void Function(dynamic value)? onTap;
  const Button({
    super.key,
    required this.value,
    this.valueColorButton = Colors.black,
    this.valueColorText = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          child: InkWell(
            onTap: onTap == null ? null : () => onTap!(value),
            child: Center(
              child: value is String
                  ? Text(
                      value,
                      style: TextStyle(
                        fontSize: 40,
                        color: valueColorText,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  : Icon(
                      value,
                      size: 40,
                      color: valueColorText,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
