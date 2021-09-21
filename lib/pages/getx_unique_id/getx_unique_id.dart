import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_unique_id/my_controller.dart';
import 'package:get/get.dart';

class GetxUniqueId extends StatelessWidget {
  GetxUniqueId({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unique ID"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              id: 'txtCount',
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            GetBuilder<MyController>(
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () => myController.increment(),
            ),
          ],
        ),
      ),
    );
  }
}
