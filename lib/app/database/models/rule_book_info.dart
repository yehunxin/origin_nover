part of 'models.dart';

@freezed
@collection
class RuleBookInfo with _$RuleBookInfo {
  const RuleBookInfo._();

  const factory RuleBookInfo({
    required int id,
    required int bookSourceId,
    String? author,
    String? coverUrl,
    String? init,
    String? intro,
    String? kind,
    String? lastChapter,
    String? name,
    String? tocUrl,
    String? wordCount,
    String? lastReadChapter,
  }) = _RuleBookInfo;

  factory RuleBookInfo.fromJson(Map<String, dynamic> json) =>
      _$RuleBookInfoFromJson(json);
}
