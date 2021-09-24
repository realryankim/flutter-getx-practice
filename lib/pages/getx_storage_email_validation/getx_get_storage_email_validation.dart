import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetxGetStorageEmailValidation extends StatelessWidget {
  GetxGetStorageEmailValidation({Key? key}) : super(key: key);

  var emailEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetStorage & Email Validation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: emailEditingController,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: Text("Write"),
                onPressed: () {
                  if (GetUtils.isEmail(emailEditingController.text)) {
                    storage.write("email", emailEditingController.text);
                  } else {
                    Get.snackbar(
                      "Incorrect Email",
                      "Provide Email in valid format",
                      colorText: Colors.white,
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text("Read"),
              onPressed: () {
                print("The Email is ${storage.read("email")}");
              },
            ),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text("Erase"),
              onPressed: () {
                print("The Email is ${storage.erase()}");
              },
            )
          ],
        ),
      ),
    );
  }
}

/* It is used for persistent key/value storage
Can store String, int, double, Map and List

// To listen for changes
var listen = storage.listen(() {print("Email Changed");});

// when subscribed to listen event it should be disposed by using
storage.removeListen(listen);

// To listen for changes in key
storage.listenKey('email', (value) {
  print('new key is $value');
})

// Remove a key
storage.remove('email');

// erase the container
storage.erase();

// create container with a name
GetStorage g = GetStorage('MyStorage');
await GetStorage.init('MyStorage'); // initialize
*/