import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.snackbar(
                "Snackbar Title", "This will be Snackbar Message",
                snackPosition: SnackPosition.BOTTOM,
                // titleText: Text("Another Title"),
                // messageText: Text(
                //   "Another Message",
                //   style: TextStyle(color: Colors.white),
                // ),
                colorText: Colors.red,
                backgroundColor: Colors.black,
                borderRadius: 30,
                margin: EdgeInsets.all(10),
                // maxWidth: 100,
                animationDuration: Duration(milliseconds: 3000),
                backgroundGradient: LinearGradient(
                  colors: [Colors.red, Colors.green],
                ),
                // // While using borderColor ensure you are using borderWidth otherwise error will be generated
                borderColor: Colors.purple,
                borderWidth: 4,
                boxShadows: [
                  BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(30, 50),
                    spreadRadius: 20,
                    blurRadius: 8,
                  ),
                ],
                isDismissible: true,
                dismissDirection: SnackDismissDirection.HORIZONTAL,
                forwardAnimationCurve: Curves.bounceInOut,
                // duration: Duration(milliseconds: 8000),
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                shouldIconPulse: false,
                leftBarIndicatorColor: Colors.blue,
                mainButton: TextButton(
                  onPressed: () {},
                  child: Text("Retry"),
                  style: TextButton.styleFrom(
                    onSurface: Colors.green,
                    primary: Colors.white,
                  ),
                ),
                //
                onTap: (val) {
                  print("Snackbar clicked");
                },
                overlayBlur: 5,
                overlayColor: Colors.grey,
                padding: EdgeInsets.all(50),
                showProgressIndicator: true,
                progressIndicatorBackgroundColor: Colors.deepOrange,
                progressIndicatorValueColor:
                    AlwaysStoppedAnimation<Color>(Colors.white),
                reverseAnimationCurve: Curves.bounceInOut,
                snackbarStatus: (val) {
                  print(val);
                },
                // userInputForm: Form(
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: TextField(),
                //       ),
                //     ],
                //   ),
                // ),
              );
            },
            child: Text("Show Snackbar"),
          ),
        ],
      ),
    );
  }
}
