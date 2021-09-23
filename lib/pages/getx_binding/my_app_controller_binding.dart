import 'package:flutter_getx/pages/getx_binding/my_controller.dart';
import 'package:get/get.dart';

class MyAppControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
