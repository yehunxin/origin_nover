import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:origin_novel/app/routes/app_routes.dart';
import 'package:origin_novel/pages/book_detail/binding.dart';
import 'package:origin_novel/pages/book_detail/view.dart';
import 'package:origin_novel/pages/book_search/binding.dart';
import 'package:origin_novel/pages/book_search/view.dart';
import 'package:origin_novel/pages/home/binding.dart';
import 'package:origin_novel/pages/home/view.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.bookSearch,
      page: () => BookSearchPage(),
      binding: BookSearchBinding(),
    ),
    GetPage(
      name: AppRoutes.bookDetail,
      page: () => BookDetailPage(),
      binding: BookDetailBinding(),
    ),
  ];
}
