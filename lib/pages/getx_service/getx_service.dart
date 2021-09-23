import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_service/service.dart';
import 'package:get/get.dart';

class GetxServicePage extends StatelessWidget {
  GetxServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Service"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () {
                Get.find<Service>().incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
