import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_internationaliztion/my_controller.dart';
import 'package:get/get.dart';

class GetxInternationalization extends StatelessWidget {
  GetxInternationalization({Key? key}) : super(key: key);

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Internationalization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 25, color: Colors.purple),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("English"),
                  onPressed: () {
                    myController.changeLagunage('en', 'EN');
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  child: Text("Korean"),
                  onPressed: () {
                    myController.changeLagunage('ko', 'KO');
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  child: Text("Spanish"),
                  onPressed: () {
                    myController.changeLagunage('es', 'ES');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
