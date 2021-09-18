import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:flutter_getx/pages/un_named_route/next_page.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
              onPressed: () {
                Get.to(NextPage());
              },
            ),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text(
                "Back to UnNamedRoutePage",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                // Get.back();
                // // Send data to previous screen must use result as name
                Get.back(result: 'This is from Home Screen');
              },
            ),
            SizedBox(height: 8),
            // Text(
            //   "${Get.arguments}",
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 20,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
