// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStudentCollection on Isar {
  IsarCollection<Student> get students => this.collection();
}

const StudentSchema = CollectionSchema(
  name: r'Student',
  id: -252783119861727542,
  properties: {
    r'admissionNumber': PropertySchema(
      id: 0,
      name: r'admissionNumber',
      type: IsarType.string,
    ),
    r'level': PropertySchema(
      id: 1,
      name: r'level',
      type: IsarType.string,
    ),
    r'studentName': PropertySchema(
      id: 2,
      name: r'studentName',
      type: IsarType.string,
    )
  },
  estimateSize: _studentEstimateSize,
  serialize: _studentSerialize,
  deserialize: _studentDeserialize,
  deserializeProp: _studentDeserializeProp,
  idName: r'id',
  indexes: {
    r'admissionNumber': IndexSchema(
      id: 4685976421903541169,
      name: r'admissionNumber',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'admissionNumber',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'parents': LinkSchema(
      id: -9193920227972860666,
      name: r'parents',
      target: r'User',
      single: false,
      linkName: r'children',
    ),
    r'defaultBus': LinkSchema(
      id: 7685996153631379557,
      name: r'defaultBus',
      target: r'Bus',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _studentGetId,
  getLinks: _studentGetLinks,
  attach: _studentAttach,
  version: '3.1.0+1',
);

int _studentEstimateSize(
  Student object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.admissionNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.level;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.studentName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _studentSerialize(
  Student object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.admissionNumber);
  writer.writeString(offsets[1], object.level);
  writer.writeString(offsets[2], object.studentName);
}

Student _studentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Student(
    admissionNumber: reader.readStringOrNull(offsets[0]),
    level: reader.readStringOrNull(offsets[1]),
    studentName: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _studentDeserializeProp<P>(
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

Id _studentGetId(Student object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _studentGetLinks(Student object) {
  return [object.parents, object.defaultBus];
}

void _studentAttach(IsarCollection<dynamic> col, Id id, Student object) {
  object.id = id;
  object.parents.attach(col, col.isar.collection<User>(), r'parents', id);
  object.defaultBus.attach(col, col.isar.collection<Bus>(), r'defaultBus', id);
}

extension StudentByIndex on IsarCollection<Student> {
  Future<Student?> getByAdmissionNumber(String? admissionNumber) {
    return getByIndex(r'admissionNumber', [admissionNumber]);
  }

  Student? getByAdmissionNumberSync(String? admissionNumber) {
    return getByIndexSync(r'admissionNumber', [admissionNumber]);
  }

  Future<bool> deleteByAdmissionNumber(String? admissionNumber) {
    return deleteByIndex(r'admissionNumber', [admissionNumber]);
  }

  bool deleteByAdmissionNumberSync(String? admissionNumber) {
    return deleteByIndexSync(r'admissionNumber', [admissionNumber]);
  }

  Future<List<Student?>> getAllByAdmissionNumber(
      List<String?> admissionNumberValues) {
    final values = admissionNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'admissionNumber', values);
  }

  List<Student?> getAllByAdmissionNumberSync(
      List<String?> admissionNumberValues) {
    final values = admissionNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'admissionNumber', values);
  }

  Future<int> deleteAllByAdmissionNumber(List<String?> admissionNumberValues) {
    final values = admissionNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'admissionNumber', values);
  }

  int deleteAllByAdmissionNumberSync(List<String?> admissionNumberValues) {
    final values = admissionNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'admissionNumber', values);
  }

  Future<Id> putByAdmissionNumber(Student object) {
    return putByIndex(r'admissionNumber', object);
  }

  Id putByAdmissionNumberSync(Student object, {bool saveLinks = true}) {
    return putByIndexSync(r'admissionNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAdmissionNumber(List<Student> objects) {
    return putAllByIndex(r'admissionNumber', objects);
  }

  List<Id> putAllByAdmissionNumberSync(List<Student> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'admissionNumber', objects, saveLinks: saveLinks);
  }
}

extension StudentQueryWhereSort on QueryBuilder<Student, Student, QWhere> {
  QueryBuilder<Student, Student, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudentQueryWhere on QueryBuilder<Student, Student, QWhereClause> {
  QueryBuilder<Student, Student, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Student, Student, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> idBetween(
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

  QueryBuilder<Student, Student, QAfterWhereClause> admissionNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'admissionNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> admissionNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'admissionNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> admissionNumberEqualTo(
      String? admissionNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'admissionNumber',
        value: [admissionNumber],
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterWhereClause> admissionNumberNotEqualTo(
      String? admissionNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'admissionNumber',
              lower: [],
              upper: [admissionNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'admissionNumber',
              lower: [admissionNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'admissionNumber',
              lower: [admissionNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'admissionNumber',
              lower: [],
              upper: [admissionNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension StudentQueryFilter
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition>
      admissionNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admissionNumber',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      admissionNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admissionNumber',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> admissionNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admissionNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      admissionNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admissionNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> admissionNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admissionNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> admissionNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admissionNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      admissionNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'admissionNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> admissionNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'admissionNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> admissionNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'admissionNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> admissionNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'admissionNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      admissionNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admissionNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      admissionNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'admissionNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'level',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> levelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'level',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'studentName',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'studentName',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'studentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'studentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'studentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'studentName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'studentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'studentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'studentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'studentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> studentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'studentName',
        value: '',
      ));
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      studentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'studentName',
        value: '',
      ));
    });
  }
}

extension StudentQueryObject
    on QueryBuilder<Student, Student, QFilterCondition> {}

extension StudentQueryLinks
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition> parents(
      FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'parents');
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> parentsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parents', length, true, length, true);
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> parentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parents', 0, true, 0, true);
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> parentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parents', 0, false, 999999, true);
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> parentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parents', 0, true, length, include);
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition>
      parentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'parents', length, include, 999999, true);
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> parentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'parents', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> defaultBus(
      FilterQuery<Bus> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'defaultBus');
    });
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> defaultBusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'defaultBus', 0, true, 0, true);
    });
  }
}

extension StudentQuerySortBy on QueryBuilder<Student, Student, QSortBy> {
  QueryBuilder<Student, Student, QAfterSortBy> sortByAdmissionNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admissionNumber', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByAdmissionNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admissionNumber', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByStudentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentName', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByStudentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentName', Sort.desc);
    });
  }
}

extension StudentQuerySortThenBy
    on QueryBuilder<Student, Student, QSortThenBy> {
  QueryBuilder<Student, Student, QAfterSortBy> thenByAdmissionNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admissionNumber', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByAdmissionNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admissionNumber', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByStudentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentName', Sort.asc);
    });
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByStudentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'studentName', Sort.desc);
    });
  }
}

extension StudentQueryWhereDistinct
    on QueryBuilder<Student, Student, QDistinct> {
  QueryBuilder<Student, Student, QDistinct> distinctByAdmissionNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admissionNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByLevel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Student, Student, QDistinct> distinctByStudentName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'studentName', caseSensitive: caseSensitive);
    });
  }
}

extension StudentQueryProperty
    on QueryBuilder<Student, Student, QQueryProperty> {
  QueryBuilder<Student, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Student, String?, QQueryOperations> admissionNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admissionNumber');
    });
  }

  QueryBuilder<Student, String?, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<Student, String?, QQueryOperations> studentNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'studentName');
    });
  }
}
