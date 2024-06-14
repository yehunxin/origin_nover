import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:origin_novel/pages/home/download/logic.dart';

class DownloadPage extends StatelessWidget {
  DownloadPage({super.key});

  final logic = Get.find<DownloadLogic>();
  final state = Get.find<DownloadLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('下载'),
      ),
      body: const Center(
        child: Text('DownloadPage'),
      ),
    );
  }
}
