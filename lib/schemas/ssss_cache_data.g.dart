// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssss_cache_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSSSSCacheDataCollection on Isar {
  IsarCollection<SSSSCacheData> get sSSSCacheDatas => this.collection();
}

const SSSSCacheDataSchema = CollectionSchema(
  name: r'SSSSCacheData',
  id: 1639037394616481261,
  properties: {
    r'cipherText': PropertySchema(
      id: 0,
      name: r'cipherText',
      type: IsarType.string,
    ),
    r'content': PropertySchema(
      id: 1,
      name: r'content',
      type: IsarType.string,
    ),
    r'keyId': PropertySchema(
      id: 2,
      name: r'keyId',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _sSSSCacheDataEstimateSize,
  serialize: _sSSSCacheDataSerialize,
  deserialize: _sSSSCacheDataDeserialize,
  deserializeProp: _sSSSCacheDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sSSSCacheDataGetId,
  getLinks: _sSSSCacheDataGetLinks,
  attach: _sSSSCacheDataAttach,
  version: '3.1.0+1',
);

int _sSSSCacheDataEstimateSize(
  SSSSCacheData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cipherText.length * 3;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.keyId.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _sSSSCacheDataSerialize(
  SSSSCacheData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cipherText);
  writer.writeString(offsets[1], object.content);
  writer.writeString(offsets[2], object.keyId);
  writer.writeString(offsets[3], object.type);
}

SSSSCacheData _sSSSCacheDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SSSSCacheData();
  object.cipherText = reader.readString(offsets[0]);
  object.content = reader.readString(offsets[1]);
  object.id = id;
  object.keyId = reader.readString(offsets[2]);
  object.type = reader.readString(offsets[3]);
  return object;
}

P _sSSSCacheDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sSSSCacheDataGetId(SSSSCacheData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sSSSCacheDataGetLinks(SSSSCacheData object) {
  return [];
}

void _sSSSCacheDataAttach(
    IsarCollection<dynamic> col, Id id, SSSSCacheData object) {
  object.id = id;
}

extension SSSSCacheDataQueryWhereSort
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QWhere> {
  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SSSSCacheDataQueryWhere
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QWhereClause> {
  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SSSSCacheDataQueryFilter
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QFilterCondition> {
  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cipherText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cipherText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cipherText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cipherText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cipherText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cipherText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cipherText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cipherText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cipherText',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      cipherTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cipherText',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyId',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      keyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keyId',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension SSSSCacheDataQueryObject
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QFilterCondition> {}

extension SSSSCacheDataQueryLinks
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QFilterCondition> {}

extension SSSSCacheDataQuerySortBy
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QSortBy> {
  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByCipherText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cipherText', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy>
      sortByCipherTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cipherText', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByKeyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyId', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByKeyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyId', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension SSSSCacheDataQuerySortThenBy
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QSortThenBy> {
  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByCipherText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cipherText', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy>
      thenByCipherTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cipherText', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByKeyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyId', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByKeyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyId', Sort.desc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension SSSSCacheDataQueryWhereDistinct
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QDistinct> {
  QueryBuilder<SSSSCacheData, SSSSCacheData, QDistinct> distinctByCipherText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cipherText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QDistinct> distinctByKeyId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'keyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SSSSCacheData, SSSSCacheData, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension SSSSCacheDataQueryProperty
    on QueryBuilder<SSSSCacheData, SSSSCacheData, QQueryProperty> {
  QueryBuilder<SSSSCacheData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SSSSCacheData, String, QQueryOperations> cipherTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cipherText');
    });
  }

  QueryBuilder<SSSSCacheData, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<SSSSCacheData, String, QQueryOperations> keyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keyId');
    });
  }

  QueryBuilder<SSSSCacheData, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
