part of 'models.dart';

@freezed
@collection
class BookSource with _$BookSource {
  const BookSource._();

  const factory BookSource({
    required int id,
    required String bookSourceName,
    String? bookSourceGroup,
    String? bookSourceComment,
    required String bookSourceUrl,
    int? customOrder,
    String? bookUrlPattern,
    int? bookSourceType,
    @Default(false) bool enabled,
    bool? enabledCookieJar,
    bool? enabledExplore,
    String? header,
    String? loginUrl,
    int? lastUpdateTime,
    String? exploreUrl,
    String? searchUrl,
    int? weight,
    bool? isEnabled,
  }) = _BookSource;

  factory BookSource.fromJson(Map<String, dynamic> json) =>
      _$BookSourceFromJson(json);
}
