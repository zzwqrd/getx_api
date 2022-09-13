import 'package:get/get.dart';
import 'package:mvvm_getx_practice/view/post_list_screen.dart';
import 'package:mvvm_getx_practice/view/prodacts.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.POST_LIST_SCREEN,
      page: () => const PostListScreen(),
    ),
    GetPage(
      name: AppRoutes.PRODACTS_LIST_SCREEN,
      page: () => const Products(),
    ),
  ];
}
