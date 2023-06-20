// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBusCollection on Isar {
  IsarCollection<Bus> get bus => this.collection();
}

const BusSchema = CollectionSchema(
  name: r'Bus',
  id: -2102093103472410960,
  properties: {
    r'apiKey': PropertySchema(
      id: 0,
      name: r'apiKey',
      type: IsarType.string,
    ),
    r'busId': PropertySchema(
      id: 1,
      name: r'busId',
      type: IsarType.string,
    ),
    r'route': PropertySchema(
      id: 2,
      name: r'route',
      type: IsarType.string,
    )
  },
  estimateSize: _busEstimateSize,
  serialize: _busSerialize,
  deserialize: _busDeserialize,
  deserializeProp: _busDeserializeProp,
  idName: r'id',
  indexes: {
    r'busId': IndexSchema(
      id: -7132907949938217637,
      name: r'busId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'busId',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'apiKey': IndexSchema(
      id: -3137368736641847711,
      name: r'apiKey',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'apiKey',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'driver': LinkSchema(
      id: 2787766208728846805,
      name: r'driver',
      target: r'User',
      single: true,
    ),
    r'busStaffs': LinkSchema(
      id: -3587222874497787930,
      name: r'busStaffs',
      target: r'User',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _busGetId,
  getLinks: _busGetLinks,
  attach: _busAttach,
  version: '3.1.0+1',
);

int _busEstimateSize(
  Bus object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.apiKey;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.busId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.route;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _busSerialize(
  Bus object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiKey);
  writer.writeString(offsets[1], object.busId);
  writer.writeString(offsets[2], object.route);
}

Bus _busDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Bus(
    apiKey: reader.readStringOrNull(offsets[0]),
    busId: reader.readStringOrNull(offsets[1]),
    route: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _busDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _busGetId(Bus object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _busGetLinks(Bus object) {
  return [object.driver, object.busStaffs];
}

void _busAttach(IsarCollection<dynamic> col, Id id, Bus object) {
  object.id = id;
  object.driver.attach(col, col.isar.collection<User>(), r'driver', id);
  object.busStaffs.attach(col, col.isar.collection<User>(), r'busStaffs', id);
}

extension BusByIndex on IsarCollection<Bus> {
  Future<Bus?> getByBusId(String? busId) {
    return getByIndex(r'busId', [busId]);
  }

  Bus? getByBusIdSync(String? busId) {
    return getByIndexSync(r'busId', [busId]);
  }

  Future<bool> deleteByBusId(String? busId) {
    return deleteByIndex(r'busId', [busId]);
  }

  bool deleteByBusIdSync(String? busId) {
    return deleteByIndexSync(r'busId', [busId]);
  }

  Future<List<Bus?>> getAllByBusId(List<String?> busIdValues) {
    final values = busIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'busId', values);
  }

  List<Bus?> getAllByBusIdSync(List<String?> busIdValues) {
    final values = busIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'busId', values);
  }

  Future<int> deleteAllByBusId(List<String?> busIdValues) {
    final values = busIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'busId', values);
  }

  int deleteAllByBusIdSync(List<String?> busIdValues) {
    final values = busIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'busId', values);
  }

  Future<Id> putByBusId(Bus object) {
    return putByIndex(r'busId', object);
  }

  Id putByBusIdSync(Bus object, {bool saveLinks = true}) {
    return putByIndexSync(r'busId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByBusId(List<Bus> objects) {
    return putAllByIndex(r'busId', objects);
  }

  List<Id> putAllByBusIdSync(List<Bus> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'busId', objects, saveLinks: saveLinks);
  }

  Future<Bus?> getByApiKey(String? apiKey) {
    return getByIndex(r'apiKey', [apiKey]);
  }

  Bus? getByApiKeySync(String? apiKey) {
    return getByIndexSync(r'apiKey', [apiKey]);
  }

  Future<bool> deleteByApiKey(String? apiKey) {
    return deleteByIndex(r'apiKey', [apiKey]);
  }

  bool deleteByApiKeySync(String? apiKey) {
    return deleteByIndexSync(r'apiKey', [apiKey]);
  }

  Future<List<Bus?>> getAllByApiKey(List<String?> apiKeyValues) {
    final values = apiKeyValues.map((e) => [e]).toList();
    return getAllByIndex(r'apiKey', values);
  }

  List<Bus?> getAllByApiKeySync(List<String?> apiKeyValues) {
    final values = apiKeyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apiKey', values);
  }

  Future<int> deleteAllByApiKey(List<String?> apiKeyValues) {
    final values = apiKeyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apiKey', values);
  }

  int deleteAllByApiKeySync(List<String?> apiKeyValues) {
    final values = apiKeyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apiKey', values);
  }

  Future<Id> putByApiKey(Bus object) {
    return putByIndex(r'apiKey', object);
  }

  Id putByApiKeySync(Bus object, {bool saveLinks = true}) {
    return putByIndexSync(r'apiKey', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApiKey(List<Bus> objects) {
    return putAllByIndex(r'apiKey', objects);
  }

  List<Id> putAllByApiKeySync(List<Bus> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'apiKey', objects, saveLinks: saveLinks);
  }
}

extension BusQueryWhereSort on QueryBuilder<Bus, Bus, QWhere> {
  QueryBuilder<Bus, Bus, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BusQueryWhere on QueryBuilder<Bus, Bus, QWhereClause> {
  QueryBuilder<Bus, Bus, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Bus, Bus, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> idBetween(
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

  QueryBuilder<Bus, Bus, QAfterWhereClause> busIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'busId',
        value: [null],
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> busIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'busId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> busIdEqualTo(String? busId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'busId',
        value: [busId],
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> busIdNotEqualTo(String? busId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'busId',
              lower: [],
              upper: [busId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'busId',
              lower: [busId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'busId',
              lower: [busId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'busId',
              lower: [],
              upper: [busId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> apiKeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'apiKey',
        value: [null],
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> apiKeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'apiKey',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> apiKeyEqualTo(String? apiKey) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'apiKey',
        value: [apiKey],
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterWhereClause> apiKeyNotEqualTo(String? apiKey) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apiKey',
              lower: [],
              upper: [apiKey],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apiKey',
              lower: [apiKey],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apiKey',
              lower: [apiKey],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apiKey',
              lower: [],
              upper: [apiKey],
              includeUpper: false,
            ));
      }
    });
  }
}

extension BusQueryFilter on QueryBuilder<Bus, Bus, QFilterCondition> {
  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apiKey',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apiKey',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apiKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apiKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apiKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apiKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apiKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apiKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apiKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apiKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apiKey',
        value: '',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> apiKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apiKey',
        value: '',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'busId',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'busId',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdEqualTo(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdGreaterThan(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdLessThan(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdBetween(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdStartsWith(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdEndsWith(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'busId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'busId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'busId',
        value: '',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'busId',
        value: '',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'route',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'route',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'route',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'route',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'route',
        value: '',
      ));
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> routeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'route',
        value: '',
      ));
    });
  }
}

extension BusQueryObject on QueryBuilder<Bus, Bus, QFilterCondition> {}

extension BusQueryLinks on QueryBuilder<Bus, Bus, QFilterCondition> {
  QueryBuilder<Bus, Bus, QAfterFilterCondition> driver(FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'driver');
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> driverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'driver', 0, true, 0, true);
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffs(FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'busStaffs');
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'busStaffs', length, true, length, true);
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'busStaffs', 0, true, 0, true);
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'busStaffs', 0, false, 999999, true);
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'busStaffs', 0, true, length, include);
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'busStaffs', length, include, 999999, true);
    });
  }

  QueryBuilder<Bus, Bus, QAfterFilterCondition> busStaffsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'busStaffs', lower, includeLower, upper, includeUpper);
    });
  }
}

extension BusQuerySortBy on QueryBuilder<Bus, Bus, QSortBy> {
  QueryBuilder<Bus, Bus, QAfterSortBy> sortByApiKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiKey', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> sortByApiKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiKey', Sort.desc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> sortByBusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> sortByBusIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.desc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> sortByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> sortByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }
}

extension BusQuerySortThenBy on QueryBuilder<Bus, Bus, QSortThenBy> {
  QueryBuilder<Bus, Bus, QAfterSortBy> thenByApiKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiKey', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenByApiKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiKey', Sort.desc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenByBusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenByBusIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'busId', Sort.desc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenByRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.asc);
    });
  }

  QueryBuilder<Bus, Bus, QAfterSortBy> thenByRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'route', Sort.desc);
    });
  }
}

extension BusQueryWhereDistinct on QueryBuilder<Bus, Bus, QDistinct> {
  QueryBuilder<Bus, Bus, QDistinct> distinctByApiKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiKey', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Bus, Bus, QDistinct> distinctByBusId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'busId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Bus, Bus, QDistinct> distinctByRoute(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'route', caseSensitive: caseSensitive);
    });
  }
}

extension BusQueryProperty on QueryBuilder<Bus, Bus, QQueryProperty> {
  QueryBuilder<Bus, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Bus, String?, QQueryOperations> apiKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiKey');
    });
  }

  QueryBuilder<Bus, String?, QQueryOperations> busIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'busId');
    });
  }

  QueryBuilder<Bus, String?, QQueryOperations> routeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'route');
    });
  }
}
