import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/named_route/next_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home Screen",
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text(
                "Next Screen",
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                onSurface: Colors.white,
              ),
              onPressed: () {
                // Get.toNamed('/nextScreen');
                Get.toNamed('/nextScreen/1234');
              },
            ),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text(
                "Back to NamedRoutePage",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(height: 8),
            Text(
              "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
