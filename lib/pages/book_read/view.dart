import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class BookReadPage extends StatelessWidget {
  BookReadPage({Key? key}) : super(key: key);

  final logic = Get.find<BookReadLogic>();
  final state = Get.find<BookReadLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
