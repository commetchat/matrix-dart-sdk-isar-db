// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_fragment_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTimelineFragmentDataCollection on Isar {
  IsarCollection<TimelineFragmentData> get timelineFragmentDatas =>
      this.collection();
}

const TimelineFragmentDataSchema = CollectionSchema(
  name: r'TimelineFragmentData',
  id: -8903422835159099577,
  properties: {
    r'fragments': PropertySchema(
      id: 0,
      name: r'fragments',
      type: IsarType.stringList,
    ),
    r'roomId': PropertySchema(
      id: 1,
      name: r'roomId',
      type: IsarType.string,
    ),
    r'sending': PropertySchema(
      id: 2,
      name: r'sending',
      type: IsarType.bool,
    )
  },
  estimateSize: _timelineFragmentDataEstimateSize,
  serialize: _timelineFragmentDataSerialize,
  deserialize: _timelineFragmentDataDeserialize,
  deserializeProp: _timelineFragmentDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _timelineFragmentDataGetId,
  getLinks: _timelineFragmentDataGetLinks,
  attach: _timelineFragmentDataAttach,
  version: '3.1.0+1',
);

int _timelineFragmentDataEstimateSize(
  TimelineFragmentData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.fragments;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  bytesCount += 3 + object.roomId.length * 3;
  return bytesCount;
}

void _timelineFragmentDataSerialize(
  TimelineFragmentData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.fragments);
  writer.writeString(offsets[1], object.roomId);
  writer.writeBool(offsets[2], object.sending);
}

TimelineFragmentData _timelineFragmentDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TimelineFragmentData();
  object.fragments = reader.readStringList(offsets[0]);
  object.id = id;
  object.roomId = reader.readString(offsets[1]);
  object.sending = reader.readBool(offsets[2]);
  return object;
}

P _timelineFragmentDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _timelineFragmentDataGetId(TimelineFragmentData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _timelineFragmentDataGetLinks(
    TimelineFragmentData object) {
  return [];
}

void _timelineFragmentDataAttach(
    IsarCollection<dynamic> col, Id id, TimelineFragmentData object) {
  object.id = id;
}

extension TimelineFragmentDataQueryWhereSort
    on QueryBuilder<TimelineFragmentData, TimelineFragmentData, QWhere> {
  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TimelineFragmentDataQueryWhere
    on QueryBuilder<TimelineFragmentData, TimelineFragmentData, QWhereClause> {
  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterWhereClause>
      idBetween(
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

extension TimelineFragmentDataQueryFilter on QueryBuilder<TimelineFragmentData,
    TimelineFragmentData, QFilterCondition> {
  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fragments',
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fragments',
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fragments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fragments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fragments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fragments',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fragments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fragments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
          QAfterFilterCondition>
      fragmentsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fragments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
          QAfterFilterCondition>
      fragmentsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fragments',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fragments',
        value: '',
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fragments',
        value: '',
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fragments',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fragments',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fragments',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fragments',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fragments',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> fragmentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fragments',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roomId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
          QAfterFilterCondition>
      roomIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
          QAfterFilterCondition>
      roomIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'roomId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roomId',
        value: '',
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> roomIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roomId',
        value: '',
      ));
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData,
      QAfterFilterCondition> sendingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sending',
        value: value,
      ));
    });
  }
}

extension TimelineFragmentDataQueryObject on QueryBuilder<TimelineFragmentData,
    TimelineFragmentData, QFilterCondition> {}

extension TimelineFragmentDataQueryLinks on QueryBuilder<TimelineFragmentData,
    TimelineFragmentData, QFilterCondition> {}

extension TimelineFragmentDataQuerySortBy
    on QueryBuilder<TimelineFragmentData, TimelineFragmentData, QSortBy> {
  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      sortByRoomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.asc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      sortByRoomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.desc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      sortBySending() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sending', Sort.asc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      sortBySendingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sending', Sort.desc);
    });
  }
}

extension TimelineFragmentDataQuerySortThenBy
    on QueryBuilder<TimelineFragmentData, TimelineFragmentData, QSortThenBy> {
  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      thenByRoomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.asc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      thenByRoomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.desc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      thenBySending() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sending', Sort.asc);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QAfterSortBy>
      thenBySendingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sending', Sort.desc);
    });
  }
}

extension TimelineFragmentDataQueryWhereDistinct
    on QueryBuilder<TimelineFragmentData, TimelineFragmentData, QDistinct> {
  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QDistinct>
      distinctByFragments() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fragments');
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QDistinct>
      distinctByRoomId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roomId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimelineFragmentData, TimelineFragmentData, QDistinct>
      distinctBySending() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sending');
    });
  }
}

extension TimelineFragmentDataQueryProperty on QueryBuilder<
    TimelineFragmentData, TimelineFragmentData, QQueryProperty> {
  QueryBuilder<TimelineFragmentData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TimelineFragmentData, List<String>?, QQueryOperations>
      fragmentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fragments');
    });
  }

  QueryBuilder<TimelineFragmentData, String, QQueryOperations>
      roomIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roomId');
    });
  }

  QueryBuilder<TimelineFragmentData, bool, QQueryOperations> sendingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sending');
    });
  }
}
