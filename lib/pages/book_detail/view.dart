import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:origin_novel/generated/assets.dart';
import 'package:origin_novel/utils/color_utils.dart';
import 'package:origin_novel/widget/gap.dart';

import 'logic.dart';

const _typeLabelPadding = EdgeInsets.symmetric(
  horizontal: 10,
  vertical: 5,
);

const _typeLabelRadius = BorderRadius.all(Radius.circular(16));

Color _defaultLabelColor = Colors.grey.shade700;

class BookDetailPage extends StatelessWidget {
  BookDetailPage({super.key});

  final logic = Get.find<BookDetailLogic>();
  final state = Get.find<BookDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: context.theme.colorScheme.surfaceVariant,
            child: ListView(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image(
                        image:
                            AssetImage(state.bookInfo.cover ?? Assets.imageImg),
                        fit: BoxFit.fill,
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        color:
                            context.theme.colorScheme.background.withAlpha(40),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Container(
                              height: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    // 阴影颜色
                                    color: context
                                        .theme.colorScheme.onBackground
                                        .withAlpha(80),
                                    // 阴影偏移量
                                    offset: const Offset(1, 1),
                                    // 阴影模糊程度
                                    blurRadius: 10,
                                    // 阴影扩散程度
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                state.bookInfo.cover ?? Assets.imageImg,
                                height: 160,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            const Gap.h(
                              value: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.bookInfo.name,
                                  style: context.textTheme.titleLarge,
                                ),
                                const Gap.vn(),
                                Text(
                                  state.bookInfo.author ?? '未知',
                                  style: context.textTheme.titleMedium,
                                ),
                                const Gap.vn(),
                                Text(
                                  '玄幻  ·  连载  ·  156万字',
                                  style: context.textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: context.theme.colorScheme.background,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap.vn(),
                      // 标签
                      const Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _TypeLabel(label: '玄幻'),
                          _TypeLabel(label: '连载'),
                        ],
                      ),
                      // 简介
                      const Gap.vn(),
                      Text(
                        '天地间，有万相。而我李洛，终将成为这万相之王。继《斗破苍穹》《武动乾坤》《大主宰》《元尊》之后，天蚕土豆又一部玄幻力作。',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: _defaultLabelColor,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
                const Gap.vb(),
                // 来源
                // 目录
              ],
            ),
          ),
        ),
        // 按钮 加入书架 开始阅读
        Container(
          color: context.theme.colorScheme.surfaceVariant,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('加入书架'),
                ),
              ),
              const Gap.hn(),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    //TODO: 跳转到看书页
                  },
                  child: const Text('阅读'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TypeLabel extends StatelessWidget {
  const _TypeLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final color = ColorUtils.randomColorByStr(label);
    return Container(
      padding: _typeLabelPadding,
      decoration: BoxDecoration(
        color: color.withAlpha(90),
        borderRadius: _typeLabelRadius,
      ),
      child: Text(
        label,
        style: context.textTheme.labelMedium?.copyWith(
          color: color,
        ),
      ),
    );
  }
}
