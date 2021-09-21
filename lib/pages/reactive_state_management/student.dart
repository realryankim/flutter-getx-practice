import 'package:get/get.dart';

class Student {
  /* Classes can be made observable by making individuals variables Rx
  or by making the entire class observable. 
  */

  // Individuals variables Rx
  // RxString name = "Tom".obs;
  // RxInt age = 25.obs;

  // To make the entire class observable
  var name;
  var age;

  // constructor
  Student({this.name, this.age});
}
