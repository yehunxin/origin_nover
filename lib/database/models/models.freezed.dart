// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookInfo _$BookInfoFromJson(Map<String, dynamic> json) {
  return _BookInfo.fromJson(json);
}

/// @nodoc
mixin _$BookInfo {
  int get id => throw _privateConstructorUsedError;
  int get bookSourceId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookInfoCopyWith<BookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInfoCopyWith<$Res> {
  factory $BookInfoCopyWith(BookInfo value, $Res Function(BookInfo) then) =
      _$BookInfoCopyWithImpl<$Res, BookInfo>;
  @useResult
  $Res call(
      {int id, int bookSourceId, String name, String? author, String? cover});
}

/// @nodoc
class _$BookInfoCopyWithImpl<$Res, $Val extends BookInfo>
    implements $BookInfoCopyWith<$Res> {
  _$BookInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? name = null,
    Object? author = freezed,
    Object? cover = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookInfoImplCopyWith<$Res>
    implements $BookInfoCopyWith<$Res> {
  factory _$$BookInfoImplCopyWith(
          _$BookInfoImpl value, $Res Function(_$BookInfoImpl) then) =
      __$$BookInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int bookSourceId, String name, String? author, String? cover});
}

/// @nodoc
class __$$BookInfoImplCopyWithImpl<$Res>
    extends _$BookInfoCopyWithImpl<$Res, _$BookInfoImpl>
    implements _$$BookInfoImplCopyWith<$Res> {
  __$$BookInfoImplCopyWithImpl(
      _$BookInfoImpl _value, $Res Function(_$BookInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? name = null,
    Object? author = freezed,
    Object? cover = freezed,
  }) {
    return _then(_$BookInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookInfoImpl extends _BookInfo {
  const _$BookInfoImpl(
      {required this.id,
      required this.bookSourceId,
      required this.name,
      this.author,
      this.cover})
      : super._();

  factory _$BookInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookInfoImplFromJson(json);

  @override
  final int id;
  @override
  final int bookSourceId;
  @override
  final String name;
  @override
  final String? author;
  @override
  final String? cover;

  @override
  String toString() {
    return 'BookInfo(id: $id, bookSourceId: $bookSourceId, name: $name, author: $author, cover: $cover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceId, bookSourceId) ||
                other.bookSourceId == bookSourceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.cover, cover) || other.cover == cover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, bookSourceId, name, author, cover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookInfoImplCopyWith<_$BookInfoImpl> get copyWith =>
      __$$BookInfoImplCopyWithImpl<_$BookInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookInfoImplToJson(
      this,
    );
  }
}

abstract class _BookInfo extends BookInfo {
  const factory _BookInfo(
      {required final int id,
      required final int bookSourceId,
      required final String name,
      final String? author,
      final String? cover}) = _$BookInfoImpl;
  const _BookInfo._() : super._();

  factory _BookInfo.fromJson(Map<String, dynamic> json) =
      _$BookInfoImpl.fromJson;

  @override
  int get id;
  @override
  int get bookSourceId;
  @override
  String get name;
  @override
  String? get author;
  @override
  String? get cover;
  @override
  @JsonKey(ignore: true)
  _$$BookInfoImplCopyWith<_$BookInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookSearchInfo _$BookSearchInfoFromJson(Map<String, dynamic> json) {
  return _BookSearchInfo.fromJson(json);
}

/// @nodoc
mixin _$BookSearchInfo {
  int get id => throw _privateConstructorUsedError;
  int get bookSourceId => throw _privateConstructorUsedError;
  String get searchUrl => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get charset => throw _privateConstructorUsedError;
  String? get headers => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookSearchInfoCopyWith<BookSearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSearchInfoCopyWith<$Res> {
  factory $BookSearchInfoCopyWith(
          BookSearchInfo value, $Res Function(BookSearchInfo) then) =
      _$BookSearchInfoCopyWithImpl<$Res, BookSearchInfo>;
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String searchUrl,
      String method,
      String charset,
      String? headers,
      String? body});
}

/// @nodoc
class _$BookSearchInfoCopyWithImpl<$Res, $Val extends BookSearchInfo>
    implements $BookSearchInfoCopyWith<$Res> {
  _$BookSearchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? searchUrl = null,
    Object? method = null,
    Object? charset = null,
    Object? headers = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      searchUrl: null == searchUrl
          ? _value.searchUrl
          : searchUrl // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      charset: null == charset
          ? _value.charset
          : charset // ignore: cast_nullable_to_non_nullable
              as String,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookSearchInfoImplCopyWith<$Res>
    implements $BookSearchInfoCopyWith<$Res> {
  factory _$$BookSearchInfoImplCopyWith(_$BookSearchInfoImpl value,
          $Res Function(_$BookSearchInfoImpl) then) =
      __$$BookSearchInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String searchUrl,
      String method,
      String charset,
      String? headers,
      String? body});
}

/// @nodoc
class __$$BookSearchInfoImplCopyWithImpl<$Res>
    extends _$BookSearchInfoCopyWithImpl<$Res, _$BookSearchInfoImpl>
    implements _$$BookSearchInfoImplCopyWith<$Res> {
  __$$BookSearchInfoImplCopyWithImpl(
      _$BookSearchInfoImpl _value, $Res Function(_$BookSearchInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? searchUrl = null,
    Object? method = null,
    Object? charset = null,
    Object? headers = freezed,
    Object? body = freezed,
  }) {
    return _then(_$BookSearchInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      searchUrl: null == searchUrl
          ? _value.searchUrl
          : searchUrl // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      charset: null == charset
          ? _value.charset
          : charset // ignore: cast_nullable_to_non_nullable
              as String,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookSearchInfoImpl extends _BookSearchInfo {
  const _$BookSearchInfoImpl(
      {required this.id,
      required this.bookSourceId,
      required this.searchUrl,
      required this.method,
      required this.charset,
      this.headers,
      this.body})
      : super._();

  factory _$BookSearchInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookSearchInfoImplFromJson(json);

  @override
  final int id;
  @override
  final int bookSourceId;
  @override
  final String searchUrl;
  @override
  final String method;
  @override
  final String charset;
  @override
  final String? headers;
  @override
  final String? body;

  @override
  String toString() {
    return 'BookSearchInfo(id: $id, bookSourceId: $bookSourceId, searchUrl: $searchUrl, method: $method, charset: $charset, headers: $headers, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookSearchInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceId, bookSourceId) ||
                other.bookSourceId == bookSourceId) &&
            (identical(other.searchUrl, searchUrl) ||
                other.searchUrl == searchUrl) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.charset, charset) || other.charset == charset) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, bookSourceId, searchUrl, method, charset, headers, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookSearchInfoImplCopyWith<_$BookSearchInfoImpl> get copyWith =>
      __$$BookSearchInfoImplCopyWithImpl<_$BookSearchInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookSearchInfoImplToJson(
      this,
    );
  }
}

abstract class _BookSearchInfo extends BookSearchInfo {
  const factory _BookSearchInfo(
      {required final int id,
      required final int bookSourceId,
      required final String searchUrl,
      required final String method,
      required final String charset,
      final String? headers,
      final String? body}) = _$BookSearchInfoImpl;
  const _BookSearchInfo._() : super._();

  factory _BookSearchInfo.fromJson(Map<String, dynamic> json) =
      _$BookSearchInfoImpl.fromJson;

  @override
  int get id;
  @override
  int get bookSourceId;
  @override
  String get searchUrl;
  @override
  String get method;
  @override
  String get charset;
  @override
  String? get headers;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$BookSearchInfoImplCopyWith<_$BookSearchInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookSource _$BookSourceFromJson(Map<String, dynamic> json) {
  return _BookSource.fromJson(json);
}

/// @nodoc
mixin _$BookSource {
  int get id => throw _privateConstructorUsedError;
  String get bookSourceName => throw _privateConstructorUsedError;
  String? get bookSourceGroup => throw _privateConstructorUsedError;
  String? get bookSourceComment => throw _privateConstructorUsedError;
  String get bookSourceUrl => throw _privateConstructorUsedError;
  int? get customOrder => throw _privateConstructorUsedError;
  String? get bookUrlPattern => throw _privateConstructorUsedError;
  int? get bookSourceType => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  bool? get enabledCookieJar => throw _privateConstructorUsedError;
  bool? get enabledExplore => throw _privateConstructorUsedError;
  String? get header => throw _privateConstructorUsedError;
  String? get loginUrl => throw _privateConstructorUsedError;
  int? get lastUpdateTime => throw _privateConstructorUsedError;
  String? get exploreUrl => throw _privateConstructorUsedError;
  String? get searchUrl => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  bool? get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookSourceCopyWith<BookSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSourceCopyWith<$Res> {
  factory $BookSourceCopyWith(
          BookSource value, $Res Function(BookSource) then) =
      _$BookSourceCopyWithImpl<$Res, BookSource>;
  @useResult
  $Res call(
      {int id,
      String bookSourceName,
      String? bookSourceGroup,
      String? bookSourceComment,
      String bookSourceUrl,
      int? customOrder,
      String? bookUrlPattern,
      int? bookSourceType,
      bool enabled,
      bool? enabledCookieJar,
      bool? enabledExplore,
      String? header,
      String? loginUrl,
      int? lastUpdateTime,
      String? exploreUrl,
      String? searchUrl,
      int? weight,
      bool? isEnabled});
}

/// @nodoc
class _$BookSourceCopyWithImpl<$Res, $Val extends BookSource>
    implements $BookSourceCopyWith<$Res> {
  _$BookSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceName = null,
    Object? bookSourceGroup = freezed,
    Object? bookSourceComment = freezed,
    Object? bookSourceUrl = null,
    Object? customOrder = freezed,
    Object? bookUrlPattern = freezed,
    Object? bookSourceType = freezed,
    Object? enabled = null,
    Object? enabledCookieJar = freezed,
    Object? enabledExplore = freezed,
    Object? header = freezed,
    Object? loginUrl = freezed,
    Object? lastUpdateTime = freezed,
    Object? exploreUrl = freezed,
    Object? searchUrl = freezed,
    Object? weight = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceName: null == bookSourceName
          ? _value.bookSourceName
          : bookSourceName // ignore: cast_nullable_to_non_nullable
              as String,
      bookSourceGroup: freezed == bookSourceGroup
          ? _value.bookSourceGroup
          : bookSourceGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceComment: freezed == bookSourceComment
          ? _value.bookSourceComment
          : bookSourceComment // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceUrl: null == bookSourceUrl
          ? _value.bookSourceUrl
          : bookSourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      customOrder: freezed == customOrder
          ? _value.customOrder
          : customOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      bookUrlPattern: freezed == bookUrlPattern
          ? _value.bookUrlPattern
          : bookUrlPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceType: freezed == bookSourceType
          ? _value.bookSourceType
          : bookSourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      enabledCookieJar: freezed == enabledCookieJar
          ? _value.enabledCookieJar
          : enabledCookieJar // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabledExplore: freezed == enabledExplore
          ? _value.enabledExplore
          : enabledExplore // ignore: cast_nullable_to_non_nullable
              as bool?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      loginUrl: freezed == loginUrl
          ? _value.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      exploreUrl: freezed == exploreUrl
          ? _value.exploreUrl
          : exploreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      searchUrl: freezed == searchUrl
          ? _value.searchUrl
          : searchUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookSourceImplCopyWith<$Res>
    implements $BookSourceCopyWith<$Res> {
  factory _$$BookSourceImplCopyWith(
          _$BookSourceImpl value, $Res Function(_$BookSourceImpl) then) =
      __$$BookSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String bookSourceName,
      String? bookSourceGroup,
      String? bookSourceComment,
      String bookSourceUrl,
      int? customOrder,
      String? bookUrlPattern,
      int? bookSourceType,
      bool enabled,
      bool? enabledCookieJar,
      bool? enabledExplore,
      String? header,
      String? loginUrl,
      int? lastUpdateTime,
      String? exploreUrl,
      String? searchUrl,
      int? weight,
      bool? isEnabled});
}

/// @nodoc
class __$$BookSourceImplCopyWithImpl<$Res>
    extends _$BookSourceCopyWithImpl<$Res, _$BookSourceImpl>
    implements _$$BookSourceImplCopyWith<$Res> {
  __$$BookSourceImplCopyWithImpl(
      _$BookSourceImpl _value, $Res Function(_$BookSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceName = null,
    Object? bookSourceGroup = freezed,
    Object? bookSourceComment = freezed,
    Object? bookSourceUrl = null,
    Object? customOrder = freezed,
    Object? bookUrlPattern = freezed,
    Object? bookSourceType = freezed,
    Object? enabled = null,
    Object? enabledCookieJar = freezed,
    Object? enabledExplore = freezed,
    Object? header = freezed,
    Object? loginUrl = freezed,
    Object? lastUpdateTime = freezed,
    Object? exploreUrl = freezed,
    Object? searchUrl = freezed,
    Object? weight = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_$BookSourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceName: null == bookSourceName
          ? _value.bookSourceName
          : bookSourceName // ignore: cast_nullable_to_non_nullable
              as String,
      bookSourceGroup: freezed == bookSourceGroup
          ? _value.bookSourceGroup
          : bookSourceGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceComment: freezed == bookSourceComment
          ? _value.bookSourceComment
          : bookSourceComment // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceUrl: null == bookSourceUrl
          ? _value.bookSourceUrl
          : bookSourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      customOrder: freezed == customOrder
          ? _value.customOrder
          : customOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      bookUrlPattern: freezed == bookUrlPattern
          ? _value.bookUrlPattern
          : bookUrlPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      bookSourceType: freezed == bookSourceType
          ? _value.bookSourceType
          : bookSourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      enabledCookieJar: freezed == enabledCookieJar
          ? _value.enabledCookieJar
          : enabledCookieJar // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabledExplore: freezed == enabledExplore
          ? _value.enabledExplore
          : enabledExplore // ignore: cast_nullable_to_non_nullable
              as bool?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String?,
      loginUrl: freezed == loginUrl
          ? _value.loginUrl
          : loginUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      exploreUrl: freezed == exploreUrl
          ? _value.exploreUrl
          : exploreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      searchUrl: freezed == searchUrl
          ? _value.searchUrl
          : searchUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookSourceImpl extends _BookSource {
  const _$BookSourceImpl(
      {required this.id,
      required this.bookSourceName,
      this.bookSourceGroup,
      this.bookSourceComment,
      required this.bookSourceUrl,
      this.customOrder,
      this.bookUrlPattern,
      this.bookSourceType,
      this.enabled = false,
      this.enabledCookieJar,
      this.enabledExplore,
      this.header,
      this.loginUrl,
      this.lastUpdateTime,
      this.exploreUrl,
      this.searchUrl,
      this.weight,
      this.isEnabled})
      : super._();

  factory _$BookSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookSourceImplFromJson(json);

  @override
  final int id;
  @override
  final String bookSourceName;
  @override
  final String? bookSourceGroup;
  @override
  final String? bookSourceComment;
  @override
  final String bookSourceUrl;
  @override
  final int? customOrder;
  @override
  final String? bookUrlPattern;
  @override
  final int? bookSourceType;
  @override
  @JsonKey()
  final bool enabled;
  @override
  final bool? enabledCookieJar;
  @override
  final bool? enabledExplore;
  @override
  final String? header;
  @override
  final String? loginUrl;
  @override
  final int? lastUpdateTime;
  @override
  final String? exploreUrl;
  @override
  final String? searchUrl;
  @override
  final int? weight;
  @override
  final bool? isEnabled;

  @override
  String toString() {
    return 'BookSource(id: $id, bookSourceName: $bookSourceName, bookSourceGroup: $bookSourceGroup, bookSourceComment: $bookSourceComment, bookSourceUrl: $bookSourceUrl, customOrder: $customOrder, bookUrlPattern: $bookUrlPattern, bookSourceType: $bookSourceType, enabled: $enabled, enabledCookieJar: $enabledCookieJar, enabledExplore: $enabledExplore, header: $header, loginUrl: $loginUrl, lastUpdateTime: $lastUpdateTime, exploreUrl: $exploreUrl, searchUrl: $searchUrl, weight: $weight, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookSourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceName, bookSourceName) ||
                other.bookSourceName == bookSourceName) &&
            (identical(other.bookSourceGroup, bookSourceGroup) ||
                other.bookSourceGroup == bookSourceGroup) &&
            (identical(other.bookSourceComment, bookSourceComment) ||
                other.bookSourceComment == bookSourceComment) &&
            (identical(other.bookSourceUrl, bookSourceUrl) ||
                other.bookSourceUrl == bookSourceUrl) &&
            (identical(other.customOrder, customOrder) ||
                other.customOrder == customOrder) &&
            (identical(other.bookUrlPattern, bookUrlPattern) ||
                other.bookUrlPattern == bookUrlPattern) &&
            (identical(other.bookSourceType, bookSourceType) ||
                other.bookSourceType == bookSourceType) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.enabledCookieJar, enabledCookieJar) ||
                other.enabledCookieJar == enabledCookieJar) &&
            (identical(other.enabledExplore, enabledExplore) ||
                other.enabledExplore == enabledExplore) &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.loginUrl, loginUrl) ||
                other.loginUrl == loginUrl) &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                other.lastUpdateTime == lastUpdateTime) &&
            (identical(other.exploreUrl, exploreUrl) ||
                other.exploreUrl == exploreUrl) &&
            (identical(other.searchUrl, searchUrl) ||
                other.searchUrl == searchUrl) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookSourceName,
      bookSourceGroup,
      bookSourceComment,
      bookSourceUrl,
      customOrder,
      bookUrlPattern,
      bookSourceType,
      enabled,
      enabledCookieJar,
      enabledExplore,
      header,
      loginUrl,
      lastUpdateTime,
      exploreUrl,
      searchUrl,
      weight,
      isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookSourceImplCopyWith<_$BookSourceImpl> get copyWith =>
      __$$BookSourceImplCopyWithImpl<_$BookSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookSourceImplToJson(
      this,
    );
  }
}

abstract class _BookSource extends BookSource {
  const factory _BookSource(
      {required final int id,
      required final String bookSourceName,
      final String? bookSourceGroup,
      final String? bookSourceComment,
      required final String bookSourceUrl,
      final int? customOrder,
      final String? bookUrlPattern,
      final int? bookSourceType,
      final bool enabled,
      final bool? enabledCookieJar,
      final bool? enabledExplore,
      final String? header,
      final String? loginUrl,
      final int? lastUpdateTime,
      final String? exploreUrl,
      final String? searchUrl,
      final int? weight,
      final bool? isEnabled}) = _$BookSourceImpl;
  const _BookSource._() : super._();

  factory _BookSource.fromJson(Map<String, dynamic> json) =
      _$BookSourceImpl.fromJson;

  @override
  int get id;
  @override
  String get bookSourceName;
  @override
  String? get bookSourceGroup;
  @override
  String? get bookSourceComment;
  @override
  String get bookSourceUrl;
  @override
  int? get customOrder;
  @override
  String? get bookUrlPattern;
  @override
  int? get bookSourceType;
  @override
  bool get enabled;
  @override
  bool? get enabledCookieJar;
  @override
  bool? get enabledExplore;
  @override
  String? get header;
  @override
  String? get loginUrl;
  @override
  int? get lastUpdateTime;
  @override
  String? get exploreUrl;
  @override
  String? get searchUrl;
  @override
  int? get weight;
  @override
  bool? get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$BookSourceImplCopyWith<_$BookSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RuleBookInfo _$RuleBookInfoFromJson(Map<String, dynamic> json) {
  return _RuleBookInfo.fromJson(json);
}

/// @nodoc
mixin _$RuleBookInfo {
  int get id => throw _privateConstructorUsedError;
  int get bookSourceId => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  String? get init => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String? get lastChapter => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get tocUrl => throw _privateConstructorUsedError;
  String? get wordCount => throw _privateConstructorUsedError;
  String? get lastReadChapter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuleBookInfoCopyWith<RuleBookInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleBookInfoCopyWith<$Res> {
  factory $RuleBookInfoCopyWith(
          RuleBookInfo value, $Res Function(RuleBookInfo) then) =
      _$RuleBookInfoCopyWithImpl<$Res, RuleBookInfo>;
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? author,
      String? coverUrl,
      String? init,
      String? intro,
      String? kind,
      String? lastChapter,
      String? name,
      String? tocUrl,
      String? wordCount,
      String? lastReadChapter});
}

/// @nodoc
class _$RuleBookInfoCopyWithImpl<$Res, $Val extends RuleBookInfo>
    implements $RuleBookInfoCopyWith<$Res> {
  _$RuleBookInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? author = freezed,
    Object? coverUrl = freezed,
    Object? init = freezed,
    Object? intro = freezed,
    Object? kind = freezed,
    Object? lastChapter = freezed,
    Object? name = freezed,
    Object? tocUrl = freezed,
    Object? wordCount = freezed,
    Object? lastReadChapter = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      init: freezed == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tocUrl: freezed == tocUrl
          ? _value.tocUrl
          : tocUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReadChapter: freezed == lastReadChapter
          ? _value.lastReadChapter
          : lastReadChapter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleBookInfoImplCopyWith<$Res>
    implements $RuleBookInfoCopyWith<$Res> {
  factory _$$RuleBookInfoImplCopyWith(
          _$RuleBookInfoImpl value, $Res Function(_$RuleBookInfoImpl) then) =
      __$$RuleBookInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? author,
      String? coverUrl,
      String? init,
      String? intro,
      String? kind,
      String? lastChapter,
      String? name,
      String? tocUrl,
      String? wordCount,
      String? lastReadChapter});
}

/// @nodoc
class __$$RuleBookInfoImplCopyWithImpl<$Res>
    extends _$RuleBookInfoCopyWithImpl<$Res, _$RuleBookInfoImpl>
    implements _$$RuleBookInfoImplCopyWith<$Res> {
  __$$RuleBookInfoImplCopyWithImpl(
      _$RuleBookInfoImpl _value, $Res Function(_$RuleBookInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? author = freezed,
    Object? coverUrl = freezed,
    Object? init = freezed,
    Object? intro = freezed,
    Object? kind = freezed,
    Object? lastChapter = freezed,
    Object? name = freezed,
    Object? tocUrl = freezed,
    Object? wordCount = freezed,
    Object? lastReadChapter = freezed,
  }) {
    return _then(_$RuleBookInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      init: freezed == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      tocUrl: freezed == tocUrl
          ? _value.tocUrl
          : tocUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as String?,
      lastReadChapter: freezed == lastReadChapter
          ? _value.lastReadChapter
          : lastReadChapter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuleBookInfoImpl extends _RuleBookInfo {
  const _$RuleBookInfoImpl(
      {required this.id,
      required this.bookSourceId,
      this.author,
      this.coverUrl,
      this.init,
      this.intro,
      this.kind,
      this.lastChapter,
      this.name,
      this.tocUrl,
      this.wordCount,
      this.lastReadChapter})
      : super._();

  factory _$RuleBookInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleBookInfoImplFromJson(json);

  @override
  final int id;
  @override
  final int bookSourceId;
  @override
  final String? author;
  @override
  final String? coverUrl;
  @override
  final String? init;
  @override
  final String? intro;
  @override
  final String? kind;
  @override
  final String? lastChapter;
  @override
  final String? name;
  @override
  final String? tocUrl;
  @override
  final String? wordCount;
  @override
  final String? lastReadChapter;

  @override
  String toString() {
    return 'RuleBookInfo(id: $id, bookSourceId: $bookSourceId, author: $author, coverUrl: $coverUrl, init: $init, intro: $intro, kind: $kind, lastChapter: $lastChapter, name: $name, tocUrl: $tocUrl, wordCount: $wordCount, lastReadChapter: $lastReadChapter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleBookInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceId, bookSourceId) ||
                other.bookSourceId == bookSourceId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.init, init) || other.init == init) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tocUrl, tocUrl) || other.tocUrl == tocUrl) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount) &&
            (identical(other.lastReadChapter, lastReadChapter) ||
                other.lastReadChapter == lastReadChapter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bookSourceId,
      author,
      coverUrl,
      init,
      intro,
      kind,
      lastChapter,
      name,
      tocUrl,
      wordCount,
      lastReadChapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleBookInfoImplCopyWith<_$RuleBookInfoImpl> get copyWith =>
      __$$RuleBookInfoImplCopyWithImpl<_$RuleBookInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleBookInfoImplToJson(
      this,
    );
  }
}

abstract class _RuleBookInfo extends RuleBookInfo {
  const factory _RuleBookInfo(
      {required final int id,
      required final int bookSourceId,
      final String? author,
      final String? coverUrl,
      final String? init,
      final String? intro,
      final String? kind,
      final String? lastChapter,
      final String? name,
      final String? tocUrl,
      final String? wordCount,
      final String? lastReadChapter}) = _$RuleBookInfoImpl;
  const _RuleBookInfo._() : super._();

  factory _RuleBookInfo.fromJson(Map<String, dynamic> json) =
      _$RuleBookInfoImpl.fromJson;

  @override
  int get id;
  @override
  int get bookSourceId;
  @override
  String? get author;
  @override
  String? get coverUrl;
  @override
  String? get init;
  @override
  String? get intro;
  @override
  String? get kind;
  @override
  String? get lastChapter;
  @override
  String? get name;
  @override
  String? get tocUrl;
  @override
  String? get wordCount;
  @override
  String? get lastReadChapter;
  @override
  @JsonKey(ignore: true)
  _$$RuleBookInfoImplCopyWith<_$RuleBookInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RuleContent _$RuleContentFromJson(Map<String, dynamic> json) {
  return _RuleContent.fromJson(json);
}

/// @nodoc
mixin _$RuleContent {
  int get id => throw _privateConstructorUsedError;
  int get bookSourceId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get nextContentUrl => throw _privateConstructorUsedError;
  String? get replaceRegex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuleContentCopyWith<RuleContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleContentCopyWith<$Res> {
  factory $RuleContentCopyWith(
          RuleContent value, $Res Function(RuleContent) then) =
      _$RuleContentCopyWithImpl<$Res, RuleContent>;
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? content,
      String? nextContentUrl,
      String? replaceRegex});
}

/// @nodoc
class _$RuleContentCopyWithImpl<$Res, $Val extends RuleContent>
    implements $RuleContentCopyWith<$Res> {
  _$RuleContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? content = freezed,
    Object? nextContentUrl = freezed,
    Object? replaceRegex = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      nextContentUrl: freezed == nextContentUrl
          ? _value.nextContentUrl
          : nextContentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      replaceRegex: freezed == replaceRegex
          ? _value.replaceRegex
          : replaceRegex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleContentImplCopyWith<$Res>
    implements $RuleContentCopyWith<$Res> {
  factory _$$RuleContentImplCopyWith(
          _$RuleContentImpl value, $Res Function(_$RuleContentImpl) then) =
      __$$RuleContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? content,
      String? nextContentUrl,
      String? replaceRegex});
}

/// @nodoc
class __$$RuleContentImplCopyWithImpl<$Res>
    extends _$RuleContentCopyWithImpl<$Res, _$RuleContentImpl>
    implements _$$RuleContentImplCopyWith<$Res> {
  __$$RuleContentImplCopyWithImpl(
      _$RuleContentImpl _value, $Res Function(_$RuleContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? content = freezed,
    Object? nextContentUrl = freezed,
    Object? replaceRegex = freezed,
  }) {
    return _then(_$RuleContentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      nextContentUrl: freezed == nextContentUrl
          ? _value.nextContentUrl
          : nextContentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      replaceRegex: freezed == replaceRegex
          ? _value.replaceRegex
          : replaceRegex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuleContentImpl extends _RuleContent {
  const _$RuleContentImpl(
      {required this.id,
      required this.bookSourceId,
      this.content,
      this.nextContentUrl,
      this.replaceRegex})
      : super._();

  factory _$RuleContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleContentImplFromJson(json);

  @override
  final int id;
  @override
  final int bookSourceId;
  @override
  final String? content;
  @override
  final String? nextContentUrl;
  @override
  final String? replaceRegex;

  @override
  String toString() {
    return 'RuleContent(id: $id, bookSourceId: $bookSourceId, content: $content, nextContentUrl: $nextContentUrl, replaceRegex: $replaceRegex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleContentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceId, bookSourceId) ||
                other.bookSourceId == bookSourceId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.nextContentUrl, nextContentUrl) ||
                other.nextContentUrl == nextContentUrl) &&
            (identical(other.replaceRegex, replaceRegex) ||
                other.replaceRegex == replaceRegex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, bookSourceId, content, nextContentUrl, replaceRegex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleContentImplCopyWith<_$RuleContentImpl> get copyWith =>
      __$$RuleContentImplCopyWithImpl<_$RuleContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleContentImplToJson(
      this,
    );
  }
}

abstract class _RuleContent extends RuleContent {
  const factory _RuleContent(
      {required final int id,
      required final int bookSourceId,
      final String? content,
      final String? nextContentUrl,
      final String? replaceRegex}) = _$RuleContentImpl;
  const _RuleContent._() : super._();

  factory _RuleContent.fromJson(Map<String, dynamic> json) =
      _$RuleContentImpl.fromJson;

  @override
  int get id;
  @override
  int get bookSourceId;
  @override
  String? get content;
  @override
  String? get nextContentUrl;
  @override
  String? get replaceRegex;
  @override
  @JsonKey(ignore: true)
  _$$RuleContentImplCopyWith<_$RuleContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RuleSearch _$RuleSearchFromJson(Map<String, dynamic> json) {
  return _RuleSearch.fromJson(json);
}

/// @nodoc
mixin _$RuleSearch {
  int get id => throw _privateConstructorUsedError;
  int get bookSourceId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get bookList => throw _privateConstructorUsedError;
  String? get bookUrl => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  String? get intro => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String? get lastChapter => throw _privateConstructorUsedError;
  String? get wordCount => throw _privateConstructorUsedError;
  String? get tocUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuleSearchCopyWith<RuleSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleSearchCopyWith<$Res> {
  factory $RuleSearchCopyWith(
          RuleSearch value, $Res Function(RuleSearch) then) =
      _$RuleSearchCopyWithImpl<$Res, RuleSearch>;
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? name,
      String? author,
      String? bookList,
      String? bookUrl,
      String? coverUrl,
      String? intro,
      String? kind,
      String? lastChapter,
      String? wordCount,
      String? tocUrl});
}

/// @nodoc
class _$RuleSearchCopyWithImpl<$Res, $Val extends RuleSearch>
    implements $RuleSearchCopyWith<$Res> {
  _$RuleSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? name = freezed,
    Object? author = freezed,
    Object? bookList = freezed,
    Object? bookUrl = freezed,
    Object? coverUrl = freezed,
    Object? intro = freezed,
    Object? kind = freezed,
    Object? lastChapter = freezed,
    Object? wordCount = freezed,
    Object? tocUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      bookList: freezed == bookList
          ? _value.bookList
          : bookList // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUrl: freezed == bookUrl
          ? _value.bookUrl
          : bookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as String?,
      tocUrl: freezed == tocUrl
          ? _value.tocUrl
          : tocUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleSearchImplCopyWith<$Res>
    implements $RuleSearchCopyWith<$Res> {
  factory _$$RuleSearchImplCopyWith(
          _$RuleSearchImpl value, $Res Function(_$RuleSearchImpl) then) =
      __$$RuleSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? name,
      String? author,
      String? bookList,
      String? bookUrl,
      String? coverUrl,
      String? intro,
      String? kind,
      String? lastChapter,
      String? wordCount,
      String? tocUrl});
}

/// @nodoc
class __$$RuleSearchImplCopyWithImpl<$Res>
    extends _$RuleSearchCopyWithImpl<$Res, _$RuleSearchImpl>
    implements _$$RuleSearchImplCopyWith<$Res> {
  __$$RuleSearchImplCopyWithImpl(
      _$RuleSearchImpl _value, $Res Function(_$RuleSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? name = freezed,
    Object? author = freezed,
    Object? bookList = freezed,
    Object? bookUrl = freezed,
    Object? coverUrl = freezed,
    Object? intro = freezed,
    Object? kind = freezed,
    Object? lastChapter = freezed,
    Object? wordCount = freezed,
    Object? tocUrl = freezed,
  }) {
    return _then(_$RuleSearchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      bookList: freezed == bookList
          ? _value.bookList
          : bookList // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUrl: freezed == bookUrl
          ? _value.bookUrl
          : bookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChapter: freezed == lastChapter
          ? _value.lastChapter
          : lastChapter // ignore: cast_nullable_to_non_nullable
              as String?,
      wordCount: freezed == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as String?,
      tocUrl: freezed == tocUrl
          ? _value.tocUrl
          : tocUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuleSearchImpl extends _RuleSearch {
  _$RuleSearchImpl(
      {required this.id,
      required this.bookSourceId,
      this.name,
      this.author,
      this.bookList,
      this.bookUrl,
      this.coverUrl,
      this.intro,
      this.kind,
      this.lastChapter,
      this.wordCount,
      this.tocUrl})
      : super._();

  factory _$RuleSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleSearchImplFromJson(json);

  @override
  final int id;
  @override
  final int bookSourceId;
  @override
  final String? name;
  @override
  final String? author;
  @override
  final String? bookList;
  @override
  final String? bookUrl;
  @override
  final String? coverUrl;
  @override
  final String? intro;
  @override
  final String? kind;
  @override
  final String? lastChapter;
  @override
  final String? wordCount;
  @override
  final String? tocUrl;

  @override
  String toString() {
    return 'RuleSearch(id: $id, bookSourceId: $bookSourceId, name: $name, author: $author, bookList: $bookList, bookUrl: $bookUrl, coverUrl: $coverUrl, intro: $intro, kind: $kind, lastChapter: $lastChapter, wordCount: $wordCount, tocUrl: $tocUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleSearchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceId, bookSourceId) ||
                other.bookSourceId == bookSourceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookList, bookList) ||
                other.bookList == bookList) &&
            (identical(other.bookUrl, bookUrl) || other.bookUrl == bookUrl) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount) &&
            (identical(other.tocUrl, tocUrl) || other.tocUrl == tocUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookSourceId, name, author,
      bookList, bookUrl, coverUrl, intro, kind, lastChapter, wordCount, tocUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleSearchImplCopyWith<_$RuleSearchImpl> get copyWith =>
      __$$RuleSearchImplCopyWithImpl<_$RuleSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleSearchImplToJson(
      this,
    );
  }
}

abstract class _RuleSearch extends RuleSearch {
  factory _RuleSearch(
      {required final int id,
      required final int bookSourceId,
      final String? name,
      final String? author,
      final String? bookList,
      final String? bookUrl,
      final String? coverUrl,
      final String? intro,
      final String? kind,
      final String? lastChapter,
      final String? wordCount,
      final String? tocUrl}) = _$RuleSearchImpl;
  _RuleSearch._() : super._();

  factory _RuleSearch.fromJson(Map<String, dynamic> json) =
      _$RuleSearchImpl.fromJson;

  @override
  int get id;
  @override
  int get bookSourceId;
  @override
  String? get name;
  @override
  String? get author;
  @override
  String? get bookList;
  @override
  String? get bookUrl;
  @override
  String? get coverUrl;
  @override
  String? get intro;
  @override
  String? get kind;
  @override
  String? get lastChapter;
  @override
  String? get wordCount;
  @override
  String? get tocUrl;
  @override
  @JsonKey(ignore: true)
  _$$RuleSearchImplCopyWith<_$RuleSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RuleToc _$RuleTocFromJson(Map<String, dynamic> json) {
  return _RuleToc.fromJson(json);
}

/// @nodoc
mixin _$RuleToc {
  int get id => throw _privateConstructorUsedError;
  int get bookSourceId => throw _privateConstructorUsedError;
  String? get chapterList => throw _privateConstructorUsedError;
  String? get chapterName => throw _privateConstructorUsedError;
  String? get chapterUrl => throw _privateConstructorUsedError;
  String? get nextTocUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuleTocCopyWith<RuleToc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleTocCopyWith<$Res> {
  factory $RuleTocCopyWith(RuleToc value, $Res Function(RuleToc) then) =
      _$RuleTocCopyWithImpl<$Res, RuleToc>;
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? chapterList,
      String? chapterName,
      String? chapterUrl,
      String? nextTocUrl});
}

/// @nodoc
class _$RuleTocCopyWithImpl<$Res, $Val extends RuleToc>
    implements $RuleTocCopyWith<$Res> {
  _$RuleTocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? chapterList = freezed,
    Object? chapterName = freezed,
    Object? chapterUrl = freezed,
    Object? nextTocUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      chapterList: freezed == chapterList
          ? _value.chapterList
          : chapterList // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterName: freezed == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterUrl: freezed == chapterUrl
          ? _value.chapterUrl
          : chapterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextTocUrl: freezed == nextTocUrl
          ? _value.nextTocUrl
          : nextTocUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleTocImplCopyWith<$Res> implements $RuleTocCopyWith<$Res> {
  factory _$$RuleTocImplCopyWith(
          _$RuleTocImpl value, $Res Function(_$RuleTocImpl) then) =
      __$$RuleTocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bookSourceId,
      String? chapterList,
      String? chapterName,
      String? chapterUrl,
      String? nextTocUrl});
}

/// @nodoc
class __$$RuleTocImplCopyWithImpl<$Res>
    extends _$RuleTocCopyWithImpl<$Res, _$RuleTocImpl>
    implements _$$RuleTocImplCopyWith<$Res> {
  __$$RuleTocImplCopyWithImpl(
      _$RuleTocImpl _value, $Res Function(_$RuleTocImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookSourceId = null,
    Object? chapterList = freezed,
    Object? chapterName = freezed,
    Object? chapterUrl = freezed,
    Object? nextTocUrl = freezed,
  }) {
    return _then(_$RuleTocImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookSourceId: null == bookSourceId
          ? _value.bookSourceId
          : bookSourceId // ignore: cast_nullable_to_non_nullable
              as int,
      chapterList: freezed == chapterList
          ? _value.chapterList
          : chapterList // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterName: freezed == chapterName
          ? _value.chapterName
          : chapterName // ignore: cast_nullable_to_non_nullable
              as String?,
      chapterUrl: freezed == chapterUrl
          ? _value.chapterUrl
          : chapterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextTocUrl: freezed == nextTocUrl
          ? _value.nextTocUrl
          : nextTocUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuleTocImpl extends _RuleToc {
  const _$RuleTocImpl(
      {required this.id,
      required this.bookSourceId,
      this.chapterList,
      this.chapterName,
      this.chapterUrl,
      this.nextTocUrl})
      : super._();

  factory _$RuleTocImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuleTocImplFromJson(json);

  @override
  final int id;
  @override
  final int bookSourceId;
  @override
  final String? chapterList;
  @override
  final String? chapterName;
  @override
  final String? chapterUrl;
  @override
  final String? nextTocUrl;

  @override
  String toString() {
    return 'RuleToc(id: $id, bookSourceId: $bookSourceId, chapterList: $chapterList, chapterName: $chapterName, chapterUrl: $chapterUrl, nextTocUrl: $nextTocUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleTocImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookSourceId, bookSourceId) ||
                other.bookSourceId == bookSourceId) &&
            (identical(other.chapterList, chapterList) ||
                other.chapterList == chapterList) &&
            (identical(other.chapterName, chapterName) ||
                other.chapterName == chapterName) &&
            (identical(other.chapterUrl, chapterUrl) ||
                other.chapterUrl == chapterUrl) &&
            (identical(other.nextTocUrl, nextTocUrl) ||
                other.nextTocUrl == nextTocUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookSourceId, chapterList,
      chapterName, chapterUrl, nextTocUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleTocImplCopyWith<_$RuleTocImpl> get copyWith =>
      __$$RuleTocImplCopyWithImpl<_$RuleTocImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RuleTocImplToJson(
      this,
    );
  }
}

abstract class _RuleToc extends RuleToc {
  const factory _RuleToc(
      {required final int id,
      required final int bookSourceId,
      final String? chapterList,
      final String? chapterName,
      final String? chapterUrl,
      final String? nextTocUrl}) = _$RuleTocImpl;
  const _RuleToc._() : super._();

  factory _RuleToc.fromJson(Map<String, dynamic> json) = _$RuleTocImpl.fromJson;

  @override
  int get id;
  @override
  int get bookSourceId;
  @override
  String? get chapterList;
  @override
  String? get chapterName;
  @override
  String? get chapterUrl;
  @override
  String? get nextTocUrl;
  @override
  @JsonKey(ignore: true)
  _$$RuleTocImplCopyWith<_$RuleTocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
