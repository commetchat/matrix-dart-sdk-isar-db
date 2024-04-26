// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outbound_group_session.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOutboundGroupSessionDataCollection on Isar {
  IsarCollection<OutboundGroupSessionData> get outboundGroupSessionDatas =>
      this.collection();
}

const OutboundGroupSessionDataSchema = CollectionSchema(
  name: r'OutboundGroupSessionData',
  id: -6811676916824231378,
  properties: {
    r'creationTime': PropertySchema(
      id: 0,
      name: r'creationTime',
      type: IsarType.long,
    ),
    r'deviceIds': PropertySchema(
      id: 1,
      name: r'deviceIds',
      type: IsarType.string,
    ),
    r'pickle': PropertySchema(
      id: 2,
      name: r'pickle',
      type: IsarType.string,
    ),
    r'roomId': PropertySchema(
      id: 3,
      name: r'roomId',
      type: IsarType.string,
    )
  },
  estimateSize: _outboundGroupSessionDataEstimateSize,
  serialize: _outboundGroupSessionDataSerialize,
  deserialize: _outboundGroupSessionDataDeserialize,
  deserializeProp: _outboundGroupSessionDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _outboundGroupSessionDataGetId,
  getLinks: _outboundGroupSessionDataGetLinks,
  attach: _outboundGroupSessionDataAttach,
  version: '3.1.0+1',
);

int _outboundGroupSessionDataEstimateSize(
  OutboundGroupSessionData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.deviceIds.length * 3;
  bytesCount += 3 + object.pickle.length * 3;
  bytesCount += 3 + object.roomId.length * 3;
  return bytesCount;
}

void _outboundGroupSessionDataSerialize(
  OutboundGroupSessionData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.creationTime);
  writer.writeString(offsets[1], object.deviceIds);
  writer.writeString(offsets[2], object.pickle);
  writer.writeString(offsets[3], object.roomId);
}

OutboundGroupSessionData _outboundGroupSessionDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OutboundGroupSessionData();
  object.creationTime = reader.readLong(offsets[0]);
  object.deviceIds = reader.readString(offsets[1]);
  object.id = id;
  object.pickle = reader.readString(offsets[2]);
  object.roomId = reader.readString(offsets[3]);
  return object;
}

P _outboundGroupSessionDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
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

Id _outboundGroupSessionDataGetId(OutboundGroupSessionData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _outboundGroupSessionDataGetLinks(
    OutboundGroupSessionData object) {
  return [];
}

void _outboundGroupSessionDataAttach(
    IsarCollection<dynamic> col, Id id, OutboundGroupSessionData object) {
  object.id = id;
}

extension OutboundGroupSessionDataQueryWhereSort on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QWhere> {
  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OutboundGroupSessionDataQueryWhere on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QWhereClause> {
  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterWhereClause> idBetween(
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

extension OutboundGroupSessionDataQueryFilter on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QFilterCondition> {
  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> creationTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creationTime',
        value: value,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> creationTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creationTime',
        value: value,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> creationTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creationTime',
        value: value,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> creationTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creationTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deviceIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deviceIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deviceIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deviceIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deviceIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
          QAfterFilterCondition>
      deviceIdsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deviceIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
          QAfterFilterCondition>
      deviceIdsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deviceIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceIds',
        value: '',
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> deviceIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deviceIds',
        value: '',
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleEqualTo(
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleGreaterThan(
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleLessThan(
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleBetween(
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleStartsWith(
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleEndsWith(
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
          QAfterFilterCondition>
      pickleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
          QAfterFilterCondition>
      pickleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pickle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pickle',
        value: '',
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> pickleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pickle',
        value: '',
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
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

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> roomIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roomId',
        value: '',
      ));
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData,
      QAfterFilterCondition> roomIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roomId',
        value: '',
      ));
    });
  }
}

extension OutboundGroupSessionDataQueryObject on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QFilterCondition> {}

extension OutboundGroupSessionDataQueryLinks on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QFilterCondition> {}

extension OutboundGroupSessionDataQuerySortBy on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QSortBy> {
  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByCreationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationTime', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByCreationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationTime', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByDeviceIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceIds', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByDeviceIdsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceIds', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByPickle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByPickleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByRoomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      sortByRoomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.desc);
    });
  }
}

extension OutboundGroupSessionDataQuerySortThenBy on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QSortThenBy> {
  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByCreationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationTime', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByCreationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creationTime', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByDeviceIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceIds', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByDeviceIdsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceIds', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByPickle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByPickleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.desc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByRoomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.asc);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QAfterSortBy>
      thenByRoomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.desc);
    });
  }
}

extension OutboundGroupSessionDataQueryWhereDistinct on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QDistinct> {
  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QDistinct>
      distinctByCreationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creationTime');
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QDistinct>
      distinctByDeviceIds({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deviceIds', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QDistinct>
      distinctByPickle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pickle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<OutboundGroupSessionData, OutboundGroupSessionData, QDistinct>
      distinctByRoomId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roomId', caseSensitive: caseSensitive);
    });
  }
}

extension OutboundGroupSessionDataQueryProperty on QueryBuilder<
    OutboundGroupSessionData, OutboundGroupSessionData, QQueryProperty> {
  QueryBuilder<OutboundGroupSessionData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OutboundGroupSessionData, int, QQueryOperations>
      creationTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creationTime');
    });
  }

  QueryBuilder<OutboundGroupSessionData, String, QQueryOperations>
      deviceIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deviceIds');
    });
  }

  QueryBuilder<OutboundGroupSessionData, String, QQueryOperations>
      pickleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pickle');
    });
  }

  QueryBuilder<OutboundGroupSessionData, String, QQueryOperations>
      roomIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roomId');
    });
  }
}
