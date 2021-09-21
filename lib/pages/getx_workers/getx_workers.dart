import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_workers/my_controller.dart';
import 'package:get/get.dart';

class GetxWorkers extends StatelessWidget {
  GetxWorkers({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Workers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () {
                myController.increment();
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                onChanged: (val) {
                  myController.increment();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
