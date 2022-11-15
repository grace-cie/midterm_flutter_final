import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_flutter/controllers/controller.quiz.dart';
import 'package:quiz_flutter/views/res.dart';

class MainView extends StatefulWidget {
  // MainView({super.key, required this.title});
  const MainView({super.key, required String title});

  @override
  State<StatefulWidget> createState() => _MainViewState();
  // @override
  // Widget build(BuildContext context) {
  // return Scaffold(
  //   appBar: AppBar(
  //     title: Text(title),
  //   ),
  //   body: Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         const Text('Increment This value: '),
  //         Obx(
  //           () => Text(
  //             '${controller.count.value}',
  //             style: Theme.of(context).textTheme.headline4,
  //           ),
  //         )
  //       ],
  //     ),
  //   ),
  //   floatingActionButton: FloatingActionButton(
  //     onPressed: controller.increment,
  //     tooltip: 'Increment',
  //     child: const Icon(Icons.add),
  //   ),
  // );
  // }
}

class _MainViewState extends State<MainView> {
  // late final String title;
  // late final String title;

  // final Add controller = Get.put(Add());

  // final Calc controller = Get.put(Calc());
  // final firstNumber = TextEditingController();
  // final secondNumber = TextEditingController();

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
  // final calculatorCtrl = Get.put(Calc());

  @override
  Widget build(BuildContext context) {
    final calculatorCtrl = Get.put(Calc());

    var size = MediaQuery.of(context).size;
    final _num1 = TextEditingController();
    final _num2 = TextEditingController();
    final _tot = TextEditingController();
    late int result;
    late int sum;

    // ignore: non_constant_identifier_names
    GetStrings() {
      calculatorCtrl.num1 = int.parse(_num1.text);
      calculatorCtrl.num2 = int.parse(_num2.text);
    }

    // ignore: non_constant_identifier_names
    GetTotal() {
      result = calculatorCtrl.total;
    }

    // ignore: non_constant_identifier_names
    ResultToString() {
      _tot.text = result.toString();
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              const Text("Basic Calculator",
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _num1,
                decoration: InputDecoration(
                    labelText: "Number 1",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: _num2,
                decoration: InputDecoration(
                    labelText: "Number 2",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 15,
              ),
              // TextField(
              //   controller: _tot,
              //   decoration: InputDecoration(
              //       labelText: "Total",
              //       labelStyle:
              //           TextStyle(fontSize: 15, color: Colors.grey.shade400),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10))),
              // ),
              const SizedBox(
                height: 15,
              ),
              Row(),
              GestureDetector(
                onTap: () {
                  GetStrings();
                  GetTotal();
                  ResultToString();
                  calculatorCtrl.calculateAddResult();

                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));

                  // print('hello');
                  // print('$result');

                  // sum = int.parse(_num1.text) + int.parse(_num2.text);
                  // result = sum;
                  // _tot.text = result.toString();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width / 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "+",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  GetStrings();
                  GetTotal();
                  ResultToString();
                  calculatorCtrl.calculateSubResult();

                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));
                  // sum = int.parse(_num1.text) - int.parse(_num2.text);
                  // result = sum;
                  // _tot.text = result.toString();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => Second('$result')));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width / 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "-",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  GetStrings();
                  GetTotal();
                  ResultToString();
                  calculatorCtrl.calculateMulResult();

                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));
                  // sum = int.parse(_num1.text) * int.parse(_num2.text);
                  // result = sum;
                  // _tot.text = result.toString();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => Second('$result')));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width / 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "X",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  GetStrings();
                  GetTotal();
                  ResultToString();
                  calculatorCtrl.calculateDivResult();

                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Second()));
                  // sum = int.parse(_num1.text) ~/ int.parse(_num2.text);
                  // result = sum;
                  // _tot.text = result.toString();
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => Second('$result')));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width / 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "/",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Padding(
    //     padding: const EdgeInsets.all(32.0),
    //     child: Column(
    //       children: <Widget>[
    //         TextField(
    //           controller: firstNumber,
    //           textInputAction: TextInputAction.next,
    //           keyboardType: TextInputType.number,
    //           onSubmitted: (String value) {},
    //         ),
    //         TextField(
    //           controller: secondNumber,
    //           textInputAction: TextInputAction.next,
    //           keyboardType: TextInputType.number,
    //           onSubmitted: (String value) {},
    //         ),
    //         Text(
    //           'Sum is: ${firstNumber.text + secondNumber.text}',
    //           textAlign: TextAlign.center,
    //           style: const TextStyle(fontWeight: FontWeight.bold),
    //         )
    //       ],
    //     ),
    //   ),
    // );
    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         ElevatedButton(
    //           onPressed:() => calculatorCtrl.calculateResult(),
    //           child: const Text('+'),
    //         )
    //       ],
    //     ),
    //   ],
    // );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('title'),
    //   ),
    //   // body: Padding(
    //   //   padding: const EdgeInsets.all(16.0),
    //   //   child: TextField(
    //   //     controller: value,
    //   //   ),
    //   // ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: TextField(
    //             controller: firstNumber,
    //             textInputAction: TextInputAction.next,
    //             keyboardType: TextInputType.number,
    //             onSubmitted: (String value) {},
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: TextField(
    //             controller: secondNumber,
    //             textInputAction: TextInputAction.next,
    //             keyboardType: TextInputType.number,
    //             onSubmitted: (String value) {},
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: ElevatedButton(
    //             onPressed: () {
    //               $
    //             },
    //             child: Text('+'),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: controller.add,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}
