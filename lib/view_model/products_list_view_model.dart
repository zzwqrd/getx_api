import 'dart:developer';

import 'package:get/get.dart';
import 'package:mvvm_getx_practice/model/products_model.dart';
import 'package:mvvm_getx_practice/respository/api_products.dart';

class ProductListViewModel extends GetxController with GetSingleTickerProviderStateMixin {
  var isLoading = false.obs;
  var list = <ProductData>[].obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  _showProgressBar() {
    isLoading.value = true;
    update();
  }

  _hideProgressBar() {
    isLoading.value = false;
    update();
  }

  Future<void> getData() async {
    _showProgressBar();
    try {
      list.value = await ApiProducts().fetchData();
      _hideProgressBar();
    } catch (e) {
      log(e.toString());
      _hideProgressBar();
    }
    _hideProgressBar();
  }
}
