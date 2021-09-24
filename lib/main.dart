import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/bottom_sheet_page.dart';
import 'package:flutter_getx/pages/dialog_page.dart';
import 'package:flutter_getx/pages/getx_binding/all_controller_binding.dart';
import 'package:flutter_getx/pages/getx_binding/getx_binding.dart';
import 'package:flutter_getx/pages/getx_binding/home.dart';
import 'package:flutter_getx/pages/getx_binding/home_controller_binding.dart';
import 'package:flutter_getx/pages/getx_binding/my_app_controller_binding.dart';
import 'package:flutter_getx/pages/getx_controller_lifycycle/getx_controller_lifycycle.dart';
import 'package:flutter_getx/pages/getx_dependency_injection/getx_dependency_injection.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/common_module/app_color.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/getx_fetch_display_api_data.dart';
import 'package:flutter_getx/pages/getx_internationaliztion/getx_internationalization.dart';
import 'package:flutter_getx/pages/getx_internationaliztion/messages.dart';
import 'package:flutter_getx/pages/getx_service/getx_service.dart';
import 'package:flutter_getx/pages/getx_service/service.dart';
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

void main() async {
  // Getx Service
  await initServices();

  // ### Getx Binding
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

// Getx Service
// When should you use getx service? if you want that some functionalities
// should be available till the app is alive
Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync<Service>(() async => await Service());
  print('All services started...');
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
      //
      // ### Getx Binding
      // initialBinding: AllControllerBinding(),

      // If binding applied at route level
      // getPages: [
      //   GetPage(name: '/', page: () => MyApp()),
      //   GetPage(name: '/home', page: () => HomeScreen()),
      //   // GetPage(
      //   //   name: '/nextScreen',
      //   //   // To Control the transition route wise
      //   //   // If specified will override the default transition
      //   //   page: () => NextScreen(),
      //   //   transition: Transition.leftToRight,
      //   // ), // GetPage
      //   GetPage(
      //     name: '/nextScreen/:someValue',
      //     page: () => NextScreen(),
      //     // To control the transition route wise
      //     // If specified will override the default transition
      //     transition: Transition.leftToRight,
      //   ),
      //   // ================
      //   // ### Getx Binding
      //   // GetPage(
      //   //   name: '/bindingHome',
      //   //   page: () => Home(),
      //   //   binding: HomeControllerBinding(),
      //   // ),
      // ],

      // Binding Builder(If we don't want to use separate binding class)
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
        // ================
        // ### Getx Binding, Binding Builder
        GetPage(
          name: '/bindingHome',
          page: () => Home(),
          binding: BindingsBuilder(
            () => {
              Get.lazyPut<HomeControllerBinding>(
                () => HomeControllerBinding(),
              ),
            },
          ),
        ),
      ],

      // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),

      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primarySwatch: AppColor.purpleColor,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter GetX Practice'),
        ),
        body: SingleChildScrollView(
          child: Center(
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
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => GetxServicePage());
                  },
                  child: Text('Go to Getx Service Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => GetxBindingPage());
                  },
                  child: Text('Go to Getx Binding Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => GetxFetchDisplayApiData());
                  },
                  child: Text('Go to Getx Fetch Display Api Data Page'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ### Getx Binding, Smart Management
// GetX provides SmartManagement that lets us configure how dependencies
// behave in terms of memory management.
// GetMaterialApp {
//   smartManagement: SmartManagement.full // or .keepFactory or .onlyBuilder 
// }
// Full Mode
// ===========
// Everything gets disposed as soon as the route is removed from navigation stack,
// unless declared permanent.

// SmartManagement.keepFactory
// ===============================
// Just like SmartManagement.full, it will remove it's dependencies when '
// 'it's not being used anymore. However, it will keep their factory,
// which means it will recreate the dependency if you need that instance again.

// SmartManagement.onlyBuilders
// ===============================
// With this option, only controllers started in init: or loaded into a Binding
// with Get.lazyPut() will be disposed.

// If you use Get.put() or Get.putAsync() or any other approach,
// SmartManagement will not have permissions to exclude this dependency.
