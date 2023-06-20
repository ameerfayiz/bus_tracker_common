// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_snapshot.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBusSnapshotCollection on Isar {
  IsarCollection<BusSnapshot> get busSnapshots => this.collection();
}

const BusSnapshotSchema = CollectionSchema(
  name: r'BusSnapshot',
  id: -5519717956733147727,
  properties: {
    r'busId': PropertySchema(
      id: 0,
      name: r'busId',
      type: IsarType.string,
    ),
    r'drivingQuality': PropertySchema(
      id: 1,
      name: r'drivingQuality',
      type: IsarType.string,
    ),
    r'isMoving': PropertySchema(
      id: 2,
      name: r'isMoving',
      type: IsarType.bool,
    ),
    r'location': PropertySchema(
      id: 3,
      name: r'location',
      type: IsarType.object,
      target: r'Location',
    ),
    r'timeOfSnapShot': PropertySchema(
      id: 4,
      name: r'timeOfSnapShot',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _busSnapshotEstimateSize,
  serialize: _busSnapshotSerialize,
  deserialize: _busSnapshotDeserialize,
  deserializeProp: _busSnapshotDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'students': LinkSchema(
      id: -7158877824220278246,
      name: r'students',
      target: r'Student',
      single: false,
    )
  },
  embeddedSchemas: {r'Location': LocationSchema},
  getId: _busSnapshotGetId,
  getLinks: _busSnapshotGetLinks,
  attach: _busSnapshotAttach,
  version: '3.1.0+1',
);

int _busSnapshotEstimateSize(
  BusSnapshot object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.busId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.drivingQuality;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.location;
    if (value != null) {
      bytesCount += 3 +
          LocationSchema.estimateSize(value, allOffsets[Location]!, allOffsets);
    }
  }
  return bytesCount;
}

void _busSnapshotSerialize(
  BusSnapshot object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.busId);
  writer.writeString(offsets[1], object.drivingQuality);
  writer.writeBool(offsets[2], object.isMoving);
  writer.writeObject<Location>(
    offsets[3],
    allOffsets,
    LocationSchema.serialize,
    object.location,
  );
  writer.writeDateTime(offsets[4], object.timeOfSnapShot);
}

BusSnapshot _busSnapshotDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BusSnapshot(
    busId: reader.readStringOrNull(offsets[0]),
    drivingQuality: reader.readStringOrNull(offsets[1]),
    isMoving: reader.readBoolOrNull(offsets[2]),
    location: reader.readObjectOrNull<Location>(
      offsets[3],
      LocationSchema.deserialize,
      allOffsets,
    ),
    timeOfSnapShot: reader.readDateTimeOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _busSnapshotDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Location>(
        offset,
        LocationSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _busSnapshotGetId(BusSnapshot object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _busSnapshotGetLinks(BusSnapshot object) {
  return [object.students];
}

void _busSnapshotAttach(
    IsarCollection<dynamic> col, Id id, BusSnapshot object) {
  object.id = id;
  object.students.attach(col, col.isar.collection<Student>(), r'students', id);
}

extension BusSnapshotQueryWhereSort
    on QueryBuilder<BusSnapshot, BusSnapshot, QWhere> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BusSnapshotQueryWhere
    on QueryBuilder<BusSnapshot, BusSnapshot, QWhereClause> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterWhereClause> idBetween(
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

extension BusSnapshotQueryFilter
    on QueryBuilder<BusSnapshot, BusSnapshot, QFilterCondition> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'busId',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      busIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'busId',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      busIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'busId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'busId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> busIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'busId',
        value: '',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      busIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'busId',
        value: '',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'drivingQuality',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'drivingQuality',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drivingQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drivingQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drivingQuality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drivingQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drivingQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drivingQuality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drivingQuality',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingQuality',
        value: '',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      drivingQualityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drivingQuality',
        value: '',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> idBetween(
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

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      isMovingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMoving',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      isMovingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMoving',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> isMovingEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMoving',
        value: value,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'location',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      timeOfSnapShotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeOfSnapShot',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      timeOfSnapShotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeOfSnapShot',
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      timeOfSnapShotEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeOfSnapShot',
        value: value,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      timeOfSnapShotGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeOfSnapShot',
        value: value,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      timeOfSnapShotLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeOfSnapShot',
        value: value,
      ));
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      timeOfSnapShotBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeOfSnapShot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BusSnapshotQueryObject
    on QueryBuilder<BusSnapshot, BusSnapshot, QFilterCondition> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> location(
      FilterQuery<Location> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'location');
    });
  }
}

extension BusSnapshotQueryLinks
    on QueryBuilder<BusSnapshot, BusSnapshot, QFilterCondition> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition> students(
      FilterQuery<Student> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'students');
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      studentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', length, true, length, true);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      studentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', 0, true, 0, true);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      studentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', 0, false, 999999, true);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      studentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', 0, true, length, include);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      studentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'students', length, include, 999999, true);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterFilterCondition>
      studentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'students', lower, includeLower, upper, includeUpper);
    });
  }
}

extension BusSnapshotQuerySortBy
    on QueryBuilder<BusSnapshot, BusSnapshot, QSortBy> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> sortByBusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> sortByBusIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> sortByDrivingQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingQuality', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy>
      sortByDrivingQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingQuality', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> sortByIsMoving() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMoving', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> sortByIsMovingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMoving', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> sortByTimeOfSnapShot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeOfSnapShot', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy>
      sortByTimeOfSnapShotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeOfSnapShot', Sort.desc);
    });
  }
}

extension BusSnapshotQuerySortThenBy
    on QueryBuilder<BusSnapshot, BusSnapshot, QSortThenBy> {
  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByBusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByBusIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByDrivingQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingQuality', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy>
      thenByDrivingQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingQuality', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByIsMoving() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMoving', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByIsMovingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMoving', Sort.desc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy> thenByTimeOfSnapShot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeOfSnapShot', Sort.asc);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QAfterSortBy>
      thenByTimeOfSnapShotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeOfSnapShot', Sort.desc);
    });
  }
}

extension BusSnapshotQueryWhereDistinct
    on QueryBuilder<BusSnapshot, BusSnapshot, QDistinct> {
  QueryBuilder<BusSnapshot, BusSnapshot, QDistinct> distinctByBusId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'busId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QDistinct> distinctByDrivingQuality(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drivingQuality',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QDistinct> distinctByIsMoving() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMoving');
    });
  }

  QueryBuilder<BusSnapshot, BusSnapshot, QDistinct> distinctByTimeOfSnapShot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeOfSnapShot');
    });
  }
}

extension BusSnapshotQueryProperty
    on QueryBuilder<BusSnapshot, BusSnapshot, QQueryProperty> {
  QueryBuilder<BusSnapshot, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BusSnapshot, String?, QQueryOperations> busIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'busId');
    });
  }

  QueryBuilder<BusSnapshot, String?, QQueryOperations>
      drivingQualityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drivingQuality');
    });
  }

  QueryBuilder<BusSnapshot, bool?, QQueryOperations> isMovingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMoving');
    });
  }

  QueryBuilder<BusSnapshot, Location?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<BusSnapshot, DateTime?, QQueryOperations>
      timeOfSnapShotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeOfSnapShot');
    });
  }
}
