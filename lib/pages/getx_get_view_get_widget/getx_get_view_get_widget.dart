import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_get_view_get_widget/count_controller.dart';
import 'package:get/get.dart';

// GetView
// ==========
// If we have single controller as a dependency then we can use GetView
// instead of StatelessWidget and avoid writing Get.find

class GetxGetViewGetWidget extends GetView<CountController> {
  GetxGetViewGetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put(CountController());
    Get.create(() => CountController());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'The value is ${controller.count}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                print(controller.hashCode);
                controller.increment();
              },
            )
          ],
        ),
      ),
    );
  }
}

// ===========================================================================

// GetWidget
// ==========
// It is similar to GetView with one difference it gives the same instance of
// Get.find everytime. It becomes very useful when used in combination with
// Get.create

// class GetxGetViewGetWidget extends GetWidget<CountController> {
//   GetxGetViewGetWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Get.put(CountController());
//     Get.create(() => CountController());
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("GetWidget"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Obx(
//               () => Text(
//                 'The value is ${controller.count}',
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//             SizedBox(height: 8),
//             ElevatedButton(
//               child: Text('Increment'),
//               onPressed: () {
//                 print(controller.hashCode);
//                 controller.increment();
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
