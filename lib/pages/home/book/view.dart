import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/constants/assets.dart';
import '../../../app/database/models/models.dart';
import '../../../app/routes/app_routes.dart';
import '../../../widget/gap.dart';
import 'logic.dart';

class BookPage extends StatelessWidget {
  BookPage({super.key});

  final logic = Get.find<BookLogic>();
  final state = Get.find<BookLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('书架'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(AppRoutes.bookSearch);
              },
              tooltip: '搜索',
              icon: const Icon(Icons.search))
        ],
      ),
      body: GetBuilder<BookLogic>(builder: (logic) {
        return ListView.builder(
          itemCount: state.myBooks.length,
          itemBuilder: (context, index) {
            return BookItem(
              book: state.myBooks[index],
            );
          },
        );
      }),
    );
  }
}

class BookItem extends StatelessWidget {
  final BookInfo book;

  const BookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(AppRoutes.bookDetail, arguments: book);
          },
          child: Image.asset(
            book.cover ?? Assets.defaultIcon,
            height: 80,
            fit: BoxFit.fitHeight,
          ),
        ),
        const Gap.hn(),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.bookRead, arguments: book);
            },
            child: Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    book.name,
                    style: context.textTheme.titleMedium,
                  ),
                  const Gap.vb(),
                  Text(
                    '${book.author ?? '未知'}  ·  1章未读',
                    style: context.textTheme.labelMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  const Gap.vn(),
                  Text(
                    '1天前更新  ·  第123章 xxx',
                    style: context.textTheme.labelMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
