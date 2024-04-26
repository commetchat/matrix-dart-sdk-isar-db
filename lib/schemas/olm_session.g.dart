// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olm_session.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOlmSessionDataCollection on Isar {
  IsarCollection<OlmSessionData> get olmSessionDatas => this.collection();
}

const OlmSessionDataSchema = CollectionSchema(
  name: r'OlmSessionData',
  id: -7459375331447825691,
  properties: {
    r'identityKey': PropertySchema(
      id: 0,
      name: r'identityKey',
      type: IsarType.string,
    ),
    r'lastReceived': PropertySchema(
      id: 1,
      name: r'lastReceived',
      type: IsarType.long,
    ),
    r'pickle': PropertySchema(
      id: 2,
      name: r'pickle',
      type: IsarType.string,
    ),
    r'sessionId': PropertySchema(
      id: 3,
      name: r'sessionId',
      type: IsarType.string,
    )
  },
  estimateSize: _olmSessionDataEstimateSize,
  serialize: _olmSessionDataSerialize,
  deserialize: _olmSessionDataDeserialize,
  deserializeProp: _olmSessionDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _olmSessionDataGetId,
  getLinks: _olmSessionDataGetLinks,
  attach: _olmSessionDataAttach,
  version: '3.1.0+1',
);

int _olmSessionDataEstimateSize(
  OlmSessionData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.identityKey.length * 3;
  bytesCount += 3 + object.pickle.length * 3;
  bytesCount += 3 + object.sessionId.length * 3;
  return bytesCount;
}

void _olmSessionDataSerialize(
  OlmSessionData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.identityKey);
  writer.writeLong(offsets[1], object.lastReceived);
  writer.writeString(offsets[2], object.pickle);
  writer.writeString(offsets[3], object.sessionId);
}

OlmSessionData _olmSessionDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OlmSessionData();
  object.id = id;
  object.identityKey = reader.readString(offsets[0]);
  object.lastReceived = reader.readLong(offsets[1]);
  object.pickle = reader.readString(offsets[2]);
  object.sessionId = reader.readString(offsets[3]);
  return object;
}

P _olmSessionDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _olmSessionDataGetId(OlmSessionData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _olmSessionDataGetLinks(OlmSessionData object) {
  return [];
}

void _olmSessionDataAttach(
    IsarCollection<dynamic> col, Id id, OlmSessionData object) {
  object.id = id;
}

extension OlmSessionDataQueryWhereSort
    on QueryBuilder<OlmSessionData, OlmSessionData, QWhere> {
  QueryBuilder<OlmSessionData, OlmSessionData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OlmSessionDataQueryWhere
    on QueryBuilder<OlmSessionData, OlmSessionData, QWhereClause> {
  QueryBuilder<OlmSessionData, OlmSessionData, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterWhereClause> idBetween(
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

extension OlmSessionDataQueryFilter
    on QueryBuilder<OlmSessionData, OlmSessionData, QFilterCondition> {
  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
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

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identityKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'identityKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'identityKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'identityKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'identityKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'identityKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'identityKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'identityKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'identityKey',
        value: '',
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      identityKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'identityKey',
        value: '',
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      lastReceivedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastReceived',
        value: value,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      lastReceivedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastReceived',
        value: value,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      lastReceivedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastReceived',
        value: value,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      lastReceivedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastReceived',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pickle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pickle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pickle',
        value: '',
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      pickleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pickle',
        value: '',
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sessionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sessionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sessionId',
        value: '',
      ));
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterFilterCondition>
      sessionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sessionId',
        value: '',
      ));
    });
  }
}

extension OlmSessionDataQueryObject
    on QueryBuilder<OlmSessionData, OlmSessionData, QFilterCondition> {}

extension OlmSessionDataQueryLinks
    on QueryBuilder<OlmSessionData, OlmSessionData, QFilterCondition> {}

extension OlmSessionDataQuerySortBy
    on QueryBuilder<OlmSessionData, OlmSessionData, QSortBy> {
  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      sortByIdentityKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identityKey', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      sortByIdentityKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identityKey', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      sortByLastReceived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReceived', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      sortByLastReceivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReceived', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy> sortByPickle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      sortByPickleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy> sortBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      sortBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }
}

extension OlmSessionDataQuerySortThenBy
    on QueryBuilder<OlmSessionData, OlmSessionData, QSortThenBy> {
  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      thenByIdentityKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identityKey', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      thenByIdentityKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'identityKey', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      thenByLastReceived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReceived', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      thenByLastReceivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReceived', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy> thenByPickle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      thenByPickleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.desc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy> thenBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QAfterSortBy>
      thenBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }
}

extension OlmSessionDataQueryWhereDistinct
    on QueryBuilder<OlmSessionData, OlmSessionData, QDistinct> {
  QueryBuilder<OlmSessionData, OlmSessionData, QDistinct> distinctByIdentityKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'identityKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QDistinct>
      distinctByLastReceived() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastReceived');
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QDistinct> distinctByPickle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pickle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OlmSessionData, OlmSessionData, QDistinct> distinctBySessionId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sessionId', caseSensitive: caseSensitive);
    });
  }
}

extension OlmSessionDataQueryProperty
    on QueryBuilder<OlmSessionData, OlmSessionData, QQueryProperty> {
  QueryBuilder<OlmSessionData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OlmSessionData, String, QQueryOperations> identityKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'identityKey');
    });
  }

  QueryBuilder<OlmSessionData, int, QQueryOperations> lastReceivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastReceived');
    });
  }

  QueryBuilder<OlmSessionData, String, QQueryOperations> pickleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pickle');
    });
  }

  QueryBuilder<OlmSessionData, String, QQueryOperations> sessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sessionId');
    });
  }
}
