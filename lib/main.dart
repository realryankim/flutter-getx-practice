import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/bottom_sheet_page.dart';
import 'package:flutter_getx/pages/dialog_page.dart';
import 'package:flutter_getx/pages/snackbar_page.dart';
import 'package:flutter_getx/pages/un_named_route/un_named_route_page.dart';
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
          title: Text('Flutter GetX Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(SnackbarPage());
                },
                child: Text('Snackbar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(DialogPage());
                },
                child: Text('Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(BottomSheetPage());
                },
                child: Text('Bottom Sheet'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(UnNamedRoutePage());
                },
                child: Text('Go to UnNamed Route'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
