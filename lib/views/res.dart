import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter/controllers/controller.quiz.dart';

class Second extends StatefulWidget {
  // String result;
  // Second(this.result);
  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return SecondState();
  }
}

class SecondState extends State<Second> {
  Calc calcfind = Get.find<Calc>();
  // String result;
  // SecondState(this.result);
  @override
  Widget build(BuildContext context) {
    var result = calcfind.total;
    var fresult = result.toString();
    return Scaffold(
      // appBar: AppBar(
      //   //now you have passing variable
      //   title: Text(result),
      // ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text('Total'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(fresult),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Exit')),
            ),
          ],
        ),
      ),
    );
  }
}
