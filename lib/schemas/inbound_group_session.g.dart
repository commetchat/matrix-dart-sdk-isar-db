// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbound_group_session.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInboundGroupSessionCollection on Isar {
  IsarCollection<InboundGroupSession> get inboundGroupSessions =>
      this.collection();
}

const InboundGroupSessionSchema = CollectionSchema(
  name: r'InboundGroupSession',
  id: -5226937947455708174,
  properties: {
    r'allowedAtIndex': PropertySchema(
      id: 0,
      name: r'allowedAtIndex',
      type: IsarType.string,
    ),
    r'content': PropertySchema(
      id: 1,
      name: r'content',
      type: IsarType.string,
    ),
    r'indexes': PropertySchema(
      id: 2,
      name: r'indexes',
      type: IsarType.string,
    ),
    r'pickle': PropertySchema(
      id: 3,
      name: r'pickle',
      type: IsarType.string,
    ),
    r'roomId': PropertySchema(
      id: 4,
      name: r'roomId',
      type: IsarType.string,
    ),
    r'senderClaimedKey': PropertySchema(
      id: 5,
      name: r'senderClaimedKey',
      type: IsarType.string,
    ),
    r'senderKey': PropertySchema(
      id: 6,
      name: r'senderKey',
      type: IsarType.string,
    ),
    r'sessionId': PropertySchema(
      id: 7,
      name: r'sessionId',
      type: IsarType.string,
    ),
    r'uploaded': PropertySchema(
      id: 8,
      name: r'uploaded',
      type: IsarType.bool,
    )
  },
  estimateSize: _inboundGroupSessionEstimateSize,
  serialize: _inboundGroupSessionSerialize,
  deserialize: _inboundGroupSessionDeserialize,
  deserializeProp: _inboundGroupSessionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _inboundGroupSessionGetId,
  getLinks: _inboundGroupSessionGetLinks,
  attach: _inboundGroupSessionAttach,
  version: '3.1.0+1',
);

int _inboundGroupSessionEstimateSize(
  InboundGroupSession object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.allowedAtIndex.length * 3;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.indexes.length * 3;
  bytesCount += 3 + object.pickle.length * 3;
  bytesCount += 3 + object.roomId.length * 3;
  bytesCount += 3 + object.senderClaimedKey.length * 3;
  bytesCount += 3 + object.senderKey.length * 3;
  bytesCount += 3 + object.sessionId.length * 3;
  return bytesCount;
}

void _inboundGroupSessionSerialize(
  InboundGroupSession object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.allowedAtIndex);
  writer.writeString(offsets[1], object.content);
  writer.writeString(offsets[2], object.indexes);
  writer.writeString(offsets[3], object.pickle);
  writer.writeString(offsets[4], object.roomId);
  writer.writeString(offsets[5], object.senderClaimedKey);
  writer.writeString(offsets[6], object.senderKey);
  writer.writeString(offsets[7], object.sessionId);
  writer.writeBool(offsets[8], object.uploaded);
}

InboundGroupSession _inboundGroupSessionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InboundGroupSession();
  object.allowedAtIndex = reader.readString(offsets[0]);
  object.content = reader.readString(offsets[1]);
  object.id = id;
  object.indexes = reader.readString(offsets[2]);
  object.pickle = reader.readString(offsets[3]);
  object.roomId = reader.readString(offsets[4]);
  object.senderClaimedKey = reader.readString(offsets[5]);
  object.senderKey = reader.readString(offsets[6]);
  object.sessionId = reader.readString(offsets[7]);
  object.uploaded = reader.readBool(offsets[8]);
  return object;
}

P _inboundGroupSessionDeserializeProp<P>(
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
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _inboundGroupSessionGetId(InboundGroupSession object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inboundGroupSessionGetLinks(
    InboundGroupSession object) {
  return [];
}

void _inboundGroupSessionAttach(
    IsarCollection<dynamic> col, Id id, InboundGroupSession object) {
  object.id = id;
}

extension InboundGroupSessionQueryWhereSort
    on QueryBuilder<InboundGroupSession, InboundGroupSession, QWhere> {
  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InboundGroupSessionQueryWhere
    on QueryBuilder<InboundGroupSession, InboundGroupSession, QWhereClause> {
  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterWhereClause>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterWhereClause>
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

extension InboundGroupSessionQueryFilter on QueryBuilder<InboundGroupSession,
    InboundGroupSession, QFilterCondition> {
  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allowedAtIndex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'allowedAtIndex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'allowedAtIndex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'allowedAtIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'allowedAtIndex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'allowedAtIndex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'allowedAtIndex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'allowedAtIndex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allowedAtIndex',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      allowedAtIndexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'allowedAtIndex',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      contentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      contentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'indexes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'indexes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'indexes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'indexes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'indexes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'indexes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'indexes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'indexes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'indexes',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      indexesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'indexes',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      pickleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pickle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      pickleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pickle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      pickleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pickle',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      pickleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pickle',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdEqualTo(
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdGreaterThan(
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdLessThan(
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdBetween(
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdStartsWith(
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdEndsWith(
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'roomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'roomId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roomId',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      roomIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roomId',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderClaimedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'senderClaimedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'senderClaimedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'senderClaimedKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'senderClaimedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'senderClaimedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'senderClaimedKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'senderClaimedKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderClaimedKey',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderClaimedKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'senderClaimedKey',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'senderKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'senderKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'senderKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'senderKey',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      senderKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'senderKey',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
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

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      sessionIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sessionId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      sessionIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sessionId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      sessionIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sessionId',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      sessionIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sessionId',
        value: '',
      ));
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterFilterCondition>
      uploadedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uploaded',
        value: value,
      ));
    });
  }
}

extension InboundGroupSessionQueryObject on QueryBuilder<InboundGroupSession,
    InboundGroupSession, QFilterCondition> {}

extension InboundGroupSessionQueryLinks on QueryBuilder<InboundGroupSession,
    InboundGroupSession, QFilterCondition> {}

extension InboundGroupSessionQuerySortBy
    on QueryBuilder<InboundGroupSession, InboundGroupSession, QSortBy> {
  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByAllowedAtIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allowedAtIndex', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByAllowedAtIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allowedAtIndex', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByIndexes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexes', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByIndexesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexes', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByPickle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByPickleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByRoomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByRoomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortBySenderClaimedKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderClaimedKey', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortBySenderClaimedKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderClaimedKey', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortBySenderKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortBySenderKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploaded', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      sortByUploadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploaded', Sort.desc);
    });
  }
}

extension InboundGroupSessionQuerySortThenBy
    on QueryBuilder<InboundGroupSession, InboundGroupSession, QSortThenBy> {
  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByAllowedAtIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allowedAtIndex', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByAllowedAtIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'allowedAtIndex', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByIndexes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexes', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByIndexesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexes', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByPickle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByPickleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pickle', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByRoomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByRoomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roomId', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenBySenderClaimedKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderClaimedKey', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenBySenderClaimedKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderClaimedKey', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenBySenderKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenBySenderKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'senderKey', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenBySessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenBySessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sessionId', Sort.desc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploaded', Sort.asc);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QAfterSortBy>
      thenByUploadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uploaded', Sort.desc);
    });
  }
}

extension InboundGroupSessionQueryWhereDistinct
    on QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct> {
  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctByAllowedAtIndex({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'allowedAtIndex',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctByContent({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctByIndexes({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'indexes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctByPickle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pickle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctByRoomId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roomId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctBySenderClaimedKey({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'senderClaimedKey',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctBySenderKey({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'senderKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctBySessionId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sessionId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InboundGroupSession, InboundGroupSession, QDistinct>
      distinctByUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uploaded');
    });
  }
}

extension InboundGroupSessionQueryProperty
    on QueryBuilder<InboundGroupSession, InboundGroupSession, QQueryProperty> {
  QueryBuilder<InboundGroupSession, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations>
      allowedAtIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'allowedAtIndex');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations>
      contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations>
      indexesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'indexes');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations> pickleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pickle');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations> roomIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roomId');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations>
      senderClaimedKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'senderClaimedKey');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations>
      senderKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'senderKey');
    });
  }

  QueryBuilder<InboundGroupSession, String, QQueryOperations>
      sessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sessionId');
    });
  }

  QueryBuilder<InboundGroupSession, bool, QQueryOperations> uploadedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uploaded');
    });
  }
}
