// #2 || Flutter GetX Tutorial || Showing Snackbar using GetX Library
// https://www.youtube.com/watch?v=ou4iTI3YP_A&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=3

import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/snackbar_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(SnackbarPage());
                },
                child: Text('Snackbar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
