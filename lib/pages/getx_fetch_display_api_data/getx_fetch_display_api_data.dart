import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/common_module/app_string.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/product_module/views/product_list_view.dart';
import 'package:get/get.dart';

class GetxFetchDisplayApiData extends StatelessWidget {
  const GetxFetchDisplayApiData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.fetchApiData),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to Product List'),
            onPressed: () {
              Get.to(() => ProductListView(), transition: Transition.cupertino);
            },
          ),
        ));
  }
}
