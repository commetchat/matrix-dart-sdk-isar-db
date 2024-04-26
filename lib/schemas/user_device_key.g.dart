// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_key.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserDeviceKeyCollection on Isar {
  IsarCollection<UserDeviceKey> get userDeviceKeys => this.collection();
}

const UserDeviceKeySchema = CollectionSchema(
  name: r'UserDeviceKey',
  id: 3483601016671137722,
  properties: {
    r'blocked': PropertySchema(
      id: 0,
      name: r'blocked',
      type: IsarType.bool,
    ),
    r'content': PropertySchema(
      id: 1,
      name: r'content',
      type: IsarType.string,
    ),
    r'deviceId': PropertySchema(
      id: 2,
      name: r'deviceId',
      type: IsarType.string,
    ),
    r'lastActive': PropertySchema(
      id: 3,
      name: r'lastActive',
      type: IsarType.long,
    ),
    r'lastSentMessage': PropertySchema(
      id: 4,
      name: r'lastSentMessage',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 5,
      name: r'userId',
      type: IsarType.string,
    ),
    r'verified': PropertySchema(
      id: 6,
      name: r'verified',
      type: IsarType.bool,
    )
  },
  estimateSize: _userDeviceKeyEstimateSize,
  serialize: _userDeviceKeySerialize,
  deserialize: _userDeviceKeyDeserialize,
  deserializeProp: _userDeviceKeyDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userDeviceKeyGetId,
  getLinks: _userDeviceKeyGetLinks,
  attach: _userDeviceKeyAttach,
  version: '3.1.0+1',
);

int _userDeviceKeyEstimateSize(
  UserDeviceKey object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.deviceId.length * 3;
  bytesCount += 3 + object.lastSentMessage.length * 3;
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _userDeviceKeySerialize(
  UserDeviceKey object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.blocked);
  writer.writeString(offsets[1], object.content);
  writer.writeString(offsets[2], object.deviceId);
  writer.writeLong(offsets[3], object.lastActive);
  writer.writeString(offsets[4], object.lastSentMessage);
  writer.writeString(offsets[5], object.userId);
  writer.writeBool(offsets[6], object.verified);
}

UserDeviceKey _userDeviceKeyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserDeviceKey();
  object.blocked = reader.readBool(offsets[0]);
  object.content = reader.readString(offsets[1]);
  object.deviceId = reader.readString(offsets[2]);
  object.id = id;
  object.lastActive = reader.readLong(offsets[3]);
  object.lastSentMessage = reader.readString(offsets[4]);
  object.userId = reader.readString(offsets[5]);
  object.verified = reader.readBool(offsets[6]);
  return object;
}

P _userDeviceKeyDeserializeProp<P>(
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
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userDeviceKeyGetId(UserDeviceKey object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userDeviceKeyGetLinks(UserDeviceKey object) {
  return [];
}

void _userDeviceKeyAttach(
    IsarCollection<dynamic> col, Id id, UserDeviceKey object) {
  object.id = id;
}

extension UserDeviceKeyQueryWhereSort
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QWhere> {
  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserDeviceKeyQueryWhere
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QWhereClause> {
  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterWhereClause> idBetween(
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

extension UserDeviceKeyQueryFilter
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QFilterCondition> {
  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      blockedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blocked',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      contentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      contentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deviceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deviceId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deviceId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deviceId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      deviceIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deviceId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastActiveEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastActive',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastActiveGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastActive',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastActiveLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastActive',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastActiveBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastActive',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastSentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastSentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastSentMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastSentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastSentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastSentMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastSentMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSentMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      lastSentMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastSentMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
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

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterFilterCondition>
      verifiedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verified',
        value: value,
      ));
    });
  }
}

extension UserDeviceKeyQueryObject
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QFilterCondition> {}

extension UserDeviceKeyQueryLinks
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QFilterCondition> {}

extension UserDeviceKeyQuerySortBy
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QSortBy> {
  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByDeviceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceId', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      sortByDeviceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceId', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByLastActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastActive', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      sortByLastActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastActive', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      sortByLastSentMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSentMessage', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      sortByLastSentMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSentMessage', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> sortByVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      sortByVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.desc);
    });
  }
}

extension UserDeviceKeyQuerySortThenBy
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QSortThenBy> {
  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByDeviceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceId', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      thenByDeviceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deviceId', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByLastActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastActive', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      thenByLastActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastActive', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      thenByLastSentMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSentMessage', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      thenByLastSentMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSentMessage', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy> thenByVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.asc);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QAfterSortBy>
      thenByVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verified', Sort.desc);
    });
  }
}

extension UserDeviceKeyQueryWhereDistinct
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> {
  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> distinctByBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blocked');
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> distinctByDeviceId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deviceId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> distinctByLastActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastActive');
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct>
      distinctByLastSentMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSentMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDeviceKey, UserDeviceKey, QDistinct> distinctByVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'verified');
    });
  }
}

extension UserDeviceKeyQueryProperty
    on QueryBuilder<UserDeviceKey, UserDeviceKey, QQueryProperty> {
  QueryBuilder<UserDeviceKey, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserDeviceKey, bool, QQueryOperations> blockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blocked');
    });
  }

  QueryBuilder<UserDeviceKey, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<UserDeviceKey, String, QQueryOperations> deviceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deviceId');
    });
  }

  QueryBuilder<UserDeviceKey, int, QQueryOperations> lastActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastActive');
    });
  }

  QueryBuilder<UserDeviceKey, String, QQueryOperations>
      lastSentMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSentMessage');
    });
  }

  QueryBuilder<UserDeviceKey, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<UserDeviceKey, bool, QQueryOperations> verifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'verified');
    });
  }
}
