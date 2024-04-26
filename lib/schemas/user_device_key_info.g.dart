// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_key_info.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserDeviceKeyInfoCollection on Isar {
  IsarCollection<UserDeviceKeyInfo> get userDeviceKeyInfos => this.collection();
}

const UserDeviceKeyInfoSchema = CollectionSchema(
  name: r'UserDeviceKeyInfo',
  id: 6872233131959262634,
  properties: {
    r'outdated': PropertySchema(
      id: 0,
      name: r'outdated',
      type: IsarType.bool,
    ),
    r'userId': PropertySchema(
      id: 1,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _userDeviceKeyInfoEstimateSize,
  serialize: _userDeviceKeyInfoSerialize,
  deserialize: _userDeviceKeyInfoDeserialize,
  deserializeProp: _userDeviceKeyInfoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userDeviceKeyInfoGetId,
  getLinks: _userDeviceKeyInfoGetLinks,
  attach: _userDeviceKeyInfoAttach,
  version: '3.1.0+1',
);

int _userDeviceKeyInfoEstimateSize(
  UserDeviceKeyInfo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _userDeviceKeyInfoSerialize(
  UserDeviceKeyInfo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.outdated);
  writer.writeString(offsets[1], object.userId);
}

UserDeviceKeyInfo _userDeviceKeyInfoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserDeviceKeyInfo();
  object.id = id;
  object.outdated = reader.readBool(offsets[0]);
  object.userId = reader.readString(offsets[1]);
  return object;
}

P _userDeviceKeyInfoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userDeviceKeyInfoGetId(UserDeviceKeyInfo object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userDeviceKeyInfoGetLinks(
    UserDeviceKeyInfo object) {
  return [];
}

void _userDeviceKeyInfoAttach(
    IsarCollection<dynamic> col, Id id, UserDeviceKeyInfo object) {
  object.id = id;
}

extension UserDeviceKeyInfoQueryWhereSort
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QWhere> {
  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserDeviceKeyInfoQueryWhere
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QWhereClause> {
  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterWhereClause>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterWhereClause>
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

extension UserDeviceKeyInfoQueryFilter
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QFilterCondition> {
  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      outdatedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outdated',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      userIdEqualTo(
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      userIdBetween(
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension UserDeviceKeyInfoQueryObject
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QFilterCondition> {}

extension UserDeviceKeyInfoQueryLinks
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QFilterCondition> {}

extension UserDeviceKeyInfoQuerySortBy
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QSortBy> {
  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      sortByOutdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outdated', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      sortByOutdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outdated', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserDeviceKeyInfoQuerySortThenBy
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QSortThenBy> {
  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      thenByOutdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outdated', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      thenByOutdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outdated', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserDeviceKeyInfoQueryWhereDistinct
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QDistinct> {
  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QDistinct>
      distinctByOutdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outdated');
    });
  }

  QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QDistinct>
      distinctByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension UserDeviceKeyInfoQueryProperty
    on QueryBuilder<UserDeviceKeyInfo, UserDeviceKeyInfo, QQueryProperty> {
  QueryBuilder<UserDeviceKeyInfo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserDeviceKeyInfo, bool, QQueryOperations> outdatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outdated');
    });
  }

  QueryBuilder<UserDeviceKeyInfo, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
