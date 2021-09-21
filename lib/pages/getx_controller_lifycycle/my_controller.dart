import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    await Future<int?>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  // // Better Approach
  @override
  void onInit() {
    print("Init Called");
    increment();
    super.onInit();
  }

  @override
  void onClose() {
    cleanUpTask();
    super.onClose();
  }
}
