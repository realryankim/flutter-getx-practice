import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    // // called every time when the value of count variable changes
    // ever(count, (_) => print(count));

    // // Called every time when the value of any variable from the list changes
    // everAll([count], (_) => print(count));

    // // Called only once when the variable value changes
    // once(count, (_) => print(count));

    // // Called every time the user stops typing for 1 second
    // debounce(
    //   count,
    //   (_) => print("When the user stop typing for 1 sec the value of count"),
    //   time: Duration(seconds: 1),
    // );

    // // Ignore all changes within 3 seconds.
    // // imagine that the user can earn coins by clicking on something,
    // if he clicked 300 times in the same minute,
    // he would have 300 coins, using interval,
    // you can set a time fram for 3 seconds,
    // and even then clicking 300 or a thousand times,
    // the maximum he would get in 1 minute would be 20 coins,
    // clicking 300 or 1 million times
    interval(
      count,
      (_) => print("Ignore all changes"),
      time: Duration(seconds: 3),
    );
    super.onInit();
  }
}
