import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class Calc extends GetxController {
  var num1 = 0;
  var num2 = 0;
  // var mathResult = '0'.obs;
  // var operator = '+'.obs;
  var total = 0;

  calculateAddResult() {
    total = num1 + num2;
  }

  calculateSubResult() {
    total = num1 - num2;
  }

  calculateMulResult() {
    total = num1 * num2;
  }

  calculateDivResult() {
    total = num1 ~/ num2;
  }
}
