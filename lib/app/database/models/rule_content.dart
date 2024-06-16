part of 'models.dart';

@freezed
@collection
class RuleContent with _$RuleContent {
  const RuleContent._();

  const factory RuleContent({
    required int id,
    required int bookSourceId,
    String? content,
    String? nextContentUrl,
    String? replaceRegex,
  }) = _RuleContent;

  factory RuleContent.fromJson(Map<String, dynamic> json) =>
      _$RuleContentFromJson(json);
}
