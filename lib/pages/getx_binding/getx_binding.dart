import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_binding/home.dart';
import 'package:flutter_getx/pages/getx_binding/home_controller_binding.dart';
import 'package:flutter_getx/pages/getx_binding/my_controller.dart';
import 'package:flutter_getx/pages/getx_service/service.dart';
import 'package:get/get.dart';

class GetxBindingPage extends StatelessWidget {
  GetxBindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Binding"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'The value is ${Get.find<MyController>().count}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () {
                Get.find<MyController>().increment();
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Home"),
              onPressed: () {
                // Get.to(Home());

                // For named route
                // Get.toNamed("/bindingHome");

                // for normal routes
                Get.to(Home(), binding: HomeControllerBinding());
              },
            ),
          ],
        ),
      ),
    );
  }
}
