import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/un_named_route/home.dart';
import 'package:get/get.dart';

class UnNamedRoutePage extends StatelessWidget {
  const UnNamedRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnNamed Route Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go to Home"),
              onPressed: () async {
                // Get.to(
                //   Home(),
                //   // // To make the screen full dialog
                //   fullscreenDialog: true,
                //   // // To provide animations
                //   transition: Transition.zoom,
                //   // // Duration for transition animation
                //   // duration: Duration(milliseconds: 4000),
                //   // // Curve Animation
                //   curve: Curves.bounceInOut,
                // );
                // // Go to home screen but no option to return to previous screen
                // Get.off(Home());
                // // Go to home screen and cancel all previous screens/routes
                // Get.offAll(Home());
                // // Go to the next screen with some data
                // Get.to(Home(), arguments: "Data from UnNamedRoutePage");
                // // Go to the next screen and receive data sent from home screen
                var data = await Get.to(() => Home());
                print("The Received data is $data");
              },
            ),
          ],
        ),
      ),
    );
  }
}
