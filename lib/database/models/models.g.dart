// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetBookInfoCollection on Isar {
  IsarCollection<int, BookInfo> get bookInfos => this.collection();
}

const BookInfoSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'BookInfo',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'author',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'cover',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, BookInfo>(
    serialize: serializeBookInfo,
    deserialize: deserializeBookInfo,
    deserializeProperty: deserializeBookInfoProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeBookInfo(IsarWriter writer, BookInfo object) {
  IsarCore.writeLong(writer, 1, object.bookSourceId);
  IsarCore.writeString(writer, 2, object.name);
  {
    final value = object.author;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.cover;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  return object.id;
}

@isarProtected
BookInfo deserializeBookInfo(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _bookSourceId;
  _bookSourceId = IsarCore.readLong(reader, 1);
  final String _name;
  _name = IsarCore.readString(reader, 2) ?? '';
  final String? _author;
  _author = IsarCore.readString(reader, 3);
  final String? _cover;
  _cover = IsarCore.readString(reader, 4);
  final object = BookInfo(
    id: _id,
    bookSourceId: _bookSourceId,
    name: _name,
    author: _author,
    cover: _cover,
  );
  return object;
}

@isarProtected
dynamic deserializeBookInfoProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _BookInfoUpdate {
  bool call({
    required int id,
    int? bookSourceId,
    String? name,
    String? author,
    String? cover,
  });
}

class _BookInfoUpdateImpl implements _BookInfoUpdate {
  const _BookInfoUpdateImpl(this.collection);

  final IsarCollection<int, BookInfo> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? cover = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceId != ignore) 1: bookSourceId as int?,
          if (name != ignore) 2: name as String?,
          if (author != ignore) 3: author as String?,
          if (cover != ignore) 4: cover as String?,
        }) >
        0;
  }
}

sealed class _BookInfoUpdateAll {
  int call({
    required List<int> id,
    int? bookSourceId,
    String? name,
    String? author,
    String? cover,
  });
}

class _BookInfoUpdateAllImpl implements _BookInfoUpdateAll {
  const _BookInfoUpdateAllImpl(this.collection);

  final IsarCollection<int, BookInfo> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? cover = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (name != ignore) 2: name as String?,
      if (author != ignore) 3: author as String?,
      if (cover != ignore) 4: cover as String?,
    });
  }
}

extension BookInfoUpdate on IsarCollection<int, BookInfo> {
  _BookInfoUpdate get update => _BookInfoUpdateImpl(this);

  _BookInfoUpdateAll get updateAll => _BookInfoUpdateAllImpl(this);
}

sealed class _BookInfoQueryUpdate {
  int call({
    int? bookSourceId,
    String? name,
    String? author,
    String? cover,
  });
}

class _BookInfoQueryUpdateImpl implements _BookInfoQueryUpdate {
  const _BookInfoQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<BookInfo> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? cover = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (name != ignore) 2: name as String?,
      if (author != ignore) 3: author as String?,
      if (cover != ignore) 4: cover as String?,
    });
  }
}

extension BookInfoQueryUpdate on IsarQuery<BookInfo> {
  _BookInfoQueryUpdate get updateFirst =>
      _BookInfoQueryUpdateImpl(this, limit: 1);

  _BookInfoQueryUpdate get updateAll => _BookInfoQueryUpdateImpl(this);
}

class _BookInfoQueryBuilderUpdateImpl implements _BookInfoQueryUpdate {
  const _BookInfoQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<BookInfo, BookInfo, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? cover = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceId != ignore) 1: bookSourceId as int?,
        if (name != ignore) 2: name as String?,
        if (author != ignore) 3: author as String?,
        if (cover != ignore) 4: cover as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension BookInfoQueryBuilderUpdate
    on QueryBuilder<BookInfo, BookInfo, QOperations> {
  _BookInfoQueryUpdate get updateFirst =>
      _BookInfoQueryBuilderUpdateImpl(this, limit: 1);

  _BookInfoQueryUpdate get updateAll => _BookInfoQueryBuilderUpdateImpl(this);
}

extension BookInfoQueryFilter
    on QueryBuilder<BookInfo, BookInfo, QFilterCondition> {
  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> bookSourceIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      bookSourceIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      bookSourceIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> bookSourceIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      bookSourceIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> bookSourceIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      authorGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      authorLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> authorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      coverGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition>
      coverLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterFilterCondition> coverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }
}

extension BookInfoQueryObject
    on QueryBuilder<BookInfo, BookInfo, QFilterCondition> {}

extension BookInfoQuerySortBy on QueryBuilder<BookInfo, BookInfo, QSortBy> {
  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByAuthorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByCover(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> sortByCoverDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension BookInfoQuerySortThenBy
    on QueryBuilder<BookInfo, BookInfo, QSortThenBy> {
  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByAuthorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByCover(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterSortBy> thenByCoverDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension BookInfoQueryWhereDistinct
    on QueryBuilder<BookInfo, BookInfo, QDistinct> {
  QueryBuilder<BookInfo, BookInfo, QAfterDistinct> distinctByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterDistinct> distinctByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookInfo, BookInfo, QAfterDistinct> distinctByCover(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }
}

extension BookInfoQueryProperty1
    on QueryBuilder<BookInfo, BookInfo, QProperty> {
  QueryBuilder<BookInfo, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookInfo, int, QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookInfo, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookInfo, String?, QAfterProperty> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookInfo, String?, QAfterProperty> coverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension BookInfoQueryProperty2<R>
    on QueryBuilder<BookInfo, R, QAfterProperty> {
  QueryBuilder<BookInfo, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookInfo, (R, int), QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookInfo, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookInfo, (R, String?), QAfterProperty> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookInfo, (R, String?), QAfterProperty> coverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension BookInfoQueryProperty3<R1, R2>
    on QueryBuilder<BookInfo, (R1, R2), QAfterProperty> {
  QueryBuilder<BookInfo, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookInfo, (R1, R2, int), QOperations> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookInfo, (R1, R2, String), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookInfo, (R1, R2, String?), QOperations> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookInfo, (R1, R2, String?), QOperations> coverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetBookSearchInfoCollection on Isar {
  IsarCollection<int, BookSearchInfo> get bookSearchInfos => this.collection();
}

const BookSearchInfoSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'BookSearchInfo',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'searchUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'method',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'charset',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'headers',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'body',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, BookSearchInfo>(
    serialize: serializeBookSearchInfo,
    deserialize: deserializeBookSearchInfo,
    deserializeProperty: deserializeBookSearchInfoProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeBookSearchInfo(IsarWriter writer, BookSearchInfo object) {
  IsarCore.writeLong(writer, 1, object.bookSourceId);
  IsarCore.writeString(writer, 2, object.searchUrl);
  IsarCore.writeString(writer, 3, object.method);
  IsarCore.writeString(writer, 4, object.charset);
  {
    final value = object.headers;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.body;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  return object.id;
}

@isarProtected
BookSearchInfo deserializeBookSearchInfo(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _bookSourceId;
  _bookSourceId = IsarCore.readLong(reader, 1);
  final String _searchUrl;
  _searchUrl = IsarCore.readString(reader, 2) ?? '';
  final String _method;
  _method = IsarCore.readString(reader, 3) ?? '';
  final String _charset;
  _charset = IsarCore.readString(reader, 4) ?? '';
  final String? _headers;
  _headers = IsarCore.readString(reader, 5);
  final String? _body;
  _body = IsarCore.readString(reader, 6);
  final object = BookSearchInfo(
    id: _id,
    bookSourceId: _bookSourceId,
    searchUrl: _searchUrl,
    method: _method,
    charset: _charset,
    headers: _headers,
    body: _body,
  );
  return object;
}

@isarProtected
dynamic deserializeBookSearchInfoProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      return IsarCore.readString(reader, 6);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _BookSearchInfoUpdate {
  bool call({
    required int id,
    int? bookSourceId,
    String? searchUrl,
    String? method,
    String? charset,
    String? headers,
    String? body,
  });
}

class _BookSearchInfoUpdateImpl implements _BookSearchInfoUpdate {
  const _BookSearchInfoUpdateImpl(this.collection);

  final IsarCollection<int, BookSearchInfo> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceId = ignore,
    Object? searchUrl = ignore,
    Object? method = ignore,
    Object? charset = ignore,
    Object? headers = ignore,
    Object? body = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceId != ignore) 1: bookSourceId as int?,
          if (searchUrl != ignore) 2: searchUrl as String?,
          if (method != ignore) 3: method as String?,
          if (charset != ignore) 4: charset as String?,
          if (headers != ignore) 5: headers as String?,
          if (body != ignore) 6: body as String?,
        }) >
        0;
  }
}

sealed class _BookSearchInfoUpdateAll {
  int call({
    required List<int> id,
    int? bookSourceId,
    String? searchUrl,
    String? method,
    String? charset,
    String? headers,
    String? body,
  });
}

class _BookSearchInfoUpdateAllImpl implements _BookSearchInfoUpdateAll {
  const _BookSearchInfoUpdateAllImpl(this.collection);

  final IsarCollection<int, BookSearchInfo> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceId = ignore,
    Object? searchUrl = ignore,
    Object? method = ignore,
    Object? charset = ignore,
    Object? headers = ignore,
    Object? body = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (searchUrl != ignore) 2: searchUrl as String?,
      if (method != ignore) 3: method as String?,
      if (charset != ignore) 4: charset as String?,
      if (headers != ignore) 5: headers as String?,
      if (body != ignore) 6: body as String?,
    });
  }
}

extension BookSearchInfoUpdate on IsarCollection<int, BookSearchInfo> {
  _BookSearchInfoUpdate get update => _BookSearchInfoUpdateImpl(this);

  _BookSearchInfoUpdateAll get updateAll => _BookSearchInfoUpdateAllImpl(this);
}

sealed class _BookSearchInfoQueryUpdate {
  int call({
    int? bookSourceId,
    String? searchUrl,
    String? method,
    String? charset,
    String? headers,
    String? body,
  });
}

class _BookSearchInfoQueryUpdateImpl implements _BookSearchInfoQueryUpdate {
  const _BookSearchInfoQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<BookSearchInfo> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? searchUrl = ignore,
    Object? method = ignore,
    Object? charset = ignore,
    Object? headers = ignore,
    Object? body = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (searchUrl != ignore) 2: searchUrl as String?,
      if (method != ignore) 3: method as String?,
      if (charset != ignore) 4: charset as String?,
      if (headers != ignore) 5: headers as String?,
      if (body != ignore) 6: body as String?,
    });
  }
}

extension BookSearchInfoQueryUpdate on IsarQuery<BookSearchInfo> {
  _BookSearchInfoQueryUpdate get updateFirst =>
      _BookSearchInfoQueryUpdateImpl(this, limit: 1);

  _BookSearchInfoQueryUpdate get updateAll =>
      _BookSearchInfoQueryUpdateImpl(this);
}

class _BookSearchInfoQueryBuilderUpdateImpl
    implements _BookSearchInfoQueryUpdate {
  const _BookSearchInfoQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<BookSearchInfo, BookSearchInfo, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? searchUrl = ignore,
    Object? method = ignore,
    Object? charset = ignore,
    Object? headers = ignore,
    Object? body = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceId != ignore) 1: bookSourceId as int?,
        if (searchUrl != ignore) 2: searchUrl as String?,
        if (method != ignore) 3: method as String?,
        if (charset != ignore) 4: charset as String?,
        if (headers != ignore) 5: headers as String?,
        if (body != ignore) 6: body as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension BookSearchInfoQueryBuilderUpdate
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QOperations> {
  _BookSearchInfoQueryUpdate get updateFirst =>
      _BookSearchInfoQueryBuilderUpdateImpl(this, limit: 1);

  _BookSearchInfoQueryUpdate get updateAll =>
      _BookSearchInfoQueryBuilderUpdateImpl(this);
}

extension BookSearchInfoQueryFilter
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QFilterCondition> {
  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bookSourceIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bookSourceIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bookSourceIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bookSourceIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bookSourceIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bookSourceIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      searchUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      charsetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      headersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterFilterCondition>
      bodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }
}

extension BookSearchInfoQueryObject
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QFilterCondition> {}

extension BookSearchInfoQuerySortBy
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QSortBy> {
  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy>
      sortByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy>
      sortByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortBySearchUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy>
      sortBySearchUrlDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByMethod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByMethodDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByCharset(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByCharsetDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByHeaders(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByHeadersDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> sortByBodyDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension BookSearchInfoQuerySortThenBy
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QSortThenBy> {
  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy>
      thenByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy>
      thenByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenBySearchUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy>
      thenBySearchUrlDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByMethod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByMethodDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByCharset(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByCharsetDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByHeaders(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByHeadersDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterSortBy> thenByBodyDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension BookSearchInfoQueryWhereDistinct
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QDistinct> {
  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterDistinct>
      distinctByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterDistinct>
      distinctBySearchUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterDistinct> distinctByMethod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterDistinct>
      distinctByCharset({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterDistinct>
      distinctByHeaders({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSearchInfo, BookSearchInfo, QAfterDistinct> distinctByBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }
}

extension BookSearchInfoQueryProperty1
    on QueryBuilder<BookSearchInfo, BookSearchInfo, QProperty> {
  QueryBuilder<BookSearchInfo, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookSearchInfo, int, QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookSearchInfo, String, QAfterProperty> searchUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookSearchInfo, String, QAfterProperty> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookSearchInfo, String, QAfterProperty> charsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<BookSearchInfo, String?, QAfterProperty> headersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<BookSearchInfo, String?, QAfterProperty> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}

extension BookSearchInfoQueryProperty2<R>
    on QueryBuilder<BookSearchInfo, R, QAfterProperty> {
  QueryBuilder<BookSearchInfo, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookSearchInfo, (R, int), QAfterProperty>
      bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookSearchInfo, (R, String), QAfterProperty>
      searchUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookSearchInfo, (R, String), QAfterProperty> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookSearchInfo, (R, String), QAfterProperty> charsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<BookSearchInfo, (R, String?), QAfterProperty> headersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<BookSearchInfo, (R, String?), QAfterProperty> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}

extension BookSearchInfoQueryProperty3<R1, R2>
    on QueryBuilder<BookSearchInfo, (R1, R2), QAfterProperty> {
  QueryBuilder<BookSearchInfo, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookSearchInfo, (R1, R2, int), QOperations>
      bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookSearchInfo, (R1, R2, String), QOperations>
      searchUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookSearchInfo, (R1, R2, String), QOperations> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookSearchInfo, (R1, R2, String), QOperations>
      charsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<BookSearchInfo, (R1, R2, String?), QOperations>
      headersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<BookSearchInfo, (R1, R2, String?), QOperations> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetBookSourceCollection on Isar {
  IsarCollection<int, BookSource> get bookSources => this.collection();
}

const BookSourceSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'BookSource',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bookSourceGroup',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bookSourceComment',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bookSourceUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'customOrder',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'bookUrlPattern',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bookSourceType',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'enabled',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'enabledCookieJar',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'enabledExplore',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'header',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'loginUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'lastUpdateTime',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'exploreUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'searchUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'weight',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'isEnabled',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, BookSource>(
    serialize: serializeBookSource,
    deserialize: deserializeBookSource,
    deserializeProperty: deserializeBookSourceProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeBookSource(IsarWriter writer, BookSource object) {
  IsarCore.writeString(writer, 1, object.bookSourceName);
  {
    final value = object.bookSourceGroup;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.bookSourceComment;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  IsarCore.writeString(writer, 4, object.bookSourceUrl);
  IsarCore.writeLong(writer, 5, object.customOrder ?? -9223372036854775808);
  {
    final value = object.bookUrlPattern;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  IsarCore.writeLong(writer, 7, object.bookSourceType ?? -9223372036854775808);
  IsarCore.writeBool(writer, 8, object.enabled);
  {
    final value = object.enabledCookieJar;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      IsarCore.writeBool(writer, 9, value);
    }
  }
  {
    final value = object.enabledExplore;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      IsarCore.writeBool(writer, 10, value);
    }
  }
  {
    final value = object.header;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  {
    final value = object.loginUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 12);
    } else {
      IsarCore.writeString(writer, 12, value);
    }
  }
  IsarCore.writeLong(writer, 13, object.lastUpdateTime ?? -9223372036854775808);
  {
    final value = object.exploreUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 14);
    } else {
      IsarCore.writeString(writer, 14, value);
    }
  }
  {
    final value = object.searchUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 15);
    } else {
      IsarCore.writeString(writer, 15, value);
    }
  }
  IsarCore.writeLong(writer, 16, object.weight ?? -9223372036854775808);
  {
    final value = object.isEnabled;
    if (value == null) {
      IsarCore.writeNull(writer, 17);
    } else {
      IsarCore.writeBool(writer, 17, value);
    }
  }
  return object.id;
}

@isarProtected
BookSource deserializeBookSource(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _bookSourceName;
  _bookSourceName = IsarCore.readString(reader, 1) ?? '';
  final String? _bookSourceGroup;
  _bookSourceGroup = IsarCore.readString(reader, 2);
  final String? _bookSourceComment;
  _bookSourceComment = IsarCore.readString(reader, 3);
  final String _bookSourceUrl;
  _bookSourceUrl = IsarCore.readString(reader, 4) ?? '';
  final int? _customOrder;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _customOrder = null;
    } else {
      _customOrder = value;
    }
  }
  final String? _bookUrlPattern;
  _bookUrlPattern = IsarCore.readString(reader, 6);
  final int? _bookSourceType;
  {
    final value = IsarCore.readLong(reader, 7);
    if (value == -9223372036854775808) {
      _bookSourceType = null;
    } else {
      _bookSourceType = value;
    }
  }
  final bool _enabled;
  _enabled = IsarCore.readBool(reader, 8);
  final bool? _enabledCookieJar;
  {
    if (IsarCore.readNull(reader, 9)) {
      _enabledCookieJar = null;
    } else {
      _enabledCookieJar = IsarCore.readBool(reader, 9);
    }
  }
  final bool? _enabledExplore;
  {
    if (IsarCore.readNull(reader, 10)) {
      _enabledExplore = null;
    } else {
      _enabledExplore = IsarCore.readBool(reader, 10);
    }
  }
  final String? _header;
  _header = IsarCore.readString(reader, 11);
  final String? _loginUrl;
  _loginUrl = IsarCore.readString(reader, 12);
  final int? _lastUpdateTime;
  {
    final value = IsarCore.readLong(reader, 13);
    if (value == -9223372036854775808) {
      _lastUpdateTime = null;
    } else {
      _lastUpdateTime = value;
    }
  }
  final String? _exploreUrl;
  _exploreUrl = IsarCore.readString(reader, 14);
  final String? _searchUrl;
  _searchUrl = IsarCore.readString(reader, 15);
  final int? _weight;
  {
    final value = IsarCore.readLong(reader, 16);
    if (value == -9223372036854775808) {
      _weight = null;
    } else {
      _weight = value;
    }
  }
  final bool? _isEnabled;
  {
    if (IsarCore.readNull(reader, 17)) {
      _isEnabled = null;
    } else {
      _isEnabled = IsarCore.readBool(reader, 17);
    }
  }
  final object = BookSource(
    id: _id,
    bookSourceName: _bookSourceName,
    bookSourceGroup: _bookSourceGroup,
    bookSourceComment: _bookSourceComment,
    bookSourceUrl: _bookSourceUrl,
    customOrder: _customOrder,
    bookUrlPattern: _bookUrlPattern,
    bookSourceType: _bookSourceType,
    enabled: _enabled,
    enabledCookieJar: _enabledCookieJar,
    enabledExplore: _enabledExplore,
    header: _header,
    loginUrl: _loginUrl,
    lastUpdateTime: _lastUpdateTime,
    exploreUrl: _exploreUrl,
    searchUrl: _searchUrl,
    weight: _weight,
    isEnabled: _isEnabled,
  );
  return object;
}

@isarProtected
dynamic deserializeBookSourceProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 6:
      return IsarCore.readString(reader, 6);
    case 7:
      {
        final value = IsarCore.readLong(reader, 7);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 8:
      return IsarCore.readBool(reader, 8);
    case 9:
      {
        if (IsarCore.readNull(reader, 9)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 9);
        }
      }
    case 10:
      {
        if (IsarCore.readNull(reader, 10)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 10);
        }
      }
    case 11:
      return IsarCore.readString(reader, 11);
    case 12:
      return IsarCore.readString(reader, 12);
    case 13:
      {
        final value = IsarCore.readLong(reader, 13);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 14:
      return IsarCore.readString(reader, 14);
    case 15:
      return IsarCore.readString(reader, 15);
    case 16:
      {
        final value = IsarCore.readLong(reader, 16);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 17:
      {
        if (IsarCore.readNull(reader, 17)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 17);
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _BookSourceUpdate {
  bool call({
    required int id,
    String? bookSourceName,
    String? bookSourceGroup,
    String? bookSourceComment,
    String? bookSourceUrl,
    int? customOrder,
    String? bookUrlPattern,
    int? bookSourceType,
    bool? enabled,
    bool? enabledCookieJar,
    bool? enabledExplore,
    String? header,
    String? loginUrl,
    int? lastUpdateTime,
    String? exploreUrl,
    String? searchUrl,
    int? weight,
    bool? isEnabled,
  });
}

class _BookSourceUpdateImpl implements _BookSourceUpdate {
  const _BookSourceUpdateImpl(this.collection);

  final IsarCollection<int, BookSource> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceName = ignore,
    Object? bookSourceGroup = ignore,
    Object? bookSourceComment = ignore,
    Object? bookSourceUrl = ignore,
    Object? customOrder = ignore,
    Object? bookUrlPattern = ignore,
    Object? bookSourceType = ignore,
    Object? enabled = ignore,
    Object? enabledCookieJar = ignore,
    Object? enabledExplore = ignore,
    Object? header = ignore,
    Object? loginUrl = ignore,
    Object? lastUpdateTime = ignore,
    Object? exploreUrl = ignore,
    Object? searchUrl = ignore,
    Object? weight = ignore,
    Object? isEnabled = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceName != ignore) 1: bookSourceName as String?,
          if (bookSourceGroup != ignore) 2: bookSourceGroup as String?,
          if (bookSourceComment != ignore) 3: bookSourceComment as String?,
          if (bookSourceUrl != ignore) 4: bookSourceUrl as String?,
          if (customOrder != ignore) 5: customOrder as int?,
          if (bookUrlPattern != ignore) 6: bookUrlPattern as String?,
          if (bookSourceType != ignore) 7: bookSourceType as int?,
          if (enabled != ignore) 8: enabled as bool?,
          if (enabledCookieJar != ignore) 9: enabledCookieJar as bool?,
          if (enabledExplore != ignore) 10: enabledExplore as bool?,
          if (header != ignore) 11: header as String?,
          if (loginUrl != ignore) 12: loginUrl as String?,
          if (lastUpdateTime != ignore) 13: lastUpdateTime as int?,
          if (exploreUrl != ignore) 14: exploreUrl as String?,
          if (searchUrl != ignore) 15: searchUrl as String?,
          if (weight != ignore) 16: weight as int?,
          if (isEnabled != ignore) 17: isEnabled as bool?,
        }) >
        0;
  }
}

sealed class _BookSourceUpdateAll {
  int call({
    required List<int> id,
    String? bookSourceName,
    String? bookSourceGroup,
    String? bookSourceComment,
    String? bookSourceUrl,
    int? customOrder,
    String? bookUrlPattern,
    int? bookSourceType,
    bool? enabled,
    bool? enabledCookieJar,
    bool? enabledExplore,
    String? header,
    String? loginUrl,
    int? lastUpdateTime,
    String? exploreUrl,
    String? searchUrl,
    int? weight,
    bool? isEnabled,
  });
}

class _BookSourceUpdateAllImpl implements _BookSourceUpdateAll {
  const _BookSourceUpdateAllImpl(this.collection);

  final IsarCollection<int, BookSource> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceName = ignore,
    Object? bookSourceGroup = ignore,
    Object? bookSourceComment = ignore,
    Object? bookSourceUrl = ignore,
    Object? customOrder = ignore,
    Object? bookUrlPattern = ignore,
    Object? bookSourceType = ignore,
    Object? enabled = ignore,
    Object? enabledCookieJar = ignore,
    Object? enabledExplore = ignore,
    Object? header = ignore,
    Object? loginUrl = ignore,
    Object? lastUpdateTime = ignore,
    Object? exploreUrl = ignore,
    Object? searchUrl = ignore,
    Object? weight = ignore,
    Object? isEnabled = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceName != ignore) 1: bookSourceName as String?,
      if (bookSourceGroup != ignore) 2: bookSourceGroup as String?,
      if (bookSourceComment != ignore) 3: bookSourceComment as String?,
      if (bookSourceUrl != ignore) 4: bookSourceUrl as String?,
      if (customOrder != ignore) 5: customOrder as int?,
      if (bookUrlPattern != ignore) 6: bookUrlPattern as String?,
      if (bookSourceType != ignore) 7: bookSourceType as int?,
      if (enabled != ignore) 8: enabled as bool?,
      if (enabledCookieJar != ignore) 9: enabledCookieJar as bool?,
      if (enabledExplore != ignore) 10: enabledExplore as bool?,
      if (header != ignore) 11: header as String?,
      if (loginUrl != ignore) 12: loginUrl as String?,
      if (lastUpdateTime != ignore) 13: lastUpdateTime as int?,
      if (exploreUrl != ignore) 14: exploreUrl as String?,
      if (searchUrl != ignore) 15: searchUrl as String?,
      if (weight != ignore) 16: weight as int?,
      if (isEnabled != ignore) 17: isEnabled as bool?,
    });
  }
}

extension BookSourceUpdate on IsarCollection<int, BookSource> {
  _BookSourceUpdate get update => _BookSourceUpdateImpl(this);

  _BookSourceUpdateAll get updateAll => _BookSourceUpdateAllImpl(this);
}

sealed class _BookSourceQueryUpdate {
  int call({
    String? bookSourceName,
    String? bookSourceGroup,
    String? bookSourceComment,
    String? bookSourceUrl,
    int? customOrder,
    String? bookUrlPattern,
    int? bookSourceType,
    bool? enabled,
    bool? enabledCookieJar,
    bool? enabledExplore,
    String? header,
    String? loginUrl,
    int? lastUpdateTime,
    String? exploreUrl,
    String? searchUrl,
    int? weight,
    bool? isEnabled,
  });
}

class _BookSourceQueryUpdateImpl implements _BookSourceQueryUpdate {
  const _BookSourceQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<BookSource> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceName = ignore,
    Object? bookSourceGroup = ignore,
    Object? bookSourceComment = ignore,
    Object? bookSourceUrl = ignore,
    Object? customOrder = ignore,
    Object? bookUrlPattern = ignore,
    Object? bookSourceType = ignore,
    Object? enabled = ignore,
    Object? enabledCookieJar = ignore,
    Object? enabledExplore = ignore,
    Object? header = ignore,
    Object? loginUrl = ignore,
    Object? lastUpdateTime = ignore,
    Object? exploreUrl = ignore,
    Object? searchUrl = ignore,
    Object? weight = ignore,
    Object? isEnabled = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceName != ignore) 1: bookSourceName as String?,
      if (bookSourceGroup != ignore) 2: bookSourceGroup as String?,
      if (bookSourceComment != ignore) 3: bookSourceComment as String?,
      if (bookSourceUrl != ignore) 4: bookSourceUrl as String?,
      if (customOrder != ignore) 5: customOrder as int?,
      if (bookUrlPattern != ignore) 6: bookUrlPattern as String?,
      if (bookSourceType != ignore) 7: bookSourceType as int?,
      if (enabled != ignore) 8: enabled as bool?,
      if (enabledCookieJar != ignore) 9: enabledCookieJar as bool?,
      if (enabledExplore != ignore) 10: enabledExplore as bool?,
      if (header != ignore) 11: header as String?,
      if (loginUrl != ignore) 12: loginUrl as String?,
      if (lastUpdateTime != ignore) 13: lastUpdateTime as int?,
      if (exploreUrl != ignore) 14: exploreUrl as String?,
      if (searchUrl != ignore) 15: searchUrl as String?,
      if (weight != ignore) 16: weight as int?,
      if (isEnabled != ignore) 17: isEnabled as bool?,
    });
  }
}

extension BookSourceQueryUpdate on IsarQuery<BookSource> {
  _BookSourceQueryUpdate get updateFirst =>
      _BookSourceQueryUpdateImpl(this, limit: 1);

  _BookSourceQueryUpdate get updateAll => _BookSourceQueryUpdateImpl(this);
}

class _BookSourceQueryBuilderUpdateImpl implements _BookSourceQueryUpdate {
  const _BookSourceQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<BookSource, BookSource, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceName = ignore,
    Object? bookSourceGroup = ignore,
    Object? bookSourceComment = ignore,
    Object? bookSourceUrl = ignore,
    Object? customOrder = ignore,
    Object? bookUrlPattern = ignore,
    Object? bookSourceType = ignore,
    Object? enabled = ignore,
    Object? enabledCookieJar = ignore,
    Object? enabledExplore = ignore,
    Object? header = ignore,
    Object? loginUrl = ignore,
    Object? lastUpdateTime = ignore,
    Object? exploreUrl = ignore,
    Object? searchUrl = ignore,
    Object? weight = ignore,
    Object? isEnabled = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceName != ignore) 1: bookSourceName as String?,
        if (bookSourceGroup != ignore) 2: bookSourceGroup as String?,
        if (bookSourceComment != ignore) 3: bookSourceComment as String?,
        if (bookSourceUrl != ignore) 4: bookSourceUrl as String?,
        if (customOrder != ignore) 5: customOrder as int?,
        if (bookUrlPattern != ignore) 6: bookUrlPattern as String?,
        if (bookSourceType != ignore) 7: bookSourceType as int?,
        if (enabled != ignore) 8: enabled as bool?,
        if (enabledCookieJar != ignore) 9: enabledCookieJar as bool?,
        if (enabledExplore != ignore) 10: enabledExplore as bool?,
        if (header != ignore) 11: header as String?,
        if (loginUrl != ignore) 12: loginUrl as String?,
        if (lastUpdateTime != ignore) 13: lastUpdateTime as int?,
        if (exploreUrl != ignore) 14: exploreUrl as String?,
        if (searchUrl != ignore) 15: searchUrl as String?,
        if (weight != ignore) 16: weight as int?,
        if (isEnabled != ignore) 17: isEnabled as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension BookSourceQueryBuilderUpdate
    on QueryBuilder<BookSource, BookSource, QOperations> {
  _BookSourceQueryUpdate get updateFirst =>
      _BookSourceQueryBuilderUpdateImpl(this, limit: 1);

  _BookSourceQueryUpdate get updateAll =>
      _BookSourceQueryBuilderUpdateImpl(this);
}

extension BookSourceQueryFilter
    on QueryBuilder<BookSource, BookSource, QFilterCondition> {
  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      customOrderBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookUrlPatternIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      bookSourceTypeBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> enabledEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      enabledCookieJarIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      enabledCookieJarIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      enabledCookieJarEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      enabledExploreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      enabledExploreIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      enabledExploreEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      headerIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      headerGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      headerLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> headerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      headerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> loginUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 12,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 12,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      loginUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 12,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      lastUpdateTimeBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> exploreUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> exploreUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> exploreUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 14,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 14,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      exploreUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 14,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> searchUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> searchUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> searchUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> searchUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> searchUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> searchUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 15,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      searchUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      weightIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> weightEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> weightGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      weightGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> weightLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      weightLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> weightBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 16,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      isEnabledIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition>
      isEnabledIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterFilterCondition> isEnabledEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 17,
          value: value,
        ),
      );
    });
  }
}

extension BookSourceQueryObject
    on QueryBuilder<BookSource, BookSource, QFilterCondition> {}

extension BookSourceQuerySortBy
    on QueryBuilder<BookSource, BookSource, QSortBy> {
  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceGroupDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceComment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      sortByBookSourceCommentDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByCustomOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByCustomOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookUrlPattern(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookUrlPatternDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByBookSourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      sortByBookSourceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByEnabledCookieJar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      sortByEnabledCookieJarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByEnabledExplore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      sortByEnabledExploreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByHeader(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByHeaderDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByLoginUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        12,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByLoginUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        12,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByLastUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      sortByLastUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByExploreUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        14,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByExploreUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        14,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortBySearchUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        15,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortBySearchUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        15,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> sortByIsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, sort: Sort.desc);
    });
  }
}

extension BookSourceQuerySortThenBy
    on QueryBuilder<BookSource, BookSource, QSortThenBy> {
  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceGroupDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceComment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      thenByBookSourceCommentDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByCustomOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByCustomOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookUrlPattern(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookUrlPatternDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByBookSourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      thenByBookSourceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByEnabledCookieJar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      thenByEnabledCookieJarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByEnabledExplore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      thenByEnabledExploreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByHeader(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByHeaderDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByLoginUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByLoginUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByLastUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy>
      thenByLastUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByExploreUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByExploreUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenBySearchUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenBySearchUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterSortBy> thenByIsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, sort: Sort.desc);
    });
  }
}

extension BookSourceQueryWhereDistinct
    on QueryBuilder<BookSource, BookSource, QDistinct> {
  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByBookSourceName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct>
      distinctByBookSourceGroup({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct>
      distinctByBookSourceComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByBookSourceUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByCustomOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByBookUrlPattern(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct>
      distinctByBookSourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct>
      distinctByEnabledCookieJar() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct>
      distinctByEnabledExplore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByHeader(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByLoginUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct>
      distinctByLastUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByExploreUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctBySearchUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16);
    });
  }

  QueryBuilder<BookSource, BookSource, QAfterDistinct> distinctByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(17);
    });
  }
}

extension BookSourceQueryProperty1
    on QueryBuilder<BookSource, BookSource, QProperty> {
  QueryBuilder<BookSource, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookSource, String, QAfterProperty> bookSourceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty> bookSourceGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty>
      bookSourceCommentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookSource, String, QAfterProperty> bookSourceUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<BookSource, int?, QAfterProperty> customOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty> bookUrlPatternProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<BookSource, int?, QAfterProperty> bookSourceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<BookSource, bool, QAfterProperty> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<BookSource, bool?, QAfterProperty> enabledCookieJarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<BookSource, bool?, QAfterProperty> enabledExploreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty> headerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty> loginUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<BookSource, int?, QAfterProperty> lastUpdateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty> exploreUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<BookSource, String?, QAfterProperty> searchUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<BookSource, int?, QAfterProperty> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<BookSource, bool?, QAfterProperty> isEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }
}

extension BookSourceQueryProperty2<R>
    on QueryBuilder<BookSource, R, QAfterProperty> {
  QueryBuilder<BookSource, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookSource, (R, String), QAfterProperty>
      bookSourceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty>
      bookSourceGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty>
      bookSourceCommentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookSource, (R, String), QAfterProperty>
      bookSourceUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<BookSource, (R, int?), QAfterProperty> customOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty>
      bookUrlPatternProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<BookSource, (R, int?), QAfterProperty> bookSourceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<BookSource, (R, bool), QAfterProperty> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<BookSource, (R, bool?), QAfterProperty>
      enabledCookieJarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<BookSource, (R, bool?), QAfterProperty>
      enabledExploreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty> headerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty> loginUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<BookSource, (R, int?), QAfterProperty> lastUpdateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty> exploreUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<BookSource, (R, String?), QAfterProperty> searchUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<BookSource, (R, int?), QAfterProperty> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<BookSource, (R, bool?), QAfterProperty> isEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }
}

extension BookSourceQueryProperty3<R1, R2>
    on QueryBuilder<BookSource, (R1, R2), QAfterProperty> {
  QueryBuilder<BookSource, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String), QOperations>
      bookSourceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations>
      bookSourceGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations>
      bookSourceCommentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String), QOperations>
      bookSourceUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<BookSource, (R1, R2, int?), QOperations> customOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations>
      bookUrlPatternProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<BookSource, (R1, R2, int?), QOperations>
      bookSourceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<BookSource, (R1, R2, bool), QOperations> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<BookSource, (R1, R2, bool?), QOperations>
      enabledCookieJarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<BookSource, (R1, R2, bool?), QOperations>
      enabledExploreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations> headerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations> loginUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<BookSource, (R1, R2, int?), QOperations>
      lastUpdateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations>
      exploreUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<BookSource, (R1, R2, String?), QOperations> searchUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<BookSource, (R1, R2, int?), QOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<BookSource, (R1, R2, bool?), QOperations> isEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetRuleBookInfoCollection on Isar {
  IsarCollection<int, RuleBookInfo> get ruleBookInfos => this.collection();
}

const RuleBookInfoSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'RuleBookInfo',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'author',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'coverUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'init',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'intro',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'kind',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'lastChapter',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'tocUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'wordCount',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'lastReadChapter',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, RuleBookInfo>(
    serialize: serializeRuleBookInfo,
    deserialize: deserializeRuleBookInfo,
    deserializeProperty: deserializeRuleBookInfoProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeRuleBookInfo(IsarWriter writer, RuleBookInfo object) {
  IsarCore.writeLong(writer, 1, object.bookSourceId);
  {
    final value = object.author;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.coverUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.init;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.intro;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.kind;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  {
    final value = object.lastChapter;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      IsarCore.writeString(writer, 8, value);
    }
  }
  {
    final value = object.tocUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      IsarCore.writeString(writer, 9, value);
    }
  }
  {
    final value = object.wordCount;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      IsarCore.writeString(writer, 10, value);
    }
  }
  {
    final value = object.lastReadChapter;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  return object.id;
}

@isarProtected
RuleBookInfo deserializeRuleBookInfo(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _bookSourceId;
  _bookSourceId = IsarCore.readLong(reader, 1);
  final String? _author;
  _author = IsarCore.readString(reader, 2);
  final String? _coverUrl;
  _coverUrl = IsarCore.readString(reader, 3);
  final String? _init;
  _init = IsarCore.readString(reader, 4);
  final String? _intro;
  _intro = IsarCore.readString(reader, 5);
  final String? _kind;
  _kind = IsarCore.readString(reader, 6);
  final String? _lastChapter;
  _lastChapter = IsarCore.readString(reader, 7);
  final String? _name;
  _name = IsarCore.readString(reader, 8);
  final String? _tocUrl;
  _tocUrl = IsarCore.readString(reader, 9);
  final String? _wordCount;
  _wordCount = IsarCore.readString(reader, 10);
  final String? _lastReadChapter;
  _lastReadChapter = IsarCore.readString(reader, 11);
  final object = RuleBookInfo(
    id: _id,
    bookSourceId: _bookSourceId,
    author: _author,
    coverUrl: _coverUrl,
    init: _init,
    intro: _intro,
    kind: _kind,
    lastChapter: _lastChapter,
    name: _name,
    tocUrl: _tocUrl,
    wordCount: _wordCount,
    lastReadChapter: _lastReadChapter,
  );
  return object;
}

@isarProtected
dynamic deserializeRuleBookInfoProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      return IsarCore.readString(reader, 6);
    case 7:
      return IsarCore.readString(reader, 7);
    case 8:
      return IsarCore.readString(reader, 8);
    case 9:
      return IsarCore.readString(reader, 9);
    case 10:
      return IsarCore.readString(reader, 10);
    case 11:
      return IsarCore.readString(reader, 11);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _RuleBookInfoUpdate {
  bool call({
    required int id,
    int? bookSourceId,
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
  });
}

class _RuleBookInfoUpdateImpl implements _RuleBookInfoUpdate {
  const _RuleBookInfoUpdateImpl(this.collection);

  final IsarCollection<int, RuleBookInfo> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceId = ignore,
    Object? author = ignore,
    Object? coverUrl = ignore,
    Object? init = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? name = ignore,
    Object? tocUrl = ignore,
    Object? wordCount = ignore,
    Object? lastReadChapter = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceId != ignore) 1: bookSourceId as int?,
          if (author != ignore) 2: author as String?,
          if (coverUrl != ignore) 3: coverUrl as String?,
          if (init != ignore) 4: init as String?,
          if (intro != ignore) 5: intro as String?,
          if (kind != ignore) 6: kind as String?,
          if (lastChapter != ignore) 7: lastChapter as String?,
          if (name != ignore) 8: name as String?,
          if (tocUrl != ignore) 9: tocUrl as String?,
          if (wordCount != ignore) 10: wordCount as String?,
          if (lastReadChapter != ignore) 11: lastReadChapter as String?,
        }) >
        0;
  }
}

sealed class _RuleBookInfoUpdateAll {
  int call({
    required List<int> id,
    int? bookSourceId,
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
  });
}

class _RuleBookInfoUpdateAllImpl implements _RuleBookInfoUpdateAll {
  const _RuleBookInfoUpdateAllImpl(this.collection);

  final IsarCollection<int, RuleBookInfo> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceId = ignore,
    Object? author = ignore,
    Object? coverUrl = ignore,
    Object? init = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? name = ignore,
    Object? tocUrl = ignore,
    Object? wordCount = ignore,
    Object? lastReadChapter = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (author != ignore) 2: author as String?,
      if (coverUrl != ignore) 3: coverUrl as String?,
      if (init != ignore) 4: init as String?,
      if (intro != ignore) 5: intro as String?,
      if (kind != ignore) 6: kind as String?,
      if (lastChapter != ignore) 7: lastChapter as String?,
      if (name != ignore) 8: name as String?,
      if (tocUrl != ignore) 9: tocUrl as String?,
      if (wordCount != ignore) 10: wordCount as String?,
      if (lastReadChapter != ignore) 11: lastReadChapter as String?,
    });
  }
}

extension RuleBookInfoUpdate on IsarCollection<int, RuleBookInfo> {
  _RuleBookInfoUpdate get update => _RuleBookInfoUpdateImpl(this);

  _RuleBookInfoUpdateAll get updateAll => _RuleBookInfoUpdateAllImpl(this);
}

sealed class _RuleBookInfoQueryUpdate {
  int call({
    int? bookSourceId,
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
  });
}

class _RuleBookInfoQueryUpdateImpl implements _RuleBookInfoQueryUpdate {
  const _RuleBookInfoQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<RuleBookInfo> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? author = ignore,
    Object? coverUrl = ignore,
    Object? init = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? name = ignore,
    Object? tocUrl = ignore,
    Object? wordCount = ignore,
    Object? lastReadChapter = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (author != ignore) 2: author as String?,
      if (coverUrl != ignore) 3: coverUrl as String?,
      if (init != ignore) 4: init as String?,
      if (intro != ignore) 5: intro as String?,
      if (kind != ignore) 6: kind as String?,
      if (lastChapter != ignore) 7: lastChapter as String?,
      if (name != ignore) 8: name as String?,
      if (tocUrl != ignore) 9: tocUrl as String?,
      if (wordCount != ignore) 10: wordCount as String?,
      if (lastReadChapter != ignore) 11: lastReadChapter as String?,
    });
  }
}

extension RuleBookInfoQueryUpdate on IsarQuery<RuleBookInfo> {
  _RuleBookInfoQueryUpdate get updateFirst =>
      _RuleBookInfoQueryUpdateImpl(this, limit: 1);

  _RuleBookInfoQueryUpdate get updateAll => _RuleBookInfoQueryUpdateImpl(this);
}

class _RuleBookInfoQueryBuilderUpdateImpl implements _RuleBookInfoQueryUpdate {
  const _RuleBookInfoQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<RuleBookInfo, RuleBookInfo, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? author = ignore,
    Object? coverUrl = ignore,
    Object? init = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? name = ignore,
    Object? tocUrl = ignore,
    Object? wordCount = ignore,
    Object? lastReadChapter = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceId != ignore) 1: bookSourceId as int?,
        if (author != ignore) 2: author as String?,
        if (coverUrl != ignore) 3: coverUrl as String?,
        if (init != ignore) 4: init as String?,
        if (intro != ignore) 5: intro as String?,
        if (kind != ignore) 6: kind as String?,
        if (lastChapter != ignore) 7: lastChapter as String?,
        if (name != ignore) 8: name as String?,
        if (tocUrl != ignore) 9: tocUrl as String?,
        if (wordCount != ignore) 10: wordCount as String?,
        if (lastReadChapter != ignore) 11: lastReadChapter as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension RuleBookInfoQueryBuilderUpdate
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QOperations> {
  _RuleBookInfoQueryUpdate get updateFirst =>
      _RuleBookInfoQueryBuilderUpdateImpl(this, limit: 1);

  _RuleBookInfoQueryUpdate get updateAll =>
      _RuleBookInfoQueryBuilderUpdateImpl(this);
}

extension RuleBookInfoQueryFilter
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QFilterCondition> {
  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      bookSourceIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      bookSourceIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      bookSourceIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      bookSourceIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      bookSourceIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      bookSourceIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> authorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> authorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> authorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      authorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      coverUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> initMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      initIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> introEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> introLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> introBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> introEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> introContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> introMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      introIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> kindMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      kindIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastChapterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> tocUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> tocUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition> tocUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 9,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      tocUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      wordCountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterFilterCondition>
      lastReadChapterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }
}

extension RuleBookInfoQueryObject
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QFilterCondition> {}

extension RuleBookInfoQuerySortBy
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QSortBy> {
  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy>
      sortByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByAuthorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByCoverUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByCoverUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByInit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByInitDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByIntro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByIntroDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByKindDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByLastChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByLastChapterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByTocUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByWordCount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByWordCountDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> sortByLastReadChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy>
      sortByLastReadChapterDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension RuleBookInfoQuerySortThenBy
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QSortThenBy> {
  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy>
      thenByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByAuthorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByCoverUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByCoverUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByInit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByInitDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByIntro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByIntroDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByKindDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByLastChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByLastChapterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByTocUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByWordCount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByWordCountDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy> thenByLastReadChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterSortBy>
      thenByLastReadChapterDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension RuleBookInfoQueryWhereDistinct
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QDistinct> {
  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct>
      distinctByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByCoverUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByInit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByIntro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct>
      distinctByLastChapter({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct> distinctByWordCount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleBookInfo, RuleBookInfo, QAfterDistinct>
      distinctByLastReadChapter({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }
}

extension RuleBookInfoQueryProperty1
    on QueryBuilder<RuleBookInfo, RuleBookInfo, QProperty> {
  QueryBuilder<RuleBookInfo, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleBookInfo, int, QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> initProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> introProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> lastChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> tocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty> wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<RuleBookInfo, String?, QAfterProperty>
      lastReadChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }
}

extension RuleBookInfoQueryProperty2<R>
    on QueryBuilder<RuleBookInfo, R, QAfterProperty> {
  QueryBuilder<RuleBookInfo, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleBookInfo, (R, int), QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> initProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> introProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty>
      lastChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> tocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty> wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<RuleBookInfo, (R, String?), QAfterProperty>
      lastReadChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }
}

extension RuleBookInfoQueryProperty3<R1, R2>
    on QueryBuilder<RuleBookInfo, (R1, R2), QAfterProperty> {
  QueryBuilder<RuleBookInfo, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, int), QOperations>
      bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations>
      coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations> initProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations> introProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations>
      lastChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations> tocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations>
      wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<RuleBookInfo, (R1, R2, String?), QOperations>
      lastReadChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetRuleContentCollection on Isar {
  IsarCollection<int, RuleContent> get ruleContents => this.collection();
}

const RuleContentSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'RuleContent',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'content',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'nextContentUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'replaceRegex',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, RuleContent>(
    serialize: serializeRuleContent,
    deserialize: deserializeRuleContent,
    deserializeProperty: deserializeRuleContentProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeRuleContent(IsarWriter writer, RuleContent object) {
  IsarCore.writeLong(writer, 1, object.bookSourceId);
  {
    final value = object.content;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.nextContentUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.replaceRegex;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  return object.id;
}

@isarProtected
RuleContent deserializeRuleContent(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _bookSourceId;
  _bookSourceId = IsarCore.readLong(reader, 1);
  final String? _content;
  _content = IsarCore.readString(reader, 2);
  final String? _nextContentUrl;
  _nextContentUrl = IsarCore.readString(reader, 3);
  final String? _replaceRegex;
  _replaceRegex = IsarCore.readString(reader, 4);
  final object = RuleContent(
    id: _id,
    bookSourceId: _bookSourceId,
    content: _content,
    nextContentUrl: _nextContentUrl,
    replaceRegex: _replaceRegex,
  );
  return object;
}

@isarProtected
dynamic deserializeRuleContentProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _RuleContentUpdate {
  bool call({
    required int id,
    int? bookSourceId,
    String? content,
    String? nextContentUrl,
    String? replaceRegex,
  });
}

class _RuleContentUpdateImpl implements _RuleContentUpdate {
  const _RuleContentUpdateImpl(this.collection);

  final IsarCollection<int, RuleContent> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceId = ignore,
    Object? content = ignore,
    Object? nextContentUrl = ignore,
    Object? replaceRegex = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceId != ignore) 1: bookSourceId as int?,
          if (content != ignore) 2: content as String?,
          if (nextContentUrl != ignore) 3: nextContentUrl as String?,
          if (replaceRegex != ignore) 4: replaceRegex as String?,
        }) >
        0;
  }
}

sealed class _RuleContentUpdateAll {
  int call({
    required List<int> id,
    int? bookSourceId,
    String? content,
    String? nextContentUrl,
    String? replaceRegex,
  });
}

class _RuleContentUpdateAllImpl implements _RuleContentUpdateAll {
  const _RuleContentUpdateAllImpl(this.collection);

  final IsarCollection<int, RuleContent> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceId = ignore,
    Object? content = ignore,
    Object? nextContentUrl = ignore,
    Object? replaceRegex = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (content != ignore) 2: content as String?,
      if (nextContentUrl != ignore) 3: nextContentUrl as String?,
      if (replaceRegex != ignore) 4: replaceRegex as String?,
    });
  }
}

extension RuleContentUpdate on IsarCollection<int, RuleContent> {
  _RuleContentUpdate get update => _RuleContentUpdateImpl(this);

  _RuleContentUpdateAll get updateAll => _RuleContentUpdateAllImpl(this);
}

sealed class _RuleContentQueryUpdate {
  int call({
    int? bookSourceId,
    String? content,
    String? nextContentUrl,
    String? replaceRegex,
  });
}

class _RuleContentQueryUpdateImpl implements _RuleContentQueryUpdate {
  const _RuleContentQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<RuleContent> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? content = ignore,
    Object? nextContentUrl = ignore,
    Object? replaceRegex = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (content != ignore) 2: content as String?,
      if (nextContentUrl != ignore) 3: nextContentUrl as String?,
      if (replaceRegex != ignore) 4: replaceRegex as String?,
    });
  }
}

extension RuleContentQueryUpdate on IsarQuery<RuleContent> {
  _RuleContentQueryUpdate get updateFirst =>
      _RuleContentQueryUpdateImpl(this, limit: 1);

  _RuleContentQueryUpdate get updateAll => _RuleContentQueryUpdateImpl(this);
}

class _RuleContentQueryBuilderUpdateImpl implements _RuleContentQueryUpdate {
  const _RuleContentQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<RuleContent, RuleContent, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? content = ignore,
    Object? nextContentUrl = ignore,
    Object? replaceRegex = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceId != ignore) 1: bookSourceId as int?,
        if (content != ignore) 2: content as String?,
        if (nextContentUrl != ignore) 3: nextContentUrl as String?,
        if (replaceRegex != ignore) 4: replaceRegex as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension RuleContentQueryBuilderUpdate
    on QueryBuilder<RuleContent, RuleContent, QOperations> {
  _RuleContentQueryUpdate get updateFirst =>
      _RuleContentQueryBuilderUpdateImpl(this, limit: 1);

  _RuleContentQueryUpdate get updateAll =>
      _RuleContentQueryBuilderUpdateImpl(this);
}

extension RuleContentQueryFilter
    on QueryBuilder<RuleContent, RuleContent, QFilterCondition> {
  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      bookSourceIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      bookSourceIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      bookSourceIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      bookSourceIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      bookSourceIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      bookSourceIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> contentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> contentLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> contentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      nextContentUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterFilterCondition>
      replaceRegexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }
}

extension RuleContentQueryObject
    on QueryBuilder<RuleContent, RuleContent, QFilterCondition> {}

extension RuleContentQuerySortBy
    on QueryBuilder<RuleContent, RuleContent, QSortBy> {
  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy>
      sortByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByContentDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByNextContentUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByNextContentUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByReplaceRegex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> sortByReplaceRegexDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension RuleContentQuerySortThenBy
    on QueryBuilder<RuleContent, RuleContent, QSortThenBy> {
  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy>
      thenByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByContentDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByNextContentUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByNextContentUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByReplaceRegex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterSortBy> thenByReplaceRegexDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension RuleContentQueryWhereDistinct
    on QueryBuilder<RuleContent, RuleContent, QDistinct> {
  QueryBuilder<RuleContent, RuleContent, QAfterDistinct>
      distinctByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterDistinct>
      distinctByNextContentUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleContent, RuleContent, QAfterDistinct> distinctByReplaceRegex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }
}

extension RuleContentQueryProperty1
    on QueryBuilder<RuleContent, RuleContent, QProperty> {
  QueryBuilder<RuleContent, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleContent, int, QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleContent, String?, QAfterProperty> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleContent, String?, QAfterProperty> nextContentUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleContent, String?, QAfterProperty> replaceRegexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension RuleContentQueryProperty2<R>
    on QueryBuilder<RuleContent, R, QAfterProperty> {
  QueryBuilder<RuleContent, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleContent, (R, int), QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleContent, (R, String?), QAfterProperty> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleContent, (R, String?), QAfterProperty>
      nextContentUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleContent, (R, String?), QAfterProperty>
      replaceRegexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension RuleContentQueryProperty3<R1, R2>
    on QueryBuilder<RuleContent, (R1, R2), QAfterProperty> {
  QueryBuilder<RuleContent, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleContent, (R1, R2, int), QOperations> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleContent, (R1, R2, String?), QOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleContent, (R1, R2, String?), QOperations>
      nextContentUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleContent, (R1, R2, String?), QOperations>
      replaceRegexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetRuleSearchCollection on Isar {
  IsarCollection<int, RuleSearch> get ruleSearchs => this.collection();
}

const RuleSearchSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'RuleSearch',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'author',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bookList',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'bookUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'coverUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'intro',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'kind',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'lastChapter',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'wordCount',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'tocUrl',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, RuleSearch>(
    serialize: serializeRuleSearch,
    deserialize: deserializeRuleSearch,
    deserializeProperty: deserializeRuleSearchProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeRuleSearch(IsarWriter writer, RuleSearch object) {
  IsarCore.writeLong(writer, 1, object.bookSourceId);
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.author;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.bookList;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.bookUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  {
    final value = object.coverUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 6);
    } else {
      IsarCore.writeString(writer, 6, value);
    }
  }
  {
    final value = object.intro;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  {
    final value = object.kind;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      IsarCore.writeString(writer, 8, value);
    }
  }
  {
    final value = object.lastChapter;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      IsarCore.writeString(writer, 9, value);
    }
  }
  {
    final value = object.wordCount;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      IsarCore.writeString(writer, 10, value);
    }
  }
  {
    final value = object.tocUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  return object.id;
}

@isarProtected
RuleSearch deserializeRuleSearch(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _bookSourceId;
  _bookSourceId = IsarCore.readLong(reader, 1);
  final String? _name;
  _name = IsarCore.readString(reader, 2);
  final String? _author;
  _author = IsarCore.readString(reader, 3);
  final String? _bookList;
  _bookList = IsarCore.readString(reader, 4);
  final String? _bookUrl;
  _bookUrl = IsarCore.readString(reader, 5);
  final String? _coverUrl;
  _coverUrl = IsarCore.readString(reader, 6);
  final String? _intro;
  _intro = IsarCore.readString(reader, 7);
  final String? _kind;
  _kind = IsarCore.readString(reader, 8);
  final String? _lastChapter;
  _lastChapter = IsarCore.readString(reader, 9);
  final String? _wordCount;
  _wordCount = IsarCore.readString(reader, 10);
  final String? _tocUrl;
  _tocUrl = IsarCore.readString(reader, 11);
  final object = RuleSearch(
    id: _id,
    bookSourceId: _bookSourceId,
    name: _name,
    author: _author,
    bookList: _bookList,
    bookUrl: _bookUrl,
    coverUrl: _coverUrl,
    intro: _intro,
    kind: _kind,
    lastChapter: _lastChapter,
    wordCount: _wordCount,
    tocUrl: _tocUrl,
  );
  return object;
}

@isarProtected
dynamic deserializeRuleSearchProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      return IsarCore.readString(reader, 6);
    case 7:
      return IsarCore.readString(reader, 7);
    case 8:
      return IsarCore.readString(reader, 8);
    case 9:
      return IsarCore.readString(reader, 9);
    case 10:
      return IsarCore.readString(reader, 10);
    case 11:
      return IsarCore.readString(reader, 11);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _RuleSearchUpdate {
  bool call({
    required int id,
    int? bookSourceId,
    String? name,
    String? author,
    String? bookList,
    String? bookUrl,
    String? coverUrl,
    String? intro,
    String? kind,
    String? lastChapter,
    String? wordCount,
    String? tocUrl,
  });
}

class _RuleSearchUpdateImpl implements _RuleSearchUpdate {
  const _RuleSearchUpdateImpl(this.collection);

  final IsarCollection<int, RuleSearch> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? bookList = ignore,
    Object? bookUrl = ignore,
    Object? coverUrl = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? wordCount = ignore,
    Object? tocUrl = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceId != ignore) 1: bookSourceId as int?,
          if (name != ignore) 2: name as String?,
          if (author != ignore) 3: author as String?,
          if (bookList != ignore) 4: bookList as String?,
          if (bookUrl != ignore) 5: bookUrl as String?,
          if (coverUrl != ignore) 6: coverUrl as String?,
          if (intro != ignore) 7: intro as String?,
          if (kind != ignore) 8: kind as String?,
          if (lastChapter != ignore) 9: lastChapter as String?,
          if (wordCount != ignore) 10: wordCount as String?,
          if (tocUrl != ignore) 11: tocUrl as String?,
        }) >
        0;
  }
}

sealed class _RuleSearchUpdateAll {
  int call({
    required List<int> id,
    int? bookSourceId,
    String? name,
    String? author,
    String? bookList,
    String? bookUrl,
    String? coverUrl,
    String? intro,
    String? kind,
    String? lastChapter,
    String? wordCount,
    String? tocUrl,
  });
}

class _RuleSearchUpdateAllImpl implements _RuleSearchUpdateAll {
  const _RuleSearchUpdateAllImpl(this.collection);

  final IsarCollection<int, RuleSearch> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? bookList = ignore,
    Object? bookUrl = ignore,
    Object? coverUrl = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? wordCount = ignore,
    Object? tocUrl = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (name != ignore) 2: name as String?,
      if (author != ignore) 3: author as String?,
      if (bookList != ignore) 4: bookList as String?,
      if (bookUrl != ignore) 5: bookUrl as String?,
      if (coverUrl != ignore) 6: coverUrl as String?,
      if (intro != ignore) 7: intro as String?,
      if (kind != ignore) 8: kind as String?,
      if (lastChapter != ignore) 9: lastChapter as String?,
      if (wordCount != ignore) 10: wordCount as String?,
      if (tocUrl != ignore) 11: tocUrl as String?,
    });
  }
}

extension RuleSearchUpdate on IsarCollection<int, RuleSearch> {
  _RuleSearchUpdate get update => _RuleSearchUpdateImpl(this);

  _RuleSearchUpdateAll get updateAll => _RuleSearchUpdateAllImpl(this);
}

sealed class _RuleSearchQueryUpdate {
  int call({
    int? bookSourceId,
    String? name,
    String? author,
    String? bookList,
    String? bookUrl,
    String? coverUrl,
    String? intro,
    String? kind,
    String? lastChapter,
    String? wordCount,
    String? tocUrl,
  });
}

class _RuleSearchQueryUpdateImpl implements _RuleSearchQueryUpdate {
  const _RuleSearchQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<RuleSearch> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? bookList = ignore,
    Object? bookUrl = ignore,
    Object? coverUrl = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? wordCount = ignore,
    Object? tocUrl = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (name != ignore) 2: name as String?,
      if (author != ignore) 3: author as String?,
      if (bookList != ignore) 4: bookList as String?,
      if (bookUrl != ignore) 5: bookUrl as String?,
      if (coverUrl != ignore) 6: coverUrl as String?,
      if (intro != ignore) 7: intro as String?,
      if (kind != ignore) 8: kind as String?,
      if (lastChapter != ignore) 9: lastChapter as String?,
      if (wordCount != ignore) 10: wordCount as String?,
      if (tocUrl != ignore) 11: tocUrl as String?,
    });
  }
}

extension RuleSearchQueryUpdate on IsarQuery<RuleSearch> {
  _RuleSearchQueryUpdate get updateFirst =>
      _RuleSearchQueryUpdateImpl(this, limit: 1);

  _RuleSearchQueryUpdate get updateAll => _RuleSearchQueryUpdateImpl(this);
}

class _RuleSearchQueryBuilderUpdateImpl implements _RuleSearchQueryUpdate {
  const _RuleSearchQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<RuleSearch, RuleSearch, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? name = ignore,
    Object? author = ignore,
    Object? bookList = ignore,
    Object? bookUrl = ignore,
    Object? coverUrl = ignore,
    Object? intro = ignore,
    Object? kind = ignore,
    Object? lastChapter = ignore,
    Object? wordCount = ignore,
    Object? tocUrl = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceId != ignore) 1: bookSourceId as int?,
        if (name != ignore) 2: name as String?,
        if (author != ignore) 3: author as String?,
        if (bookList != ignore) 4: bookList as String?,
        if (bookUrl != ignore) 5: bookUrl as String?,
        if (coverUrl != ignore) 6: coverUrl as String?,
        if (intro != ignore) 7: intro as String?,
        if (kind != ignore) 8: kind as String?,
        if (lastChapter != ignore) 9: lastChapter as String?,
        if (wordCount != ignore) 10: wordCount as String?,
        if (tocUrl != ignore) 11: tocUrl as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension RuleSearchQueryBuilderUpdate
    on QueryBuilder<RuleSearch, RuleSearch, QOperations> {
  _RuleSearchQueryUpdate get updateFirst =>
      _RuleSearchQueryBuilderUpdateImpl(this, limit: 1);

  _RuleSearchQueryUpdate get updateAll =>
      _RuleSearchQueryBuilderUpdateImpl(this);
}

extension RuleSearchQueryFilter
    on QueryBuilder<RuleSearch, RuleSearch, QFilterCondition> {
  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookSourceIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookSourceIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookSourceIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookSourceIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookSourceIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookSourceIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      authorIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      authorGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      authorLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> authorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      authorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookListMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> bookUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      bookUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> coverUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      coverUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      introGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      introLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> introIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      introIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      kindGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      kindLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> kindIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 9,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      lastChapterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> wordCountEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> wordCountLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> wordCountBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> wordCountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> wordCountContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> wordCountMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      wordCountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      tocUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      tocUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      tocUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition> tocUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterFilterCondition>
      tocUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }
}

extension RuleSearchQueryObject
    on QueryBuilder<RuleSearch, RuleSearch, QFilterCondition> {}

extension RuleSearchQuerySortBy
    on QueryBuilder<RuleSearch, RuleSearch, QSortBy> {
  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByAuthorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByBookList(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByBookListDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByBookUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByBookUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByCoverUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByCoverUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByIntro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByIntroDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByKindDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByLastChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByLastChapterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByWordCount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByWordCountDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> sortByTocUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension RuleSearchQuerySortThenBy
    on QueryBuilder<RuleSearch, RuleSearch, QSortThenBy> {
  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByAuthorDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByBookList(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByBookListDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByBookUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByBookUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByCoverUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByCoverUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByIntro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByIntroDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByKindDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByLastChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByLastChapterDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByWordCount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByWordCountDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterSortBy> thenByTocUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension RuleSearchQueryWhereDistinct
    on QueryBuilder<RuleSearch, RuleSearch, QDistinct> {
  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct>
      distinctByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByAuthor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByBookList(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByBookUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByCoverUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByIntro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByKind(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByLastChapter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByWordCount(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleSearch, RuleSearch, QAfterDistinct> distinctByTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }
}

extension RuleSearchQueryProperty1
    on QueryBuilder<RuleSearch, RuleSearch, QProperty> {
  QueryBuilder<RuleSearch, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleSearch, int, QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> bookListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> bookUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> introProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> lastChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<RuleSearch, String?, QAfterProperty> tocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }
}

extension RuleSearchQueryProperty2<R>
    on QueryBuilder<RuleSearch, R, QAfterProperty> {
  QueryBuilder<RuleSearch, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleSearch, (R, int), QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> bookListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> bookUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> introProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> lastChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<RuleSearch, (R, String?), QAfterProperty> tocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }
}

extension RuleSearchQueryProperty3<R1, R2>
    on QueryBuilder<RuleSearch, (R1, R2), QAfterProperty> {
  QueryBuilder<RuleSearch, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, int), QOperations> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> authorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> bookListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> bookUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> introProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> kindProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations>
      lastChapterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<RuleSearch, (R1, R2, String?), QOperations> tocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetRuleTocCollection on Isar {
  IsarCollection<int, RuleToc> get ruleTocs => this.collection();
}

const RuleTocSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'RuleToc',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'bookSourceId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'chapterList',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'chapterName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'chapterUrl',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'nextTocUrl',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, RuleToc>(
    serialize: serializeRuleToc,
    deserialize: deserializeRuleToc,
    deserializeProperty: deserializeRuleTocProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeRuleToc(IsarWriter writer, RuleToc object) {
  IsarCore.writeLong(writer, 1, object.bookSourceId);
  {
    final value = object.chapterList;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.chapterName;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.chapterUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.nextTocUrl;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  return object.id;
}

@isarProtected
RuleToc deserializeRuleToc(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _bookSourceId;
  _bookSourceId = IsarCore.readLong(reader, 1);
  final String? _chapterList;
  _chapterList = IsarCore.readString(reader, 2);
  final String? _chapterName;
  _chapterName = IsarCore.readString(reader, 3);
  final String? _chapterUrl;
  _chapterUrl = IsarCore.readString(reader, 4);
  final String? _nextTocUrl;
  _nextTocUrl = IsarCore.readString(reader, 5);
  final object = RuleToc(
    id: _id,
    bookSourceId: _bookSourceId,
    chapterList: _chapterList,
    chapterName: _chapterName,
    chapterUrl: _chapterUrl,
    nextTocUrl: _nextTocUrl,
  );
  return object;
}

@isarProtected
dynamic deserializeRuleTocProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      return IsarCore.readString(reader, 5);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _RuleTocUpdate {
  bool call({
    required int id,
    int? bookSourceId,
    String? chapterList,
    String? chapterName,
    String? chapterUrl,
    String? nextTocUrl,
  });
}

class _RuleTocUpdateImpl implements _RuleTocUpdate {
  const _RuleTocUpdateImpl(this.collection);

  final IsarCollection<int, RuleToc> collection;

  @override
  bool call({
    required int id,
    Object? bookSourceId = ignore,
    Object? chapterList = ignore,
    Object? chapterName = ignore,
    Object? chapterUrl = ignore,
    Object? nextTocUrl = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (bookSourceId != ignore) 1: bookSourceId as int?,
          if (chapterList != ignore) 2: chapterList as String?,
          if (chapterName != ignore) 3: chapterName as String?,
          if (chapterUrl != ignore) 4: chapterUrl as String?,
          if (nextTocUrl != ignore) 5: nextTocUrl as String?,
        }) >
        0;
  }
}

sealed class _RuleTocUpdateAll {
  int call({
    required List<int> id,
    int? bookSourceId,
    String? chapterList,
    String? chapterName,
    String? chapterUrl,
    String? nextTocUrl,
  });
}

class _RuleTocUpdateAllImpl implements _RuleTocUpdateAll {
  const _RuleTocUpdateAllImpl(this.collection);

  final IsarCollection<int, RuleToc> collection;

  @override
  int call({
    required List<int> id,
    Object? bookSourceId = ignore,
    Object? chapterList = ignore,
    Object? chapterName = ignore,
    Object? chapterUrl = ignore,
    Object? nextTocUrl = ignore,
  }) {
    return collection.updateProperties(id, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (chapterList != ignore) 2: chapterList as String?,
      if (chapterName != ignore) 3: chapterName as String?,
      if (chapterUrl != ignore) 4: chapterUrl as String?,
      if (nextTocUrl != ignore) 5: nextTocUrl as String?,
    });
  }
}

extension RuleTocUpdate on IsarCollection<int, RuleToc> {
  _RuleTocUpdate get update => _RuleTocUpdateImpl(this);

  _RuleTocUpdateAll get updateAll => _RuleTocUpdateAllImpl(this);
}

sealed class _RuleTocQueryUpdate {
  int call({
    int? bookSourceId,
    String? chapterList,
    String? chapterName,
    String? chapterUrl,
    String? nextTocUrl,
  });
}

class _RuleTocQueryUpdateImpl implements _RuleTocQueryUpdate {
  const _RuleTocQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<RuleToc> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? chapterList = ignore,
    Object? chapterName = ignore,
    Object? chapterUrl = ignore,
    Object? nextTocUrl = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (bookSourceId != ignore) 1: bookSourceId as int?,
      if (chapterList != ignore) 2: chapterList as String?,
      if (chapterName != ignore) 3: chapterName as String?,
      if (chapterUrl != ignore) 4: chapterUrl as String?,
      if (nextTocUrl != ignore) 5: nextTocUrl as String?,
    });
  }
}

extension RuleTocQueryUpdate on IsarQuery<RuleToc> {
  _RuleTocQueryUpdate get updateFirst =>
      _RuleTocQueryUpdateImpl(this, limit: 1);

  _RuleTocQueryUpdate get updateAll => _RuleTocQueryUpdateImpl(this);
}

class _RuleTocQueryBuilderUpdateImpl implements _RuleTocQueryUpdate {
  const _RuleTocQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<RuleToc, RuleToc, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? bookSourceId = ignore,
    Object? chapterList = ignore,
    Object? chapterName = ignore,
    Object? chapterUrl = ignore,
    Object? nextTocUrl = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (bookSourceId != ignore) 1: bookSourceId as int?,
        if (chapterList != ignore) 2: chapterList as String?,
        if (chapterName != ignore) 3: chapterName as String?,
        if (chapterUrl != ignore) 4: chapterUrl as String?,
        if (nextTocUrl != ignore) 5: nextTocUrl as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension RuleTocQueryBuilderUpdate
    on QueryBuilder<RuleToc, RuleToc, QOperations> {
  _RuleTocQueryUpdate get updateFirst =>
      _RuleTocQueryBuilderUpdateImpl(this, limit: 1);

  _RuleTocQueryUpdate get updateAll => _RuleTocQueryBuilderUpdateImpl(this);
}

extension RuleTocQueryFilter
    on QueryBuilder<RuleToc, RuleToc, QFilterCondition> {
  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> bookSourceIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> bookSourceIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      bookSourceIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> bookSourceIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      bookSourceIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> bookSourceIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterListGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterListLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterNameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterNameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      chapterUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> chapterUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      nextTocUrlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition>
      nextTocUrlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterFilterCondition> nextTocUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }
}

extension RuleTocQueryObject
    on QueryBuilder<RuleToc, RuleToc, QFilterCondition> {}

extension RuleTocQuerySortBy on QueryBuilder<RuleToc, RuleToc, QSortBy> {
  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByChapterList(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByChapterListDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByChapterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByChapterNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByChapterUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByChapterUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByNextTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> sortByNextTocUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension RuleTocQuerySortThenBy
    on QueryBuilder<RuleToc, RuleToc, QSortThenBy> {
  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByBookSourceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByChapterList(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByChapterListDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByChapterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByChapterNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByChapterUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByChapterUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByNextTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterSortBy> thenByNextTocUrlDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension RuleTocQueryWhereDistinct
    on QueryBuilder<RuleToc, RuleToc, QDistinct> {
  QueryBuilder<RuleToc, RuleToc, QAfterDistinct> distinctByBookSourceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterDistinct> distinctByChapterList(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterDistinct> distinctByChapterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterDistinct> distinctByChapterUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RuleToc, RuleToc, QAfterDistinct> distinctByNextTocUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }
}

extension RuleTocQueryProperty1 on QueryBuilder<RuleToc, RuleToc, QProperty> {
  QueryBuilder<RuleToc, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleToc, int, QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleToc, String?, QAfterProperty> chapterListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleToc, String?, QAfterProperty> chapterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleToc, String?, QAfterProperty> chapterUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleToc, String?, QAfterProperty> nextTocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension RuleTocQueryProperty2<R> on QueryBuilder<RuleToc, R, QAfterProperty> {
  QueryBuilder<RuleToc, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleToc, (R, int), QAfterProperty> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleToc, (R, String?), QAfterProperty> chapterListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleToc, (R, String?), QAfterProperty> chapterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleToc, (R, String?), QAfterProperty> chapterUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleToc, (R, String?), QAfterProperty> nextTocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension RuleTocQueryProperty3<R1, R2>
    on QueryBuilder<RuleToc, (R1, R2), QAfterProperty> {
  QueryBuilder<RuleToc, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<RuleToc, (R1, R2, int), QOperations> bookSourceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<RuleToc, (R1, R2, String?), QOperations> chapterListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<RuleToc, (R1, R2, String?), QOperations> chapterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<RuleToc, (R1, R2, String?), QOperations> chapterUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<RuleToc, (R1, R2, String?), QOperations> nextTocUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookInfoImpl _$$BookInfoImplFromJson(Map<String, dynamic> json) =>
    _$BookInfoImpl(
      id: json['id'] as int,
      bookSourceId: json['bookSourceId'] as int,
      name: json['name'] as String,
      author: json['author'] as String?,
      cover: json['cover'] as String?,
    );

Map<String, dynamic> _$$BookInfoImplToJson(_$BookInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceId': instance.bookSourceId,
      'name': instance.name,
      'author': instance.author,
      'cover': instance.cover,
    };

_$BookSearchInfoImpl _$$BookSearchInfoImplFromJson(Map<String, dynamic> json) =>
    _$BookSearchInfoImpl(
      id: json['id'] as int,
      bookSourceId: json['bookSourceId'] as int,
      searchUrl: json['searchUrl'] as String,
      method: json['method'] as String,
      charset: json['charset'] as String,
      headers: json['headers'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$BookSearchInfoImplToJson(
        _$BookSearchInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceId': instance.bookSourceId,
      'searchUrl': instance.searchUrl,
      'method': instance.method,
      'charset': instance.charset,
      'headers': instance.headers,
      'body': instance.body,
    };

_$BookSourceImpl _$$BookSourceImplFromJson(Map<String, dynamic> json) =>
    _$BookSourceImpl(
      id: json['id'] as int,
      bookSourceName: json['bookSourceName'] as String,
      bookSourceGroup: json['bookSourceGroup'] as String?,
      bookSourceComment: json['bookSourceComment'] as String?,
      bookSourceUrl: json['bookSourceUrl'] as String,
      customOrder: json['customOrder'] as int?,
      bookUrlPattern: json['bookUrlPattern'] as String?,
      bookSourceType: json['bookSourceType'] as int?,
      enabled: json['enabled'] as bool? ?? false,
      enabledCookieJar: json['enabledCookieJar'] as bool?,
      enabledExplore: json['enabledExplore'] as bool?,
      header: json['header'] as String?,
      loginUrl: json['loginUrl'] as String?,
      lastUpdateTime: json['lastUpdateTime'] as int?,
      exploreUrl: json['exploreUrl'] as String?,
      searchUrl: json['searchUrl'] as String?,
      weight: json['weight'] as int?,
      isEnabled: json['isEnabled'] as bool?,
    );

Map<String, dynamic> _$$BookSourceImplToJson(_$BookSourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceName': instance.bookSourceName,
      'bookSourceGroup': instance.bookSourceGroup,
      'bookSourceComment': instance.bookSourceComment,
      'bookSourceUrl': instance.bookSourceUrl,
      'customOrder': instance.customOrder,
      'bookUrlPattern': instance.bookUrlPattern,
      'bookSourceType': instance.bookSourceType,
      'enabled': instance.enabled,
      'enabledCookieJar': instance.enabledCookieJar,
      'enabledExplore': instance.enabledExplore,
      'header': instance.header,
      'loginUrl': instance.loginUrl,
      'lastUpdateTime': instance.lastUpdateTime,
      'exploreUrl': instance.exploreUrl,
      'searchUrl': instance.searchUrl,
      'weight': instance.weight,
      'isEnabled': instance.isEnabled,
    };

_$RuleBookInfoImpl _$$RuleBookInfoImplFromJson(Map<String, dynamic> json) =>
    _$RuleBookInfoImpl(
      id: json['id'] as int,
      bookSourceId: json['bookSourceId'] as int,
      author: json['author'] as String?,
      coverUrl: json['coverUrl'] as String?,
      init: json['init'] as String?,
      intro: json['intro'] as String?,
      kind: json['kind'] as String?,
      lastChapter: json['lastChapter'] as String?,
      name: json['name'] as String?,
      tocUrl: json['tocUrl'] as String?,
      wordCount: json['wordCount'] as String?,
      lastReadChapter: json['lastReadChapter'] as String?,
    );

Map<String, dynamic> _$$RuleBookInfoImplToJson(_$RuleBookInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceId': instance.bookSourceId,
      'author': instance.author,
      'coverUrl': instance.coverUrl,
      'init': instance.init,
      'intro': instance.intro,
      'kind': instance.kind,
      'lastChapter': instance.lastChapter,
      'name': instance.name,
      'tocUrl': instance.tocUrl,
      'wordCount': instance.wordCount,
      'lastReadChapter': instance.lastReadChapter,
    };

_$RuleContentImpl _$$RuleContentImplFromJson(Map<String, dynamic> json) =>
    _$RuleContentImpl(
      id: json['id'] as int,
      bookSourceId: json['bookSourceId'] as int,
      content: json['content'] as String?,
      nextContentUrl: json['nextContentUrl'] as String?,
      replaceRegex: json['replaceRegex'] as String?,
    );

Map<String, dynamic> _$$RuleContentImplToJson(_$RuleContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceId': instance.bookSourceId,
      'content': instance.content,
      'nextContentUrl': instance.nextContentUrl,
      'replaceRegex': instance.replaceRegex,
    };

_$RuleSearchImpl _$$RuleSearchImplFromJson(Map<String, dynamic> json) =>
    _$RuleSearchImpl(
      id: json['id'] as int,
      bookSourceId: json['bookSourceId'] as int,
      name: json['name'] as String?,
      author: json['author'] as String?,
      bookList: json['bookList'] as String?,
      bookUrl: json['bookUrl'] as String?,
      coverUrl: json['coverUrl'] as String?,
      intro: json['intro'] as String?,
      kind: json['kind'] as String?,
      lastChapter: json['lastChapter'] as String?,
      wordCount: json['wordCount'] as String?,
      tocUrl: json['tocUrl'] as String?,
    );

Map<String, dynamic> _$$RuleSearchImplToJson(_$RuleSearchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceId': instance.bookSourceId,
      'name': instance.name,
      'author': instance.author,
      'bookList': instance.bookList,
      'bookUrl': instance.bookUrl,
      'coverUrl': instance.coverUrl,
      'intro': instance.intro,
      'kind': instance.kind,
      'lastChapter': instance.lastChapter,
      'wordCount': instance.wordCount,
      'tocUrl': instance.tocUrl,
    };

_$RuleTocImpl _$$RuleTocImplFromJson(Map<String, dynamic> json) =>
    _$RuleTocImpl(
      id: json['id'] as int,
      bookSourceId: json['bookSourceId'] as int,
      chapterList: json['chapterList'] as String?,
      chapterName: json['chapterName'] as String?,
      chapterUrl: json['chapterUrl'] as String?,
      nextTocUrl: json['nextTocUrl'] as String?,
    );

Map<String, dynamic> _$$RuleTocImplToJson(_$RuleTocImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookSourceId': instance.bookSourceId,
      'chapterList': instance.chapterList,
      'chapterName': instance.chapterName,
      'chapterUrl': instance.chapterUrl,
      'nextTocUrl': instance.nextTocUrl,
    };
