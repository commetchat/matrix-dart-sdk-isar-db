// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPresenceDataCollection on Isar {
  IsarCollection<PresenceData> get presenceDatas => this.collection();
}

const PresenceDataSchema = CollectionSchema(
  name: r'PresenceData',
  id: -7208216661923554305,
  properties: {
    r'presence': PropertySchema(
      id: 0,
      name: r'presence',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 1,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _presenceDataEstimateSize,
  serialize: _presenceDataSerialize,
  deserialize: _presenceDataDeserialize,
  deserializeProp: _presenceDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _presenceDataGetId,
  getLinks: _presenceDataGetLinks,
  attach: _presenceDataAttach,
  version: '3.1.0+1',
);

int _presenceDataEstimateSize(
  PresenceData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.presence.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _presenceDataSerialize(
  PresenceData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.presence);
  writer.writeString(offsets[1], object.userId);
}

PresenceData _presenceDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PresenceData();
  object.id = id;
  object.presence = reader.readString(offsets[0]);
  object.userId = reader.readString(offsets[1]);
  return object;
}

P _presenceDataDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _presenceDataGetId(PresenceData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _presenceDataGetLinks(PresenceData object) {
  return [];
}

void _presenceDataAttach(
    IsarCollection<dynamic> col, Id id, PresenceData object) {
  object.id = id;
}

extension PresenceDataQueryWhereSort
    on QueryBuilder<PresenceData, PresenceData, QWhere> {
  QueryBuilder<PresenceData, PresenceData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PresenceDataQueryWhere
    on QueryBuilder<PresenceData, PresenceData, QWhereClause> {
  QueryBuilder<PresenceData, PresenceData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PresenceData, PresenceData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterWhereClause> idBetween(
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

extension PresenceDataQueryFilter
    on QueryBuilder<PresenceData, PresenceData, QFilterCondition> {
  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'presence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'presence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'presence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'presence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'presence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'presence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'presence',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'presence',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'presence',
        value: '',
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      presenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'presence',
        value: '',
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> userIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> userIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition> userIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension PresenceDataQueryObject
    on QueryBuilder<PresenceData, PresenceData, QFilterCondition> {}

extension PresenceDataQueryLinks
    on QueryBuilder<PresenceData, PresenceData, QFilterCondition> {}

extension PresenceDataQuerySortBy
    on QueryBuilder<PresenceData, PresenceData, QSortBy> {
  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> sortByPresence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presence', Sort.asc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> sortByPresenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presence', Sort.desc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PresenceDataQuerySortThenBy
    on QueryBuilder<PresenceData, PresenceData, QSortThenBy> {
  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> thenByPresence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presence', Sort.asc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> thenByPresenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'presence', Sort.desc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PresenceDataQueryWhereDistinct
    on QueryBuilder<PresenceData, PresenceData, QDistinct> {
  QueryBuilder<PresenceData, PresenceData, QDistinct> distinctByPresence(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'presence', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PresenceData, PresenceData, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension PresenceDataQueryProperty
    on QueryBuilder<PresenceData, PresenceData, QQueryProperty> {
  QueryBuilder<PresenceData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PresenceData, String, QQueryOperations> presenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'presence');
    });
  }

  QueryBuilder<PresenceData, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
