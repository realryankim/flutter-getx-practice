import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRoutePage extends StatelessWidget {
  const NamedRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Go to Home"),
                onPressed: () {
                  Get.toNamed("/home");
                  // // Go to home screen but no option to return to previous screen
                  // Get.offNamed("/home");
                  // // Go to home screen and cancel all previous screens/routes
                  // Get.offAllNamed("/home");
                  // // Dynamic URL link
                  // Get.toNamed(
                  //   "/home?channel=Ripples Code&content=Flutter GetX",
                  // );
                },
              ),
            ],
          ),
        ));
  }
}
