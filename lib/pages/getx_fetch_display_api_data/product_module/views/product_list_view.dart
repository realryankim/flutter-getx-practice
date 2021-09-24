import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/common_module/app_color.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/common_module/app_string.dart';
import 'package:flutter_getx/pages/getx_fetch_display_api_data/product_module/controllers/product.controller.dart';
import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  ProductListView({Key? key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: Obx(
        () {
          if (productController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              // productController.productList[index].imageLink,
                              "https://images.unsplash.com/photo-1631390179226-19682ca159de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1392&q=80",
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: AppColor.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                productController.productList[index].name,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                productController.productList[index].brand,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                              Text(
                                productController.productList[index].category,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: AppColor.grey200,
                      height: 2,
                    ),
                  ],
                );
              },
              itemCount: productController.productList.length,
            );
        },
      ),
    );
  }
}
