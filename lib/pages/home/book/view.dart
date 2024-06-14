import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:origin_novel/app/routes/app_routes.dart';
import 'package:origin_novel/database/models/models.dart';
import 'package:origin_novel/generated/assets.dart';
import 'package:origin_novel/pages/home/book/logic.dart';
import 'package:origin_novel/widget/gap.dart';

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
      children: [
        GestureDetector(
          onTap: () {
            // TODO: 跳转到书籍详情页
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
              // TODO: 跳转到看书页
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    );
  }
}
