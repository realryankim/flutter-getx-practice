import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/bottom_sheet_page.dart';
import 'package:flutter_getx/pages/dialog_page.dart';
import 'package:flutter_getx/pages/getx_controller_lifycycle/getx_controller_lifycycle.dart';
import 'package:flutter_getx/pages/getx_dependency_injection/getx_dependency_injection.dart';
import 'package:flutter_getx/pages/getx_internationaliztion/getx_internationalization.dart';
import 'package:flutter_getx/pages/getx_internationaliztion/messages.dart';
import 'package:flutter_getx/pages/getx_unique_id/getx_unique_id.dart';
import 'package:flutter_getx/pages/getx_workers/getx_workers.dart';
import 'package:flutter_getx/pages/named_route/home_screen.dart';
import 'package:flutter_getx/pages/named_route/named_route_page.dart';
import 'package:flutter_getx/pages/named_route/next_screen.dart';
import 'package:flutter_getx/pages/named_route/unknown_route.dart';
import 'package:flutter_getx/pages/reactive_state_management/reactive_state_management.dart';
import 'package:flutter_getx/pages/simple_state_management/simple_state_management.dart';
import 'package:flutter_getx/pages/snackbar_page.dart';
import 'package:flutter_getx/pages/un_named_route/un_named_route_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Getx Internationalization
      translations: Messages(), // your translations
      locale: Locale(
          'en', 'US'), // default locale / to get device locale Get.deviceLocale
      fallbackLocale:
          Locale('en', 'US'), // fallback locale if wrong locale found
      //
      title: 'Flutter GetX Practice',
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => HomeScreen()),
        // GetPage(
        //   name: '/nextScreen',
        //   // To Control the transition route wise
        //   // If specified will override the default transition
        //   page: () => NextScreen(),
        //   transition: Transition.leftToRight,
        // ), // GetPage

        GetPage(
          name: '/nextScreen/:someValue',
          page: () => NextScreen(),
          // To control the transition route wise
          // If specified will override the default transition
          transition: Transition.leftToRight,
        ),
      ],
      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GetX Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(() => SnackbarPage());
                },
                child: Text('Snackbar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => DialogPage());
                },
                child: Text('Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => BottomSheetPage());
                },
                child: Text('Bottom Sheet'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => UnNamedRoutePage());
                },
                child: Text('Go to UnNamed Route'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(() => NamedRoutePage());
                  Get.to(() => NamedRoutePage());
                },
                child: Text('Go to Named Route'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => ReactiveStateManagement());
                },
                child: Text('Go to Reactive State Management'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => SimpleStateManagement());
                },
                child: Text('Go to Simple State Management'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => GetxControllerLifeCycle());
                },
                child: Text('Go to Getx Controller LifeCycle'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => GetxUniqueId());
                },
                child: Text('Go to Getx Unique Id'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => GetxWorkers());
                },
                child: Text('Go to Getx Workers'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => GetxInternationalization());
                },
                child: Text('Go to Getx Internationalization'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => GetxDependencyInjection());
                },
                child: Text('Go to Getx Dependency Injection'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
