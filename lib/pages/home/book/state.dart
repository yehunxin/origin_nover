import 'package:origin_novel/database/models/models.dart';
import 'package:origin_novel/generated/assets.dart';

class BookState {
  late List<BookInfo> myBooks;

  BookState() {
    myBooks = [
      const BookInfo(
        id: 1,
        name: '万相之王',
        author: '天蚕土豆',
        cover: Assets.imageWxzw,
        bookSourceId: 1,
      ),
    ];
  }
}
