import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/reactive_state_management/getx_controller_page.dart';
import 'package:flutter_getx/pages/reactive_state_management/student.dart';
import 'package:get/get.dart';

/* If we want that every time the value of variable changes
  then all the widgets which uses the variable must update itself
  then the variable must be reactive or observable and to make it
  Reactive(Rx)  .obs is used with variable value.
  To update the widget which uses Rx variable must be placed inside
  Obx(() => Your widget which uses Rx)
The widget will only update if and only if the Rx variable value changes.

  Other ways of making the variable Rx
  1 - The first is using Rx{Type}.
  ================================
  initial value is recommended, but not mandatory
  final name = RxString('');
  final isLogged = RxBool(false);
  final count = RxInt(0);
  final items = RxList<String>([]);
  final myMap = RxMap<String, int>({});

  2 - use Darts Generics, Rx<Type>
  ================================
  final name = Rx<String>('');
  final isLogged = Rx<Bool>(false);
  final count = Rx<Int>(0);
  final balance = Rx<Double>(0.0);
  final number = Rx<Num>(0);
  final items = Rx<List<String>>([]);
  final myMap = Rx<Map<String, int>>({});
  // Custom classes - it can be any class, literally
  final user = Rx<User>();

  3 - more practical, easier and preffered approach, 
  just add .obs as a property of your value
  ==================================================
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final number = 0.obs;
  final items = <String>[].obs;
  final myMap = <String, int>{}.obs;

  // Custom classes - it can be any class, literally
  final user = User().obs;

*/

class ReactiveStateManagement extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  // var student = Student();
  // For making the entire class observable
  final student = Student(name: "tom", age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reactive State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Count value  is $count",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                increment();
              },
            ),
            SizedBox(height: 16),
            Obx(
              () => Text(
                // "Name  is ${student.name.value}",
                "Name is ${student.value.name}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Upper'),
              onPressed: () {
                // If individual variables are observable
                // student.name.value = student.name.value.toUpperCase();

                // If entire class is observable
                student.update((student) {
                  student!.name = student.name.toString().toUpperCase();
                });
              },
            ),
            SizedBox(height: 16),
            Divider(color: Colors.black.withOpacity(0.5)),
            ElevatedButton(
              child: Text('Go to GetXController Page'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                Get.to(() => GetxControllerPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
