import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/simple_state_management/my_controller.dart';
import 'package:get/get.dart';

class SimpleStateManagement extends StatelessWidget {
  SimpleStateManagement({Key? key}) : super(key: key);

  // // If init property is not used in GetX<Type of Controller> then
  // // create the instance of controller as follows.
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              // init: MyController(),
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                myController.increment();

                // // If instance of controller not created at top
                // Get.find<MyController>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
