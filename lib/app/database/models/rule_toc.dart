part of 'models.dart';

@freezed
@collection
class RuleToc with _$RuleToc {
  const RuleToc._();

  const factory RuleToc({
    required int id,
    required int bookSourceId,
    String? chapterList,
    String? chapterName,
    String? chapterUrl,
    String? nextTocUrl,
  }) = _RuleToc;

  factory RuleToc.fromJson(Map<String, dynamic> json) =>
      _$RuleTocFromJson(json);
}
