import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_controller_lifycycle/my_controller.dart';
import 'package:get/get.dart';

class GetxControllerLifeCycle extends StatelessWidget {
  GetxControllerLifeCycle({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Controller LifeCycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              // // Bad Approach
              // initState: (data) => myController.increment(),
              // dispose: (_) => myController.cleanUpTask(),
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
