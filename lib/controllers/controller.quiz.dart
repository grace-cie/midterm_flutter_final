import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class Calc extends GetxController {
  var num1 = 0;
  var num2 = 0;
  var opt = '';
  var total = 0;

  calculator() {
    switch (opt) {
      case '+':
        total = num1 + num2;
        break;
      case '-':
        total = num1 - num2;
        break;
      case '*':
        total = num1 * num2;
        break;
      case '/':
        total = num1 ~/ num2;
        break;
      default:
    }
  }
}
