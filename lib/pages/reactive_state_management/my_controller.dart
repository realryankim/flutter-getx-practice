import 'package:flutter_getx/pages/reactive_state_management/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: "Tom", age: 25).obs;

  void convertToUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }

  var count = 0.obs;
  void increment() {
    count++;
  }
}
