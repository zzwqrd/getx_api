import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx_practice/view_model/post_list_view_model.dart';
import 'package:mvvm_getx_practice/view_model/products_list_view_model.dart';
import 'widgets/post_list_item.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductListViewModel>(builder: (ProductListViewModel) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('MVVM with GetX'),
        ),
        body: ProductListViewModel.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: ProductListViewModel.list.length,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text(ProductListViewModel.list[index].name!),
                    ],
                  );
                },
              ),
      );
    });
  }
}
