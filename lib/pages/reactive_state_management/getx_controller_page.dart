import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/reactive_state_management/my_controller.dart';
import 'package:get/get.dart';

class GetxControllerPage extends StatelessWidget {
  GetxControllerPage({Key? key}) : super(key: key);

  // If init property is not used in GetX<Type of Controller> then
  // create the instance of controller as follows.
  // Create the instance of Controller
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "State Management with GetX Controller",
          maxLines: 2,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<MyController>(
              init: MyController(),
              builder: (controller) {
                return Text(
                  "Count value  is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                // myController.increment();

                // // If instance of controller not created at top
                Get.find<MyController>().increment();
              },
            ),
            SizedBox(height: 16),
            Obx(() => Text(
                  // 'Name is ${myController.student.name}',
                  'Name is ${myController.student.value.name}',
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Upper'),
              onPressed: () {
                // // If individual variables are observable
                // myController.convertToUpperCase();

                // // If entire class is observable
                myController.convertToUpperCase();
              },
            ),
          ],
        ),
      ),
    );
  }
}
