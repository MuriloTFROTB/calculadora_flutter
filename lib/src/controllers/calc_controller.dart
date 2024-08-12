import 'package:calculadora_flutter/src/widgets/cal_hub.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  var display = '';

  void onButtonClick(ButtonClick click) {
    if (display == '0') {
      display = '';
    }
    if (click is CommomButtonClick) {
      display += click.value;
    } else if (click is ClearButtonClick) {
      display = '0';
    } else if (click is EqualButtonClick) {
      final y = display.interpret();
      display = '$y';
    } else if (click is BackSpaceButtonClick) {
      if (display.isNotEmpty) {
        display = display.substring(0, display.length - 1);
      }
    }
    notifyListeners();
  }
}
